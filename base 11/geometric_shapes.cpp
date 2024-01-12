#include <iostream>
#include <string>
#include <fstream>
#include <cstring>
#include <cmath>
#include <ctype.h>
#include <windows.h>

using namespace std;

class Circle {
private:
    float pi;
    int radius;
public:
    void setter_circle(float pi, int radius) {
        this->pi = pi;
        this->radius = radius;
    }

//    void setter_radius(int radius) {
//        this->radius = radius;
//    }

    int perimeter() {
        return 2 * pi * radius;
    }

    int surface() {
        return pi * pow(radius, 2);

    }
};

class Triangle {


};

class Rectangles {
private:
    int m_leng;
    int m_width;
public:
    void setter_rectangle(int m_leng, int m_width) {
        this->m_leng = m_leng;
        this->m_width = m_width;
    }

    int perimeter() {
        return (m_leng + m_width) * 2;
    }

    int surface() {
        return m_leng * m_width;
    }


};


int main() {
    SetConsoleOutputCP(CP_UTF8);
    Circle circle;
    circle.setter_circle(3.14, 5);
    cout << "Круг" << "\n";
    cout << "Периметр: " << circle.perimeter() << "\n";
    cout << "Площадь: " << circle.surface() << "\n" << "\n";

    Rectangles rectangle;
    rectangle.setter_rectangle(6, 10);
    cout << "Прямоугольник" << "\n";
    cout << "Периметр: " << rectangle.perimeter() << "\n";
    cout << "Площадь: " << rectangle.surface() << "\n";


    return 0;
}