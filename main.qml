import QtQuick 2.7
import QtQuick.Window 2.2

Window {

    // property int numeroSeriali - Non definire una variabile che arriva da C++ !!

    visible: true
    width: Screen.width
    height: Screen.height

    title: qsTr("Totem COOP")

    PageInizio {
        id: pageInizio
        anchors.fill: parent

        tastiera {
            id: tastiera
            anchors.top: parent.height > parent.width ? parent.bottom : undefined
            anchors.topMargin: parent.height > parent.width ? 250 : undefined
            anchors.horizontalCenter: parent.height > parent.width ? parent.horizontalCenter : undefined
        }

        tastiera.onValidCode: {
            console.log("[PageInizio] Code:"+ code);

            if (code=="555"){
                console.log("N:"+numeroSeriali)
                console.log("seriali")
                pageSettings.txtNumPorte.text = numeroSeriali.toString()
                pageSettings.txtShopId.text = shopId
                pageSettings.txtTotemId.text = totemId
                pageSettings.cmbPorte.model = seriali
                pageSettings.visible = true
                return
            }

            httpRes = "..."
            pageInizio.state = "stAttesaWs"

            var http = new XMLHttpRequest()
            var url = "https://staging.e-coop.it/virtualShop/rest/totem/getOrder?codOrder="+code+"&numPitch=-1&shopId=3306&idTotem=1";
            var params = "body";

            http.open("GET", url, true);

            // Send the proper header information along with the request
            http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            http.setRequestHeader("Content-length", params.length);
            http.setRequestHeader("Connection", "close");
            http.setRequestHeader("Authorization", "Basic " + Qt.btoa("amtektotem:4mt3k"));

            http.onreadystatechange = function() { // Call a function when the state changes.
               if (http.readyState == 4) {
                        if (http.status == 200) {
                            console.log("> http ok: " + http.responseText)
                            httpRes = http.responseText

                            // pageLoaderI.source = "PageOrdini.qml"
                            // state = "pageOrdini"
                            var orders = JSON.parse(http.responseText)
                            if (orders.resultCode===30){
                                msgError = orders.faultString
                                state = "stError"
                                timerOper.start()
                            }
                            else {
                                pageOrdini.visible = true
                            }
                        } else {
                            httpRes = "> http error: " + http.status
                            console.log(http.responseText)

                            msgError = "["+http.status +"] "+ http.statusText + " - " + http.responseText
                            state = "stError";
                            timerOper.start()
                        }
               }
            }
            http.send(params);
        }

        mouseArea {
            onPressed: function(){
                console.log("pressedMain")
                wsFunctions.wsGetOrder("336699")
            }
        }

        WsFunctions {
            id: wsFunctions
            onResponse: {
                console.log(data)
                pageInizio.httpRes = data.faultString
            }
        }


        Timer {
              id: timerOper
              interval: 5000
               repeat: false
               running: false
               triggeredOnStart: false
               onTriggered: {
                   tastiera.code = ""
                   pageInizio.state = ""
               }
        }


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

        onTxtShopIdChanged: function(){
            console.log("shopId:"+txtShopId.text)
        }

        onTxtTotemIdChanged: function(){
            console.log("totemId:"+txtTotemId.text)
        }

    }

}
