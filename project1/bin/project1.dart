import 'dart:io';

void main() {
  Map<String, dynamic> employeeInfo = {};

  print("Add the emplyee name");
  String name = stdin.readLineSync()!;
  print("Add the emplyee salary");
  String? salary = stdin.readLineSync();
  print("Add the emplyee Premision");
  String? premision = stdin.readLineSync()!;
  print("Add the job description");
  String? description = stdin.readLineSync()!;

  employeeInfo[name] = {
    "salary": salary,
    "premision": premision,
    "job description": description,
  };

  employeeInfo.forEach((name, details) {
    print("-------------------------");
    print('Name: $name');
    details.forEach((key, value) {
      print('$key: $value');
    });
    print('');
    print("-------------------------");
  });
}
