var component;
var sprite1;
var sprite2;

function createSpriteObjects() {
    component = Qt.createComponent("Sprite.qml");
    if (component.status === Component.Ready)
        finishCreation();
}

function finishCreation() {
        sprite1 = component.createObject(appWindow, {x: 149, y: 150});
        sprite2 = component.createObject(appWindow, {x: 400, y: 150});
        console.log("У тебя получился прямоугольник");
}
