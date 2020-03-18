import QtQuick 2.0

Item {
    id: thisBtn
    property string key: "Y"

    signal clicked()

    width: 100
    height: 100
    Image {
        id: image
        width: 50
        height: 50
        sourceSize.height: 100
        sourceSize.width: 100
        anchors.fill: parent
        source: "images/pulsante_tastiera_4.png"

        Text {
            id: keyB
            x: 37
            y: 43
            text: key
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.bold: true
            font.pixelSize: 32
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: { console.log("Click"); thisBtn.clicked(); }
        }
    }

}
