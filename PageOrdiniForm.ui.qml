import QtQuick 2.4

Rectangle {
    id: item1
    property alias btnEsci: mouseAreaEsc
    property alias btnPrev: mouseAreaPrev
    property alias btnNext: mouseAreaNext
    property alias btnRitira: mouseAreaRitira

    property alias riqOrdine: riquadroOrdine
    property alias riqPiazzola: riquadroPiazzola

    width: 1100
    height: 800

    RiquadroOrdine {
        id: riquadroOrdine
        x: 300
        y: 144
        width: 500
        height: 388
        anchors.verticalCenterOffset: -26
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Image {
        id: imgEsci
        y: 564
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 35
        source: "images/icona_ESCI.png"

        MouseArea {
            id: mouseAreaEsc
            anchors.fill: parent
        }
    }

    Image {
        id: imgPrev
        y: 247
        anchors.left: parent.left
        anchors.leftMargin: 50
        source: "images/sinistra_150.png"

        MouseArea {
            id: mouseAreaPrev
            anchors.fill: parent
        }
    }

    Image {
        id: imgNext
        x: 913
        y: 247
        anchors.right: parent.right
        anchors.rightMargin: 50
        source: "images/destra_150.png"

        MouseArea {
            id: mouseAreaNext
            anchors.fill: parent
        }
    }

    Image {
        id: imgRitira
        x: 878
        y: 455
        anchors.right: parent.right
        anchors.rightMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 35
        source: "images/icona_RITIRA_200.png"

        MouseArea {
            id: mouseAreaRitira
            anchors.fill: parent
        }
    }

    Image {
        id: imgTitolo
        x: 194
        y: 8
        anchors.horizontalCenter: parent.horizontalCenter
        source: "images/logo-coop-grande.png"
    }

    RiquadroPiazzola {
        id: riquadroPiazzola
        x: 411
        width: 320
        height: 176
        anchors.top: riquadroOrdine.bottom
        anchors.topMargin: 50
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
