import QtQuick
import QtQuick.Window

Window {

    id: rootId
    visible: true
    width: 640
    height: 480    
    title: qsTr("Syntax Demo!!!")

    property string textToShow: ""

    Row {

        id :row1Id
        anchors.centerIn: parent
        spacing: 20


        Rectangle {
             id:redRectId
            height: 190; width: 190
            color:"red"
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked:{
                  console.log("Red rectangle clicked")
                    textToShow = "RED"
                }
            }
        }

        Rectangle {
            id:greenRectId
            height: 190; width: 190
            color:"green"
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked:{
                  console.log("Green rectangle clicked")
                  textToShow = "GREEN"
                }
            }
        }

        Rectangle {
            id: blueRectId
            height: 190; width: 190
            color:"blue"
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked:{
                  console.log("Blue rectangle clicked")
                  textToShow = "BLUE"
                }
            }
        }

        Rectangle {
            id: textRectId
            height: 190; width: 190
            color:"orange"
            radius: 80
            Text {
                id: textId
                anchors.centerIn: parent
                //this below line is called property binding.
                //We are binding textToShow property to text component.
                text: textToShow
            }
            MouseArea {
                anchors.fill: parent
                onClicked:{
                  //console.log("orange circle clicked")
                    //Once we assign value to textId's text component
                    //the binding happened above will break.
                    textId.text = "Binding Break"

                }
            }
        }



    }
}
