import 'package:flutter/material.dart';

import '../Music/bestofroch.dart';
import 'musicscreen.dart';
List<String> photo=[
  'assets/singer_atif.jpg',
  'assets/singer_argit.png',
  'assets/singer_shawn.jpeg',
  'assets/singer_ed.jpg',
  'assets/singer_para.jpeg'
];
class singer_class {

  String? singersong;
  String? singername;


  singer_class({ this.singersong, this.singername});
}

class singerpage extends StatefulWidget {
  final String? singerphoto;
  final String? singernme;
  int number;
  singerpage({required this.singerphoto, required this.singernme,required this.number});

  @override
  State<singerpage> createState() => _singerpageState(singernme, singerphoto);
}

class _singerpageState extends State<singerpage> {
  String? singerphoto;
  String? singernme;
  _singerpageState(this.singerphoto, this.singernme);
  List<List<singer_class>> singer_list2=[
    [
      singer_class(

          singersong: "Dekhte Dekht",
          singername: "Atif Aslam"),
      singer_class(
          singersong: "Pheli Dafa",
          singername: "Atif Aslam"),
      singer_class(
          singersong: "Jab Koi Baat",
          singername: "Atif Aslam"),
      singer_class(
          singersong: "Jab Koi Baat",
          singername: "Atif Aslam"),
      singer_class(
          singersong: "Tera hua",
          singername: "Atif Aslam"),
    ],
    [
      singer_class(

          singersong: "Tu Jane na",
          singername: "Arjit Singh"),
      singer_class(
          singersong: "Tum saath Ho",
          singername: "Arjit Singh"),
      singer_class(
          singersong: "Jab Koi Baat",
          singername: "Arjit Singh"),
      singer_class(
          singersong: "Khamoshiya",
          singername: "Arjit Singh"),
      singer_class(
          singersong: "Matargashti",
          singername: "Arjit Singh"),
    ],
    [
      singer_class(

          singersong: "Tu Jane na",
          singername: "Shawn Mendis"),
      singer_class(
          singersong: "Tum saath Ho",
          singername: "Shawn Mendis"),
      singer_class(
          singersong: "Jab Koi Baat",
          singername: "Shawn Mendis"),
      singer_class(
          singersong: "Khamoshiya",
          singername: "Shawn Mendis"),
      singer_class(
          singersong: "Matargashti",
          singername: "Shawn Mendis"),
    ],
    [
      singer_class(

          singersong: "Tu Jane na",
          singername: "Ed Sheeren"),
      singer_class(
          singersong: "Tum saath Ho",
          singername: "Ed Sheeren"),
      singer_class(
          singersong: "Jab Koi Baat",
          singername: "Ed Sheeren"),
      singer_class(
          singersong: "Khamoshiya",
          singername: "Ed Sheeren"),
      singer_class(
          singersong: "Matargashti",
          singername: "Ed Sheeren"),
    ],
    [
      singer_class(

          singersong: "Tu Jane na",
          singername: "Paradox"),
      singer_class(
          singersong: "Tum saath Ho",
          singername: "Paradox"),
      singer_class(
          singersong: "Jab Koi Baat",
          singername: "Paradox"),
      singer_class(
          singersong: "Khamoshiya",
          singername: "Paradox"),
      singer_class(
          singersong: "Matargashti",
          singername: "Paradox"),
    ],
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("${widget.singerphoto}"), fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
                Positioned(
                  top: 300,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      '${singerphoto}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Color(0XFF090E21).withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 20,
                  child: CircleAvatar(
                    backgroundColor: Color(0XFF090E21).withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.more_vert,color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 340,
                    right: 35,
                    child:
                    CircleAvatar(
                      backgroundColor: Color(0XFF2AC5B3),
                      radius: 25,
                      child: Icon(Icons.play_arrow_outlined,color:Colors.white,size: 40,),
                    )
                ),
                Positioned(
                    top: 340,
                    right: 90,
                    child:
                    Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2,color: Colors.white.withOpacity(0.2))
                        ),
                        child: Icon(Icons.favorite_border,color:Colors.white,size: 30,))
                )

              ],
            ),
            SizedBox(
              height: 5,
            ),

            Container(
              // height: 450,
              margin: EdgeInsets.only(top: 20),
              child: ListView.separated(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) => song_widget(
                  singer_song: singer_list2[widget.number][index], songnum: widget.number,n: index,
                ),
                separatorBuilder: (context, _) => SizedBox(
                  height: 0,
                ),
                itemCount: singer_list2[widget.number].length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class song_widget extends StatelessWidget {
  singer_class singer_song = singer_class();
  int songnum;
  int? n;
  song_widget({required this.singer_song,required this.songnum,this.n});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>
            musicscreen(song_mp3:list_music_justforyou[n!].song_mp32 ,songimage:list_music_justforyou[n!].songimage2 ,songname:list_music_justforyou[n!].songname2)
        ));
      },
      child: Card(
        elevation: 0,
        child: ListTile(
          title: Text("${singer_song.singersong}"),
          subtitle: Text("${singer_song.singername}"),
          trailing: Icon(
            Icons.more_vert,color: Colors.white,
            size: 25,
          ),
        ),
        color: Colors.transparent,
      ),
    );
  }
}
