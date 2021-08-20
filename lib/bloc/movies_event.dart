part of 'movies_bloc.dart';

@immutable
abstract class MoviesEvent {}

class GetMovies extends MoviesEvent {
  GetMovies();
  @override
  List<Object> get props => [];
}