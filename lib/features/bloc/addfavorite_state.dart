part of 'addfavorite_bloc.dart';

@immutable
sealed class AddfavoriteState {}

final class AddfavoriteInitial extends AddfavoriteState {}

final class AddedFavoriteState extends AddfavoriteState {
  int index;
  AddedFavoriteState(this.index);
}

final class NotFavoriteState extends AddfavoriteState {
  int index;
  NotFavoriteState(this.index);
}
