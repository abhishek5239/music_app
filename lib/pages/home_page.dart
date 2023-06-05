import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:music_app/pages/musicscreen.dart';
import 'package:music_app/pages/topsong_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:music_app/pages/singer_page.dart';

import '../Music/bestofroch.dart';

class musicclass {
  final String? songimage;
  final String? songname;
  final String? song_mp3;

  musicclass({this.songimage, this.songname, this.song_mp3});
}

class musicclass_justforyou {
  final String? singerposter;
  final String? songimage2;
  final String? songname2;
  final String? song_mp32;

  musicclass_justforyou({this.songimage2, this.songname2, this.song_mp32,this.singerposter});
}

class home_page extends StatefulWidget {
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  List<musicclass> list_music = [
    musicclass(
        songimage: 'assets/songimg1_asiam.jpg',
        songname: 'As I AM',
        song_mp3: 'playlist_asiam.mp3.mp3'),
    musicclass(
        songimage: 'assets/songimg1_beliver.jpg',
        songname: 'Believer',
        song_mp3: 'playlist_believer.mp3.mp3'),
    musicclass(
        songimage: 'assets/songimg1_bthogayi.jpg',
        songname: 'Bt Hogayi',
        song_mp3: 'playlist_bthogayi.mp3.mp3'),
    musicclass(
        songimage: 'assets/songimg1_rehayii.jpg',
        songname: 'rehayii',
        song_mp3: 'playlist_rehayii.mp3.mp3'),
    musicclass(
        songimage: 'assets/songimg1_lchorencrjpg.jpg',
        songname: 'NCR',
        song_mp3: 'playlist_ncr.mp3.mp3'),
  ];
  List<musicclass_justforyou> list_music_justforyou = [
    musicclass_justforyou(
        songimage2: 'assets/songimg1_idontcarejpg.jpg',
        songname2: 'I Dont Care',
        song_mp32: 'playlist_idontcare.mp3'),
    musicclass_justforyou(
        songimage2: 'assets/songimg1_inglitch.jpg',
        songname2: 'In Glitch',
        song_mp32: 'playlist_inglitch.mp3'),
    musicclass_justforyou(
        songimage2: 'assets/lastride.jpg',
        songname2: 'Last Ride',
        song_mp32: 'playlist_lastride.mp3'),
    musicclass_justforyou(
        songimage2: 'assets/songimg1_nothing_holding_me_back.jpg',
        songname2: 'Nothing ',
        song_mp32: 'playlist_nothing.mp3'),
    musicclass_justforyou(
        songimage2: 'assets/bmunde.jpg',
        songname2: 'Brown Munde',
        song_mp32: 'playlist_brownmunde,,.mp3'),
    musicclass_justforyou(
        songimage2: 'assets/lus.jpg',
        songname2: 'Love Yourself',
        song_mp32: 'playlist_loveyourself.mp3'),
  ];

  List<musicclass_justforyou> list_singers = [
    musicclass_justforyou(
        songimage2: 'assets/singer_atif.jpg', songname2: 'Atif Aslam',singerposter: 'assets/atif.png'),
    musicclass_justforyou(
        songimage2: 'assets/singer_argit.png', songname2: 'Arjit Singh',singerposter: 'assets/arjit.png'),
    musicclass_justforyou(
        songimage2: 'assets/singer_shawn.jpeg', songname2: 'Shawn Mendis',singerposter: 'assets/shawn.png'),
    musicclass_justforyou(
        songimage2: 'assets/singer_ed.jpg', songname2: 'Ed Sheeren',singerposter: 'assets/ed.png'),
    musicclass_justforyou(
        songimage2: 'assets/singer_para.jpeg', songname2: 'Paradox',singerposter: 'assets/para.png'),
  ];

  int activepage = 0;
  Widget slidernumber() => AnimatedSmoothIndicator(
        activeIndex: activepage,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: Color(0xFF32de84),
            dotColor: Colors.blueGrey,
            dotWidth: 15,
            dotHeight: 15),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider(
                    items: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          =>TopSongs(songlist: bestofdance,num: 1,)
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: AssetImage('assets/bestofdance.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          =>TopSongs(songlist: bestofrock,num: 0,)
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: AssetImage('assets/topsongs.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          =>TopSongs(songlist: bestofedm,num: 2,)
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: AssetImage('assets/bestofedm.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          activepage = index;
                        });
                      },
                      height: 200,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.easeIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    )),
                SizedBox(
                  height: 20,
                ),
                slidernumber(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Recently Played',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: list_music.length,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) => cont_playlist(
                      song_list: list_music[index],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Your Favorite',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: list_music_justforyou.length,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) => cont_playlist_justforyou(
                      song_list2: list_music_justforyou[index]
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Top Singers',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 190,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: list_singers.length,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) => cont_playlist_singer(
                      song_list2: list_singers[index], number: index,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class cont_playlist extends StatelessWidget {
  musicclass song_list = musicclass();

  cont_playlist({required this.song_list});
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      width: 150,
      decoration: BoxDecoration(
          // color: Colors.blueGrey,
          // border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(2)),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => musicscreen(

                        songimage: song_list.songimage,
                        songname: song_list.songname,
                        song_mp3: song_list.song_mp3,
                      )));
        },
        child: Column(
          children: [
            Image.asset(
              '${song_list.songimage}',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${song_list.songname}",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class cont_playlist_justforyou extends StatelessWidget {
  musicclass_justforyou song_list2 = musicclass_justforyou();

  cont_playlist_justforyou({required this.song_list2});
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      width: 150,
      decoration: BoxDecoration(
          // color: Colors.blueGrey,
          // border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(2)),
      child: TextButton(
        onPressed: () {
          print(song_list2.song_mp32);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => musicscreen(

                      songimage: song_list2.songimage2,
                      songname: song_list2.songname2,
                      song_mp3: song_list2.song_mp32)));
        },
        child: Column(
          children: [
            Image.asset('${song_list2.songimage2}'),
            SizedBox(
              height: 10,
            ),
            Text(
              "${song_list2.songname2}",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class cont_playlist_singer extends StatelessWidget {
  int number;
  musicclass_justforyou song_list2 = musicclass_justforyou();
  cont_playlist_singer({required this.song_list2,required this.number});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10, left: 5),
        child: Container(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => singerpage(

                                singernme: song_list2.songname2,
                                singerphoto: song_list2.singerposter, number: number,


                              )));
                },
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('${song_list2.songimage2}'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("${song_list2.songname2}")
            ],
          ),
        ));
  }
}

// Expanded(
// child: ListView(
// scrollDirection: Axis.horizontal,
// children: <Widget>[
// Container(
// height: 100,
// width: 100,
// decoration: BoxDecoration(
// color: Colors.redAccent,
// border: Border.all(width: 1),
// borderRadius: BorderRadius.circular(7)),
// ),
// Container(
// height: 100,
// width: 100,
// decoration: BoxDecoration(
// color: Colors.green,
// border: Border.all(width: 1),
// borderRadius: BorderRadius.circular(7)),
// ),
// Container(
// height: 100,
// width: 100,
// decoration: BoxDecoration(
// color: Colors.blue,
// border: Border.all(width: 1),
// borderRadius: BorderRadius.circular(7)),
// ),
// Container(
// height: 100,
// width: 100,
// decoration: BoxDecoration(
// color: Colors.white,
// border: Border.all(width: 1),
// borderRadius: BorderRadius.circular(7)),
// ),
// Container(
// height: 100,
// width: 100,
// decoration: BoxDecoration(
// color: Colors.red,
// border: Border.all(width: 1),
// borderRadius: BorderRadius.circular(7)),
// ),
// //your widget items here
// ],
// ),
// )
