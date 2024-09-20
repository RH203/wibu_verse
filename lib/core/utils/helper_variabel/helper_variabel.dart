class HelperVariabel {
  HelperVariabel();

  // Main path
  static String mainPath = "https://api.jikan.moe/v4/";

  // get top anime
  static String topAnime = "${mainPath}top/anime";
  // get top manga
  static String topManga = "${mainPath}top/manga";
  // get random anime
  static String randomAnime = "${mainPath}random/anime";
  // get recomendations anime
  static String recomAnime = "${mainPath}recommendations/anime";
}
