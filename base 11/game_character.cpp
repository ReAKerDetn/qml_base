#include <iostream>
#include <string>
#include <fstream>
#include <cstring>
#include <cmath>
#include <ctype.h>
#include <windows.h>

using namespace std;

class Character {
private:
    int health;
    int speed;
    int power;
public:
    void characteristics_char(int health, int speed, int power) {
        this->health = health;
        this->speed = speed;
        this->power = power;
    }

//    void speed_char(int speed) {
//        this->speed = speed;
//    }
//
//    void power_char(int power) {
//        this->power = power;
//    }

    int minus_health() {
        return health -= 50;
    }

    int plus_health() {
        return health += 10;
    }

    int minus_speed() {
        return speed -= 50;
    }

    int plus_speed() {
        return speed += 50;
    }

    int minus_power() {
        return power -= 50;
    }

    int plus_power() {
        return power -= 50;
    }

    int health_info() {
         return health;
    }
};

int main() {
    SetConsoleOutputCP(CP_UTF8);
    Character Bill;
    Bill.characteristics_char(100, 100, 100);
//    Bill.speed_char(100);
//    Bill.power_char(100);
    cout << "Здоровье " << Bill.minus_health() << "\n";
    cout << "Здоровье " << Bill.minus_health() << "\n";
    cout << "Скорость " << Bill.minus_speed() << "\n";
    cout << "Сила " << Bill.minus_power() << "\n";
    cout << "здоровье " << Bill.plus_health() << "\n";
    cout << "Здоровье " << Bill.minus_health() << "\n";
    if (Bill.health_info() <= 0) {
        cout << "Bill dead" << "\n";
    }
    cout << Bill.health_info();

//    cout << "Здоровье " << Bill.minus_health();


    return 0;
}