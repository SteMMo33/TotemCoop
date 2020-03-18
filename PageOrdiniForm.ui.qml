import QtQuick 2.4

Item {
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
    }

    Image {
        id: image
        x: 37
        y: 247
        source: "images/sinistra_150.png"
    }

    Image {
        id: image1
        x: 913
        y: 247
        source: "images/destra_150.png"
    }

    Image {
        id: imgRitira
        x: 878
        y: 455
        source: "images/icona_RITIRA_200.png"
    }
}
