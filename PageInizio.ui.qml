import QtQuick 2.7

Rectangle {
    id: rectangle

    width: 1400
    height: 800
    property alias mouseArea: mouseArea
    property alias tastiera: tastiera

    property alias httpRes: httpRes.text
    property alias operatore: imgOperatore
    property alias warning: imgWarning

    property alias msgError: txtOperatore.text
    property alias panelError: rectOperatore

    // var bool portrait: this.height > this.width
    Image {
        id: imgBarcode
        x: 256
        y: 529
        source: "images/barcode_linear_ok_2.png"
    }

    Image {
        id: imgIstruzioni
        y: 205
        anchors.left: parent.left
        anchors.leftMargin: 60
        source: "images/istruzioni_iniziali_2.png"
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
            anchors.bottomMargin: 90
            anchors.horizontalCenter: parent.horizontalCenter
            visible: true
            source: "images/warning.png"
        }

        Text {
            id: txtOperatore
            width: 700
            height: 84
            text: qsTr("Messaggio")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenterOffset: 0
            font.bold: true
            anchors.top: parent.top
            anchors.topMargin: 200
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 40
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

    Image {
        id: imgWait
        x: 837
        y: 181
        anchors.right: parent.right
        anchors.rightMargin: 200
        anchors.verticalCenter: parent.verticalCenter
        visible: false
        source: "images/marker_coop_4.gif"
    }

    Tastiera {
        id: tastiera
        x: 531
        y: 247
        anchors.right: parent.right
        anchors.rightMargin: 200
        anchors.verticalCenter: parent.verticalCenter
        code: ""
    }

    Rectangle {
        id: rectangle1
        x: 31
        y: 545
        width: 200
        height: 200
        color: "#ffe0e0"
        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }


    states: [
        State {
            name: "stError"

            PropertyChanges {
                target: imgIstruzioni
                visible: false
            }

            PropertyChanges {
                target: txtOperatore
                visible: true
            }

            PropertyChanges {
                target: imgWarning
                visible: true
            }

            PropertyChanges {
                target: imgOperatore
                visible: true
            }

            PropertyChanges {
                target: rectOperatore
                visible: true
            }

            PropertyChanges {
                target: tastiera
                visible: false
            }
        },
        State {
            name: "stAttesaWs"

            PropertyChanges {
                target: imgBarcode
                visible: false
            }

            PropertyChanges {
                target: tastiera
                visible: false
            }

            PropertyChanges {
                target: imgWait
                anchors.rightMargin: 51
                visible: true
            }
        }
    ]
}
