// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopAnimeImpl _$$TopAnimeImplFromJson(Map<String, dynamic> json) =>
    _$TopAnimeImpl(
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      malId: json['malId'] as String,
      score: json['score'] as num,
      rank: (json['rank'] as num).toInt(),
    );

Map<String, dynamic> _$$TopAnimeImplToJson(_$TopAnimeImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'malId': instance.malId,
      'score': instance.score,
      'rank': instance.rank,
    };
