import QtQuick
import QtQuick.Window

Window {

    id:windowId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Datatypes Demo!!")

    property string mString: "Hello QML Types!!"
    property string murlString: "https://www.google.com"
    property int mInt: 64
    property bool isFemale: true
    property double mDouble: 77.77
    property url mUrl: "https://www.google.com"

    //ctrl a + ctrl i will align whole code in qml
    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello world!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.5, 0.4, 0.3, 0.7)
    property var aRect: Qt.rect(10, 10, 10, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "one"; })

    property var aFont: Qt.font({family:"consolas", pointSize:37, bold:true})
    property date mDate: "2022-01-19"

    Rectangle {
        height: 200
        width: 200
        anchors.centerIn: parent
        //color: "yellow"
        color: aColor

        Text {
            id : mTextId
            anchors.centerIn: parent
            text: mString
            //font.bold: isFemale?true:false
            //font.italic: isFemale?false:true
            font: aFont
        }
    }


    Component.onCompleted: {
        //console.log("The value of string is::" +mString)
        print("The value of string is::" +mString)

        //console.log("The value of int is::" +mInt)
        print("The value of int is::" +mInt)

        //console.log("The value of bool is::" +isFemale)
        print("The value of bool is::" +isFemale)

        if(isFemale===true) {
            console.log("You may wear Dress")
        } else {
            console.log("You may wear Suit!")
        }


        //console.log("The value of double is::" +mDouble)
        print("The value of double is::" +mDouble)

        //console.log("The value of URL is::" +mUrl)
        print("The value of URL is::" +mUrl)

        // === will check the type &
        // == will check the value
        if (murlString == mUrl) {
            console.log ("They are Equal")
        } else {
            console.log ("They are not Equal")
        }

        console.log("------------------------|Play around with var datatype|------------------------")

        console.log("The value of var aNumber is::" +aNumber)
        console.log("The value of var aBool is::" +aBool)
        console.log("The value of var aString is::" +aString)
        console.log("The value of var anotherString is::" +anotherString)

        console.log("The components of var aRect x is::" +aRect.x + ",y : " +aRect.y + ", width :" +aRect.width+
                    ",height :" +aRect.height)

        console.log("------------------------|Play around with var array datatype|------------------------")

        console.log("The length of array is ::" +anArray.length)

        anArray.forEach(function(value){
             console.log(value)
        })

       /* console.log("------------------------|Use below Javascript code for loop
when we have function as array element and want to print that function's value|------------------------")
        anArray.forEach(function(value,index){

            if(index === 5) {
              console.log(value())
            } else {
              console.log(value)
            }
        })*/

        for (var i = 0; i < anArray.length ; i++) {

            if(i === 5) {
              console.log(anArray[i]())
            } else {
              console.log(anArray[i])
            }
        }

        console.log("Date is :: " +mDate)
        console.log("The function value is :: " +aFunction)
        console.log("The function value is :: " +aFunction())
    }
}
