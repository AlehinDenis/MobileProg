import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    ListModel {
        id: model
        ListElement {task: "Убраться в комнате"; date: "11.03.2021"}
        ListElement {task: "Сходить в магазин"; date: "13.03.2021"}
        ListElement {task: "Прочитать книгу"; date: "14.03.2021"}
        ListElement {task: "Сходить на учебу"; date: "16.03.2021"}
    }

    SlideshowView {
        anchors.centerIn: parent
        model: model
        delegate: Text {
            text: date + ":\n\n" + task
            color: "white"
            font.pixelSize: 72
        }
    }
}
