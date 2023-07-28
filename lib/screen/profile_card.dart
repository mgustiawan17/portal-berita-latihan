import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.fromLTRB(25, 60, 25, 0),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 1)
          ]),
      child: Column(
        children: [
          //image, name, job, jumlah
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://media.licdn.com/dms/image/C5603AQHbN-466XKOuw/profile-displayphoto-shrink_800_800/0/1663156577419?e=2147483647&v=beta&t=JNjUb5PrFoCpJHSP5i-3V_rweq4sDJEBnco0SXZDoOk",
                      width: 130,
                      height: 125,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mokhamad Gustiawan",
                          style:
                              Theme.of(context).textTheme.subtitle1?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          "Mobile Developer",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //numbers
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade400,
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              numberItem(context, "Article", 34),
                              numberItem(context, "Followers", 140),
                              numberItem(context, "Rating", 4.7),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),

          //button chat, button follow
          Expanded(
            child: Row(
              children: [
                //expanded : mengambil seluruh space yang tersisa dalam satu widget row
                Expanded(
                    child:
                        OutlinedButton(onPressed: () {}, child: Text("Chat"))),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Follow")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column numberItem(BuildContext context, String title, num number) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .caption
              ?.copyWith(color: Colors.grey.shade800),
        ),
        Text(
          number.toString(),
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
