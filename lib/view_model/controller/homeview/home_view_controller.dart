import 'package:get/get.dart';
import 'package:newsapp/data/network/network_api_service.dart';
import 'package:newsapp/repository/home_repository.dart';
import 'package:newsapp/res/appurl/app_url.dart';

class HomeViewModel extends GetxController {
  final _newsRepository = NewsRepository();

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
      final data = await _newsRepository.fetchNews(category);
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
