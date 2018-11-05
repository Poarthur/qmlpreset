import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    minimumHeight: 400
    minimumWidth: 300
    title: qsTr("Presets")
    ListModel{
        id: cubeModel
    }
    HeaderMenu{
        id: headmenu
        width: parent.width
        height: parent.height / 8
    }
    OpenDialog {
         id: openfile
    }

    ScrollView {
        id: scrollView
        x: 0
        y: 280
        width: parent.width
        height: 200
        anchors.bottom: parent.bottom
        contentWidth: parent.width
        Item {
            id: cubes
            x: 0
            y: 0
            height: scrollView.height
        }
    }
    RowLayout {
        id: rowLayout
        width: parent.width
        anchors.bottom: scrollView.top
        anchors.bottomMargin: 0
        anchors.top: headmenu.bottom
        anchors.topMargin: 0

        Rectangle {
            id: rectangle1
            width: 200
            height: 200
            color: "#00000000"
            Layout.fillWidth: true
            Layout.fillHeight: true

            Text {
                id: text1
                x: 503
                y: 83
                width: 17
                height: 34
                text: qsTr("0")
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: rectangle2
            width: 200
            height: 200
            color: "#00000000"
            Layout.fillWidth: true
            Layout.fillHeight: true

            Text {
                id: text2
                x: 293
                y: 83
                text: qsTr("0")
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: rectangle3
            width: 200
            height: 200
            color: "#00000000"
            Layout.fillWidth: true
            Layout.fillHeight: true

            Text {
                id: text3
                x: 208
                y: 83
                text: qsTr("0")
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 30
            }
        }
    }
}
