import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_anime_model.freezed.dart';
part 'detail_anime_model.g.dart';

@freezed
class DetailAnimeModel with _$DetailAnimeModel {
  const factory DetailAnimeModel({
    required String title,
    required String imageUrl,
    required num malId,
    required num score,
    required int rank,
  }) = _DetailAnimeModel;

  factory DetailAnimeModel.fromJson(Map<String, dynamic> json) =>
      _$DetailAnimeModelFromJson(json);
}
