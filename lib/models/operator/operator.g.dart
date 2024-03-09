// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperatorModelImpl _$$OperatorModelImplFromJson(Map<String, dynamic> json) =>
    _$OperatorModelImpl(
      name: json['name'] as String? ?? '',
      rarity: json['rarity'] as int? ?? 0,
      artist: json['artist'] as String? ?? '',
      va: json['va'] as String? ?? '',
      biography: json['biography'] as String? ?? '',
      description: json['description'] as String? ?? '',
      quote: json['quote'] as String? ?? '',
      lore: (json['lore'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      affiliation: (json['affiliation'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      classes: (json['class'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      trait: json['trait'] as String? ?? '',
      releaseDates: (json['releaseDates'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$$OperatorModelImplToJson(_$OperatorModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rarity': instance.rarity,
      'artist': instance.artist,
      'va': instance.va,
      'biography': instance.biography,
      'description': instance.description,
      'quote': instance.quote,
      'lore': instance.lore,
      'affiliation': instance.affiliation,
      'class': instance.classes,
      'tags': instance.tags,
      'trait': instance.trait,
      'releaseDates': instance.releaseDates,
      'url': instance.url,
    };
