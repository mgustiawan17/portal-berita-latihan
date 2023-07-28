import 'package:flutter/material.dart';

class ListArticles extends StatelessWidget {
  const ListArticles({
    super.key,
    required this.dataArticle,
  });

  final List<Map<String, String>> dataArticle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: dataArticle.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            height: 50,
            margin: EdgeInsets.only(
                left: (index == 0) ? 20 : 5, top: 5, right: 10, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    dataArticle[index]['image']!,
                    width: double.infinity,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  dataArticle[index]['category']!,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(dataArticle[index]['title']!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w600,
                        ))
              ],
            ),
          );
        },
      ),
    );
  }
}
