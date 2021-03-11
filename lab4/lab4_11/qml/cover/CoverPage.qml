import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    Label {
        id: label
        property int counter: 0
        anchors.centerIn: parent
        text: counter
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-cancel"
            onTriggered: label.counter = 0
        }

        CoverAction {
            iconSource: "image://theme/icon-cover-new"
            onTriggered: label.counter++
        }
    }
}
