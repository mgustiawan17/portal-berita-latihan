import 'package:flutter/material.dart';
import 'package:portal_berita/screen/futured_articles.dart';
import 'package:portal_berita/screen/list_articles.dart';
import 'package:portal_berita/screen/profile_card.dart';
// import 'package:test_flutter/navigator_ui.dart';

class ProfileScreen extends StatelessWidget {
  List<Map<String, String>> dataArticle = [
    {
      "image":
          "https://assets.kompasiana.com/items/album/2019/01/11/cymera-20190111-122958-5c3835ef43322f72d853cc72.jpg?t=o&v=400",
      "category": "Nature",
      "title": "Let us plant more trees from this year"
    },
    {
      "image":
          "https://assets.kompasiana.com/items/album/2023/03/20/img-20230320-wa0032-64187c4a4addee0c6c60b482.jpg?t=o&v=400",
      "category": "Travel",
      "title": "5 Destinasi Wisata yang harus kamu kunjungi di website tersebut"
    },
    {
      "image":
          "https://ak-d.tripcdn.com/images/1i66922344l373i9tDC9D_W_400_0_R5_Q90.jpg?proc=source/trip",
      "category": "Archive",
      "title": "Dokumentasi selama di jogja"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //untuk widget tumpang tindih
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
            ),

            //tumpukkan kedua
            Column(
              children: [
                //Profile Card
                ProfileCard(),
                //label
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 20, bottom: 15, top: 50),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Notable Works",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  )),
                      Text(
                        "Base on the popularity of articles",
                        style: TextStyle(color: Colors.grey.shade600),
                      )
                    ],
                  ),
                ),
                //list articles
                ListArticles(dataArticle: dataArticle),

                //futured Articles
                FuturedArticles(dataArticle: dataArticle),
              ],
            ),
          ],
        ),
      ),
      // bottomNavigationBar: ButtonNavigation()
    );
  }
}
