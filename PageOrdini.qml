import QtQuick 2.4

PageOrdiniForm {
    id: pageOrdiniForm

    //width: parent.width
    //height: parent.height

    btnRitira.onClicked: {
        riqPiazzola.nPiazzola = 5;
        riqPiazzola.visible = true;
        console.log("Ritirato!")
        timerTimeout.start()
    }

    btnEsci.onClicked: {
        visible = false
        console.log("ESC")
        timerTimeout.stop()
    }

    btnPrev.onClicked: {
        riqOrdine.importo = 77
        riqOrdine.ordineNo = 8888
    }

    btnNext.onClicked: {
        riqOrdine.importo = 555
        riqOrdine.ordineNo = 666
    }

    Timer {
        id: timerTimeout
        interval: 10
        onIntervalChanged: pageOrdiniForm.visible = false;
    }
}
