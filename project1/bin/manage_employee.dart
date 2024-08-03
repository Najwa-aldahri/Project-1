import 'dart:io';
import 'employee.dart';

class ManageEmployee {
  //empty map for the emplyee information
  Map<int, dynamic> employeeData = {};

//adding employee function
  addemploye() {
//collecting employee information
    print("Add the emplyee id");
    final int id = int.parse(stdin.readLineSync()!);
    print("Add the emplyee name");
    String name = stdin.readLineSync()!;
    print("Add the emplyee salary");
    int salary = int.parse(stdin.readLineSync()!);
    print("Add the emplyee Premision");
   var permission = stdin.readLineSync()!;
    print("Add the job description");
    String? description = stdin.readLineSync()!;

//to store the data
    Employee employee = Employee(
      id: id,
      name: name,
      salary: salary,
      permission: permission,
      description: description,
    );
    employeeData[id] = employee;

    print('Employee data added successfully.\n');
  }

//display function
  void displayEmployeeData() {
    if (employeeData.isEmpty) {
      print('No employee data available.\n');
      return;
    }
    employeeData.forEach((id, employee) {
      print("----------------------");
      print(employee.employeeInfo());
      print("----------------------");
    });

    // employeeData.forEach((id, employee) {
    //   // 'details' is the inner map
    //   print("----------------------");
    //   print('ID: $id');
    //   details.forEach((key, value) {
    //     print('$key: $value');
    //   });
    //   print("----------------------");
    //   print(''); // Add a newline for better readability
    // });
  }
}
