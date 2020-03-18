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
}
