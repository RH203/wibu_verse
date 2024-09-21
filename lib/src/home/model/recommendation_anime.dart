import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation_anime.freezed.dart';
part 'recommendation_anime.g.dart';

@freezed
class RecommendationAnime with _$RecommendationAnime {
  const factory RecommendationAnime({
    required String title,
    required String imageUrl,
    required num malId,
  }) = _RecommendationAnime;

  factory RecommendationAnime.fromJson(Map<String, dynamic> json) =>
      _$RecommendationAnimeFromJson(json);
}
