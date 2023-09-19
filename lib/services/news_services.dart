import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=c92ee067bc7948079c5aca1471be9322&category=$category');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];
      List<ArticleModel> articleslist = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subtitle: article['description']);
        articleslist.add(articleModel);
      }
      return articleslist;
    } catch (e) {
      return [];
    }
  }
}
