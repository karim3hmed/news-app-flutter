import 'package:flutter/material.dart';
import 'package:news_app/models/Article_Model.dart';
import 'package:news_app/widgets/news_category_card.dart';

class ListViewNewsCard extends StatelessWidget {
  ListViewNewsCard({super.key, required this.articles});

  List<ArticleModel> articles = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return NewsCategoryCard(articleModel: articles[index]);
      },
    );
  }
}
