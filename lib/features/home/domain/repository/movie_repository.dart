
import 'package:mobx_example/features/home/domain/model/movie_model.dart';

abstract class MovieRepository {
  Future<MovieModel> moviesFromApi();
}