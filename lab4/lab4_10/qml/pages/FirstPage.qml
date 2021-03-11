import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaListView {
        anchors.fill: parent
        model: 10
        delegate: ListItem {
            width:parent.width
            Label {
                anchors.centerIn: parent
                text: "Элемент списка №" + index
                color: "white"
            }
            menu: ContextMenu {
                MenuItem {
                    text: "Первый элемент меню"
                    onClicked: console.log(text + " " + index)
                }
                MenuItem {
                    text: "Второй элемент меню"
                    onClicked: console.log(text + " " + index)
                }
                MenuItem {
                    text: "Третий элемент меню"
                    onClicked: console.log(text + " " + index)
                }
            }
        }
    }
}
