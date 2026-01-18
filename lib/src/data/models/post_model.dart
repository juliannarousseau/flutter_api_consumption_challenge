import 'package:flutter_api_consumption_challenge/src/domain/entities/post_entity.dart';

class PostModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  PostEntity toEntity() {
    return PostEntity(userId: userId, id: id, title: title, body: body);
  }
}
