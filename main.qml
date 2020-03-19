import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    visible: true

    //width: 1200
    //height: 850

    title: qsTr("Totem COOP")

    Loader { id: pageLoader }

    PageInizio {
        id: pageInizio
        anchors.fill: parent

        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background.'))
        }

        tastiera.onValidCode: {
            console.log("[PageInizio] Code:"+ code);
            pageLoader.source = "PagePaga.qml"
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
