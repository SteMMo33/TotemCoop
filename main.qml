import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    visible: true

    width: Screen.width
    height: Screen.height

    title: qsTr("Totem COOP")

    Loader { id: pageLoader }

    PageInizio {
        id: pageInizio
        anchors.fill: parent

        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background.'))
            pageLoader.source = "qrc://PagePaga.qml"
        }

        tastiera.onValidCode: {
            console.log("[PageInizio] Code:"+ code);

            var http = new XMLHttpRequest()
            var url = "https://postman-echo.com/get";
            var params = "foo=1234";
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
                    pageLoader.source = "qrc://PagePaga.qml"
                                    } else {
                                        httpRes = "> http error: " + http.status
                                    }
                                }
                            }
            http.send(params);
        }

    }


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
