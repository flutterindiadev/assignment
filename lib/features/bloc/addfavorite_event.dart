part of 'addfavorite_bloc.dart';

@immutable
sealed class AddfavoriteEvent {}

class AddThisToFavorite extends AddfavoriteEvent {
  int index;
  bool isFavorite;

  AddThisToFavorite(this.index, this.isFavorite);
}
