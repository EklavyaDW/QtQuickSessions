import QtQuick
import QtQuick.Window

Window {
    id:windowId
    width: 640
    height: 480
    visible: true
    title : qsTr("QML Property Binding Demo!!!")


    // In this rectangle below, height is dependent on the width always
    // as width changes the height will also change accordingly
    // and that's what we call as property binding.


    Rectangle {
        id : redRectId
        width: 77
        height : width *1.5 // height is bound to the width with this expression here
        color: "red"
    }

    Rectangle {

        id : greenRectId
        width: 100
        height : 100
        color: "green"
        anchors.bottom: parent.bottom
        MouseArea {

            anchors.fill: parent
            onClicked: {
              redRectId.width =  redRectId.width+10
            }
        }

    }


    Rectangle {

        id : orangeRectId
        width: 100
        height : 100
        color: "orange"
        anchors.bottom: parent.bottom
        anchors.left: greenRectId.right

        MouseArea {

            anchors.fill: parent
            onClicked: {

                //redRectId.height = redRectId.width*2 // this will break the binding as it is calculated as value and then assigned.

                //So not to break the binding we use Qt.binding()
                //and inside it we provide value thorugh function.
                //so binding remains.
                redRectId.height = Qt.binding(function(){
                return redRectId.width*2
              })
            }
        }

    }

}
