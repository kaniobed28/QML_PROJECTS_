import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Loading")

    Rectangle {
        id: rectangle
        color: "#fcf2f2"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 107
        anchors.leftMargin: 107
        anchors.bottomMargin: 123
        anchors.topMargin: 111

        Rectangle {
            id: blue
            x: 318
            y: 72
            width: 50
            height: 50
            color: "#80bbff"
            radius: 25
        }

        Rectangle {
            id: yellow
            x: 120
            y: 77
            width: 50
            height: 50
            color: "#f3e575"
            radius: 25
        }

        Rectangle {
            id: green
            x: 211
            y: 78
            width: 50
            height: 50
            color: "#8ff27f"
            radius: 25
        }

        Rectangle {
            id: red
            x: 27
            y: 72
            width: 50
            height: 50
            color: "#b53939"
            radius: 25
        }

        ParallelAnimation{
            loops: Animation.Infinite
            running: true
            SequentialAnimation{
                id:sequenAnimRed

                 PauseAnimation {
                     duration: 100
                 }

                    NumberAnimation {
                        target: red
                        properties: "width,height"
                        from:0
                        to:50
                        duration: 200
                        easing.type: Easing.InOutQuad
                    }

                    NumberAnimation {
                        target: red
                        properties: "width,height"
                        from:50
                        to:0
                        duration: 200
                        easing.type: Easing.InOutQuad
                    }

            }
            SequentialAnimation{
                id:sequenAnim



                 PauseAnimation {
                     duration: 200
                 }

                    NumberAnimation {
                        target: yellow
                        properties: "width,height"
                        from:0
                        to:50
                        duration: 200
                        easing.type: Easing.InOutQuad
                    }

                    NumberAnimation {
                        target: yellow
                        properties: "width,height"
                        from:50
                        to:0
                        duration: 200
                        easing.type: Easing.InOutQuad
                    }

            }
            SequentialAnimation{
                id:sequenAnimGreen

                 PauseAnimation {
                     duration: 300
                 }

                    NumberAnimation {
                        target: green
                        properties: "width,height"
                        from:0
                        to:50
                        duration: 200
                        easing.type: Easing.InOutQuad
                    }

                    NumberAnimation {
                        target: green
                        properties: "width,height"
                        from:50
                        to:0
                        duration: 200
                        easing.type: Easing.InOutQuad
                    }

            }
            SequentialAnimation{
                id:sequenAnimBlue

                 PauseAnimation {
                     duration: 400
                 }

                    NumberAnimation {
                        target: blue
                        properties: "width,height"
                        from:0
                        to:50
                        duration: 200
                        easing.type: Easing.InOutQuad
                    }

                    NumberAnimation {
                        target: blue
                        properties: "width,height"
                        from:50
                        to:0
                        duration: 200
                        easing.type: Easing.InOutQuad
                    }

            }
        }

        Text {
            id: text3
            y: 185
            text: qsTr("QML Loading..")
            anchors.left: parent.left
            anchors.right: parent.right
            font.pixelSize: 18
            anchors.rightMargin: 149
            anchors.leftMargin: 149
            font.bold: true
        }
    }

    Text {
        id: text1
        y: 43
        text: qsTr("You can take some coffe while waiting...")
        anchors.left: parent.left
        anchors.right: parent.right
        font.pixelSize: 23
        horizontalAlignment: Text.AlignHCenter
        anchors.leftMargin: 185
        anchors.rightMargin: 185
        font.bold: true
        font.family: "Verdana"
    }

    Text {
        id: text2
        y: 377
        text: qsTr("Vous pouvez prendre un café en attendant...")
        anchors.left: parent.left
        anchors.right: parent.right
        font.pixelSize: 23
        horizontalAlignment: Text.AlignHCenter
        font.family: "Verdana"
        anchors.leftMargin: 185
        anchors.rightMargin: 185
        font.bold: true
    }


}
