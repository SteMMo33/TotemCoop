import QtQuick 2.4

PageSettingsForm {

    btnChiudi.onClicked: visible = false


    mouseArea.onPressed: function() {
        console.log("pressed")
    }

}
