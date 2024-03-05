part of 'addfavorite_bloc.dart';

@immutable
sealed class AddfavoriteState {}

final class AddfavoriteInitial extends AddfavoriteState {}

final class AddedFavoriteState extends AddfavoriteState {}

final class NotFavoriteState extends AddfavoriteState {}
