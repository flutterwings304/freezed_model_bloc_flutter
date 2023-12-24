// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeModelImpl _$$EmployeeModelImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeModelImpl(
      id: json['id'] as int,
      employee_name: json['employee_name'] as String,
      employee_salary: json['employee_salary'] as int,
      employee_age: json['employee_age'] as int,
    );

Map<String, dynamic> _$$EmployeeModelImplToJson(_$EmployeeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_name': instance.employee_name,
      'employee_salary': instance.employee_salary,
      'employee_age': instance.employee_age,
    };
