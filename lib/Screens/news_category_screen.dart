import 'package:flutter/material.dart';
import 'package:news_app/models/Article_Model.dart';
import 'package:news_app/services/News_Service.dart';
import 'package:news_app/widgets/list_view_news_card.dart';

class NewsCategoryScreen extends StatelessWidget {
  NewsCategoryScreen({
    super.key,
    required this.articles,
    required this.category,
  });

  List<ArticleModel> articles = [];
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          category,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: NewsService().getnews(category: category),
        builder: (context, snapshot) {
          return ListViewNewsCard(articles: snapshot.data ?? []);
        },
      ),
    );
  }
}
