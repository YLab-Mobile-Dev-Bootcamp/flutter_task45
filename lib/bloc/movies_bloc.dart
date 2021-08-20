import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:flutter_task4/model/movies_dto.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc();

  @override
  MoviesState get initialState => MoviesInitial();

  @override
  Stream<MoviesState> mapEventToState(
      MoviesEvent event,
      ) async* {

    // TODO: implement mapEventToState

    if(event is GetMovies){
      yield MoviesLoading();
      try{
        Dio _dio = Dio();
        Response response = await _dio.get("https://api.themoviedb.org/3/trending/all/day?api_key=7107d36a89e40798166a44e9ea556ecd");
        MoviesDto moviesDto = MoviesDto.fromJson(response.data);
        yield MoviesSuccess(moviesDto);
      }catch(e){
        yield MoviesError();
      }
    }
  }
}
