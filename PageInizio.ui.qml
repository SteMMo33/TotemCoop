import QtQuick 2.7

Rectangle {
    id: rectangle

    width: 1366
    height: 700

    property alias tastiera: tastiera
    property alias httpRes: httpRes.text
    property alias operatore: imgOperatore
    property alias warning: imgWarning

    property alias msgError: txtOperatore.text
    property alias panelError: rectOperatore

    // var bool portrait: this.height > this.width

    Image {
        id: imgBarcode
        x: 243
        y: 484
        source: "images/barcode_linear_ok_2.png"
    }

    Image {
        id: imgIstruzioni
        x: 28
        y: 160
        source: "images/istruzioni_iniziali_2.png"
    }

    Tastiera {
        id: tastiera
        x: 1017
        y: parent.height > parent.width ? 400 : 200
        width: 300
        height: 300
        anchors.horizontalCenter: parent.height > parent.width ? parent.horizontalCenter : undefined
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

    Rectangle {
        id: rectOperatore
        color: "#ffffff"
        visible: false
        anchors.fill: parent

        Image {
            id: imgOperatore
            x: 569
            y: -173
            width: 228
            height: 205
            visible: true
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "images/operatore.png"
        }

        Image {
            id: imgWarning
            x: 9
            y: -24
            width: 182
            height: 176
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
            visible: true
            source: "images/warning.png"
        }

        Text {
            id: txtOperatore
            text: qsTr("Messaggio")
            font.bold: true
            anchors.top: parent.top
            anchors.topMargin: 70
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 70
        }
    }

    Image {
        id: image
        x: 314
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        source: "images/logo-coop-grande.png"
    }
    states: [
        State {
            name: "stError"
        },
        State {
            name: "stAttesaWs"
        }
    ]
}
