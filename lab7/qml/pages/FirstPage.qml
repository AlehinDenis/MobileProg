import QtQuick 2.0
import Sailfish.Silica 1.0
import Counter 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All


    Counter {
        id: counter
        count: 0
    }

    Column {
        y:500
        spacing: 10
        width: parent.width
        Label {
            y: 100
            anchors.horizontalCenter: parent.horizontalCenter
            text: counter.count
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Увеличить"
            onClicked: {counter.add()}
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Сбросить"
            onClicked: counter.reset()
        }
    }
}

