import QtQuick 2.4

Item {
    property alias btnEsci: mouseAreaEsc
    property alias btnPrev: mouseAreaPrev

    width: 1100
    height: 800

    RiquadroOrdine {
        id: riquadroOrdine
        x: 300
        y: 144
        width: 500
        height: 500
    }

    Image {
        id: imgEsci
        x: 18
        y: 536
        source: "images/icona_ESCI.png"

        MouseArea {
            id: mouseAreaEsc
            anchors.fill: parent
        }
    }

    Image {
        id: imgPrev
        x: 37
        y: 247
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
        source: "images/destra_150.png"

        MouseArea {
            id: mouseArea3
            anchors.fill: parent
        }
    }

    Image {
        id: imgRitira
        x: 878
        y: 455
        source: "images/icona_RITIRA_200.png"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
        }
    }
}
