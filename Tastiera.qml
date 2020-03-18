import QtQuick 2.0

Item {
    id: keyboard

    property alias code: codice.text

    signal validCode(string code)
    width: 380
    height: 480

    Grid {
        id: grid
        x: 36
        y: 50
        width: 312
        height: 420
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 5
        rows: 4
        columns: 3

        TastieraBottone {
            id: btn1
            key: "1"
            onClicked: codice.text += "1"
        }

        TastieraBottone {
            id: btn2
            key: "2"
            onClicked: codice.text += "2"
        }

        TastieraBottone {
            id: btn3
            key: "3"
            onClicked: codice.text += "3"
        }

        TastieraBottone {
            id: btn4
            key: "4"
            onClicked: codice.text += "4"
        }

        TastieraBottone {
            id: btn5
            key: "5"
            onClicked: codice.text += "5"
        }

        TastieraBottone {
            id: btn6
            key: "6"
            onClicked: codice.text += "6"
        }

        TastieraBottone {
            id: btn7
            key: "7"
            onClicked: codice.text += "7"
        }

        TastieraBottone {
            id: btn8
            key: "8"
        }

        TastieraBottone {
            id: btn9
            key: "9"
        }

        TastieraBottone {
            id: btnCanc
            key: "X"
            onClicked: codice.text = ""
        }




        TastieraBottone {
            id: btn0
            key: "0"
            onClicked: codice.text += "0"
        }




        TastieraBottone {
            id: btnOk
            key: "OK"
            onClicked: keyboard.validCode(codice.text)
        }







    }

    Rectangle {
        id: display
        height: 44
        color: "#fec1c1"
        radius: 16
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        Text {
            id: codice
            text: qsTr("Text")
            anchors.fill: parent
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            styleColor: "#e04343"
            font.pixelSize: 33
        }
    }

}
