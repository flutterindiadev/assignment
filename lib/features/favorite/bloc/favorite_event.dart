// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'favorite_bloc.dart';

@immutable
sealed class FavoriteEvent {}

class GetUsers extends FavoriteEvent {}
