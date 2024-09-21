import 'package:dio/dio.dart';
import 'package:wibu_verse/app_logger.dart';
import 'package:wibu_verse/core/di/injection.dart';
import 'package:wibu_verse/core/utils/helper_variabel/helper_variabel.dart';
import 'package:wibu_verse/src/home/model/recommendation_anime.dart';
import 'package:wibu_verse/src/home/model/top_anime.dart';

class HomeController {
  HomeController();
  final _dio = getIt<Dio>();

  // Get Recommendation anime
  Future<List<RecommendationAnime>> getRecommendationsAnime() async {
    try {
      final _response = await _dio.get(HelperVariabel.recomAnime);

      if (_response.statusCode == 200) {
        Map<String, dynamic> responseData =
            _response.data as Map<String, dynamic>;

        List<dynamic> recommendationJsonList =
            responseData["data"] as List<dynamic>;

        List<RecommendationAnime> result = [];

        for (var anime in recommendationJsonList) {
          for (var entry in anime['entry']) {
            if (entry['mal_id'] != null &&
                entry['title'] != bool &&
                entry['images']['jpg']['image_url'] != null) {
              result.add(RecommendationAnime(
                malId: entry['mal_id'],
                title: entry['title'] ?? 'Unknown Title',
                imageUrl: entry['images']['jpg']['image_url'] ?? '',
              ));
            }
          }
        }

        return result;
      } else {
        AppLogger.error(
            "Failed to fetch recommendations. Status code: ${_response.statusCode}");
        return [];
      }
    } catch (error, stacktrace) {
      AppLogger.error("Error occurred during fetching recommendations: $error");
      AppLogger.trace("Stacktrace: $stacktrace");

      return [];
    }
  }

  // get Top Anime
  Future<List<TopAnime>> getTopAnime() async {
    try {
      final _response = await _dio.get(HelperVariabel.topAnime);

      if (_response.statusCode == 200) {
        Map<String, dynamic> responseData =
            _response.data as Map<String, dynamic>;

        List<dynamic> topAnimeJsonList = responseData["data"] as List<dynamic>;

        List<TopAnime> result = [];

        for (var anime in topAnimeJsonList) {
          result.add(
            TopAnime(
              malId: anime['mal_id'].toString(),
              title: anime['title'] ?? 'Unknown Title',
              imageUrl: anime['images']['jpg']['large_image_url'] ?? '',
              score: anime['score'] ?? 0.0,
              rank: anime['rank'] ?? 0,
            ),
          );
        }

        return result;
      } else {
        AppLogger.error(
            "Failed to fetch top anime. Status code: ${_response.statusCode}");
        return [];
      }
    } catch (error, stacktrace) {
      AppLogger.error("Error occurred during fetching top anime: $error");
      AppLogger.trace("Stacktrace: $stacktrace");

      return [];
    }
  }
}
