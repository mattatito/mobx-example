
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {

  final String title;
  final DateTime releaseDate;

  const MovieCard({Key? key, required this.title, required this.releaseDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Text(releaseDate.toString()),
          ],
        ),
      ),
    );
  }
}
