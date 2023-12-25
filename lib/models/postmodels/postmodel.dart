// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'postmodel.freezed.dart';
part 'postmodel.g.dart';

@freezed //This is used to create a freezed model
class PostModel with _$PostModel {
  const factory PostModel({
    //Sample key from json to show how we recieve the data from backend
    required int id,
    required int userId,
    required String title,
    required String body,
  }) = _PostModel;
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
