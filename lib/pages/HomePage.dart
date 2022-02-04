import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/Instagram_Profile.dart';
import 'package:instagram_ui/pages/Instagram_main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, InstagramMain.id);
                },
                child: Text("Instagram Main", style: TextStyle(color: Colors.white),),
                color: Colors.blue,
              ),
              SizedBox(height: 15,),
              MaterialButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, InstagramProfile.id);
                },
                child: Text("Instagram Profile", style: TextStyle(color: Colors.white),),
                color: Colors.blue,
              ),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}


