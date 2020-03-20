import QtQuick 2.4
import QtQuick.Controls 2.0

Rectangle {
    id: item1
    width: 800
    height: 400
    property alias cmbPorte: cmbPorte
    property alias txtNumPorte: txtNumPorte
    property alias btnChiudi: btnChiudi

    Button {
        id: btnChiudi
        x: 315
        y: 144
        width: 294
        text: qsTr("Chiudi")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Pane {
        id: pane
        x: 95
        y: 81
        width: 585
        height: 93
        anchors.horizontalCenter: parent.horizontalCenter
        visible: true

        Text {
            id: text1
            x: 0
            y: 0
            text: qsTr("Porte seriali: ")
            font.pixelSize: 24
        }

        Text {
            id: txtNumPorte
            x: 159
            y: 0
            text: qsTr("N")
            font.pixelSize: 24
        }

        ComboBox {
            id: cmbPorte
            x: 214
            y: -11
            width: 340
            height: 40
        }
    }
}
