import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_anime.freezed.dart';
part 'top_anime.g.dart';

@freezed
class TopAnime with _$TopAnime {
  const factory TopAnime({
    required String title,
    required String imageUrl,
    required String malId,
    required num score,
    required int rank,
  }) = _TopAnime;

  factory TopAnime.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeFromJson(json);
}
