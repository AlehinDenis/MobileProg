import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    Timer {
        id: timer
        function start() {
            timer.interval = 10;
            timer.repeat = false;
            timer.triggered.connect(cb);
            timer.triggered.connect(function release () {
                timer.triggered.disconnect(cb); // This is important
                timer.triggered.disconnect(release); // This is important as well
            });
            timer.start();
        }
    }

    Column {
        y: 200
        width: parent.width
        spacing: 10
        property double time: 0
        Rectangle {
            id: red
            anchors.horizontalCenter: parent.horizontalCenter
            width: 200
            height: width
            radius: width*0.5
            color: "black"
            state: "red"
            states:
            State {
                name: "red"
                when:(green.stateIndicator.state == "green")
                PropertyChanges {
                    target: red
                    color:"red"
                }
            }
        }
        Rectangle {
            id: yellow
            anchors.horizontalCenter: parent.horizontalCenter
            width: 200
            height: width
            radius: width*0.5
            color: "black"
            states:
            State {
                name: "yellow"
                when:(red.stateIndicator.state == "red")
                PropertyChanges {
                    target: yellow
                    color:"yellow"
                }
            }
        }
        Rectangle {
            id: green
            anchors.horizontalCenter: parent.horizontalCenter
            width: 200
            height: width
            radius: width*0.5
            color: "black"
            states:
            State {
                name: "green"
                when:(yellow.stateIndicator.state == "yellow")
                PropertyChanges {
                    target: green
                    color:"green"
                }
            }
        }
    }
}
