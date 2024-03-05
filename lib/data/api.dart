import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tempapp/data/model.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class RetrofitAPI {
  factory RetrofitAPI(Dio dio, {String baseUrl}) = _RetrofitAPI;

  @GET("todos")
  Future<List<User>> getUsers();
}
