import 'package:flutter/material.dart';
import 'package:news_app/models/card_model.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({super.key, required this.category});
  final CardModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, top: 13, left: 10),
      child: SizedBox(
        height: 150,
        child: Container(
          height: 150,
          width: 230,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.black,
            image: DecorationImage(image: AssetImage("${category.image}")),
          ),
        ),
      ),
    );
  }
}
