import 'package:flutter/material.dart';
import 'package:flutter_api_consumption_challenge/src/domain/entities/post_entity.dart';
import 'package:flutter_api_consumption_challenge/src/presentation/cubit/post_cubit.dart';
import 'package:flutter_api_consumption_challenge/src/presentation/cubit/post_state.dart';
import 'package:flutter_api_consumption_challenge/src/presentation/widgets/post_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: BlocBuilder<PostCubit, PostState>(
        builder: (context, state) {
          return switch (state) {
            PostInitialState() || PostLoadingState() => _LoadingView(),
            PostSuccessState() => _SuccessView(posts: state.posts),
            PostEmptyState() => _EmptyView(),
            PostFailureState() => _FailureView(message: state.message),
          };
        },
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}

class _SuccessView extends StatelessWidget {
  final List<PostEntity> posts;

  const _SuccessView({required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final post = posts[index];
        return PostItem(title: post.title, body: post.body);
      },
      separatorBuilder: (_, __) => SizedBox(height: 12),
      itemCount: posts.length,
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('No posts available.'));
  }
}

class _FailureView extends StatelessWidget {
  final String message;

  const _FailureView({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Error: $message'));
  }
}
