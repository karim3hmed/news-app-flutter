import 'package:flutter/material.dart';
import 'package:news_app/Screens/news_category_screen.dart';
import 'package:news_app/models/Article_Model.dart';

import 'package:news_app/models/card_model.dart';
import 'package:news_app/widgets/card_category.dart';

class CardListView extends StatelessWidget {
  CardListView({super.key});

  final List<CardModel> categories = [
    CardModel(image: "assets/Entertainment.png", text: "Entertainment"),
    CardModel(image: "assets/Business.png", text: "Business"),
    CardModel(image: "assets/Science.png", text: "Science"),
    CardModel(image: "assets/Sport.png", text: "sport"),

    CardModel(image: "assets/Technology.png", text: "Technology"),
  ];
  List<ArticleModel> articles = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsCategoryScreen(
                    articles: articles,
                    category: category.text, // هنا نمرر النص فقط
                  ),
                ),
              );
            },
            child: CardCategory(category: category),
          );
        },
      ),
    );
  }
}

// GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) {
//               return NewsCategoryScreen(articles: articles, category: categories,  );
//             },
//           ),
//         );
//       },
//       child: SizedBox(
//         height: 150,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: categories.length,
//           itemBuilder: (context, index) {
//             return CardCategory(category: categories[index]);
//           },
//         ),
//       ),
//     );
