import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_anime.freezed.dart';

part 'top_anime.g.dart';

@freezed
abstract class TopAnime with _$TopAnime {
  const factory TopAnime(
      {required String title,
      required String imageUrl,
      required String malId}) = _TopAnime;

  factory TopAnime.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeFromJson(json);
}
