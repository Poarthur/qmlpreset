function loadCube(i,beg,size) {
    var component = Qt.createComponent("Cube.qml");
    if (component.status === Component.Ready) {
        var cube = component.createObject(cubes);
        cube.x = beg;
        cube.num = i;
        cube.width = size;
        cube.onShowCube.connect(sendToText)
    }

}
function sendToText(num){
    text1.text = cubeModel.get(num).a;
    text2.text = cubeModel.get(num).b;
    text3.text = cubeModel.get(num).c;
}

function parseAndClean() {
    //Clean---------------------------------
    cubeModel.clear();
    scrollView.contentWidth = 0;
    text1.text = '0';
    text2.text = '0';
    text3.text = '0';
    for(var k = 0; k < cubes.children.length; k++)
        cubes.children[k].destroy();
    //Parse----------------------------------
    pressetPars.parse(fileUrl);
    headmenu.pname.text = pressetPars.presName;
    for(var i = 0; i < pressetPars.count; i++){
        cubeModel.append(pressetPars.cubes[i]);
        if(cubeModel.get(i).start + cubeModel.get(i).length > scrollView.contentWidth)
            scrollView.contentWidth = cubeModel.get(i).start + cubeModel.get(i).length;
    }
}
