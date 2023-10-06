import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 620
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
       id: page
       width: 620; height: 480
       color: "black"

     Rectangle {
          id: rectangle
          width: 150; height: 150
          y: 30
          anchors.horizontalCenter: page.horizontalCenter
       }

       Grid {
          id: colorPicker
          x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
          rows: 2; columns: 3; spacing: 3

          Cell { cellColor: "red"; onClicked: rectangle.color = cellColor }
          Cell { cellColor: "green"; onClicked: rectangle.color = cellColor }
          Cell { cellColor: "blue"; onClicked: rectangle.color = cellColor }
          Cell { cellColor: "yellow"; onClicked: rectangle.color = cellColor }
          Cell { cellColor: "steelblue"; onClicked: rectangle.color = cellColor }
          Cell { cellColor: "black"; onClicked: rectangle.color = cellColor }
       }
    }
}
