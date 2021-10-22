import 'dart:io';
import 'string_operations.dart';

class Employee {
  late String _empId;
  late String _empName;
  late double _basicSalary;
  var phone;
  var email;
  var gender;
  var city;
  var state;
  var country;
  var pincode;

  late double HRA, DA, TA, MA, PF, GS, TAX, NS;

  void takeInput() {
    try {
      print("Enter the Emp Id:");
      _empId = stdin.readLineSync().toString();
      print("Enter the Emp Name:");
      _empName = stdin.readLineSync().toString();
      print("Enter the Basic Salary:");
      _basicSalary = double.parse(stdin.readLineSync()!);
      print("Enter the Phone Number:");
      phone = stdin.readLineSync().toString();
      print("Enter the Email:");
      email = stdin.readLineSync().toString();
      print("Enter the Gender:");
      gender = stdin.readLineSync().toString();
      print("Enter the City:");
      city = stdin.readLineSync().toString();
      print("Enter the State:");
      state = stdin.readLineSync().toString();
      print("Enter the Country:");
      country = stdin.readLineSync().toString();
      print("Enter the Pincode:");
      pincode = stdin.readLineSync().toString();

      processPayslip(_basicSalary);
    } catch (e) {
      print(e);
      takeInput();
    }
  }

  double compute(double basicSalary, double percentage) {
    double result = 0;
    if (basicSalary != null && percentage != null) {
      result = (basicSalary * (percentage / 100));
      return result;
    }
    return 0;
  }

  void processPayslip(double BS) {
    HRA = compute(BS, 50);
    DA = compute(BS, 10);
    TA = compute(BS, 20);
    MA = compute(BS, 15);
    PF = compute(BS, 5);
    GS = BS + HRA + DA + TA + MA;
    TAX = GS * (10 / 100);
    NS = GS - TAX - PF;
  }

  void printPlayslip() {
    StringOperations properCaseName = StringOperations();
    _empName = properCaseName.properCase(_empName);

    print("-------Employee Payslip-------");
    print("ID: $_empId");
    print("Name: $_empName");
    print("Phone: $phone");
    print("Email: $email");
    print("Gender: $gender");
    print("City: $city");
    print("State: $state");
    print("Country: $country");
    print("Pincpde: $pincode");
    print("Basic Salary: $_basicSalary");

    print("************************");
    print("HRA - $HRA");
    print("DA - $DA");
    print("TA - $TA");
    print("MA - $MA");
    print("HRA - $HRA");
    print("PF - $PF");
    print("GS - $GS");
    print("TAX - $TAX");
    print("NS - $NS");
    print("************************");
  }
}
