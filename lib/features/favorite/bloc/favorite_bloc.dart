import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:tempapp/data/model.dart';
import 'package:tempapp/data/users_repository_impl.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  UserRepositoryImpl userRepositoryImpl;
  FavoriteBloc(this.userRepositoryImpl) : super(FavoriteInitial()) {
    on<FavoriteEvent>((event, emit) async {
      userRepositoryImpl.getUser();
    });

    on<GetUsers>((event, emit) async {
      final response = await userRepositoryImpl.getUser();

      emit(UsersLoaded(response));
    });
  }
}
