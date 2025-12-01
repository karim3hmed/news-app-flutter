import 'package:flutter/material.dart';
import 'package:news_app/models/Article_Model.dart';

class NewsCategoryCard extends StatelessWidget {
  NewsCategoryCard({super.key, required this.articleModel});
  ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 250,

              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: articleModel.image != null
                      ? NetworkImage(articleModel.image!)
                      : NetworkImage(
                          "https://media.cnn.com/api/v1/images/stellar/prod/2025-10-25t031449z-1270869811-rc2riha2vgdo-rtrmadp-3-usa-trump-asia.JPG?c=16x9&q=w_800,c_fill",
                        ),
                ),

                borderRadius: BorderRadius.circular(25),
              ),
            ),

            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Text(
                articleModel.title,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Text(
                articleModel.subtitle ?? "",
                maxLines: 2,
                style: const TextStyle(color: Colors.blueGrey, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
