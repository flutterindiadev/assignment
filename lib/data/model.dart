// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class User {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  User({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    int? userId,
    int? id,
    String? title,
    bool? completed,
    bool? isFavorite,
  }) {
    return User(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }
}
