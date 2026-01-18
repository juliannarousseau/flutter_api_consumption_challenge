import 'package:flutter_api_consumption_challenge/src/domain/usecases/get_posts_usecase.dart';
import 'package:flutter_api_consumption_challenge/src/presentation/cubit/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<PostState> {
  final GetPostsUsecase _getPostsUsecase;

  PostCubit({required GetPostsUsecase getPostsUsecase})
    : _getPostsUsecase = getPostsUsecase,
      super(PostInitialState());

  Future<void> fetchPosts() async {
    emit(PostLoadingState());

    try {
      final posts = await _getPostsUsecase();

      if (posts.isEmpty) {
        emit(PostEmptyState());
      } else {
        emit(PostSuccessState(posts: posts));
      }
    } catch (e) {
      emit(PostFailureState(message: e.toString()));
    }
  }
}
