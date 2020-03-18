import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    visible: true

    width: 1200
    height: 800

    title: qsTr("Totem COOP")


    PageInizio {
        anchors.fill: parent
        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        }
    }
}
