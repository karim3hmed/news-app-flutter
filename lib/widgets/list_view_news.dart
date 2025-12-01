import 'package:flutter/material.dart';

import 'package:news_app/services/News_Service.dart';

import 'package:news_app/widgets/news_listview.dart';

class ListViewNews extends StatelessWidget {
  ListViewNews({super.key});

  bool isloading = true;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsService().getnews(category: "general"),
      builder: (context, snapshot) {
        return NewsListview(articles: snapshot.data ?? []);
      },
    );
  }
}

// Expanded(
//             child: isloading
//                 ? Center(child: CircularProgressIndicator())
//                 : ListView.builder(
//                     itemCount: articles.length,
//                     itemBuilder: (context, index) {
//                       return NewsCategory(articleModel: articles[index]);
//                     },
//                   ),
//           );
