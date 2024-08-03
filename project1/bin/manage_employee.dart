import 'dart:io';
import 'employee.dart';

/*in the Manage Employee class will be all about 
-adding the employee info to the map 
-displaying the map  */

class ManageEmployee {
  //empty map for the emplyee information
  Map<int, dynamic> employeeData = {};

//adding employee function
  addemploye() {
//collecting employee information
    print("Add the employee id");
    final int id = int.parse(stdin.readLineSync()!);
    print("Name of the employee");
    String name = stdin.readLineSync()!;
    print("Salary of the employee");
    double salary = double.parse(stdin.readLineSync()!);
    print("Add the Premision");
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

    print("Employee information added successfully !!\n");
    print("--------------------------------------------");
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
  }
}
