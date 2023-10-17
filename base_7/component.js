var component;
// var sprite3;
var sprite1;
var sprite2;
var number = 1
var my_list = []

function createSpriteObjects(num) {
    component = Qt.createComponent("Sprite.qml");
    if (component.status === Component.Ready)
        finishCreation(num);
}

function finishCreation(num) {
        for (var i = 1; i <= num; i += 1) {
            console.log(i)
            // sprite3 = component.createObject(appWindow, {x: Math.random(), y: Math.random()})

            my_list.push(i)
        }
        for (var j = 0; j < my_list.length; j += 1) {
            my_list[j] = component.createObject(appWindow, {x: Math.random() * (500 - 30) + 100, y: Math.random() * (500 - 30) + 100})
        }
        console.log(typeof(num));
        console.log(my_list.join(", "));
//        sprite1 = component.createObject(appWindow, {x: 149, y: 150});
//        sprite2 = component.createObject(appWindow, {x: 400, y: 150});
        console.log("У тебя получился прямоугольник");
}


function deleteSpriteObjects(num) {
    if (number % 2 == 0) {
//        sprite1.destroy();
//        sprite2.destroy();
        for (var j = 0; j < my_list.length; j += 1) {
            my_list[j] = my_list[j].destroy()
        }
        my_list = []
        number += 1
        console.log("Вы удалили элементы")
    }else {
        number += 1
        createSpriteObjects(num)
        console.log("Вы добавили элементы")
    }
}
