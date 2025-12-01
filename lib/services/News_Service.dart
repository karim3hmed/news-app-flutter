import 'package:dio/dio.dart';
import 'package:news_app/models/Article_Model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getnews({required String category}) async {
    Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=655c13457011498baeec603d3ea7e04b&category=$category",
    );
    Map<String, dynamic> JsonData = response.data;
    List<dynamic> articles = JsonData["articles"];
    List<ArticleModel> articleslist = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        title: article["title"],
        image: article["urlToImage"],
        subtitle: article["description"],
      );
      articleslist.add(articleModel);
    }
    return articleslist;
  }
}
