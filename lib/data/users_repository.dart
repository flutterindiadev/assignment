import 'package:tempapp/data/model.dart';

abstract class UsersRepository {
  Future<List<User>> getUser();
}
