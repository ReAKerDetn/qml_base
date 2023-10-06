import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: win
    width: 640; height: 480
    visible: true
    title: qsTr("Hello World")

    Button {
        id: testButton
        anchors.centerIn: parent
        text: qsTr("Click")
        onClicked: {
            win.color = Qt.rgba(Math.random(), Math.random(), Math.random())
        }
        contentItem: Text {
            text: testButton.text
            color: "#ffffff"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 10
        }
        background: Rectangle {
            Gradient {
                id: normalGradient
                GradientStop { position: 0.0; color: "#252525" }
                GradientStop { position: 0.5; color: "#e30000" }
                GradientStop { position: 1.0; color: "#252525" }
            }
            Gradient {
                id: hoveredGradient
                GradientStop { position: 0.0; color: "#252525" }
                GradientStop { position: 0.5; color: "#ff5e5e" }
                GradientStop { position: 1.0; color: "#252525" }
            }
            Gradient {
                id: pressedGradient
                GradientStop { position: 0.0; color: "#252525" }
                GradientStop { position: 0.5; color: "#b00000" }
                GradientStop { position: 1.0; color: "#252525" }
            }
            implicitWidth: 100
            implicitHeight: 50
            gradient: testButton.pressed ? pressedGradient :
                      testButton.hovered ? hoveredGradient :
                                           normalGradient
            radius: 10
            border.width: 2.0
            border.color: "#000000"
        }
    }
}
