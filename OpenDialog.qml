import QtQuick 2.0
import QtQuick.Dialogs 1.3
import "openFile.js" as Js

FileDialog {
    visible: false
    modality: Qt.WindowModal
    title: "Open some preset"
    nameFilters: ["Preset files (*.preset)", "any file (*.*)"]
    onAccepted: {
        Js.parseAndClean();
        for(var j = 0; j < cubeModel.count; j++)
            Js.loadCube(j,cubeModel.get(j).start,cubeModel.get(j).length);
    }
}
