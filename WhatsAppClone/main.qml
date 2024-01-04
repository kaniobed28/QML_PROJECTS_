import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    color: "#00ffffff"
    title: qsTr("Hello World")

    Rectangle {
        id: body
        color: "#e8ffffff"
        anchors.fill: parent
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10

        Rectangle {
            id: topBar
            height: 56
            color: "#e6e3e3"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Image {
                id: image
                width: 45
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "imgs/whatsapp.svg"
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                fillMode: Image.PreserveAspectFit
            }

            Label {
                id: label
                y: 17
                width: 128
                height: 22
                text: qsTr("WhatsApp Clone")
                anchors.left: image.right
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 6
                font.pointSize: 10
            }
        }

        Rectangle {
            id: leftBar
            width: 75
            color: "#e6e3e3"
            anchors.left: parent.left
            anchors.top: topBar.bottom
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            anchors.leftMargin: 0

            Rectangle {
                id: clickRec
                y: 133
                width: 8
                height: 42
                color: "#257030"
                anchors.left: parent.left
                anchors.leftMargin: 2
            }

            Rectangle {
                id: topMenu
                height: 134
                color: "#00ffffff"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 5
                anchors.topMargin: 0
                anchors.leftMargin: 12
                Column {
                    id: column
                    anchors.fill: parent
                    spacing: 3
                    Rectangle {
                        id: rectangle2
                        height: 37
                        color: "#00ffffff"
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                clickRec.y = rectangle2.y
                                console.log(clickRec.y)
                            }
                        }

                        Image {
                            id: image1
                            anchors.fill: parent
                            source: "imgs/wtsapp.png"
                            fillMode: Image.PreserveAspectFit
                        }
                    }

                    Rectangle {
                        id: rectangle3
                        height: 37
                        color: "#00ffffff"
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        MouseArea {
                            anchors.fill: parent
                        }

                        Image {
                            id: image2
                            anchors.fill: parent
                            source: "imgs/wtsapp.png"
                            fillMode: Image.PreserveAspectFit
                        }
                    }

                    Rectangle {
                        id: rectangle4
                        height: 37
                        color: "#00ffffff"
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        MouseArea {
                            anchors.fill: parent
                        }

                        Image {
                            id: image3
                            anchors.fill: parent
                            source: "imgs/wtsapp.png"
                            fillMode: Image.PreserveAspectFit
                        }
                    }
                    padding: 10
                    anchors.bottomMargin: -17
                }
            }

            Rectangle {
                id: topMenu1
                height: 172
                color: "#00ffffff"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.rightMargin: 5
                anchors.leftMargin: 12
                Column {
                    id: column1
                    anchors.fill: parent
                    spacing: 3
                    Rectangle {
                        id: rectangle5
                        height: 37
                        color: "#00ffffff"
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                            clickRec.y = topMenu1.y+rectangle5.y
                                            console.log(clickRec.y)
                                        }
                        }

                        Image {
                            id: image4
                            anchors.fill: parent
                            source: "imgs/wtsapp.png"
                            fillMode: Image.PreserveAspectFit
                        }
                    }

                    Rectangle {
                        id: rectangle6
                        height: 37
                        color: "#00ffffff"
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        MouseArea {
                            anchors.fill: parent
                        }

                        Image {
                            id: image5
                            anchors.fill: parent
                            source: "imgs/wtsapp.png"
                            fillMode: Image.PreserveAspectFit
                        }
                    }

                    Rectangle {
                        id: rectangle7
                        height: 37
                        color: "#00ffffff"
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        MouseArea {
                            anchors.fill: parent
                        }

                        Image {
                            id: image6
                            anchors.fill: parent
                            source: "imgs/wtsapp.png"
                            fillMode: Image.PreserveAspectFit
                        }
                    }
                    Rectangle {
                        id: rectangle
                        height: 37
                        color: "#00ffffff"
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        MouseArea {
                            anchors.fill: parent
                        }

                        Image {
                            id: image67
                            anchors.fill: parent
                            source: "imgs/wtsapp.png"
                            fillMode: Image.PreserveAspectFit
                        }
                    }
                    padding: 10
                    anchors.bottomMargin: -39
                }
            }
        }

        Rectangle {
            id: chatList
            width: 200
            color: "#f6eeee"
            anchors.left: leftBar.right
            anchors.top: topBar.bottom
            anchors.bottom: parent.bottom
            anchors.topMargin: 5
            anchors.leftMargin: 6
            anchors.bottomMargin: 0
        }

        Rectangle {
            id: rectangle8
            color: "#f6eeee"
            anchors.left: chatList.right
            anchors.right: parent.right
            anchors.top: topBar.bottom
            anchors.bottom: parent.bottom
            anchors.leftMargin: 5
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 5
        }
    }
}
