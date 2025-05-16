import 'package:dio/dio.dart';

import '../model/artical_model.dart';

class NewService {
  final Dio dio;

  NewService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {

    try {
      Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=3789788bf4a047e38524c9a62452d824&category=$category');

      // variable to store the response data
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          article['title'],
          article['description'],
          article['urlToImage'],
        );
        articlesList.add(articleModel);
      }

      return articlesList;
    }  catch (e) {
      return[];
    }
  }
}
