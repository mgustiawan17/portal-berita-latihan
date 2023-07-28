import 'package:flutter/material.dart';

class FuturedArticles extends StatelessWidget {
  const FuturedArticles({
    super.key,
    required this.dataArticle,
  });

  final List<Map<String, String>> dataArticle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade700,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Featured Articles",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Text(
            dataArticle[1]['title']!,
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }
}
