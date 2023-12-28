import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Nav")

    Rectangle {
        id: navRec
        width: 200
        color: "#6c9ddb"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
    }

    Rectangle {
        id: btnRec
        x:  window.width -btnRec.width
        y: window.height -btnRec.height
        width: 58
        height: 54
        color: "#425b7c"
        radius: 100


        Image {
            id: image
            anchors.fill: parent
            source: "qrc:/images/images/backfront.jpg"
            fillMode: Image.PreserveAspectFit
        }
        NumberAnimation {
            id:navIn
            target: navRec
            property: "width"
            duration: 200
            easing.type: Easing.InOutQuad
            from:200
            to:0

        }
        NumberAnimation {
            id:navOut
            target: navRec
            property: "width"
            duration: 200
            easing.type: Easing.InOutQuad
            from:0
            to:200

        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if(navRec.width<=0){
               navOut.start()
                }
                else{
                    navIn.start()
                }
            }
        }
    }
}
