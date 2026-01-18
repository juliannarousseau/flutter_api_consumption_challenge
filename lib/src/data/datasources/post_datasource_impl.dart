import 'package:flutter_api_consumption_challenge/src/commons/http/http_client.dart';

import '../models/post_model.dart';
import 'post_datasource_interface.dart';

class PostDatasourceImpl implements PostDatasourceInterface {
  final HttpClientInterface _httpClient;

  PostDatasourceImpl({required HttpClientInterface httpClient})
    : _httpClient = httpClient;

  @override
  Future<List<PostModel>> getPosts() async {
    final response = await _httpClient.get('/posts');
    final List<dynamic> data = response.data;

    return data.map((json) => PostModel.fromJson(json)).toList();
  }
}
