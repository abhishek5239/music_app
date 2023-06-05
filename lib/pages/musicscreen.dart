import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class musicscreen extends StatefulWidget {

  final String? songimage;
  final String? songname;
  final String? song_mp3;
  musicscreen(
      {required this.songimage,
      required this.songname,
      required this.song_mp3});

  @override
  State<musicscreen> createState() =>
      _musicscreenState(songimage, songname, song_mp3);
}

class _musicscreenState extends State<musicscreen> {

  final String? songimage;
  final String? songname;
  final String? song_mp3;
  _musicscreenState(this.songimage, this.songname, this.song_mp3);

  bool isplaying = false;
  double value = 0;
  //creating an instance
  final player = AudioPlayer();
  Duration? duration = Duration(seconds: 0);
  void initplayer() async {
    await player.setSource(AssetSource(song_mp3!));
    duration = await player.getDuration();
  }

  @override
  void initState() {
    initplayer();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
                player.stop();
              },
            ),
            backgroundColor: Colors.black,
          ),
          body: Stack(
            children: [
              Container(
                height: 250,
                width: 250,
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("${songimage}"), fit: BoxFit.cover)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 28, sigmaY: 28),
                  child: Container(
                    color: Colors.black54,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset("${songimage}"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${songname}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${(value / 60).floor()}:${(value % 60).floor()}",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        width: 260.0,
                        child: Slider.adaptive(
                          onChangeEnd: (new_value) async {
                            setState(() {
                              value = new_value;
                              print(new_value);
                            });
                            await player
                                .seek(Duration(seconds: new_value.toInt()));
                          },
                          min: 0.0,
                          value: value,
                          max: 214.0,
                          onChanged: (value) {},
                          activeColor: Colors.white,
                        ),
                      ),
                      Text(
                        "${duration!.inMinutes}:${duration!.inSeconds % 60}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.0),
                          color: Colors.black87,
                          border: Border.all(color: Colors.white38),
                        ),
                        width: 50.0,
                        height: 50.0,
                        child: InkWell(
                          onTapDown: (details) {
                            player.setPlaybackRate(0.5);
                          },
                          onTapUp: (details) {
                            player.setPlaybackRate(1);
                          },
                          child: Center(
                            child: Icon(
                              Icons.fast_rewind_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.black,
                            border: Border.all(color: Colors.pink)),
                        child: InkWell(
                          onTap: () async {
                            if (isplaying) {
                              await player.pause();
                              setState(() {
                                isplaying = false;
                              });
                              // await player.pause();
                            } else {
                              setState(() {
                                isplaying = true;
                              });
                              await player.resume();
                              setState(() {
                                player.onPositionChanged.listen((position) {
                                  setState(() {
                                    value = position.inSeconds.toDouble();
                                  });
                                });
                              });
                            }

                            // setState(() async {
                            //   duration = await player.getDuration();
                            // });
                          },
                          child: Icon(
                            isplaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.0),
                          color: Colors.black87,
                          border: Border.all(color: Colors.white38),
                        ),
                        width: 50.0,
                        height: 50.0,
                        child: InkWell(
                          onTapDown: (details) {
                            player.setPlaybackRate(2);
                          },
                          onTapUp: (details) {
                            player.setPlaybackRate(1);
                          },
                          child: Center(
                            child: Icon(
                              Icons.fast_forward_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
