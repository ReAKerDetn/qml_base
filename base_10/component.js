var component;
var sprite3;
var number = 1
var my_list = []
var bool_t = false


function createSpriteObjects(xpos, ypos) {
    component = Qt.createComponent("Sprite.qml");
    if (component.status === Component.Ready)
        finishCreation(xpos, ypos);
}

function finishCreation(xpos, ypos) {
        if (number % 2 == 0) {
            sprite3 = component.createObject(appWindow, {x: xpos, y: ypos})
            my_list.push(sprite3)
        }
}


function deleteSpriteObjects() {
    if (number % 2 != 0) {
        number += 1
        bool_t = true
        console.log(bool_t)
        console.log("Вы удалили элементы")
        console.log(number)
    }else {
        for (var j = 0; j < my_list.length; j += 1) {
            my_list[j] = my_list[j].destroy()
        }
        bool_t = false
        console.log(bool_t)
        my_list = []
        number += 1
        console.log("Вы добавили элементы")
    }
}


