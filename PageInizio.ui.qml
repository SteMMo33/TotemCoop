import QtQuick 2.7

Rectangle {
    property alias textEdit: textEdit

    width: 1100
    height: 700
    property alias mouseArea: mouseArea

    TextEdit {
        id: textEdit
        text: qsTr("Enter some text...")
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Rectangle {
            anchors.fill: parent
            anchors.margins: -10
            color: "transparent"
            border.width: 1
        }
    }

    Image {
        id: imgBarcode
        x: 69
        y: 340
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
        x: -26
        y: 39
        source: "images/istruzioni_iniziali_2.png"
    }

    Tastiera {
        id: tastiera
        x: 673
        y: 369
        width: 300
        height: 300
    }
}
