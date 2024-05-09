// ignore_for_file: public_member_api_docs, sort_constructors_first

class Movie {
  final bool adult;

  final int id;

  final String BackgroundImageUrl;

  final String originalLanguage;

  final String originalTitle;

  final String overview;

  final String posterPath;

  final DateTime releaseDate;

  final String title;
  Movie({
    required this.adult,
    required this.id,
    required this.BackgroundImageUrl,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
  });
}

Movie fromJsontoMovie(Map<String, dynamic> json) {
  return Movie(
      adult: json["adult"],
      id: json["id"],
      originalLanguage: json["original_language"],
      originalTitle: json["original_title"],
      overview: json["overview"],
      posterPath: json["poster_path"],
      releaseDate: DateTime.parse(json["release_date"]),
      title: json["title"], BackgroundImageUrl: json["backdrop_path"]);
}
