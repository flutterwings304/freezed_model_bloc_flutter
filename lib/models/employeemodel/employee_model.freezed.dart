// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) {
  return _EmployeeModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeModel {
  int get id => throw _privateConstructorUsedError;
  String get employee_name => throw _privateConstructorUsedError;
  int get employee_salary => throw _privateConstructorUsedError;
  int get employee_age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeModelCopyWith<EmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeModelCopyWith<$Res> {
  factory $EmployeeModelCopyWith(
          EmployeeModel value, $Res Function(EmployeeModel) then) =
      _$EmployeeModelCopyWithImpl<$Res, EmployeeModel>;
  @useResult
  $Res call(
      {int id, String employee_name, int employee_salary, int employee_age});
}

/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res, $Val extends EmployeeModel>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employee_name = null,
    Object? employee_salary = null,
    Object? employee_age = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employee_name: null == employee_name
          ? _value.employee_name
          : employee_name // ignore: cast_nullable_to_non_nullable
              as String,
      employee_salary: null == employee_salary
          ? _value.employee_salary
          : employee_salary // ignore: cast_nullable_to_non_nullable
              as int,
      employee_age: null == employee_age
          ? _value.employee_age
          : employee_age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeModelImplCopyWith<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  factory _$$EmployeeModelImplCopyWith(
          _$EmployeeModelImpl value, $Res Function(_$EmployeeModelImpl) then) =
      __$$EmployeeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String employee_name, int employee_salary, int employee_age});
}

/// @nodoc
class __$$EmployeeModelImplCopyWithImpl<$Res>
    extends _$EmployeeModelCopyWithImpl<$Res, _$EmployeeModelImpl>
    implements _$$EmployeeModelImplCopyWith<$Res> {
  __$$EmployeeModelImplCopyWithImpl(
      _$EmployeeModelImpl _value, $Res Function(_$EmployeeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employee_name = null,
    Object? employee_salary = null,
    Object? employee_age = null,
  }) {
    return _then(_$EmployeeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employee_name: null == employee_name
          ? _value.employee_name
          : employee_name // ignore: cast_nullable_to_non_nullable
              as String,
      employee_salary: null == employee_salary
          ? _value.employee_salary
          : employee_salary // ignore: cast_nullable_to_non_nullable
              as int,
      employee_age: null == employee_age
          ? _value.employee_age
          : employee_age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeModelImpl implements _EmployeeModel {
  const _$EmployeeModelImpl(
      {required this.id,
      required this.employee_name,
      required this.employee_salary,
      required this.employee_age});

  factory _$EmployeeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeModelImplFromJson(json);

  @override
  final int id;
  @override
  final String employee_name;
  @override
  final int employee_salary;
  @override
  final int employee_age;

  @override
  String toString() {
    return 'EmployeeModel(id: $id, employee_name: $employee_name, employee_salary: $employee_salary, employee_age: $employee_age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employee_name, employee_name) ||
                other.employee_name == employee_name) &&
            (identical(other.employee_salary, employee_salary) ||
                other.employee_salary == employee_salary) &&
            (identical(other.employee_age, employee_age) ||
                other.employee_age == employee_age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, employee_name, employee_salary, employee_age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeModelImplCopyWith<_$EmployeeModelImpl> get copyWith =>
      __$$EmployeeModelImplCopyWithImpl<_$EmployeeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeModelImplToJson(
      this,
    );
  }
}

abstract class _EmployeeModel implements EmployeeModel {
  const factory _EmployeeModel(
      {required final int id,
      required final String employee_name,
      required final int employee_salary,
      required final int employee_age}) = _$EmployeeModelImpl;

  factory _EmployeeModel.fromJson(Map<String, dynamic> json) =
      _$EmployeeModelImpl.fromJson;

  @override
  int get id;
  @override
  String get employee_name;
  @override
  int get employee_salary;
  @override
  int get employee_age;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeModelImplCopyWith<_$EmployeeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
