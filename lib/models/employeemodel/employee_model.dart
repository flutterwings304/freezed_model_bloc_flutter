// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({
    required int id,
    
    required String employee_name,
    required int employee_salary,
    required int employee_age,
  }) = _EmployeeModel;
  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);
}

//flutter pub run build_runner build --delete-conflicting-outputs