import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: 100
            Item {
                id: firstItem
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                Rectangle {
                    id: redRect
                    width: 100
                    height: 100
                    color: "#FF0000"

                }
                Rectangle {
                    id: greenRect
                    width: 100
                    height: 100
                    color: "#00FF00"
                    anchors.left: redRect.right
                    anchors.top: redRect.verticalCenter

                }
                Rectangle {
                    id: blueRect
                    width: 100
                    height: 100
                    color: "#0000FF"
                    anchors.left: greenRect.horizontalCenter
                    anchors.bottom: greenRect.verticalCenter
                }
                Text {
                    text: "Квадрат"
                    font.family:"Helvetica"
                    font.pointSize: 15
                    color:"white"
                    anchors.centerIn: blueRect
                }
            }
            Column {
                anchors.topMargin: 100
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 15
                Row {
                    spacing: 15
                    Rectangle {
                        width: 100
                        height: 100
                        color: "#FF0000"
                    }
                    Rectangle {
                        width: 100
                        height: 100
                        color: "#00FF00"
                    }
                    Rectangle {
                        width: 100
                        height: 100
                        color: "#0000FF"
                    }
                }
                Row {
                    spacing: 130
                    Rectangle {
                        width: 100
                        height: 100
                        color: "#FF00FF"
                    }
                    Rectangle {
                        width: 100
                        height: 100
                        color: "#000000"
                    }
                }
            }
        }
    }
}
