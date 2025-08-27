import 'package:get/get.dart';
import 'package:newsapp/data/network/network_api_service.dart';
import 'package:newsapp/res/appurl/app_url.dart';

class HomeViewModel extends GetxController {
  final _apiService = NetworkApiService();

  var isLoading = false.obs;
  var articles = [].obs;

  final categories = [
    "general",
    "business",
    "entertainment",
    "health",
    "science",
    "sports",
    "technology",
  ];

  var selectedCategory = "general".obs;

  @override
  void onInit() {
    super.onInit();
    fetchNews(category: selectedCategory.value);
  }

  Future<void> fetchNews({String category = "general"}) async {
    try {
      isLoading.value = true;

      final url = ApiConstants.topHeadlines(country: "us", category: category);
      print("Fetching: $url");

      final data = await _apiService.getApi(url);
      print("Response: $data");

      articles.value = data['articles'] ?? [];
    } catch (e) {
      print("Error fetching news: $e");
    } finally {
      isLoading.value = false;
    }
  }

  void changeCategory(String category) {
    selectedCategory.value = category;
    fetchNews(category: category);
  }
}
