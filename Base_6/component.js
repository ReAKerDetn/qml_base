var component;
var sprite1;
var sprite2;
var number = 1
var my_list = []

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


function deleteSpriteObjects() {
    if (number % 2 == 0) {
        sprite1.destroy();
        sprite2.destroy();
        //appWindow.destroy();
        // sprite1 = component.object.destroy(appWindow, {x: 149, y: 150});
        number += 1
        console.log("Вы удалили элементы")
    }else {
        number += 1
        createSpriteObjects()
        console.log("Вы добавили элементы")
    }
}
