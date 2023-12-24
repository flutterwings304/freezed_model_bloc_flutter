// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'employee_cubit.dart';

abstract class EmployeeState {}

class InitEmployeeState extends EmployeeState {}

class LoadingEmployeeState extends EmployeeState {}

class ErrorEmployeeState extends EmployeeState {
  final String message;
  ErrorEmployeeState(this.message);
}

class ResponseEmployeeState extends EmployeeState {
  List<EmployeeModel> employee;
  ResponseEmployeeState(this.employee);

  ResponseEmployeeState copyWith({
    List<EmployeeModel>? product,
  }) {
    return ResponseEmployeeState(
      product ?? employee,
    );
  }
}
