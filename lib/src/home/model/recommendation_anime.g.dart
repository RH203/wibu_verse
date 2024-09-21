// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecommendationAnimeImpl _$$RecommendationAnimeImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendationAnimeImpl(
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      malId: json['malId'] as num,
    );

Map<String, dynamic> _$$RecommendationAnimeImplToJson(
        _$RecommendationAnimeImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'malId': instance.malId,
    };
