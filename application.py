# Links
# https://medium.com/@aliyasineser/opencv-camera-calibration-e9a48bdd1844
# https://opencv-python-tutroals.readthedocs.io/en/latest/py_tutorials/py_calib3d/py_calibration/py_calibration.html

import cv2
import glob
import argparse
import numpy as np
import os
from os import listdir

# termination criteria
# não sei o que ser isso
criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001)

# retorna lista de images de um diretório
def images_list(dirpath=None):
    if dirpath == None:
        return 0

    files = [f for f in listdir(dirpath)]
    images = []

    for f in files:
        # print(f[-3:])
        if f[-3:]=='png' or f[-3:]=='jpg':
            images.append(f)
    # print(images)

    return images

def calibrate(dirpath, square_size, width=9, height=6):
    """ Apply camera calibration operation for images in the given directory path. """
    # prepare object points, like (0,0,0), (1,0,0), (2,0,0) ....,(8,6,0)
    objp = np.zeros((height*width, 3), np.float32)
    objp[:, :2] = np.mgrid[0:width, 0:height].T.reshape(-1, 2)
    
    # mostrar numpy array
    # print(str(objp))

    # não entendo porque que os pontos 3D não são organizados na mesma ordem que os 2D
    # não faz diferença? acho que é facil saber no fim das contas

    objp = objp * square_size

    # Arrays to store object points and image points from all the images.
    objpoints = []  # 3d point in real world space
    imgpoints = []  # 2d points in image plane.
    images = []     # lista de imagens

    images = images_list(dirpath=dirpath)

    for fname in images:
        img = cv2.imread(dirpath+"/"+fname)
        gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)

        # Find the chess board corners
        # It returns the corner points and retval which will be True if pattern is obtained. 
        # These corners will be placed in an order (from left-to-right, top-to-bottom)
        ret, corners = cv2.findChessboardCorners(gray, (width, height), None)

        # If found, add object points, image points (after refining them)
        if ret:
            objpoints.append(objp)

            corners2 = cv2.cornerSubPix(gray, corners, (11, 11), (-1, -1), criteria)
            imgpoints.append(corners2)

            # Draw and display the corners
            # img = cv2.drawChessboardCorners(img, (width, height), corners2, ret)
            # cv2.imshow(fname, img)
            # cv2.waitKey(1000)
            # cv2.destroyAllWindows()

    # It returns the camera matrix, distortion coefficients, rotation and translation vectors etc.
    ret, mtx, dist, rvecs, tvecs = cv2.calibrateCamera(objpoints, imgpoints, gray.shape[::-1], None, None)
    print(mtx)
    print()
    print(dist)
    print()

    return [ret, mtx, dist, rvecs, tvecs]

def save_coefficients(file_name, mtx, dist):
    """ Save the camera matrix and the distortion coefficients to given path/file. """
    # cv_file = cv2.FileStorage(path, cv2.FILE_STORAGE_WRITE)
    # cv_file.write("K", mtx)
    # cv_file.write("D", dist)
    # # note you *release* you don't close() a FileStorage object
    # cv_file.release()

    file = open("parameters/"+file_name+".txt", 'w')
    # print(mtx)
    # print(mtx.shape)
    # print(dist.shape)
    for coluna in range(mtx.shape[1]):
        for linha in range(mtx.shape[0]):
            file.write(str(mtx[coluna][linha])+" ")
        file.write("\n")

    for coluna in range(dist.shape[1]):
        for linha in range(dist.shape[0]):
            file.write(str(dist[linha][coluna])+" ")
    # file.write(mtx)
    # file.write(dist)
    file.close()

def load_coefficients(file_name):
    """ Loads camera matrix and distortion coefficients. """
    # # FILE_STORAGE_READ
    # cv_file = cv2.FileStorage(path, cv2.FILE_STORAGE_READ)

    # # note we also have to specify the type to retrieve other wise we only get a
    # # FileNode object back instead of a matrix
    # camera_matrix = cv_file.getNode("K").mat()
    # dist_matrix = cv_file.getNode("D").mat()

    # cv_file.release()
    file = open("parameters/"+file_name+".txt", "r")
    mtx = []
    dist = []

    mtx.append(file.readline().split())
    mtx.append(file.readline().split())
    mtx.append(file.readline().split())
    dist.append(file.readline().split())
    
    # print(mtx)
    # print(dist)

    camera_matrix = np.asarray(mtx).astype(np.float)
    dist_matrix = np.asarray(dist).astype(np.float)

    print(camera_matrix)
    print()
    print(dist_matrix)

    return [camera_matrix, dist_matrix]

# uma imagem só, mas a gente pode fazer pra um diretório de imagens
def undistort(image_name, mtx, dist):
    img = cv2.imread("images/"+image_name)
    h,  w = img.shape[:2]
    newcameramtx, roi=cv2.getOptimalNewCameraMatrix(mtx,dist,(w,h),1,(w,h))
    
    # undistort
    dst = cv2.undistort(img, mtx, dist, None, newcameramtx)
    
    # crop the image
    x,y,w,h = roi
    dst = dst[y:y+h, x:x+w]
    cv2.imwrite('results/'+image_name, dst)

# calibração da camera
# recebe: nome da pasta com imagens, square size em mm, width e height
# returns: the camera matrix, distortion coefficients, rotation and translation vectors etc.
calibration = calibrate("images", 30, 7, 6)

# save parameters
# recebe: nome da camera e parametros
# salva na pasta parameters em um arquivo .txt
save_coefficients("camera01", calibration[1], calibration[2])

# load coefficients
# recebe: nome da camera
# carrega os parametros associados a esse nome salvos dentro da pasta parameters
# retorna: parametros de distorção dessa camera
parameters = load_coefficients("camera01")

# undistort images
undistort("left01.jpg", parameters[0], parameters[1])