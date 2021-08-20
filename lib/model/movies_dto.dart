// To parse this JSON data, do
//
//     final moviesDto = moviesDtoFromJson(jsonString);

import 'dart:convert';

MoviesDto moviesDtoFromJson(String str) => MoviesDto.fromJson(json.decode(str));

String moviesDtoToJson(MoviesDto data) => json.encode(data.toJson());

class MoviesDto {
  MoviesDto({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  int page;
  List<Result> results;
  int totalPages;
  int totalResults;

  factory MoviesDto.fromJson(Map<String, dynamic> json) => MoviesDto(
    page: json["page"] == null ? null : json["page"],
    results: json["results"] == null ? null : List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    totalPages: json["total_pages"] == null ? null : json["total_pages"],
    totalResults: json["total_results"] == null ? null : json["total_results"],
  );

  Map<String, dynamic> toJson() => {
    "page": page == null ? null : page,
    "results": results == null ? null : List<dynamic>.from(results.map((x) => x.toJson())),
    "total_pages": totalPages == null ? null : totalPages,
    "total_results": totalResults == null ? null : totalResults,
  };
}

class Result {
  Result({
    this.posterPath,
    this.video,
    this.voteAverage,
    this.overview,
    this.id,
    this.voteCount,
    this.adult,
    this.backdropPath,
    this.title,
    this.genreIds,
    this.releaseDate,
    this.originalLanguage,
    this.originalTitle,
    this.popularity,
    this.mediaType,
    this.firstAirDate,
    this.name,
    this.originalName,
    this.originCountry,
  });

  String posterPath;
  bool video;
  double voteAverage;
  String overview;
  int id;
  int voteCount;
  bool adult;
  String backdropPath;
  String title;
  List<int> genreIds;
  DateTime releaseDate;
  OriginalLanguage originalLanguage;
  String originalTitle;
  double popularity;
  MediaType mediaType;
  DateTime firstAirDate;
  String name;
  String originalName;
  List<String> originCountry;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    posterPath: json["poster_path"] == null ? null : json["poster_path"],
    video: json["video"] == null ? null : json["video"],
    voteAverage: json["vote_average"] == null ? null : json["vote_average"].toDouble(),
    overview: json["overview"] == null ? null : json["overview"],
    id: json["id"] == null ? null : json["id"],
    voteCount: json["vote_count"] == null ? null : json["vote_count"],
    adult: json["adult"] == null ? null : json["adult"],
    backdropPath: json["backdrop_path"] == null ? null : json["backdrop_path"],
    title: json["title"] == null ? null : json["title"],
    genreIds: json["genre_ids"] == null ? null : List<int>.from(json["genre_ids"].map((x) => x)),
    releaseDate: json["release_date"] == null ? null : DateTime.parse(json["release_date"]),
    originalLanguage: json["original_language"] == null ? null : originalLanguageValues.map[json["original_language"]],
    originalTitle: json["original_title"] == null ? null : json["original_title"],
    popularity: json["popularity"] == null ? null : json["popularity"].toDouble(),
    mediaType: json["media_type"] == null ? null : mediaTypeValues.map[json["media_type"]],
    firstAirDate: json["first_air_date"] == null ? null : DateTime.parse(json["first_air_date"]),
    name: json["name"] == null ? null : json["name"],
    originalName: json["original_name"] == null ? null : json["original_name"],
    originCountry: json["origin_country"] == null ? null : List<String>.from(json["origin_country"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "poster_path": posterPath == null ? null : posterPath,
    "video": video == null ? null : video,
    "vote_average": voteAverage == null ? null : voteAverage,
    "overview": overview == null ? null : overview,
    "id": id == null ? null : id,
    "vote_count": voteCount == null ? null : voteCount,
    "adult": adult == null ? null : adult,
    "backdrop_path": backdropPath == null ? null : backdropPath,
    "title": title == null ? null : title,
    "genre_ids": genreIds == null ? null : List<dynamic>.from(genreIds.map((x) => x)),
    "release_date": releaseDate == null ? null : "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
    "original_language": originalLanguage == null ? null : originalLanguageValues.reverse[originalLanguage],
    "original_title": originalTitle == null ? null : originalTitle,
    "popularity": popularity == null ? null : popularity,
    "media_type": mediaType == null ? null : mediaTypeValues.reverse[mediaType],
    "first_air_date": firstAirDate == null ? null : "${firstAirDate.year.toString().padLeft(4, '0')}-${firstAirDate.month.toString().padLeft(2, '0')}-${firstAirDate.day.toString().padLeft(2, '0')}",
    "name": name == null ? null : name,
    "original_name": originalName == null ? null : originalName,
    "origin_country": originCountry == null ? null : List<dynamic>.from(originCountry.map((x) => x)),
  };
}

enum MediaType { MOVIE, TV }

final mediaTypeValues = EnumValues({
  "movie": MediaType.MOVIE,
  "tv": MediaType.TV
});

enum OriginalLanguage { EN, JA, FR, ES }

final originalLanguageValues = EnumValues({
  "en": OriginalLanguage.EN,
  "es": OriginalLanguage.ES,
  "fr": OriginalLanguage.FR,
  "ja": OriginalLanguage.JA
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
