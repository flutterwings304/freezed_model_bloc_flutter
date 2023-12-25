import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../apis/api.dart';
import '../models/employeemodel/employee_model.dart';
import '../repository/employee_repository.dart';

part 'employee_state.dart';

class EmployeeCubit extends Cubit<EmployeeState> {
  final EmployeeRepository _employeeRepository;

  EmployeeCubit(this._employeeRepository) : super(InitEmployeeState());

  Future<void> fetchEmployee() async {
    emit(LoadingEmployeeState());
    try {
      final response = await _employeeRepository.getEmployeeList();

      emit(ResponseEmployeeState(response));
    } catch (e) {
      print(e);
      emit(ErrorEmployeeState(e.toString()));
    }
  }

  Future<void> deleteEmployee(String id) async {
    print("ID $id");
    try {
      APIClass.deleteRequest("delete/$id").then((val) {
        print(val);
        if (val["status"] == "success") {
          Fluttertoast.showToast(msg: "Employee Deleted Successfully");
          fetchEmployee();
        } else {
          Fluttertoast.showToast(msg: val["message"]);
        }
      });
    } catch (e) {
      print(e);

      emit(ErrorEmployeeState(e.toString()));
    }
  }

  Future<void> createEmployee(Map<String, dynamic> myData) async {
    try {
      APIClass.postRequest("create", myData).then((al) {
        Fluttertoast.showToast(msg: "Employee Added Successfully");
      });

      fetchEmployee();
    } catch (e) {
      print(e);
      emit(ErrorEmployeeState(e.toString()));
    }
  }
  // @override
  // void onChange(Change<EmployeeState> change) {
  //   print(change);
  //   super.onChange(change);
  // }

  // @override
  // void onError(Object error, StackTrace stackTrace) {
  //   print(error);
  //   super.onError(error, stackTrace);
  // }
}
