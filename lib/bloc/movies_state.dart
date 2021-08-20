part of 'movies_bloc.dart';

@immutable
abstract class MoviesState {}

class MoviesInitial extends MoviesState {}

class MoviesSuccess extends MoviesState {
  final MoviesDto moviesDto;
  MoviesSuccess(this.moviesDto);
  @override
  List<Object> get props => [this.moviesDto];
}

class MoviesLoading extends MoviesState {
  MoviesLoading();
  @override
  List<Object> get props => [];
}


class MoviesError extends MoviesState {
  MoviesError();
  @override
  List<Object> get props => [];
}