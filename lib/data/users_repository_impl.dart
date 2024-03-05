import 'package:flutter/material.dart';
import 'package:tempapp/data/api.dart';
import 'package:tempapp/data/model.dart';
import 'package:tempapp/data/users_repository.dart';

class UserRepositoryImpl implements UsersRepository {
  final RetrofitAPI retrofitAPI;

  UserRepositoryImpl(this.retrofitAPI);

  @override
  Future<List<User>> getUser() async {
    var response;
    try {
      response = await retrofitAPI.getUsers();
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
    return response;
  }
}
