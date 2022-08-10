import 'package:flutter/material.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({Key? key}) : super(key: key);

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.cyan,
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          //SizedBox(height: 20,),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.5),
                                  offset: Offset(10, 10),
                                  blurRadius: 32,
                                  spreadRadius: 16,
                                )
                              ],
                            ),
                            child: Image(
                              // YOUTUBE 40:40
                              image: AssetImage("assets/album01.jpeg"),
                              width: MediaQuery.of(context).size.width - 140,
                              height: MediaQuery.of(context).size.width - 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI,",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage("assets/spotify-logo.png"),
                                      width: 32,
                                      height: 32,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("Spotify"),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "4 994 876 likes 1h 10min",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.favorite),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Icon(Icons.more_horiz_rounded),
                                      ],
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Container(
                                          width: 48,
                                          height: 48,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff14D860),
                                          ),
                                          child: Icon(Icons.play_arrow, color: Colors.black, size: 32,),
                                          ),
                                          Container(
                                            width: 18,
                                            height: 18,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black
                                            ),
                                            child: Icon(
                                              Icons.shuffle_rounded,
                                              color: Color(0xff14D860),
                                              size: 14,
                                            ),
                                          ),
                                        ]
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 500,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
