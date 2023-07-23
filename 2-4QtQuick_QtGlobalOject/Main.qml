import QtQuick
import QtQuick.Window

Window {

    id: windowID
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Global object Demo")

    property var fonts: Qt.fontFamilies()


    Rectangle {

        id: rectId
        width: 320
        height: 160
        color : "red"
        anchors.centerIn: parent

        Text {

            anchors.centerIn: parent
            text: "Ok"
            //Text.font: font.italic
        }
        MouseArea {

            anchors.fill: parent
            //Onclick of above rectangle or button we are doing following activites using Qt global object.
            onClicked: {

                console.log("-------------- quitting the app!  ------------------------")
                Qt.quit()

                console.log("-------------- Printing the font families available! ----------------")
                //Printing the font families available.
                for (var i =0 ; i< fonts.length; i++) {
                    console.log(" [ " + i + " ]: " +fonts[i])
                }
                console.log(" ----------------------- Opening url externally --------------------------")
                //Opening url externally
                //Qt.openUrlExternally("https://www.youtube.com")

                console.log(" ----------------------- Opening local files or folder on system with default program --------------------------")
                Qt.openUrlExternally("file:///D:/Softwares/npp.7.Installer.x64.exe")

                console.log("------------------- showing current platform/Os on system -----------------------")
                console.log("Platform on current system is:: " +Qt.platform.os)

            }
        }
    }


     Component.onCompleted: {

         //Hash a string
         var aName = "Devendraa"
         var hName = Qt.md5(aName)
         console.log("Hash name is :: " +hName)

     }
}
