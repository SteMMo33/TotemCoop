import QtQuick 2.0

Item {

    property int nPiazzola : 0

    width: 320
    height: 200

    Rectangle {
        id: rectangle
        color: "#000000"
        radius: 20
        anchors.bottomMargin: 0
        visible: true
        border.color: "#ff0000"
        border.width: 3
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            height: 54
            color: "#ff0000"
            radius: 20
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
        }

        Text {
            id: txtTitolo
            x: 243
            y: 8
            color: "#ffffff"
            text: "Piazzola"
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 27
        }



        Text {
            id: txtPiazzola
            x: 226
            y: 75
            color: "#fffbfb"
            text: "XX"
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 70
        }


    }

}
