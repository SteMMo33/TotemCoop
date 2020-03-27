import QtQuick 2.4
import QtQuick.Controls 2.0

Rectangle {
    id: item1

    width: 1200
    height: 800
    property alias txtTotemId: txtTotemId
    property alias txtShopId: txtShopId
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
        width: 491
        height: 93
        anchors.left: pane1.left
        anchors.leftMargin: 0
        anchors.top: pane1.bottom
        anchors.topMargin: 25
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
            x: 187
            y: -5
            width: 285
            height: 40
        }
    }

    Pane {
        id: pane1
        width: 491
        height: 200
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20

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
            y: 103
            text: qsTr("TotemID:")
            font.pixelSize: 20
        }

        Rectangle {
            id: rectangle1
            x: 158
            y: 57
            width: 99
            height: 35
            color: "#ffffff"
            radius: 5
            border.width: 2

            TextInput {
                id: txtShopId
                text: qsTr("Text Input")
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.bottomMargin: 5
                anchors.topMargin: 5
                anchors.fill: parent
                font.bold: true
                inputMask: "NNNN"
                font.pixelSize: 20
            }
        }

        Rectangle {
            id: rectangle2
            x: 158
            y: 98
            width: 99
            height: 34
            color: "#ffffff"
            radius: 4
            border.width: 2

            TextInput {
                id: txtTotemId
                text: qsTr("Text Input")
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.bottomMargin: 5
                anchors.topMargin: 5
                anchors.fill: parent
                font.bold: true
                inputMask: "NNNN"
                font.pixelSize: 20
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 887
        y: 48
        width: 200
        height: 200
        color: "#ffe0e0"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }
}
