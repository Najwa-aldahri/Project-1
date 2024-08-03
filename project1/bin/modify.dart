import 'dart:io';
import 'manage_employee.dart';

/* in the Modify class will be responsible for employee modifications
 such as salary, premision, and job description. 
  the employee’s validity of the modification must be verified before the modification.*/


class Modify {
  ManageEmployee manage;
  Modify(this.manage);


//to modify the employee salary
  void modifyEmployeeSalary() {
    print("what is your role in the company? (admin,manager,worker...etc).");
    String role = stdin.readLineSync()!;
    String lowerCase = role.toLowerCase();

    if (lowerCase == "admin") {
      print("Enter Employee ID to modify salary:");
      int id = int.parse(stdin.readLineSync()!);

      if (!manage.employeeData.containsKey(id)) {
        print("Employee not found.\n");
        return;
      }
      print("Please enter the amount of monye you want to add it to $id employee");
      int newSalary = int.parse(stdin.readLineSync()!);
      manage.employeeData[id].salary += newSalary;
      print("Employee salary updated successfully.\n");
    } else {
      print("Sorry you don't have premission to control the employee salary");
    }
  }

//to update the employee job description
  modifyEmployeeDescription() {
    print("what is your role in the company? (admin,manager,worker...etc).");
    String role = stdin.readLineSync()!;
    String lowerCase = role.toLowerCase();
    if (lowerCase == "admin") {
      print("Enter the employee ID you want to modify job descreption");
      int? empId = int.parse(stdin.readLineSync()!);
      if (!manage.employeeData.containsKey(empId)) {
        print("Employee not found.\n");
        return;
      }
      print("what is the new description?");
      String? newDescription = stdin.readLineSync()!;
      manage.employeeData[empId]!.description = newDescription;
      print("Employee job description updated successfully.\n");
    } else {
      print("Sorry you don't have premission to control the employee salary");
    }
  }

//to modify the employee premmision
  modifyEmployeePremmision() {
    print("what is your role in the company? (admin,manager,worker...etc).");
    String role = stdin.readLineSync()!;
    String lowerCase = role.toLowerCase();
    if (lowerCase == "admin") {
      print("Enter the employee ID you want to modify job descreption");
      int? empId = int.parse(stdin.readLineSync()!);
      if (!manage.employeeData.containsKey(empId)) {
        print('Employee not found.\n');
        return;
      }
      print("what is the new premission?");
      String? newPrmission = stdin.readLineSync()!;
      manage.employeeData[empId]!.permission = newPrmission;
      print("Employee premission updated successfully.\n");
    } else {
      print("Sorry you don't have premission to control the employee salary");
    }
  }
}
