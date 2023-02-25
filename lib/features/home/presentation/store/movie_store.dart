

import 'package:mobx/mobx.dart';

import '../../domain/model/movie_model.dart';

part 'movie_store.g.dart';

class MovieStore = MovieBase with _$MovieStore;

abstract class MovieBase with Store{

  @observable
  var movies = ObservableList<MovieModel>();

  @observable
  bool loading = false;

  @action
  Future<void> fetchMovies() async {
    loading = true;
    await Future.delayed(const Duration(seconds: 5));
    movies.add(MovieModel(name: 'Harry Potter', releaseDate: DateTime.now()));
    movies.add(MovieModel(name: 'Puss in Boots', releaseDate: DateTime.now()));
    loading = false;
  }

  @action
  void addMovie(MovieModel movie){
    movies.add(movie);
  }
}