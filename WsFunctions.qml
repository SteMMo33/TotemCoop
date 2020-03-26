import QtQuick 2.0

QtObject {

    id: wsFunctions

    signal response(var data);
    signal error(string msg);

    function wsInit(url, body){
        var http = new XMLHttpRequest()

        http.open("GET", url, true);

        // Send the proper header information along with the request
        http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        http.setRequestHeader("Content-length", body.length);
        http.setRequestHeader("Connection", "close");
        http.setRequestHeader("Authorization", "Basic " + Qt.btoa("amtektotem:4mt3k"));
        return http;
    }


    function wsGetOrder(code){

        var params = "body";
        var http = wsInit("https://staging.e-coop.it/virtualShop/rest/totem/getOrder?codOrder="+code+"&numPitch=-1&shopId=3306&idTotem=1", params);

        http.onreadystatechange = function() { // Call a function when the state changes.
           if (http.readyState == 4) {
                    if (http.status == 200) {
                        console.log("> http ok: " + http.responseText)
                        var orders = JSON.parse(http.responseText)
                        response(orders)
                    } else {
                        console.log(http.responseText)
                        error(http.responseText)
                    }
           }
        }
        http.send(params);
    }


}
