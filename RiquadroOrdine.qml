import QtQuick 2.0

Item {
    property var importo
    property var ordineNo

    Rectangle {
        id: rectangle
        color: "#000000"
        radius: 20
        visible: true
        border.color: "#ff0000"
        border.width: 3
        anchors.fill: parent

        Text {
            id: txtCarrello
            x: 243
            y: 46
            color: "#ffffff"
            text: qsTr("Carrello: XXXXXXXXXXX")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 29
        }

        Text {
            id: text2
            x: 257
            y: 113
            color: "#ffffff"
            text: qsTr("Totale da pagare")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 35
        }

        Text {
            id: txtImporto
            x: 226
            y: 204
            color: "#fffbfb"
            text: qsTr("€ 158,99")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 58
        }

        Text {
            id: txtProgressivo
            x: 293
            y: 354
            color: "#fffbfb"
            text: qsTr("Progressivo ordine: x di X")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 35
        }
    }

}
