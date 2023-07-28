import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:portal_berita/api/api.dart';
import 'package:portal_berita/api/list_berita_response/ListBeritaResponse.dart';
import 'package:portal_berita/screen/detail_berita_screen.dart';
import 'package:portal_berita/screen/profile_card.dart';
import 'package:portal_berita/screen/profile_screen.dart';

class HomeSubScreen extends StatefulWidget {
  @override
  State<HomeSubScreen> createState() => _HomeSubScreenState();
}

class _HomeSubScreenState extends State<HomeSubScreen> {
  List<Map<String, String>> dataCategory = [
    {
      "imgUrl": "https://cms-api-in.myhealthcare.co/image/20220910103120.jpeg",
      "category": "health",
    },
    {
      "imgUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Sport_balls.svg/800px-Sport_balls.svg.png",
      "category": "Sports",
    },
    {
      "imgUrl":
          "https://learn.canva.com/wp-content/uploads/2019/01/education-is-important.jpg",
      "category": "Edu",
    },
    {
      "imgUrl":
          "https://image.cnbcfm.com/api/v1/image/107217692-1680180821145-Ham_Swaggerty_TMobile_Park_2023_SodexoLive_4.jpg?v=1680203628",
      "category": "Foods",
    },
  ];

  List<Data> listData = [];
  getData() {
    Api.getListBerita().then((value) {
      //jika proses await selesai dan mengembalikan datanya
      //maka masuk ke dalam proses then()

      setState(() {
        listData = value.data!;
      });
    }).catchError((error) {
      print("ERROR : " + error);
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          //appbar
          AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            toolbarHeight: 100,
            automaticallyImplyLeading: false,
            title: Text(
              "Home",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple,
                ),
                child: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileScreen()));
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          //search
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400, blurRadius: 5, spreadRadius: 1)
              ],
            ),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {},
                  ),
                  hintText: "Search"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Wrap(
            //memberikan space antar kolom
            runSpacing: 10,
            children: dataCategory
                .map((value) =>
                    categoryItem(context, value['imgUrl']!, value['category']!))
                .toList(),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              "Berita Terkini",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: listData.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailBeritaScreen(
                              idBerita: listData[index].idBerita!,
                            )));
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    margin: EdgeInsets.only(
                        left: (index == 0) ? 20 : 5,
                        top: 5,
                        bottom: 5,
                        right: 10),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(listData[index].gambar!),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.50),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  listData[index].judul!,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          color: Colors.white, fontSize: 16),
                                ),
                                Text(
                                  listData[index].tanggalPost!,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Container categoryItem(BuildContext context, String imgUrl, String category) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 170,
      height: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.network(
              imgUrl,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x909090),
                      Color(0xCF272727),
                    ]),
              ),
            ),
            Positioned(
              bottom: 15,
              right: 10,
              child: Text(
                category,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
