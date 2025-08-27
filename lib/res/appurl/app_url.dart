class ApiConstants {
  static const String baseUrl = "https://newsapi.org/v2";
  static const String apiKey = "f96a1f6336e94c6c84e09f15c7c70a10";

  static String topHeadlines({String country = "us", String category = "general"}) {
    return "$baseUrl/top-headlines?country=$country&category=$category&apiKey=$apiKey";
  }
}
