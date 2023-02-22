import 'package:flutter/material.dart';

class search_class {
  String? songimg;
  String? songname;
  String? typeimg;

  search_class({this.songimg, this.songname, this.typeimg});
}

class like_page extends StatefulWidget {
  const like_page({Key? key}) : super(key: key);

  @override
  State<like_page> createState() => _like_pageState();
}

List<search_class> search_list = [
  search_class(
      songimg: "assets/songimg1_asiam.jpg",
      songname: "Love Yourself",
      typeimg: "Song"),
  search_class(
      songimg: "assets/songimg1_nothing_holding_me_back.jpg",
      songname: "Justice",
      typeimg: "Album"),
  search_class(
      songimg: "assets/lastride.jpg", songname: "Last Ride", typeimg: "Song"),
];

class _like_pageState extends State<like_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: 55,
                width: double.infinity,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      hintText: 'Search music,Artist,Podcast',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      prefixIcon: Container(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Icon(
                          Icons.search,
                          size: 28,
                          color: Colors.grey,
                        ),
                        width: 18,
                      )),
                ),
              ),
              Expanded(
                  child: ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Trending",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: search_list.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 0,
                          child: ListTile(
                            title: Text("${search_list[index].songname}"),
                            subtitle: Text("${search_list[index].typeimg}"),
                            leading: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                    "${search_list[index].songimg}")),
                          ),
                          color: Colors.transparent,
                        );
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Channel",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.42,
                              height: 140,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/img_best_22.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.42,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/img_workout.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.42,
                              height: 140,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/carousal2.jpeg"),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.42,
                              height: 140,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage("assets/img_dance.jpg"),
                                      fit: BoxFit.fill)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.42,
                              height: 140,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/img_happysong.png"),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.42,
                              height: 140,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/img_hits1990.jpg"),
                                      fit: BoxFit.fill)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )) //textfield
            ],
          ),
        ),
      ),
    );
  }
}
