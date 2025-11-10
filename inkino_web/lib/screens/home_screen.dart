import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../widgets/movie_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      title: 'The Lost Galaxy',
      genre: 'Sci-Fi',
      time: '6:30 PM',
      description: 'An interstellar crew sets off to find a lost civilization beyond the known galaxy.',
      image: 'assets/images/movie1.jpg',
    ),
    Movie(
      title: 'City Lights',
      genre: 'Drama',
      time: '8:00 PM',
      description: 'A heartfelt story of love, loss, and resilience in a busy city.',
      image: 'assets/images/movie2.jpg',
    ),
    Movie(
      title: 'Hidden Truths',
      genre: 'Thriller',
      time: '9:15 PM',
      description: 'A detective uncovers a web of lies while investigating a disappearance.',
      image: 'assets/images/movie3.jpg',
    ),
    Movie(
      title: 'Laughing Streets',
      genre: 'Comedy',
      time: '5:45 PM',
      description: 'A hilarious tale about neighbors trying to outsmart each other.',
      image: 'assets/images/movie4.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: movies.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return MovieCard(movie: movies[index]);
          },
        ),
      ),
    );
  }
}
