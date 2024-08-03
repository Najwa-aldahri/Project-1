import 'dart:io';
import 'manage_employee.dart';
import 'modify.dart';

void main() {
  // ManageEmployee managment = ManageEmployee();
  ManageEmployee employee = ManageEmployee();
  Modify modify = Modify(employee);

  while (true) {
    print("1-add new employee");
    print("2-display employee info");
    print("3-modify employee salary");
    print("4-modify employee job description");
    int input = int.parse(stdin.readLineSync()!);

    switch (input) {
      case 1:
        employee.addemploye();
      case 2:
        employee.displayEmployeeData();
      case 3:
        modify.modifyEmployeeSalary();
      case 4:
        modify.modifyEmployeeDescription();
    }

    // managment.addEmployee(employee);
  }
}

// modify({required int employeeSalary}) {
//   print("add the modifyed salary");
//   int modifyedSalary = int.parse(stdin.readLineSync()!);
//   employeeSalary = modifyedSalary + employeeSalary;
//   print(employeeSalary);
// }
