import 'package:flutter/material.dart';
import 'package:news_app/models/Article_Model.dart';

class NewsCategory extends StatelessWidget {
  const NewsCategory({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: articleModel.image != null
                        ? NetworkImage(articleModel.image!)
                        : NetworkImage(
                            "https://media.cnn.com/api/v1/images/stellar/prod/2025-10-25t031449z-1270869811-rc2riha2vgdo-rtrmadp-3-usa-trump-asia.JPG?c=16x9&q=w_800,c_fill",
                          ),
                  ),

                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        articleModel.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),

                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),

                      Text(
                        articleModel.subtitle ?? "",
                        style: TextStyle(fontSize: 12),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
