import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        anchors.fill: parent

        MouseArea {
            anchors.fill: parent
            onClicked: {
                var nItem = {}
                nItem.xpos = mouseX;
                nItem.ypos = mouseY;
                nItem.color = Qt.rgba(Math.random(), Math.random(), Math.random())
                listModel.append(nItem)
            }
        }
        Repeater {
            model: listModel
            Rectangle {
                width: 50; height: width
                radius: width / 2
                color: Qt.rgba(Math.random(), Math.random(), Math.random())
                x: xpos - radius
                y: ypos - radius
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        listModel.remove(index);

                    }
                }
            }
        }
        ListModel {
            id: listModel
        }
    }

}
