import 'package:flutter/material.dart';
import 'package:news_app/models/Article_Model.dart';
import 'package:news_app/widgets/News_category.dart';

class NewsListview extends StatelessWidget {
  NewsListview({super.key, required this.articles});
  List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return NewsCategory(articleModel: articles[index]);
        },
      ),
    );
  }
}
