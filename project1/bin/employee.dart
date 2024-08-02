
class Employee {
  int id;
  String name;
  int salary;
  String permission;
  String description;

  Employee({
    required this.id,
    required this.name,
    required this.salary,
    required this.permission,
    required this.description,
  });

 
  String employeeInfo() {
    return "ID: $id\nName: $name\nSalary: $salary\nPermission: $permission\nJob Description: $description";
  }


}

