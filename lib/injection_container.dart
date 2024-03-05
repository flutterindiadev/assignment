import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tempapp/data/api.dart';
import 'package:tempapp/data/users_repository.dart';
import 'package:tempapp/data/users_repository_impl.dart';
import 'package:tempapp/features/favorite/bloc/favorite_bloc.dart';

final sl = GetIt.instance;
Future<void> inisinitializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());

  sl.registerSingleton<RetrofitAPI>(RetrofitAPI(sl()));
  sl.registerSingleton<UsersRepository>(UserRepositoryImpl(sl()));

  sl.registerSingleton<UserRepositoryImpl>(UserRepositoryImpl(sl()));

  sl.registerFactory<FavoriteBloc>(() => FavoriteBloc(sl()));
}
