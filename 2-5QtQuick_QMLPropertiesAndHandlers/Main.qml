import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Properties and Handlers Demo!!")


    //Whenever we declare a property
    //Qt automatically generates a signal associated with it like in below example.
    property string mName: "Devendra"
    onMNameChanged: {
        console.log("The first name changed to ::" +mName)
    }

    Rectangle {
        id :rectId
        width: 150
        height: width*2
        color:"greenyellow"
        anchors.centerIn: parent

        MouseArea {

            anchors.fill: parent
            onClicked: {
             mName = "Devendraa"
            }
        }
    }

    Component.onCompleted: {

        console.log("First name is:: " +mName)
    }


}
