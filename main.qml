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

                            pageLoaderI.source = "PageOrdini.qml"
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
                PropertyChanges {
                    target: pageOrdini; state: "focused"

                }
            },
            State {
                name: "pageInizio"
                PropertyChanges {
                    target: pageInizio; state: "focused"

                }
            }
        ]

    }

/*
    PageOrdini {
        id: pageOrdini
    }
*/

/*
    View1{id:viewid1}
     View2{id:viewid2}
     View3{id:viewid3}
     states: [
       State {
           name: ""
       },
       State {
           name: "view1"
           PropertyChanges {target: viewid1; state: "focused"}
       },
       State {
           name: "view2"
           PropertyChanges {target: viewid2; state: "focused"}
        ...
       }
     ]
*/

}
