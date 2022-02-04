import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/HomePage.dart';
import 'package:instagram_ui/pages/Instagram_Profile.dart';
import 'package:instagram_ui/pages/Instagram_main.dart';
import 'package:instagram_ui/pages/Instagram_mainDark.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI',

      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          splashColor: Colors.white,
          appBarTheme: AppBarTheme(
            centerTitle: true,
            color: Colors.blueAccent,
            titleTextStyle: TextStyle(color: Colors.white, fontFamily: "billabong", fontSize: 30),
          )
      ),
      home:HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        InstagramProfile.id: (context) => InstagramProfile(),
        InstagramMain.id: (context) => InstagramMain(),
        InstagramDark.id: (context) => InstagramDark(),
      },
    );
  }
}