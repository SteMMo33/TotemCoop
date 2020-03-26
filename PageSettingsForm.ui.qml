import QtQuick 2.4
import QtQuick.Controls 2.0

Rectangle {
    id: item1

    width: 1200
    height: 800
    property alias mouseArea: mouseArea

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
        y: 51
        width: 585
        height: 93
        anchors.horizontalCenterOffset: -266
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

    Pane {
        id: pane1
        x: 499
        y: 209
        width: 656
        height: 200

        Text {
            id: text2
            x: 111
            y: 0
            text: qsTr("Impostazioni negozio")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 20
        }

        Text {
            id: text3
            x: 25
            y: 62
            text: qsTr("ShopID:")
            font.pixelSize: 20
        }

        Text {
            id: text4
            x: 25
            y: 99
            text: qsTr("TotemID:")
            font.pixelSize: 20
        }

        TextInput {
            id: txtShopId
            x: 154
            y: 66
            width: 80
            height: 20
            text: qsTr("Text Input")
            font.bold: true
            inputMask: "NNNN"
            font.pixelSize: 20
        }

        TextInput {
            id: txtTotemId
            x: 154
            y: 101
            width: 80
            height: 20
            text: qsTr("Text Input")
            font.bold: true
            inputMask: "NNNN"
            font.pixelSize: 20
        }
    }

    Rectangle {
        id: rectangle
        x: 219
        y: 265
        width: 200
        height: 200
        color: "#ffe0e0"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }
}
