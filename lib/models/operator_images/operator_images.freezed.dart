// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operator_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OperatorImagesModel _$OperatorImagesModelFromJson(Map<String, dynamic> json) {
  return _OperatorImagesModel.fromJson(json);
}

/// @nodoc
mixin _$OperatorImagesModel {
  String get name => throw _privateConstructorUsedError;
  String get originalLink => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperatorImagesModelCopyWith<OperatorImagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperatorImagesModelCopyWith<$Res> {
  factory $OperatorImagesModelCopyWith(
          OperatorImagesModel value, $Res Function(OperatorImagesModel) then) =
      _$OperatorImagesModelCopyWithImpl<$Res, OperatorImagesModel>;
  @useResult
  $Res call({String name, String originalLink, String link});
}

/// @nodoc
class _$OperatorImagesModelCopyWithImpl<$Res, $Val extends OperatorImagesModel>
    implements $OperatorImagesModelCopyWith<$Res> {
  _$OperatorImagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? originalLink = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalLink: null == originalLink
          ? _value.originalLink
          : originalLink // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OperatorImagesModelImplCopyWith<$Res>
    implements $OperatorImagesModelCopyWith<$Res> {
  factory _$$OperatorImagesModelImplCopyWith(_$OperatorImagesModelImpl value,
          $Res Function(_$OperatorImagesModelImpl) then) =
      __$$OperatorImagesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String originalLink, String link});
}

/// @nodoc
class __$$OperatorImagesModelImplCopyWithImpl<$Res>
    extends _$OperatorImagesModelCopyWithImpl<$Res, _$OperatorImagesModelImpl>
    implements _$$OperatorImagesModelImplCopyWith<$Res> {
  __$$OperatorImagesModelImplCopyWithImpl(_$OperatorImagesModelImpl _value,
      $Res Function(_$OperatorImagesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? originalLink = null,
    Object? link = null,
  }) {
    return _then(_$OperatorImagesModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalLink: null == originalLink
          ? _value.originalLink
          : originalLink // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperatorImagesModelImpl implements _OperatorImagesModel {
  const _$OperatorImagesModelImpl(
      {this.name = '', this.originalLink = '', this.link = ''});

  factory _$OperatorImagesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OperatorImagesModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String originalLink;
  @override
  @JsonKey()
  final String link;

  @override
  String toString() {
    return 'OperatorImagesModel(name: $name, originalLink: $originalLink, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperatorImagesModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalLink, originalLink) ||
                other.originalLink == originalLink) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, originalLink, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperatorImagesModelImplCopyWith<_$OperatorImagesModelImpl> get copyWith =>
      __$$OperatorImagesModelImplCopyWithImpl<_$OperatorImagesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperatorImagesModelImplToJson(
      this,
    );
  }
}

abstract class _OperatorImagesModel implements OperatorImagesModel {
  const factory _OperatorImagesModel(
      {final String name,
      final String originalLink,
      final String link}) = _$OperatorImagesModelImpl;

  factory _OperatorImagesModel.fromJson(Map<String, dynamic> json) =
      _$OperatorImagesModelImpl.fromJson;

  @override
  String get name;
  @override
  String get originalLink;
  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$OperatorImagesModelImplCopyWith<_$OperatorImagesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
