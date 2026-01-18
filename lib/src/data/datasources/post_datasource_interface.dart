import '../models/post_model.dart';

abstract class PostDatasourceInterface {
  Future<List<PostModel>> getPosts();
}
