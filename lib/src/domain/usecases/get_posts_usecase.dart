import 'package:flutter_api_consumption_challenge/src/domain/entities/post_entity.dart';
import 'package:flutter_api_consumption_challenge/src/domain/repositories/post_repository_interface.dart';

class GetPostsUsecase {
  final PostRepositoryInterface _repository;

  const GetPostsUsecase({required PostRepositoryInterface repository})
      : _repository = repository;

  Future<List<PostEntity>> call() async {
    return await _repository.getPosts();
  }
}
