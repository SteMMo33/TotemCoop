import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    visible: true

    width: Screen.width
    height: Screen.height

    title: qsTr("Totem COOP")

       PageInizio {
        id: pageInizio
        anchors.fill: parent

        Loader { id: pageLoaderI }


        tastiera.onValidCode: {
            console.log("[PageInizio] Code:"+ code);
            httpRes = "..."

            if (code=="555"){
                pageSettings.txtNumPorte.text = "5"
                pageSettings.visible = true
                return
            }

            var http = new XMLHttpRequest()
            var url = "https://postman-echo.com/get";
            var params = "foo=1234&foo1=bar1";
            http.open("GET", url, true);

            // Send the proper header information along with the request
            http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            http.setRequestHeader("Content-length", params.length);
            http.setRequestHeader("Connection", "close");

            http.onreadystatechange = function() { // Call a function when the state changes.
               if (http.readyState == 4) {
                        if (http.status == 200) {
                            console.log("> http ok: " + http.responseText)
                            httpRes = http.responseText

                            // pageLoaderI.source = "PageOrdini.qml"
                            state = "pageOrdini"
                        } else {
                             httpRes = "> http error: " + http.status

                            msgError = "Nessun ordine trovato"
                            panelError.visible = true
                            timerOper.start()
                        }
               }
            }
            http.send(params);
        }

        Timer {
               id: timerOper
               interval: 3000
               repeat: false
               running: false
               triggeredOnStart: false
               onTriggered: pageInizio.panelError.visible = false
        }


        states: [
            State {
                name: ""
            },
            State {
                name: "pageOrdini"
                PropertyChanges { target: pageOrdini; state: "focused" }
                PropertyChanges { target: pageOrdini; visible: true }
            },
            State {
                name: "pageInizio"
                PropertyChanges { target: pageInizio; state: "focused" }
            },
            State {
                name: "stPageSettings"
                PropertyChanges { target: pageSettings; visible: true }
            }
        ]

    }


    PageOrdini {
        id: pageOrdini
        anchors.fill: parent
        visible: false
    }

    PageSettings {
        id: pageSettings
        anchors.fill: parent
        visible: false
    }

}
