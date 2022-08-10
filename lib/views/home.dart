import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view.dart';
import 'package:spotify_clone/widgets/song_card.dart';
import 'package:spotify_clone/widgets/album_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.1),
                  Colors.black.withOpacity(0),
                ]),
          ),
        ),
        SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(1),
                      Colors.black.withOpacity(1),
                    ]),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently Played",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Row(
                            children: [
                              Icon(Icons.history),
                              SizedBox(
                                width: 16,
                              ),
                              Icon(Icons.settings),
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: "Tranquility Base\nHotel & Casino",
                            image: AssetImage("assets/album03.jpeg"),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AlbumView()));
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          AlbumCard(
                            label: "Construção",
                            image: AssetImage("assets/album02.jpeg"),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AlbumView()));
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          AlbumCard(
                            label: "Crossing Field",
                            image: AssetImage("assets/album10.jpeg"),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AlbumView()));
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          AlbumCard(
                            label: "Ride the Lightning",
                            image: AssetImage("assets/album05.jpeg"),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AlbumView()));
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          AlbumCard(
                            label: "Composer",
                            image: AssetImage("assets/album01.jpeg"),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AlbumView()));
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Text(
                        "Good Morning",
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RowAlbumCard(
                                image: AssetImage("assets/album04.jpeg"),
                                label: "Random Access\nMemories",
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              RowAlbumCard(
                                image: AssetImage("assets/album07.jpeg"),
                                label: "Nebulosa",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RowAlbumCard(
                                image: AssetImage("assets/album02.jpeg"),
                                label: "Construção",
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              RowAlbumCard(
                                image: AssetImage("assets/album11.jpeg"),
                                label: "Pop Food",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RowAlbumCard(
                                image: AssetImage("assets/album06.jpeg"),
                                label: "Hard to Imagine\nThe Neigh...",
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              RowAlbumCard(
                                image: AssetImage("assets/album18.jpeg"),
                                label: "Everything\ngoes on",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Based on your recent listening",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage("assets/album13.jpeg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage("assets/album20.jpeg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage("assets/album14.jpeg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage("assets/album15.jpeg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage("assets/album17.jpeg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage("assets/album19.jpeg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Recommended Radio",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage("assets/album08.jpeg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage("assets/album09.jpeg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage("assets/album16.jpeg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage("assets/album01.jpeg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage("assets/album21.jpeg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage("assets/album22.jpeg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;

  const RowAlbumCard({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(children: [
          Image(
            image: image,
            width: 56,
            height: 56,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 8),
          Text(label),
        ]),
      ),
    );
  }
}
