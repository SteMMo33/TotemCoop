import QtQuick 2.0

Item {
    Grid {
        id: grid
        x: 103
        y: 33
        width: 450
        height: 450
        spacing: 5
        rows: 4
        columns: 3

        TastieraBottone {
            id: btn1
            key: "1"
            // MouseArea.onClicked: { console.log("1"); }
        }

        TastieraBottone {
            id: btn2
            key: "2"
            // MouseArea.onClicked: { console.log("2"); }
        }

        TastieraBottone {
            id: btn3
            key: "3"
        }

        TastieraBottone {
            id: btn4
            key: "4"
        }

        TastieraBottone {
            id: btn5
            key: "5"
        }

        TastieraBottone {
            id: btn6
            key: "6"
        }

        TastieraBottone {
            id: btnOk
            key: "OK"
        }


    }

    Text {
        id: codice
        x: 30
        y: 8
        width: 275
        height: 37
        text: qsTr("Text")
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e04343"
        font.pixelSize: 33
    }

}
