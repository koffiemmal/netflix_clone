import 'dart:convert';

import 'package:gozem_clone/features/models/movie.dart';
import 'package:http/http.dart';

class MovieService {
  static Future<List<Movie>> getPopularMovies() async {
    Uri uri = Uri.parse("https://api.themoviedb.org/3/movie/popular?api_key=81d369b96b9c68c1c2d074a07d6cb098");
    

    Response response = await get(uri);

    print(response);

    if (response.statusCode == 200) {

      var body = response.body;

      var json = jsonDecode(body);

      List<Movie> movies;

      movies = (json["results"] as List)
          .map<Movie>((json) => fromJsontoMovie(json))
          .toList();

      return movies;
    } else {
      /* throw Exception('Failed to load movies'); */
      return [];
    }
  }
}
 

/* class MovieService {
  static Future<List<Movie>> getPopularMovies() async {
    Uri uri = Uri.parse(
        'https://api.themoviedb.org/3/movie/popular?api_key=81d369b96b9c68c1c2d074a07d6cb098');

    Response response = await get(uri);

    if (response.statusCode == 200) {
      List<Movie> Movies;

      Movies = (jsonDecode(response.body)["results"] as List )
          .map<Movie>((e) => fromJsonToMovie(e))
          .toList();

      return Movies;
    } else {
      return [];
    }
  }
}
 */