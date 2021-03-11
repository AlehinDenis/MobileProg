import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    Column {
        anchors.fill: parent
        anchors.margins: Theme.paddingMedium
        spacing: Theme.paddingMedium
        PageHeader{
            title: "Первая страница"
        }
        Button {
            text: "Прикрепить страницу"
            onClicked: pageStack.pushAttached(Qt.resolvedUrl("SecondPage.qml"))
        }
        Button {
            text: "Открепить страницу"
            onClicked: pageStack.popAttached()
        }
    }
}
