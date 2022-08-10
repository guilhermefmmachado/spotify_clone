import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  
  final dynamic onTap; // Deveria ser "final Function onTap", mas traz erros de execução.

  const AlbumCard({
    Key? key,
    required this.image,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: image, width: 120, height: 120, fit: BoxFit.cover),
          SizedBox(
            height: 10,
          ),
          Text(
            label,
          ),
        ],
      ),
    );
  }
}
