import QtQuick 2.15
import QtQuick.Window 2.15
import "component.js" as MyScript

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        id: appWindow
        width: 300; height: 300

        Component.onCompleted: MyScript.createSpriteObjects();
    }
}

