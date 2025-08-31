import 'package:newsapp/data/network/network_api_service.dart';
import 'package:newsapp/res/appurl/app_url.dart';

class NewsRepository {
  final _apiService = NetworkApiService();

  Future<dynamic> fetchNews(String category) async {
    final url = ApiConstants.topHeadlines(country: "us", category: category);
    return await _apiService.getApi(url);
  }
}