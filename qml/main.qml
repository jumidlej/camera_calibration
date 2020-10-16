import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.3
import QtQuick.Layouts 1.3


ApplicationWindow {
    id: root
    width: 700
    minimumHeight: 420
    minimumWidth: 680
    height: 500
    visible: true
    color: "#d7dbdd"
    title: qsTr("Camera Calibration")

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem{
                text: qsTr("&Save Images")
              //  onTriggered: fileOpenDialog.open()
            }

            MenuItem{
                text: qsTr("&Save Parameters")
              //  onTriggered: fileOpenDialog.open()
            }

            MenuSeparator { }

            MenuItem{
                text: qsTr("&Quit")
                //onTriggered: popup.open()
            }

        }
        Menu {
            title: qsTr("&Help")
            MenuItem{
                text: qsTr("&Information")
              //  onTriggered: fileOpenDialog.open()
            }
        }
    }

    FileDialog {
        id: dialogUpload
        title: "Select"
    }

    TabView {
        id: tab
        width: root.width
        height: root.height
        Tab {
            id: calibration
            title: "Calibration"

            Rectangle{
                id: retangulo_root
                color: "#d7dbdd"
                border.color: "#aaaaaa"
                border.width: 1

                Rectangle{
                    id: container
                    height: 40
                    width: retangulo_root.width-20
                    anchors.horizontalCenter: retangulo_root.horizontalCenter
                    color: "#d7dbdd"
                    anchors.top: retangulo_root.top
                    anchors.topMargin: 5

                    Rectangle{
                        id: container_search
                        width: (retangulo_root.width-30)*0.65
                        height: container.height
                        color: "#d7dbdd"
                        anchors.left: container.left
                        anchors.top: container.top

                        Rectangle{
                            anchors.left: container_search.left
                            anchors.verticalCenter: container_search.verticalCenter
                            implicitWidth: 100
                            implicitHeight: 25
                            border.width: control_upload.activeFocus ? 2 : 1
                            border.color: "#888"
                            radius: 4
                            gradient: Gradient {
                                GradientStop { position: 0 ; color: control_upload.pressed ? "#ccc" : "#eee" }
                                GradientStop { position: 1 ; color: control_upload.pressed ? "#aaa" : "#ccc" }
                            }
                            Text{
                                anchors.centerIn: parent
                                text: qsTr("Upload")
                            }
                            MouseArea{
                                id: control_upload
                                anchors.fill: parent
                                onClicked: {
                                   console.log("clicked upload")
                                }
                            }
                         }
                    }
                    // container label

                    Rectangle{
                        id: container_label
                        height: container.height
                        width: (retangulo_root.width-30)*0.35
                        anchors.right: container.right
                        anchors.top: container.top
                        color: "#d7dbdd"

                        Text {
                            anchors.verticalCenter: container_label.verticalCenter
                            anchors.centerIn: container_label
                            text: qsTr("Images")
                        }
                     }

                } //fim container

                Rectangle{
                    id:images_calibration
                    height: (retangulo_root.height-30)*0.5
                    width: container_search.width
                    anchors.left: container.left
                    anchors.top: container.bottom
                    color: "#CECECE"
                    border.color: "#aaaaaa"
                    border.width: 0.5
                    radius:2

                    ScrollView {
                        id:scroll
                        anchors.fill: images_calibration
                        clip: true


                        Rectangle{
                            id: intoScroll
                            width: scroll.width-20
                            height: root.height + (root.height -460)
                            color: "#00FFFFFF"
                            anchors.top: scroll.top
                            anchors.horizontalCenter: scroll.horizontalCenter

                            Rectangle{
                                id:container_image1
                                width: (intoScroll.width - 10)/3
                                height: container_image1.width
                                anchors.top: intoScroll.top
                                anchors.left: intoScroll.left
                                color: "#00FFFFFF"

                                Image {
                                    id: image1
                                    anchors.fill: parent
                                    anchors.top: parent.top
                                    anchors.topMargin: 10
                                    anchors.leftMargin: 5
                                    anchors.left: parent.left
                                    source: "imgs/image.jpg"
                                }
                            }

                            Rectangle{
                                id:container_image2
                                width: container_image1.width
                                height: container_image1.height
                                anchors.top: container_image1.top
                                anchors.left: container_image1.right
                                color: "#00FFFFFF"

                                Image {
                                    id: image2
                                    anchors.fill: parent
                                    anchors.top: parent.top
                                    anchors.topMargin: 10
                                    anchors.leftMargin: 5
                                    anchors.left: parent.left
                                    source: "imgs/image.jpg"
                                }
                            }

                            Rectangle{
                                id:container_image3
                                width: container_image1.width
                                height: container_image1.height
                                anchors.top: container_image2.top
                                anchors.left: container_image2.right
                                color: "#00FFFFFF"

                                Image {
                                    id: image3
                                    anchors.fill: parent
                                    anchors.top: parent.top
                                    anchors.topMargin: 10
                                    anchors.leftMargin: 5
                                    anchors.left: parent.left
                                    source: "imgs/image.jpg"

                                }
                            }

                            Rectangle{
                                id:container_image4
                                width: container_image1.width
                                height: container_image1.height
                                anchors.top: container_image1.bottom
                                anchors.left: intoScroll.left
                                color: "#00FFFFFF"

                                Image {
                                    id: image4
                                    anchors.fill: parent
                                    anchors.top: parent.top
                                    anchors.topMargin: 10
                                    anchors.leftMargin: 5
                                    anchors.left: parent.left
                                    source: "imgs/image.jpg"
                                }
                            }

                            Rectangle{
                                id:container_image5
                                width: container_image1.width
                                height: container_image1.height
                                anchors.top: container_image4.top
                                anchors.left: container_image4.right
                                color: "#00FFFFFF"

                                Image {
                                    id: image5
                                    anchors.fill: parent
                                    anchors.top: parent.top
                                    anchors.topMargin: 10
                                    anchors.leftMargin: 5
                                    anchors.left: parent.left
                                    source: "imgs/image.jpg"
                                }
                            }

                            Rectangle{
                                id:container_image6
                                width: container_image1.width
                                height: container_image1.height
                                anchors.top: container_image5.top
                                anchors.left: container_image5.right
                                color: "#00FFFFFF"

                                Image {
                                    id: image6
                                    anchors.fill: parent
                                    anchors.top: parent.top
                                    anchors.topMargin: 10
                                    anchors.leftMargin: 5
                                    anchors.left: parent.left
                                    source: "imgs/image.jpg"

                                }
                            }

                            Rectangle{
                                id:container_image7
                                width: container_image1.width
                                height: container_image1.height
                                anchors.top: container_image4.bottom
                                anchors.left: intoScroll.left
                                color: "#00FFFFFF"

                                Image {
                                    id: image7
                                    anchors.fill: parent
                                    anchors.top: parent.top
                                    anchors.topMargin: 10
                                    anchors.leftMargin: 5
                                    anchors.left: parent.left
                                    source: "imgs/image.jpg"
                                }
                            }

                            Rectangle{
                                id:container_image8
                                width: container_image1.width
                                height: container_image1.height
                                anchors.top: container_image7.top
                                anchors.left: container_image7.right
                                color: "#00FFFFFF"

                                Image {
                                    id: image8
                                    anchors.fill: parent
                                    anchors.top: parent.top
                                    anchors.topMargin: 10
                                    anchors.leftMargin: 5
                                    anchors.left: parent.left
                                    source: "imgs/image.jpg"
                                }
                            }

                            Rectangle{
                                id:container_image9
                                width: container_image1.width
                                height: container_image1.height
                                anchors.top: container_image8.top
                                anchors.left: container_image8.right
                                color: "#00FFFFFF"

                                Image {
                                    id: image9
                                    anchors.fill: parent
                                    anchors.top: parent.top
                                    anchors.topMargin: 10
                                    anchors.leftMargin: 5
                                    anchors.left: parent.left
                                    source: "imgs/image.jpg"

                                }
                            }

                        }


                    }

                }

                Rectangle{
                    id: container_button_calculate
                    width: container_search.width
                    height: 40
                    anchors.top: images_calibration.bottom
                    color: "#d7dbdd"
                    anchors.horizontalCenter: images_calibration.horizontalCenter

                    Rectangle{
                        anchors.left: container_button_calculate
                        anchors.verticalCenter: container_button_calculate.verticalCenter
                        implicitWidth: 100
                        implicitHeight: 25
                        border.width: control_calculate.activeFocus ? 2 : 1
                        border.color: "#888"
                        radius: 4
                        gradient: Gradient {
                            GradientStop { position: 0 ; color: control_calculate.pressed ? "#ccc" : "#eee" }
                            GradientStop { position: 1 ; color: control_calculate.pressed ? "#aaa" : "#ccc" }
                        }
                        Text{
                            anchors.centerIn: parent
                            text: qsTr("Calculate")
                        }
                        MouseArea{
                            id: control_calculate
                            anchors.fill: parent
                            onClicked: {
                               console.log("clicked calculate")
                            }
                        }
                     }
                    //final button

                    Text {
                        id: label_size
                        text: qsTr("size of checkerboard square:")
                        anchors.right: spinbox.left
                        anchors.rightMargin: 5
                        anchors.verticalCenter: container_button_calculate.verticalCenter
                        horizontalAlignment: Text.AlignHCenter

                    }


                    SpinBox {
                        id: spinbox
                        activeFocusOnPress: false
                        selectByMouse : false
                        width: 50
                        anchors.right: combobox.left
                        anchors.verticalCenter: container_button_calculate.verticalCenter
                        anchors.rightMargin: 10
                    }

                    //combobox
                    ComboBox {
                        currentIndex: 0
                        model: ListModel {
                            id: cbItems
                            ListElement { text: "millimeters"}
                            ListElement { text: "centimeters"}
                            ListElement { text: "inches"}
                        }
                        id: combobox
                        width: 100
                        anchors.verticalCenter: container_button_calculate.verticalCenter
                        anchors.right: container_button_calculate.right
                        onCurrentIndexChanged: console.debug(cbItems.get(currentIndex).text)
                    }

                }

                Rectangle{
                    id:imageUndistorted
                    width: container_label.width
                    height: (retangulo_root.height-30)*0.75
                    anchors.right: container.right
                    anchors.top: container.bottom
                    color: "#CECECE"
                    radius:2
                    border.color: "#aaaaaa"
                    border.width: 0.5
                }

                Rectangle{
                    id:container_button_save
                    height: retangulo_root.height - 50 -imageUndistorted.height
                    width: imageUndistorted.width
                    anchors.top: imageUndistorted.bottom
                    anchors.horizontalCenter: imageUndistorted.horizontalCenter
                    color: "#d7dbdd"

                    Rectangle{
                        anchors.centerIn: container_button_save
                        implicitWidth: 100
                        implicitHeight: 25
                        border.width: control.activeFocus ? 2 : 1
                        border.color: "#888"
                        radius: 4
                        gradient: Gradient {
                            GradientStop { position: 0 ; color: control.pressed ? "#ccc" : "#eee" }
                            GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#ccc" }
                        }
                        Text{
                            anchors.centerIn: parent
                            text: qsTr("Save")
                        }
                        MouseArea{
                            id: control
                            anchors.fill: parent
                            onClicked: {
                               console.log("clicked save")
                            }
                        }
                     }
                  }

                Rectangle{
                    id: container_parameters
                    width: images_calibration.width
                    height: retangulo_root.height - (images_calibration.height + container.height + container_button_calculate.height)-20
                    anchors.top: container_button_calculate.bottom
                    anchors.horizontalCenter: images_calibration.horizontalCenter
                    radius: 2
                    color: "#d7dbdd"
                    border.color: "#aaaaaa"

                    Rectangle{
                        id:rectangle1
                        color: "#d7dbdd"
                        width: (container_parameters.width-20)/4
                        height: container_parameters.height-20
                        anchors.left: container_parameters.left
                        anchors.leftMargin: 10
                        anchors.verticalCenter: container_parameters.verticalCenter

                        Rectangle{
                            id:fragment_1_1
                            color: "#d7dbdd"
                            width: rectangle1.width
                            height: rectangle1.height/4
                            anchors.top: rectangle1.top
                            anchors.horizontalCenter: rectangle1.horizontalCenter
                            Text {
                                id: label_fragment_1_1
                                text: qsTr("Radial\nDistortion")
                                anchors.horizontalCenter: fragment_1_1.horizontalCenter
                                anchors.verticalCenter: fragment_1_1.verticalCenter
                                horizontalAlignment: Text.AlignHCenter
                            }
                        }

                        Rectangle{
                            id:fragment_2_1
                            color: "#d7dbdd"
                            width: rectangle1.width
                            height: rectangle1.height/4
                            anchors.top: fragment_1_1.bottom
                            anchors.horizontalCenter: rectangle1.horizontalCenter


                            Rectangle{
                                id: box_label1
                                width: fragment_2_1.width/2
                                height: fragment_2_1.height
                                anchors.left: fragment_2_1.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_k1
                                    text: qsTr("K1:")
                                    anchors.horizontalCenter: box_label1.horizontalCenter
                                    anchors.verticalCenter: box_label1.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_k1
                                width: fragment_2_1.width/2
                                height: fragment_2_1.height
                                anchors.left: box_label1.right
                                border.color: "#aaaaaa"
                                color: "#d7dbdd"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_2_1.top
                                anchors.bottom: fragment_2_1.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_k1
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_k1.horizontalCenter
                                    anchors.verticalCenter: box_value_k1.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: true
                                }
                            }
                        }

                        Rectangle{
                            id:fragment_3_1
                            color: "#d7dbdd"
                            width: rectangle1.width
                            height: rectangle1.height/4
                            anchors.top: fragment_2_1.bottom
                            anchors.horizontalCenter: rectangle1.horizontalCenter


                            Rectangle{
                                id: box_label2
                                width: fragment_3_1.width/2
                                height: fragment_3_1.height
                                anchors.left: fragment_3_1.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_k2
                                    text: qsTr("K2:")
                                    anchors.horizontalCenter: box_label2.horizontalCenter
                                    anchors.verticalCenter: box_label2.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_k2
                                width: fragment_3_1.width/2
                                height: fragment_3_1.height
                                anchors.left: box_label2.right
                                border.color: "#aaaaaa"
                                color: "#d7dbdd"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_3_1.top
                                anchors.bottom: fragment_3_1.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_k2
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_k2.horizontalCenter
                                    anchors.verticalCenter: box_value_k2.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: true
                                }
                            }
                        }

                        Rectangle{
                            id:fragment_4_1
                            color: "#d7dbdd"
                            width: rectangle1.width
                            height: rectangle1.height/4
                            anchors.top: fragment_3_1.bottom
                            anchors.horizontalCenter: rectangle1.horizontalCenter


                            Rectangle{
                                id: box_label3
                                width: fragment_4_1.width/2
                                height: fragment_4_1.height
                                anchors.left: fragment_4_1.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_k3
                                    text: qsTr("K3:")
                                    anchors.horizontalCenter: box_label3.horizontalCenter
                                    anchors.verticalCenter: box_label3.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_k3
                                width: fragment_4_1.width/2
                                height: fragment_4_1.height
                                anchors.left: box_label3.right
                                border.color: "#aaaaaa"
                                color: "#d7dbdd"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_4_1.top
                                anchors.bottom: fragment_4_1.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_k3
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_k3.horizontalCenter
                                    anchors.verticalCenter: box_value_k3.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: true
                                }
                            }
                        }
                    }
                    Rectangle{
                        id:rectangle2
                        color: "#d7dbdd"
                        width: (container_parameters.width-20)/4
                        height: container_parameters.height-20
                        anchors.left: rectangle1.right
                        anchors.verticalCenter: container_parameters.verticalCenter

                        Rectangle{
                            id:fragment_1_2
                            color: "#d7dbdd"
                            width: rectangle2.width
                            height: rectangle2.height/4
                            anchors.top: rectangle2.top
                            anchors.horizontalCenter: rectangle2.horizontalCenter
                            Text {
                                id: label_fragment_1_2
                                text: qsTr("Tangencial\nDistortion")
                                anchors.horizontalCenter: fragment_1_2.horizontalCenter
                                anchors.verticalCenter: fragment_1_2.verticalCenter
                                horizontalAlignment: Text.AlignHCenter
                            }
                        }

                        Rectangle{
                            id:fragment_2_2
                            color: "#d7dbdd"
                            width: rectangle2.width
                            height: rectangle2.height/4
                            anchors.top: fragment_1_2.bottom
                            anchors.horizontalCenter: rectangle2.horizontalCenter


                            Rectangle{
                                id: box_label1_2
                                width: fragment_2_2.width/2
                                height: fragment_2_2.height
                                anchors.left: fragment_2_2.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_C1
                                    text: qsTr("C1:")
                                    anchors.horizontalCenter: box_label1_2.horizontalCenter
                                    anchors.verticalCenter: box_label1_2.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_C1
                                width: fragment_2_2.width/2
                                height: fragment_2_2.height
                                anchors.left: box_label1_2.right
                                border.color: "#aaaaaa"
                                color: "#d7dbdd"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_2_2.top
                                anchors.bottom: fragment_2_2.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_C1
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_C1.horizontalCenter
                                    anchors.verticalCenter: box_value_C1.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: true
                                }
                            }
                        }

                        Rectangle{
                            id:fragment_3_2
                            color: "#d7dbdd"
                            width: rectangle2.width
                            height: rectangle2.height/4
                            anchors.top: fragment_2_2.bottom
                            anchors.horizontalCenter: rectangle2.horizontalCenter


                            Rectangle{
                                id: box_label2_2
                                width: fragment_3_2.width/2
                                height: fragment_3_2.height
                                anchors.left: fragment_3_2.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_C2
                                    text: qsTr("C2:")
                                    anchors.horizontalCenter: box_label2_2.horizontalCenter
                                    anchors.verticalCenter: box_label2_2.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_C2
                                width: fragment_3_2.width/2
                                height: fragment_3_2.height
                                anchors.left: box_label2_2.right
                                border.color: "#aaaaaa"
                                color: "#d7dbdd"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_3_2.top
                                anchors.bottom: fragment_3_2.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_C2
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_C2.horizontalCenter
                                    anchors.verticalCenter: box_value_C2.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: true
                                }
                            }
                        }
                        //fim fragments


                    }
                    Rectangle{
                        id:rectangle3
                        color: "#d7dbdd"
                        width: (container_parameters.width-20)/4
                        height: container_parameters.height-20
                        anchors.left: rectangle2.right
                        anchors.verticalCenter: container_parameters.verticalCenter

                        Rectangle{
                            id:fragment_1_3
                            color: "#d7dbdd"
                            width: rectangle3.width
                            height: rectangle3.height/4
                            anchors.top: rectangle3.top
                            anchors.horizontalCenter: rectangle3.horizontalCenter
                            Text {
                                id: label_fragment_1_3
                                text: qsTr("Optical\nCenter")
                                anchors.horizontalCenter: fragment_1_3.horizontalCenter
                                anchors.verticalCenter: fragment_1_3.verticalCenter
                                horizontalAlignment: Text.AlignHCenter
                            }
                        }

                        Rectangle{
                            id:fragment_2_3
                            color: "#d7dbdd"
                            width: rectangle3.width
                            height: rectangle3.height/4
                            anchors.top: fragment_1_3.bottom
                            anchors.horizontalCenter: rectangle3.horizontalCenter


                            Rectangle{
                                id: box_label1_3
                                width: fragment_2_3.width/2
                                height: fragment_2_3.height
                                anchors.left: fragment_2_3.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_Cx
                                    text: qsTr("Cx:")
                                    anchors.horizontalCenter: box_label1_3.horizontalCenter
                                    anchors.verticalCenter: box_label1_3.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_Cx
                                width: fragment_2_3.width/2
                                height: fragment_2_3.height
                                anchors.left: box_label1_3.right
                                border.color: "#aaaaaa"
                                color: "#d7dbdd"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_2_3.top
                                anchors.bottom: fragment_2_3.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_Cx
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_Cx.horizontalCenter
                                    anchors.verticalCenter: box_value_Cx.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: true
                                }
                            }
                        }

                        Rectangle{
                            id:fragment_3_3
                            color: "#d7dbdd"
                            width: rectangle3.width
                            height: rectangle3.height/4
                            anchors.top: fragment_2_3.bottom
                            anchors.horizontalCenter: rectangle3.horizontalCenter


                            Rectangle{
                                id: box_label2_3
                                width: fragment_3_3.width/2
                                height: fragment_3_3.height
                                anchors.left: fragment_3_3.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_Cy
                                    text: qsTr("Cy:")
                                    anchors.horizontalCenter: box_label2_3.horizontalCenter
                                    anchors.verticalCenter: box_label2_3.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_Cy
                                width: fragment_3_3.width/2
                                height: fragment_3_3.height
                                anchors.left: box_label2_3.right
                                border.color: "#aaaaaa"
                                color: "#d7dbdd"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_3_3.top
                                anchors.bottom: fragment_3_3.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_Cy
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_Cy.horizontalCenter
                                    anchors.verticalCenter: box_value_Cy.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: true
                                }
                            }
                        }
                        //fim fragments

                    }
                    Rectangle{
                        id:rectangle4
                        color: "#d7dbdd"
                        width: (container_parameters.width-20)/4
                        height: container_parameters.height-20
                        anchors.left: rectangle3.right
                        anchors.verticalCenter: container_parameters.verticalCenter

                        Rectangle{
                            id:fragment_1_4
                            color: "#d7dbdd"
                            width: rectangle4.width
                            height: rectangle4.height/4
                            anchors.top: rectangle4.top
                            anchors.horizontalCenter: rectangle4.horizontalCenter
                            Text {
                                id: label_fragment_1_4
                                text: qsTr("Distance\nFocal")
                                anchors.horizontalCenter: fragment_1_4.horizontalCenter
                                anchors.verticalCenter: fragment_1_4.verticalCenter
                                horizontalAlignment: Text.AlignHCenter
                            }
                        }


                        Rectangle{
                            id:fragment_2_4
                            color: "#d7dbdd"
                            width: rectangle4.width
                            height: rectangle4.height/4
                            anchors.top: fragment_1_4.bottom
                            anchors.horizontalCenter: rectangle4.horizontalCenter


                            Rectangle{
                                id: box_label1_4
                                width: fragment_2_4.width/2
                                height: fragment_2_4.height
                                anchors.left: fragment_2_4.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_Fx
                                    text: qsTr("Fx:")
                                    anchors.horizontalCenter: box_label1_4.horizontalCenter
                                    anchors.verticalCenter: box_label1_4.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_Fx
                                width: fragment_2_4.width/2
                                height: fragment_2_4.height
                                anchors.left: box_label1_4.right
                                border.color: "#aaaaaa"
                                color: "#d7dbdd"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_2_4.top
                                anchors.bottom: fragment_2_4.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_Fx
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_Fx.horizontalCenter
                                    anchors.verticalCenter: box_value_Fx.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: true
                                }
                            }
                        }

                        Rectangle{
                            id:fragment_3_4
                            color: "#d7dbdd"
                            width: rectangle4.width
                            height: rectangle4.height/4
                            anchors.top: fragment_2_4.bottom
                            anchors.horizontalCenter: rectangle4.horizontalCenter


                            Rectangle{
                                id: box_label2_4
                                width: fragment_3_4.width/2
                                height: fragment_3_4.height
                                anchors.left: fragment_3_4.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_Fy
                                    text: qsTr("Fy:")
                                    anchors.horizontalCenter: box_label2_4.horizontalCenter
                                    anchors.verticalCenter: box_label2_4.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_Fy
                                width: fragment_3_4.width/2
                                height: fragment_3_4.height
                                anchors.left: box_label2_4.right
                                border.color: "#aaaaaa"
                                color: "#d7dbdd"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_3_4.top
                                anchors.bottom: fragment_3_4.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_Fy
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_Fy.horizontalCenter
                                    anchors.verticalCenter: box_value_Fy.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: true
                                }
                            }
                        }
                        //fim fragments

                    }

                }


            }

         }
         Tab {
            title: "Correction"

            Rectangle{
                id: retangulo_root_correction
                color: "#d7dbdd"
                border.color: "#aaaaaa"
                border.width: 1

                Rectangle{
                    id: container_correction
                    height: 40
                    width: retangulo_root_correction.width-20
                    anchors.horizontalCenter: retangulo_root_correction.horizontalCenter
                    color: "#d7dbdd"
                    anchors.top: retangulo_root_correction.top
                    anchors.topMargin: 5

                    Rectangle{
                        id: container_search_correction
                        width: (retangulo_root_correction.width-30)*0.65
                        height: container_correction.height
                        color: "#d7dbdd"
                        anchors.left: container_correction.left
                        anchors.top: container_correction.top

                        Rectangle{
                            anchors.left: container_search_correction.left
                            anchors.verticalCenter: container_search_correction.verticalCenter
                            implicitWidth: 100
                            implicitHeight: 25
                            border.width: control_upload_correction.activeFocus ? 2 : 1
                            border.color: "#888"
                            radius: 4
                            gradient: Gradient {
                                GradientStop { position: 0 ; color: control_upload_correction.pressed ? "#ccc" : "#eee" }
                                GradientStop { position: 1 ; color: control_upload_correction.pressed ? "#aaa" : "#ccc" }
                            }
                            Text{
                                anchors.centerIn: parent
                                text: qsTr("Upload")
                            }
                            MouseArea{
                                id: control_upload_correction
                                anchors.fill: parent
                                onClicked: {
                                   console.log("clicked upload correction")
                                }
                            }
                         }
                    }
                    // container label

                    Rectangle{
                        id: container_label_correction
                        height: container_correction.height
                        width: (retangulo_root_correction.width-30)*0.35

                        anchors.right: container_correction.right
                        anchors.top: container_correction.top

                        color: "#d7dbdd"

                        Text {
                            anchors.verticalCenter: container_label_correction.verticalCenter
                            anchors.centerIn: container_label_correction
                            text: qsTr("Images")
                        }
                     }

                } //fim container

                Rectangle{
                    id:images_calibration_correction
                    height: (retangulo_root_correction.height-30)*0.5
                    width: container_search_correction.width
                    anchors.left: container_correction.left
                    anchors.top: container_correction.bottom
                    color: "#CECECE"
                    border.color: "#aaaaaa"
                    border.width: 0.5
                    radius:2
                }

                Rectangle{
                    id: container_button_undistort
                    width: container_search_correction.width
                    height: 40
                    anchors.top: images_calibration_correction.bottom
                    color: "#d7dbdd"
                    anchors.horizontalCenter: images_calibration_correction.horizontalCenter

                    Rectangle{
                        id: button_undistort
                        anchors.left: container_button_undistort.left
                        anchors.verticalCenter: container_button_undistort.verticalCenter
                        implicitWidth: 100
                        implicitHeight: 25
                        border.width: control_undistort.activeFocus ? 2 : 1
                        border.color: "#888"
                        radius: 4
                        gradient: Gradient {
                            GradientStop { position: 0 ; color: control_undistort.pressed ? "#ccc" : "#eee" }
                            GradientStop { position: 1 ; color: control_undistort.pressed ? "#aaa" : "#ccc" }
                        }
                        Text{
                            anchors.centerIn: parent
                            text: qsTr("Undistort")
                        }
                        MouseArea{
                            id: control_undistort
                            anchors.fill: parent
                            onClicked: {
                               console.log("clicked undistort")
                            }
                        }
                     }
                    //final button

                    Rectangle{
                        anchors.left: button_undistort.right
                        anchors.leftMargin: 10
                        anchors.verticalCenter: container_button_undistort.verticalCenter
                        implicitWidth: 100
                        implicitHeight: 25
                        border.width: control_cancel.activeFocus ? 2 : 1
                        border.color: "#888"
                        radius: 4
                        gradient: Gradient {
                            GradientStop { position: 0 ; color: control_cancel.pressed ? "#ccc" : "#eee" }
                            GradientStop { position: 1 ; color: control_cancel.pressed ? "#aaa" : "#ccc" }
                        }
                        Text{
                            anchors.centerIn: parent
                            text: qsTr("Cancel")
                        }
                        MouseArea{
                            id: control_cancel
                            anchors.fill: parent
                            onClicked: {
                               console.log("clicked cancel")
                            }
                        }
                     }

                    //fim button

                }

                Rectangle{
                    id:imageUndistorted_correction
                    width: container_label_correction.width
                    height: (retangulo_root_correction.height-30)*0.75
                    anchors.right: container_correction.right
                    anchors.top: container_correction.bottom
                    color: "#CECECE"
                    radius:2
                    border.color: "#aaaaaa"
                    border.width: 0.5
                }

                Rectangle{
                    id:container_button_save_correction
                    height: retangulo_root_correction.height - 50 -imageUndistorted_correction.height
                    width: imageUndistorted_correction.width
                    anchors.top: imageUndistorted_correction.bottom
                    anchors.horizontalCenter: imageUndistorted_correction.horizontalCenter
                    color: "#d7dbdd"

                    Rectangle{
                        anchors.centerIn: container_button_save_correction
                        implicitWidth: 100
                        implicitHeight: 25
                        border.width: control_save_correction.activeFocus ? 2 : 1
                        border.color: "#888"
                        radius: 4
                        gradient: Gradient {
                            GradientStop { position: 0 ; color: control_save_correction.pressed ? "#ccc" : "#eee" }
                            GradientStop { position: 1 ; color: control_save_correction.pressed ? "#aaa" : "#ccc" }
                        }
                        Text{
                            anchors.centerIn: parent
                            text: qsTr("Save")
                        }
                        MouseArea{
                            id: control_save_correction
                            anchors.fill: parent
                            onClicked: {
                               console.log("clicked save correction")
                            }
                        }
                     }
                  }

                Rectangle{
                    id: container_parameters_correction
                    width: images_calibration_correction.width
                    height: retangulo_root_correction.height - (images_calibration_correction.height + container_correction.height + container_button_undistort.height)-20
                    anchors.top: container_button_undistort.bottom
                    anchors.horizontalCenter: images_calibration_correction.horizontalCenter
                    radius: 2
                    color: "#d7dbdd"
                    border.color: "#aaaaaa"

                    Rectangle{
                        id:rectangle1_correction
                        color: "#d7dbdd"
                        width: (container_parameters_correction.width-20)/4
                        height: container_parameters_correction.height-20
                        anchors.left: container_parameters_correction.left
                        anchors.leftMargin: 10
                        anchors.verticalCenter: container_parameters_correction.verticalCenter

                        Rectangle{
                            id:fragment_1_1_correction
                            color: "#d7dbdd"
                            width: rectangle1_correction.width
                            height: rectangle1_correction.height/4
                            anchors.top: rectangle1_correction.top
                            anchors.horizontalCenter: rectangle1_correction.horizontalCenter
                            Text {
                                id: label_fragment_1_1_correction
                                text: qsTr("Radial\nDistortion")
                                anchors.horizontalCenter: fragment_1_1_correction.horizontalCenter
                                anchors.verticalCenter: fragment_1_1_correction.verticalCenter
                                horizontalAlignment: Text.AlignHCenter
                            }
                        }

                        Rectangle{
                            id:fragment_2_1_correction
                            color: "#d7dbdd"
                            width: rectangle1_correction.width
                            height: rectangle1_correction.height/4
                            anchors.top: fragment_1_1_correction.bottom
                            anchors.horizontalCenter: rectangle1_correction.horizontalCenter


                            Rectangle{
                                id: box_label1_correction
                                width: fragment_2_1_correction.width/2
                                height: fragment_2_1_correction.height
                                anchors.left: fragment_2_1_correction.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_k1_correction
                                    text: qsTr("K1:")
                                    anchors.horizontalCenter: box_label1_correction.horizontalCenter
                                    anchors.verticalCenter: box_label1_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_k1_correction
                                width: fragment_2_1_correction.width/2
                                height: fragment_2_1_correction.height
                                anchors.left: box_label1_correction.right
                                border.color: "#aaaaaa"
                                color: "#ffffff"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_2_1_correction.top
                                anchors.bottom: fragment_2_1_correction.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_k1_correction
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_k1_correction.horizontalCenter
                                    anchors.verticalCenter: box_value_k1_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: false
                                }
                            }
                        }

                        Rectangle{
                            id:fragment_3_1_correction
                            color: "#d7dbdd"
                            width: rectangle1_correction.width
                            height: rectangle1_correction.height/4
                            anchors.top: fragment_2_1_correction.bottom
                            anchors.horizontalCenter: rectangle1_correction.horizontalCenter


                            Rectangle{
                                id: box_label2_correction
                                width: fragment_3_1_correction.width/2
                                height: fragment_3_1_correction.height
                                anchors.left: fragment_3_1_correction.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_k2_correction
                                    text: qsTr("K2:")
                                    anchors.horizontalCenter: box_label2_correction.horizontalCenter
                                    anchors.verticalCenter: box_label2_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_k2_correction
                                width: fragment_3_1_correction.width/2
                                height: fragment_3_1_correction.height
                                anchors.left: box_label2_correction.right
                                border.color: "#aaaaaa"
                                color: "#ffffff"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_3_1_correction.top
                                anchors.bottom: fragment_3_1_correction.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_k2_correction
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_k2_correction.horizontalCenter
                                    anchors.verticalCenter: box_value_k2_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: false
                                }
                            }
                        }

                        Rectangle{
                            id:fragment_4_1_correction
                            color: "#d7dbdd"
                            width: rectangle1_correction.width
                            height: rectangle1_correction.height/4
                            anchors.top: fragment_3_1_correction.bottom
                            anchors.horizontalCenter: rectangle1_correction.horizontalCenter


                            Rectangle{
                                id: box_label3_correction
                                width: fragment_4_1_correction.width/2
                                height: fragment_4_1_correction.height
                                anchors.left: fragment_4_1_correction.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_k3_correction
                                    text: qsTr("K3:")
                                    anchors.horizontalCenter: box_label3_correction.horizontalCenter
                                    anchors.verticalCenter: box_label3_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_k3_correction
                                width: fragment_4_1_correction.width/2
                                height: fragment_4_1_correction.height
                                anchors.left: box_label3_correction.right
                                border.color: "#aaaaaa"
                                color: "#ffffff"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_4_1_correction.top
                                anchors.bottom: fragment_4_1_correction.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_k3_correction
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_k3_correction.horizontalCenter
                                    anchors.verticalCenter: box_value_k3_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: false
                                }
                            }
                        }
                    }
                    Rectangle{
                        id:rectangle2_correction
                        color: "#d7dbdd"
                        width: (container_parameters_correction.width-20)/4
                        height: container_parameters_correction.height-20
                        anchors.left: rectangle1_correction.right
                        anchors.verticalCenter: container_parameters_correction.verticalCenter

                        Rectangle{
                            id:fragment_1_2_correction
                            color: "#d7dbdd"
                            width: rectangle2_correction.width
                            height: rectangle2_correction.height/4
                            anchors.top: rectangle2_correction.top
                            anchors.horizontalCenter: rectangle2_correction.horizontalCenter
                            Text {
                                id: label_fragment_1_2_correction
                                text: qsTr("Tangencial\nDistortion")
                                anchors.horizontalCenter: fragment_1_2_correction.horizontalCenter
                                anchors.verticalCenter: fragment_1_2_correction.verticalCenter
                                horizontalAlignment: Text.AlignHCenter
                            }
                        }

                        Rectangle{
                            id:fragment_2_2_correction
                            color: "#d7dbdd"
                            width: rectangle2_correction.width
                            height: rectangle2_correction.height/4
                            anchors.top: fragment_1_2_correction.bottom
                            anchors.horizontalCenter: rectangle2_correction.horizontalCenter


                            Rectangle{
                                id: box_label1_2_correction
                                width: fragment_2_2_correction.width/2
                                height: fragment_2_2_correction.height
                                anchors.left: fragment_2_2_correction.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_C1_correction
                                    text: qsTr("C1:")
                                    anchors.horizontalCenter: box_label1_2_correction.horizontalCenter
                                    anchors.verticalCenter: box_label1_2_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_C1_correction
                                width: fragment_2_2_correction.width/2
                                height: fragment_2_2_correction.height
                                anchors.left: box_label1_2_correction.right
                                border.color: "#aaaaaa"
                                color: "#ffffff"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_2_2_correction.top
                                anchors.bottom: fragment_2_2_correction.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_C1_correction
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_C1_correction.horizontalCenter
                                    anchors.verticalCenter: box_value_C1_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: false
                                }
                            }
                        }

                        Rectangle{
                            id:fragment_3_2_correction
                            color: "#d7dbdd"
                            width: rectangle2_correction.width
                            height: rectangle2_correction.height/4
                            anchors.top: fragment_2_2_correction.bottom
                            anchors.horizontalCenter: rectangle2_correction.horizontalCenter


                            Rectangle{
                                id: box_label2_2_correction
                                width: fragment_3_2_correction.width/2
                                height: fragment_3_2_correction.height
                                anchors.left: fragment_3_2_correction.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_C2_correction
                                    text: qsTr("C2:")
                                    anchors.horizontalCenter: box_label2_2_correction.horizontalCenter
                                    anchors.verticalCenter: box_label2_2_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_C2_correction
                                width: fragment_3_2_correction.width/2
                                height: fragment_3_2_correction.height
                                anchors.left: box_label2_2_correction.right
                                border.color: "#aaaaaa"
                                color: "#ffffff"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_3_2_correction.top
                                anchors.bottom: fragment_3_2_correction.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_C2_correction
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_C2_correction.horizontalCenter
                                    anchors.verticalCenter: box_value_C2_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: false
                                }
                            }
                        }
                        //fim fragments


                    }
                    Rectangle{
                        id:rectangle3_correction
                        color: "#d7dbdd"
                        width: (container_parameters_correction.width-20)/4
                        height: container_parameters_correction.height-20
                        anchors.left: rectangle2_correction.right
                        anchors.verticalCenter: container_parameters_correction.verticalCenter

                        Rectangle{
                            id:fragment_1_3_correction
                            color: "#d7dbdd"
                            width: rectangle3_correction.width
                            height: rectangle3_correction.height/4
                            anchors.top: rectangle3_correction.top
                            anchors.horizontalCenter: rectangle3_correction.horizontalCenter
                            Text {
                                id: label_fragment_1_3_correction
                                text: qsTr("Optical\nCenter")
                                anchors.horizontalCenter: fragment_1_3_correction.horizontalCenter
                                anchors.verticalCenter: fragment_1_3_correction.verticalCenter
                                horizontalAlignment: Text.AlignHCenter
                            }
                        }

                        Rectangle{
                            id:fragment_2_3_correction
                            color: "#d7dbdd"
                            width: rectangle3_correction.width
                            height: rectangle3_correction.height/4
                            anchors.top: fragment_1_3_correction.bottom
                            anchors.horizontalCenter: rectangle3_correction.horizontalCenter


                            Rectangle{
                                id: box_label1_3_correction
                                width: fragment_2_3_correction.width/2
                                height: fragment_2_3_correction.height
                                anchors.left: fragment_2_3_correction.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_Cx_correction
                                    text: qsTr("Cx:")
                                    anchors.horizontalCenter: box_label1_3_correction.horizontalCenter
                                    anchors.verticalCenter: box_label1_3_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_Cx_correction
                                width: fragment_2_3_correction.width/2
                                height: fragment_2_3_correction.height
                                anchors.left: box_label1_3_correction.right
                                border.color: "#aaaaaa"
                                color: "#ffffff"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_2_3_correction.top
                                anchors.bottom: fragment_2_3_correction.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_Cx_correction
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_Cx_correction.horizontalCenter
                                    anchors.verticalCenter: box_value_Cx_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: false
                                }
                            }
                        }

                        Rectangle{
                            id:fragment_3_3_correction
                            color: "#d7dbdd"
                            width: rectangle3_correction.width
                            height: rectangle3_correction.height/4
                            anchors.top: fragment_2_3_correction.bottom
                            anchors.horizontalCenter: rectangle3_correction.horizontalCenter


                            Rectangle{
                                id: box_label2_3_correction
                                width: fragment_3_3_correction.width/2
                                height: fragment_3_3_correction.height
                                anchors.left: fragment_3_3_correction.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_Cy_correction
                                    text: qsTr("Cy:")
                                    anchors.horizontalCenter: box_label2_3_correction.horizontalCenter
                                    anchors.verticalCenter: box_label2_3_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_Cy_correction
                                width: fragment_3_3_correction.width/2
                                height: fragment_3_3_correction.height
                                anchors.left: box_label2_3_correction.right
                                border.color: "#aaaaaa"
                                color: "#ffffff"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_3_3_correction.top
                                anchors.bottom: fragment_3_3_correction.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_Cy_correction
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_Cy_correction.horizontalCenter
                                    anchors.verticalCenter: box_value_Cy_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: false
                                }
                            }
                        }
                        //fim fragments

                    }
                    Rectangle{
                        id:rectangle4_correction
                        color: "#d7dbdd"
                        width: (container_parameters_correction.width-20)/4
                        height: container_parameters_correction.height-20
                        anchors.left: rectangle3_correction.right
                        anchors.verticalCenter: container_parameters_correction.verticalCenter

                        Rectangle{
                            id:fragment_1_4_correction
                            color: "#d7dbdd"
                            width: rectangle4_correction.width
                            height: rectangle4_correction.height/4
                            anchors.top: rectangle4_correction.top
                            anchors.horizontalCenter: rectangle4_correction.horizontalCenter
                            Text {
                                id: label_fragment_1_4_correction
                                text: qsTr("Distance\nFocal")
                                anchors.horizontalCenter: fragment_1_4_correction.horizontalCenter
                                anchors.verticalCenter: fragment_1_4_correction.verticalCenter
                                horizontalAlignment: Text.AlignHCenter
                            }
                        }


                        Rectangle{
                            id:fragment_2_4_correction
                            color: "#d7dbdd"
                            width: rectangle4_correction.width
                            height: rectangle4_correction.height/4
                            anchors.top: fragment_1_4_correction.bottom
                            anchors.horizontalCenter: rectangle4_correction.horizontalCenter


                            Rectangle{
                                id: box_label1_4_correction
                                width: fragment_2_4_correction.width/2
                                height: fragment_2_4_correction.height
                                anchors.left: fragment_2_4_correction.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_Fx_correction
                                    text: qsTr("Fx:")
                                    anchors.horizontalCenter: box_label1_4_correction.horizontalCenter
                                    anchors.verticalCenter: box_label1_4_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_Fx_correction
                                width: fragment_2_4_correction.width/2
                                height: fragment_2_4_correction.height
                                anchors.left: box_label1_4_correction.right
                                border.color: "#aaaaaa"
                                color: "#ffffff"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_2_4_correction.top
                                anchors.bottom: fragment_2_4_correction.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_Fx_correction
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_Fx_correction.horizontalCenter
                                    anchors.verticalCenter: box_value_Fx_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: false
                                }
                            }
                        }

                        Rectangle{
                            id:fragment_3_4_correction
                            color: "#d7dbdd"
                            width: rectangle4_correction.width
                            height: rectangle4_correction.height/4
                            anchors.top: fragment_2_4_correction.bottom
                            anchors.horizontalCenter: rectangle4_correction.horizontalCenter


                            Rectangle{
                                id: box_label2_4_correction
                                width: fragment_3_4_correction.width/2
                                height: fragment_3_4_correction.height
                                anchors.left: fragment_3_4_correction.left
                                color: "#d7dbdd"

                                Text {
                                    id: label_Fy_correction
                                    text: qsTr("Fy:")
                                    anchors.horizontalCenter: box_label2_4_correction.horizontalCenter
                                    anchors.verticalCenter: box_label2_4_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                }
                            }

                            Rectangle{
                                id: box_value_Fy_correction
                                width: fragment_3_4_correction.width/2
                                height: fragment_3_4_correction.height
                                anchors.left: box_label2_4_correction.right
                                border.color: "#aaaaaa"
                                color: "#ffffff"
                                radius: 4
                                anchors.topMargin: 2
                                anchors.top: fragment_3_4_correction.top
                                anchors.bottom: fragment_3_4_correction.bottom
                                anchors.bottomMargin: 2

                                TextEdit {
                                    id: label_value_Fy_correction
                                    text: qsTr("0")
                                    anchors.horizontalCenter: box_value_Fy_correction.horizontalCenter
                                    anchors.verticalCenter: box_value_Fy_correction.verticalCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    focus: false
                                    readOnly: false
                                }
                            }
                        }
                        //fim fragments
                    }
                }
            }
          }
    }
}
