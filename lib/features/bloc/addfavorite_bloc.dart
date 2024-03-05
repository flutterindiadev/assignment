import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'addfavorite_event.dart';
part 'addfavorite_state.dart';

class AddfavoriteBloc extends Bloc<AddfavoriteEvent, AddfavoriteState> {
  AddfavoriteBloc() : super(AddfavoriteInitial()) {
    on<AddfavoriteEvent>((event, emit) {});

    on<AddThisToFavorite>((event, emit) {
      if (event.isFavorite == true) {
        emit(AddedFavoriteState());
      }

      if (event.isFavorite == false) {
        emit(NotFavoriteState());
      }
    });
  }
}
