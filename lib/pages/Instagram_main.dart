import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/pages/HomePage.dart';
import 'package:instagram_ui/pages/Instagram_mainDark.dart';

class InstagramMain extends StatefulWidget {
  const InstagramMain({Key? key}) : super(key: key);
  static final String id = "InstagramMain";

  @override
  _InstagramMainState createState() => _InstagramMainState();
}

class _InstagramMainState extends State<InstagramMain> {

  List<ListHorizontal> list1 = [

    ListHorizontal("assets/images/img_1.png", "Odam"),
    ListHorizontal("assets/images/img_2.png", "Yusuf"),
    ListHorizontal("assets/images/img_1.png", "Umar"),
    ListHorizontal("assets/images/img_1.png", "Odam"),
    ListHorizontal("assets/images/img_2.png", "Yusuf"),
    ListHorizontal("assets/images/img_1.png", "Umar"),
    ListHorizontal("assets/images/img_1.png", "Odam"),
    ListHorizontal("assets/images/img_2.png", "Yusuf"),
    ListHorizontal("assets/images/img_1.png", "Umar"),
    ListHorizontal("assets/images/img_1.png", "Odam"),
    ListHorizontal("assets/images/img_2.png", "Yusuf"),
    ListHorizontal("assets/images/img_1.png", "Umar"),
    ListHorizontal("assets/images/img_1.png", "Odam"),
    ListHorizontal("assets/images/img_2.png", "Yusuf"),
    ListHorizontal("assets/images/img_1.png", "Umar"),
    ListHorizontal("assets/images/img_1.png", "Odam"),
    ListHorizontal("assets/images/img_2.png", "Yusuf"),
    ListHorizontal("assets/images/img_1.png", "Umar"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Instagram", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 35),),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.camera_alt_outlined,color: Colors.black,),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            icon: Icon(Icons.tv,color: Colors.black,),
          ),
          SizedBox(width: 5,),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.send,color: Colors.black,),
          ),
          SizedBox(width: 5,),
          IconButton(
            onPressed: (){
              Navigator.restorablePushNamed(context, InstagramDark.id);
            },
            icon: Icon(Icons.dark_mode,color: Colors.black,),
          ),
          SizedBox(width: 5,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// 2 Text
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Stories", style: TextStyle(color: Colors.black),),
                  Text("Watch All", style: TextStyle(color: Colors.black),),
                ],
              ),
            ),

            /// ListView
            Container(
              height: 90,
              child: ListView.builder(
                itemCount: list1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return _itemList(index);
                },
              ),
            ),

            /// Chiziq
            Container(
              height: 5,
              color: Colors.grey.shade50,
            ),

            /// Lis Tile
            Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 15,
                  child: Image.asset("assets/images/img_1.png"),
                ),
                title: Text("Brianne", style: TextStyle(color: Colors.black),),
                trailing: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.more_horiz, color: Colors.black,),
                ),
              ),
            ),

            /// Picture
            Image.asset("assets/images/qulupnay.jpg"),

            /// Icons
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.favorite_border, ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(FontAwesomeIcons.comment, ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.send,),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.bookmark_border),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),

            /// Rich Text
            Container(
              padding: EdgeInsets.only(left: 14, right: 14, bottom: 14),
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Liked By ", style: TextStyle()),
                    TextSpan(text: "Sigmund, Yessenia, Dayana, ", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "and ", style: TextStyle()),
                    TextSpan(text: "1263 others\nBrianne ", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "Consequatur nihil aliquid omnis consequator.\n", style: TextStyle()),
                    TextSpan(text: "February 2020", style: TextStyle(color: Colors.grey)),
                  ]
                ),
              ),
            ),

            /// Chiziq
            Container(
              height: 1,
              color: Colors.grey,
            ),

            /// Lis Tile
            Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 15,
                  child: Image.asset("assets/images/img_2.png"),
                ),
                title: Text("Henri", style: TextStyle(color: Colors.black),),
                trailing: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.more_horiz, color: Colors.black,),
                ),
              ),
            ),

            /// Picture
            Image.asset("assets/images/garderob.png"),

            /// Icons
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.favorite_border, ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(FontAwesomeIcons.comment, ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.send,),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.bookmark_border),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),

            /// Rich Text
            Container(
              padding: EdgeInsets.only(left: 14, right: 14),
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(text: "Liked By ", style: TextStyle()),
                      TextSpan(text: "Sigmund, Yessenia, Dayana, ", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "and ", style: TextStyle()),
                      TextSpan(text: "1263 others\nBrianne ", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "Consequatur nihil aliquid omnis consequator.\n", style: TextStyle()),
                      TextSpan(text: "February 2020", style: TextStyle(color: Colors.grey)),
                    ]
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.grey.shade800,),title: Text("a")),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.grey.shade600,),title: Text("a")),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined, color: Colors.grey.shade600,),title: Text("a")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border, color: Colors.grey.shade600,),title: Text("a")),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.grey.shade600,),title: Text("a")),
        ],
      ),
    );
  }

  Widget _itemList(int index) {
    return Container(
      height: 90,
      width: 90,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            child: Image.asset(list1[index].image),
          ),
          SizedBox(height: 6,),
          Text(
            list1[index].name,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
    );
  }

}


class ListHorizontal {
  String image;
  String name;

  ListHorizontal(this.image, this.name);
}
