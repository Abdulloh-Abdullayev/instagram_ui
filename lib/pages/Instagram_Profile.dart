import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/HomePage.dart';

class InstagramProfile extends StatefulWidget {
  const InstagramProfile({Key? key}) : super(key: key);
  static final String id = "InstagramProfile";

  @override
  _InstagramProfileState createState() => _InstagramProfileState();
}

class _InstagramProfileState extends State<InstagramProfile> {

  List<ListHorizontal> list1 = [

    ListHorizontal("assets/images/img_1.png", "Odam"),
    ListHorizontal("assets/images/img_2.png", "Yusuf"),
    ListHorizontal("assets/images/Kepka.png", "Umar"),
    ListHorizontal("assets/images/img_1.png", "Odam"),
    ListHorizontal("assets/images/img_2.png", "Yusuf"),
    ListHorizontal("assets/images/Kepka.png", "Umar"),
    ListHorizontal("assets/images/img_1.png", "Odam"),
    ListHorizontal("assets/images/img_2.png", "Yusuf"),
    ListHorizontal("assets/images/Kepka.png", "Umar"),
    ListHorizontal("assets/images/img_1.png", "Odam"),
    ListHorizontal("assets/images/img_2.png", "Yusuf"),
    ListHorizontal("assets/images/Kepka.png", "Umar"),
  ];


  List images = [
    "assets/images/img_4.png",
    "assets/images/img_5.png",
    "assets/images/img_6.png",
    "assets/images/img_7.png",
    "assets/images/img_8.png",
    "assets/images/img_9.png",
    "assets/images/img_11.png",
    "assets/images/img_12.png",
    "assets/images/img_6.png",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock, color: Colors.black,size: 15,),
          Text("jacob_w",style: TextStyle(color: Colors.black, fontSize: 15),),
            Icon(Icons.keyboard_arrow_down, color: Colors.black,size: 15,)
          ],
        ),
      ),
      endDrawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// Header
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Column(
                    children: [

                      /// Avatar qism
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 2,
                                  color: Colors.blue
                                )
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                child: Image.asset("assets/images/Kepka.png"),
                              ),
                            ),
                          ),
                         Expanded(
                           child:  Column(
                             children: [
                               Text("54", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                               Text("Posts", style: TextStyle(color: Colors.black, fontSize: 13),),
                             ],
                           ),
                         ),
                          Expanded(
                            child: Column(
                              children: [
                                Text("834", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                                Text("Followers", style: TextStyle(color: Colors.black, fontSize: 13),),
                              ],
                            ),
                          ),
                         Expanded(
                           child:  Column(
                             children: [
                               Text("162", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                               Text("Following", style: TextStyle(color: Colors.black, fontSize: 13),),
                             ],
                           ),
                         )
                        ],
                      ),

                      SizedBox(height: 20,),

                      /// Text
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Jacobs West", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 12),)),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(text: "Digital goodies designer ", style: TextStyle(color: Colors.black, fontSize: 12, letterSpacing: 1)),
                                  TextSpan(text: " @pixsellz\n", style: TextStyle(color: Colors.blue, fontSize: 12, letterSpacing: 1)),
                                  TextSpan(text: "Everything is designed", style: TextStyle(color: Colors.black, fontSize: 12, letterSpacing: 1)),
                                ]
                              ),
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 20,),

                      /// Edit Profile
                      Container(
                        width: MediaQuery.of(context).size.width,
                       // margin: EdgeInsets.only(left: 10, right: 10),
                        height: 29,
                        child: MaterialButton(
                          onPressed: (){},
                          color: Colors.grey.shade100,
                          child: Text("Edit Profile", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        ),
                      ),

                      SizedBox(height: 20,),

                      /// ListView
                      Container(
                          padding: EdgeInsets.only(left: 14, right: 14),
                          height: 106,
                          child: Row(
                            children: [
                              /// Add
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(bottom: 3, right: 5),
                                  height: 77,
                                  width: 65,
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundColor: Colors.grey.shade100,
                                        child: Center(
                                          child: FloatingActionButton(
                                            onPressed: (){
                                              Navigator.pushReplacementNamed(context, HomePage.id);
                                            },
                                            child: Center(child: Text("+", style: TextStyle(color: Colors.black, fontSize: 30),)),
                                            backgroundColor: Colors.grey.shade200,
                                          ),
                                        )
                                      ),

                                      SizedBox(height: 8,),
                                      Text(
                                        "News",
                                        style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              /// ListVieW Horizontal
                              Expanded(
                                flex: 6,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: list1.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return _itemList(index);
                                  },
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  )
                ],
              ),
            ),

            /// 2 Button
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: (){},
                        color: Colors.black,
                        icon: Icon(Icons.grid_on_rounded),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: (){},
                        color: Colors.black45,
                        icon: Icon(Icons.person_pin_outlined),
                      ),
                    ),
                  ],
                )
              ],
            ),

            GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: images.length,
                //padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return _itemOfGridView(index, "image ${index+1}");
                }
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemList(int index) {
    return Container(
      height: 77,
      width: 69,
      padding: EdgeInsets.only(right: 10, left: 10, top: 13),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 46.61,
                width: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(
                    width: 2,
                    color: Colors.blue
                  ),
                    image:  DecorationImage(
                        image: AssetImage(list1[index].image),
                        fit: BoxFit.cover
                    )
                ),
              ),
              CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green.shade500,
              )
            ],
          ),
          SizedBox(height: 8,),
          Text(
            list1[index].name,
            style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget _itemOfGridView(int index, String name) {
    return Container(
      color: Colors.white,
      child: ClipRRect(
        child: Image(
          image: AssetImage(images[index]),
          fit: BoxFit.cover,
          height: 124,
          width: 124,
        ),

      ),

    );
  }
}

class ListHorizontal {
  String image;
  String name;

  ListHorizontal(this.image, this.name);
}
