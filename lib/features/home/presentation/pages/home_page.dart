import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/features/home/presentation/store/movie_store.dart';
import 'package:mobx_example/features/home/presentation/widgets/movie_card.dart';
import 'package:mobx_example/features/home/presentation/widgets/section_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final store = MovieStore();

  @override
  void initState() {
    super.initState();
    store.fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filmes"),
      ),
      body: Observer(
        builder: (_) => store.loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Observer(
                      builder: (_) {
                        final movies = store.movies;
                        return Container(
                          height: 100,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.builder(
                              itemCount: movies.length,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                final movies = store.movies;
                                return MovieCard(
                                    title: movies[index].name,
                                    releaseDate: movies[index].releaseDate);
                              }),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: SectionText(
                      "Lançamentos",
                    ),
                  )
                ],
              ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
