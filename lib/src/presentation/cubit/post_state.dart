import 'package:flutter_api_consumption_challenge/src/domain/entities/post_entity.dart';

sealed class PostState {}

final class PostInitialState extends PostState {}

final class PostLoadingState extends PostState {}

final class PostSuccessState extends PostState {
  final List<PostEntity> posts;

  PostSuccessState({required this.posts});
}

final class PostEmptyState extends PostState {}

final class PostFailureState extends PostState {
  final String message;

  PostFailureState({required this.message});
}
