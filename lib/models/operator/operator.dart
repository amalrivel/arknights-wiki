import 'package:freezed_annotation/freezed_annotation.dart';

part 'operator.freezed.dart';
part 'operator.g.dart';

@freezed
class OperatorModel with _$OperatorModel {
  const factory OperatorModel({
    @Default('') String name,
    @Default(0) int rarity,
    @Default('') String artist,
    @Default('') String va,
    @Default('') String biography,
    @Default('') String description,
    @Default('') String quote,
    @Default({}) Map<String, String> lore,
    @Default([]) List<String> affiliation,
    @Default([]) List<String> classes,
    @Default([]) List<String> tags,
    @Default('') String trait,
    @Default({}) Map<String, String> releaseDates,
    @Default('') String url,
  }) = _OperatorModel;

  factory OperatorModel.fromJson(Map<String, dynamic> json) =>
      _$OperatorModelFromJson(json);
}