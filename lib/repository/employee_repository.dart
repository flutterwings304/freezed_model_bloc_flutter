import 'package:meelance_fllutter_assignment/cubit/employee_cubit.dart';

import '../apis/api.dart';
import '../models/employeemodel/employee_model.dart';

class EmployeeRepository {
  getEmployeeList() async {
    final response = await APIClass.getRequest("employees");
    List<EmployeeModel> myEmployees = [];

    if (response["status"] == "success") {
      final jsonData = response["data"] as List;

      for (var e in jsonData) {
        myEmployees.add(EmployeeModel.fromJson(e));
      }

      return myEmployees;
    } else {
      return ErrorEmployeeState(response["message"]);
    }
  }
}
