import 'package:flutter_api_consumption_challenge/src/data/datasources/post_datasource_interface.dart';
import 'package:flutter_api_consumption_challenge/src/domain/entities/post_entity.dart';
import 'package:flutter_api_consumption_challenge/src/domain/repositories/post_repository_interface.dart';

class PostRepositoryImpl implements PostRepositoryInterface {
  final PostDatasourceInterface _datasource;

  PostRepositoryImpl({required PostDatasourceInterface datasource})
    : _datasource = datasource;

  @override
  Future<List<PostEntity>> getPosts() async {
    final models = await _datasource.getPosts();
    return models.map((model) => model.toEntity()).toList();
  }
}
