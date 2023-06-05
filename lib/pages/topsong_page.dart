import 'package:flutter/material.dart';
import 'package:music_app/pages/home_page.dart';

import '../Music/bestofroch.dart';
import 'musicscreen.dart';

class TopSongs extends StatefulWidget {
  List? songlist;
  int? num;
  TopSongs({ this.songlist,this.num});

  @override
  State<TopSongs> createState() => _TopSongsState();
}

class _TopSongsState extends State<TopSongs> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 410,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            ImgListCrousal[widget.num!].backcolor,
                            Color(0XFF090E21)

                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                      )
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 75,
                  child: Hero(
                    tag: widget.num.toString(),
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(

                       image: DecorationImage(image: AssetImage(ImgListCrousal[widget.num!].cimg),fit: BoxFit.cover)
                      ),
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
                    top: 360,
                    right: 35,
                    child:
                CircleAvatar(
                  backgroundColor: Color(0XFF2AC5B3),
                  radius: 25,
                  child: Icon(Icons.play_arrow,color:Colors.white,size: 40,),
                )
                ),
                Positioned(
                    top: 360,
                    right: 100,
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
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ImgListCrousal[widget.num!].title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Container(

                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (context,index){
                              return GestureDetector(
                                onTap: (){
                                  print("#####################");
                                  print("#####################");
                                  print("#####################");
                                  print(widget.songlist![index].song);
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                      musicscreen(song_mp3:list_music_justforyou[index].song_mp32 ,songimage:widget.songlist![index].img ,songname:widget.songlist![index].songName)
                                  ));
                                },
                                child: ListTile(
                                  title: Text(widget.songlist![index].songName ),
                                  subtitle: Text(widget.songlist![index].singerName),
                                  trailing: Icon(Icons.more_vert),
                                ),
                              );
                    }, separatorBuilder:(context,_)=>SizedBox(height: 0,), itemCount: bestofrock.length),
                  )
                ],
              ),
            )

          ],
        ),

      );

  }
}
