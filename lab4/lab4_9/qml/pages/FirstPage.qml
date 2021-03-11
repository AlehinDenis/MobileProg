import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

     SilicaListView {
         anchors.fill: parent
         PullDownMenu {
             MenuItem {
                 id: item1
                 text: "Первый элемент меню"
                 onClicked: menuLabel.text = item1.text
             }
             MenuItem {
                 id: item2
                 text: "Второй элемент меню"
                 onClicked: menuLabel.text = item2.text
             }
             MenuItem {
                 id: item3
                 text: "Третий элемент меню"
                 onClicked: menuLabel.text = item3.text
             }
         }
         PushUpMenu  {
             id: pullDownMenu
             MenuLabel {id: menuLabel; text:""}
         }
     }
}
