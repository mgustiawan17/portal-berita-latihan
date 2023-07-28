import 'package:flutter/material.dart';
import 'package:portal_berita/screen/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal Berita',
      home: SignInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
