import 'package:flutter/material.dart';

class singer_class {
  String? singerimg;
  String? singersong;
  String? singername;

  singer_class({this.singerimg, this.singersong, this.singername});
}

class singerpage extends StatefulWidget {
  final String? singerphoto;
  final String? singernme;
  singerpage({required this.singerphoto, required this.singernme});

  @override
  State<singerpage> createState() => _singerpageState(singernme, singerphoto);
}

class _singerpageState extends State<singerpage> {
  String? singerphoto;
  String? singernme;
  _singerpageState(this.singerphoto, this.singernme);

  List<singer_class> singer_list = [
    singer_class(
        singerimg: "assets/singer_atif.jpg",
        singersong: "Dekhte Dekht",
        singername: "Atif Aslam"),
    singer_class(
        singerimg: "assets/singer_atif.jpg",
        singersong: "Pheli Dafa",
        singername: "Atif Aslam"),
    singer_class(
        singerimg: "assets/singer_atif.jpg",
        singersong: "Jab Koi Baat",
        singername: "Atif Aslam"),
    singer_class(
        singerimg: "assets/singer_atif.jpg",
        singersong: "Jab Koi Baat",
        singername: "Atif Aslam"),
    singer_class(
        singerimg: "assets/singer_atif.jpg",
        singersong: "Tera hua",
        singername: "Atif Aslam"),
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
                          image: AssetImage("${singernme}"), fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    '${singerphoto}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ],
            ),
            Container(
              height: 450,
              margin: EdgeInsets.only(top: 20),
              child: ListView.separated(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) => song_widget(
                  singer_song: singer_list[index],
                ),
                separatorBuilder: (context, _) => SizedBox(
                  height: 3,
                ),
                itemCount: singer_list.length,
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
  song_widget({required this.singer_song});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        title: Text("${singer_song.singersong}"),
        subtitle: Text("${singer_song.singername}"),
        leading: Image.asset("${singer_song.singerimg}"),
      ),
      color: Colors.transparent,
    );
  }
}
