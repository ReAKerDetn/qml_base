import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Item {
        focus: true          //bool
        clip: false
        property double number: 32155.2355   //double c точкой
    }
    NumberAnimation {
        loops: 5
        Component.onCompleted: {
            console.log(loops)
        }

    }
    Component.onCompleted: {
        console.log(NumberAnimation.number)
    }
    Item {
        width: 100; height: 100

        states: [
            State { name: "activated" },
            State { name: "deactivated" }       //list
        ]

        Component.onCompleted: {
            console.log("Name of first state:", states[0].name)      //компонент вывода
            for (var i = 0; i < states.length; i++)
                console.log("state", i, states[i].name)
        }
    }
    Image { source: "путь к фото" }     // url
    Item {
        property int aNumber: 100
        property bool aBool: false
        property string aString: "Hello world!"
        property color anotherString: String("#FF008800")
        property color aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
        property rect aRect: Qt.rect(10, 10, 10, 10)
        property point aPoint: Qt.point(10, 10)
        property size aSize: Qt.size(10, 10)
        property vector3d aVector3d: Qt.vector3d(100, 100, 100)       // что это?????
        property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]  // список
        property var anObject: { "foo": 10, "bar": 20 }  // словарь
        property var aFunction: (function() { return "one"; })  // функция
    }
    Item {
        property var car: new Object({wheels: 4})

        Text {
            text: "The car has " + car.wheels + " wheels";
        }

        Component.onCompleted: {
            car.wheels = 6;
        }
    }
}
