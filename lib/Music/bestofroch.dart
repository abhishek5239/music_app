import 'package:flutter/material.dart';

class BestOfMusicCrousal
{
  String songName;
  String singerName;
  String song;
  String img;
  

  BestOfMusicCrousal({required this.songName,required this.singerName,required this.song,required this.img});
}

List<BestOfMusicCrousal> bestofrock=[
  BestOfMusicCrousal(songName: 'Bones', singerName: 'ImagineDragon-Bones', song: 'playlist_idontcare.mp3',img: 'assets/bones_img.jpg'),
  BestOfMusicCrousal(songName: 'Heat Waves', singerName: 'Glass Animals-Dreamland', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/heatwaves_img.jpeg'),
  BestOfMusicCrousal(songName: 'Still Rollin', singerName: 'Shubh-Still Rollin', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/stillrollin_img.jpeg'),
  BestOfMusicCrousal(songName: 'Pagol', singerName: 'Deep Jandu ft,-Pagol', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/pagol_img.jpg'),
  BestOfMusicCrousal(songName: 'Daku', singerName: 'Deep Jandu ft,-Pagol', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/daku_img.jpeg'),
];

class ImgClassCrousal
{
  String cimg;
  Color backcolor;
  String title;
  ImgClassCrousal({required this.backcolor,required this.cimg,required this.title});
}

List<ImgClassCrousal> ImgListCrousal
=[
  ImgClassCrousal(backcolor: Colors.red, cimg: 'assets/topsongs.jpg', title: 'Best of Rock-English'),
  ImgClassCrousal(backcolor: Color(0XFF2AC5B3), cimg: 'assets/bestofdance.jpg', title: 'Best of Dance-English'),
  ImgClassCrousal(backcolor: Colors.yellow, cimg: 'assets/bestofedm.jpg', title: 'Best of EDM-English'),
] ;

class BestOfDanceCrousal
{
  String songName;
  String singerName;
  String song;
  String img;


  BestOfDanceCrousal({required this.songName,required this.singerName,required this.song,required this.img});
}

List<BestOfDanceCrousal> bestofdance=[
  BestOfDanceCrousal(songName: 'Go Down', singerName: 'SeanPaul-GoDown', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/godown_img.jpg'),
  BestOfDanceCrousal(songName: 'Unholy', singerName: 'Sam Smith-Unholy', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/unholy.jpeg'),
  BestOfDanceCrousal(songName: 'Bad Habit', singerName: 'Ed Sheeran', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/badhabit_img.png'),
  BestOfDanceCrousal(songName: 'No Lie', singerName: 'Dua Lipa-No Lie', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/nolie_img.jpg'),
  BestOfDanceCrousal(songName: 'Safari', singerName: 'Serena-Safari', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/safari_img.jpg'),
];
class BestOfEDMCrousal
{
  String songName;
  String singerName;
  String song;
  String img;


  BestOfEDMCrousal({required this.songName,required this.singerName,required this.song,required this.img});
}

List<BestOfEDMCrousal> bestofedm=[
  BestOfEDMCrousal(songName: 'Animal', singerName: 'Martin Gariz-Animal', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/animal_img.jpg'),
  BestOfEDMCrousal(songName: 'Turn Down for What', singerName: 'Dj-Snake-Turn Down for What', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/turndownforwhat.jpg'),
  BestOfEDMCrousal(songName: 'Let Me Love You', singerName: 'Justin-Let Me Love You', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/letmeloveyou_img.jpeg'),
  BestOfEDMCrousal(songName: 'Faded', singerName: 'Alan Walker-Faded', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/faded_img.jpeg'),
  BestOfEDMCrousal(songName: 'Closer', singerName: 'ChainSmoker-Closer', song: 'assets/playlist_asiam.mp3.mp3',img: 'assets/closer_img.jpg'),
];

class musicclass_justforyou {
  final String? singerposter;
  final String? songimage2;
  final String? songname2;
  final String? song_mp32;

  musicclass_justforyou({this.songimage2, this.songname2, this.song_mp32,this.singerposter});
}
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