// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'favorite_bloc.dart';

@immutable
sealed class FavoriteState {}

final class FavoriteInitial extends FavoriteState {}

class UsersLoaded extends FavoriteState {
  final List<User> users;

  UsersLoaded(this.users);
}
