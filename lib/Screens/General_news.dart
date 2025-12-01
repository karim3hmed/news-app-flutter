import 'package:flutter/material.dart';
import 'package:news_app/models/Article_Model.dart';
import 'package:news_app/services/News_Service.dart';
import 'package:news_app/widgets/News_category.dart';

class GeneralNews extends StatefulWidget {
  const GeneralNews({super.key});

  @override
  State<GeneralNews> createState() => _GeneralNewsState();
}

class _GeneralNewsState extends State<GeneralNews> {
  List<ArticleModel> articles = [];
  @override
  void initState() async {
    articles = await NewsService().getnews(category: "general");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "General News",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return NewsCategory(articleModel: articles[index]);
        },
      ),
    );
  }
}
