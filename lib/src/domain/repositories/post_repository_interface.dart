import 'package:flutter_api_consumption_challenge/src/domain/entities/post_entity.dart';

abstract class PostRepositoryInterface {
  Future<List<PostEntity>> getPosts();
}
