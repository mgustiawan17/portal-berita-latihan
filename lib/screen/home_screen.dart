import 'package:flutter/material.dart';
import 'package:portal_berita/subscreen/home_subscreen.dart';
import 'package:portal_berita/subscreen/profile_subscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: TabBarView(
            children: [
              HomeSubScreen(),
              ProfileSubScreen(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.blue,
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
