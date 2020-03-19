import QtQuick 2.7

Rectangle {
    id: rectangle

    width: 1366
    height: 700

    property alias mouseArea: mouseArea
    property alias tastiera: tastiera
    property alias httpRes: httpRes.text

    Image {
        id: imgBarcode
        x: 231
        y: 404
        source: "images/barcode_linear_ok_2.png"

        MouseArea {
            id: mouseArea
            x: 0
            y: 58
            width: 170
            height: 158
        }
    }

    Image {
        id: imgIstruzioni
        x: 8
        y: 69
        source: "images/istruzioni_iniziali_2.png"
    }

    Tastiera {
        id: tastiera
        x: 1009
        y: 155
        width: 300
        height: 300
    }

    Text {
        id: httpRes
        text: qsTr("HTTP")
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 5
        font.pixelSize: 17
    }
}
