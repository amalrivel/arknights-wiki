// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'operator_images.freezed.dart';
part 'operator_images.g.dart';

@freezed
class OperatorImagesModel with _$OperatorImagesModel {
  const factory OperatorImagesModel({
    @Default('') String name,
    @Default('') String originalLink,
    @Default('') String link,
  }) = _OperatorImagesModel;

  factory OperatorImagesModel.fromJson(Map<String, dynamic> json) =>
      _$OperatorImagesModelFromJson(json);
}
