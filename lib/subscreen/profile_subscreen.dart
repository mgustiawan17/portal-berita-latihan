import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portal_berita/subscreen/multi_switch.dart';

class ProfileSubScreen extends StatelessWidget {
  const ProfileSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 700,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.grey),
                  ]),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://media.licdn.com/dms/image/C5603AQHbN-466XKOuw/profile-displayphoto-shrink_800_800/0/1663156577419?e=2147483647&v=beta&t=JNjUb5PrFoCpJHSP5i-3V_rweq4sDJEBnco0SXZDoOk",
                              width: 130,
                              height: 125,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Mokhamad Gustiawan",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          "m.gustiawan@sakuratex.id",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        "Edit Profile ",
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                        size: 17,
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade100,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          Text(
                            "C O N T E N T",
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 13),
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border, color: Colors.black),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "Favorites",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 13),
                      child: Row(
                        children: [
                          Icon(
                            Icons.download_for_offline_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "Downloads",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade100,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 13),
                      child: Row(
                        children: [
                          Text(
                            "P R E F E R E N C E S",
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 13),
                      child: Row(
                        children: [
                          Icon(
                            Icons.language,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "Language",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Text(
                            "English",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 13),
                      child: multiSwitch(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
