import 'dart:io';
import 'manage_employee.dart';
import 'modify.dart';

void main() {
  ManageEmployee employee = ManageEmployee();
  Modify modify = Modify(employee);
  print("----> Welcom to employee managment system <----");
  while (true) {
    print("1-Add new employee");
    print("2-Display employee info");
    print("3-Modify employee salary");
    print("4-Update employee job description");
    print("5-Modify employee premmision");
    int input = inputChecker("Choose an option:");

    switch (input) {
      case 1:
        employee.addemploye();
      case 2:
        employee.displayEmployeeData();
      case 3:
        modify.modifyEmployeeSalary();
      case 4:
        modify.modifyEmployeeDescription();
      case 5:
        modify.modifyEmployeePremmision();
    }
  }
}

int inputChecker(String prompt) {
  int? result;
  while (result == null) {
    print(prompt);
    try {
      result = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  }
  return result;
}
