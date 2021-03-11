import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    Column {
        y: 400
        width: parent.width
        spacing: Theme.paddingMedium
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Открыть диалог"
            onClicked: pageStack.push(dialog)
        }
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            id: label
        }
    }
    Dialog {
        id: dialog
        Column {
            width:parent.width
            spacing: 30
            DialogHeader {
                title: "Выберите время"
            }
            Item {
                height: time.height
                width: parent.width
                TimePicker {
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 400
                    height: 400
                    id: time
                    hourMode: DateTime.TwentyFourHours
                }
                Label {
                    anchors.centerIn: time
                    text: time.timeText
                    font.pixelSize: Theme.fontSizeExtraLarge
                }
            }
        }
        onAccepted: label.text = time.timeText
    }
}
