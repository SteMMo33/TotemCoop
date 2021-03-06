import QtQuick 2.0

Item {
    property real importo: 0
    property string ordineNo: "-"

    Rectangle {
        id: rectangle
        color: "#000000"
        radius: 20
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
            id: txtCarrello
            x: 243
            y: 8
            color: "#ffffff"
            text: qsTr("Carrello: ")+ordineNo
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 27
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
            y: 210
            color: "#fffbfb"
            text: qsTr("€ ")+importo.toFixed(2)
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 70
        }


        Text {
            id: txtProgressivo
            x: 293
            y: 430
            color: "#fffbfb"
            text: qsTr("Progressivo ordine: x di X")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 32
        }

    }

}
