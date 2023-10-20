var component;
var num = 0
var number = 1
var my_list = [5, 6, 7, 8, 9, 10]
var sprite_list = [];

function createSpriteObjects() {
    component = Qt.createComponent("Sprite.qml");
    if (component.status === Component.Ready)
        finishCreation();
}

function finishCreation() {
        num = Math.floor(Math.random() * my_list.length)
        console.log(my_list[num])
        for (var i = 0; i < my_list[num]; i += 1) {
            sprite_list.push(i)
        }
        for (var j = 0; j < sprite_list.length; j += 1) {
            sprite_list[j] = component.createObject(appWindow, {x: Math.random() * (500 - 30) + 100, y: Math.random() * (500 - 30) + 100}) // из-за случайный координат прямоугольники выходят
        }
        console.log(sprite_list.join(", "));
        console.log("У тебя получился прямоугольник");
}


function deleteSpriteObjects() {
    if (number % 2 == 0) {
        for (var i = 0; i < sprite_list.length; i += 1) {
            sprite_list[i] = sprite_list[i].destroy()
        }
        sprite_list = []
        number += 1
        console.log("Вы удалили элементы")
    }else {
        number += 1
        createSpriteObjects()
        console.log("Вы добавили элементы")
    }
}
