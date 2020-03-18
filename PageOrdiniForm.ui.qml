import QtQuick 2.4

Item {
    width: 900
    height: 800

    RiquadroOrdine {
        id: riquadroOrdine
        x: 200
        y: 150
        width: 500
        height: 500
    }

    Image {
        id: imgEsci
        x: 15
        y: 449
        source: "images/icona_ESCI.png"
    }

    Image {
        id: image
        x: 8
        y: 247
        source: "images/sinistra_150.png"
    }

    Image {
        id: image1
        x: 742
        y: 247
        source: "images/destra_150.png"
    }
}
