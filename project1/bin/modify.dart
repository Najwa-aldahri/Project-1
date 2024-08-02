import 'dart:io';

import 'manage_employee.dart';

class Modify {

// ManageEmployee manage = ManageEmployee();
 ManageEmployee manage;

  Modify(this.manage);

  void modifyEmployeeSalary() {
    print("Enter Employee ID to modify salary:");
    int id = int.parse(stdin.readLineSync()!);

    if (!manage.employeeData.containsKey(id)) {
      print('Employee not found.\n');
      return;
    }

    print("Enter the new salary for employee ID $id:");
    int newSalary = int.parse(stdin.readLineSync()!);
    manage.employeeData[id]!.salary = newSalary;
    

    print('Employee salary updated successfully.\n');
  }
}
