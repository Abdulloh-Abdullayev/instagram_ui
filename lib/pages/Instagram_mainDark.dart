import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/pages/Instagram_main.dart';

class InstagramDark extends StatefulWidget {
  const InstagramDark({Key? key}) : super(key: key);
  static final String id = "InstagramDark";

  @override
  _InstagramDarkState createState() => _InstagramDarkState();
}

class _InstagramDarkState extends State<InstagramDark> {
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 35),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt_outlined,
            color: Colors.grey,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tv,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: (){
              Navigator.restorablePushNamed(context, InstagramMain.id);
            },
            icon: Icon(Icons.light_mode,color: Colors.grey,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 2 Text
            Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stories",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Watch All",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            /// ListView
            Container(
              height: 90,
              child: ListView.builder(
                itemCount: list1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _itemList(index);
                },
              ),
            ),

            /// Chiziq
            Container(
              height: 5,
              color: Colors.grey.shade900,
            ),

            /// List Tile
            Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 15,
                  child: Image.asset("assets/images/img_1.png"),
                ),
                title: Text(
                  "Brianne",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
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
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.comment,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmark_border,
                            color: Colors.grey,
                          ),
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
                text: TextSpan(children: [
                  TextSpan(
                      text: "Liked By ", style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: "Sigmund, Yessenia, Dayana, ",
                      style: TextStyle(color: Colors.white)),
                  TextSpan(text: "and ", style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: "1263 others\nBrianne ",
                      style: TextStyle(color: Colors.white)),
                  TextSpan(
                      text: "Consequatur nihil aliquid omnis consequator.\n",
                      style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: "February 2020",
                      style: TextStyle(color: Colors.grey)),
                ]),
              ),
            ),

            /// Chiziq
            Container(
              height: 5,
              color: Colors.grey.shade900,
            ),

            /// List Tile
            Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 15,
                  child: Image.asset("assets/images/img_1.png"),
                ),
                title: Text(
                  "Brianne",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
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
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.comment,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmark_border,
                            color: Colors.grey,
                          ),
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
                text: TextSpan(children: [
                  TextSpan(
                      text: "Liked By ", style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: "Sigmund, Yessenia, Dayana, ",
                      style: TextStyle(color: Colors.white)),
                  TextSpan(text: "and ", style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: "1263 others\nBrianne ",
                      style: TextStyle(color: Colors.white)),
                  TextSpan(
                      text: "Consequatur nihil aliquid omnis consequator.\n",
                      style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: "February 2020",
                      style: TextStyle(color: Colors.grey)),
                ]),
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
          SizedBox(
            height: 6,
          ),
          Text(
            list1[index].name,
            style: TextStyle(color: Colors.grey, fontSize: 15),
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
