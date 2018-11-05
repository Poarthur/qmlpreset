import QtQuick 2.10

Rectangle {
    signal showCube(int cubeId);
    property int num: 0
    color: "#7ca0ff"
    height: 200
    MouseArea {
        anchors.fill: parent;
        onClicked: { parent.showCube(num);}
    }
}
