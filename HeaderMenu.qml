import QtQuick 2.0
import QtQuick.Controls 2.3
import "openFile.js" as Js

Rectangle {
    property alias pname : pname
    width: parent.width
    height: parent.height / 8
    color: "#444444"
    anchors.top: parent.top

    Button {
        id: button
        x: 17
        height: parent.height / 1.5
        text: qsTr("Load")
        anchors.verticalCenter: parent.verticalCenter
        highlighted: true
        onClicked: {
            openfile.visible = true;
        }
    }
    Text {
        id: pname
        x: 565
        color: "#c9c9c9"
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 50
        font.pixelSize: 14
    }
}
