import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    SilicaListView {
        id: listView
        model: 20
        anchors.fill: parent
        Dialog {
            id: dialog
            Column{
                anchors.fill: parent
                width:parent.width
                spacing: Theme.paddingMedium
                DialogHeader {}
                TextField {
                    id: firstTextField
                    width: parent.width / 2 - 50
                }


            }
            onAccepted: console.log(parseInt(firstTextField.text) + parseInt(secondTextField.text))
        }
    }
    /*Dialog {
        id: dialog
        Column{
            anchors.fill: parent
            width: parent.width
            spacing:Theme.paddingMedium
            DialogHeader {}
            Label {
                x: Theme.paddingLarge
                text: "Введите текст"
            }
            TextField {
                id: textField
                width: parent.width
            }
        }
        onAccepted: console.log(textField.text)
    }*/
/*
    Dialog {
        id: dialog
        Column{
            spacing: Theme.paddingMedium
            DialogHeader {}
            Row {
                spacing: 50
                TextField {
                    id: firstTextField
                    width: parent.width / 2 - 50
                }
                TextField {
                    id: secondTextField
                    width: parent.width / 2 - 50
                }
            }
        }
        onAccepted: console.log(parseInt(firstTextField.text) + parseInt(secondTextField.text))
    }*/
}
