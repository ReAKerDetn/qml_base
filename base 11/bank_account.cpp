#include <iostream>
#include <string>
#include <fstream>
#include <cstring>
#include <cmath>
#include <ctype.h>
#include <windows.h>

using namespace std;

class Bank {
private:
    int check;
public:
    void variable_check(int check) {
        this->check = check;
    }

    int depositing_funds(int sum) {
        return check += sum;
    }

    int withdrawal_funds(int sum) {
        return check -= sum;
    }

    int check_info() {
        return check;
    }
    int removal_check(int sum) {
        return 0;
    }
};

int main() {
    SetConsoleOutputCP(CP_UTF8);
    Bank Bill;
    Bill.variable_check(10000);
    cout << "Внести 2000: Получится " << Bill.depositing_funds(2000) << "\n";
    cout << "Снять 5000: Получится  " << Bill.withdrawal_funds(5000) << "\n";
    cout << "Снять 5000: Получится  " << Bill.withdrawal_funds(5000) << "\n";
    cout << "Снять 5000: Получится  " << Bill.withdrawal_funds(5000) << "\n";
    if (Bill.check_info() < 0) {
        cout << "У вас нет денег" << "\n";
    }
    cout << Bill.check_info() << "\n";

    return 0;
}