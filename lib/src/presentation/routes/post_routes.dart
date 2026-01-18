import 'package:flutter/material.dart';
import 'package:flutter_api_consumption_challenge/src/commons/di/injection.dart';
import 'package:flutter_api_consumption_challenge/src/presentation/cubit/post_cubit.dart';
import 'package:flutter_api_consumption_challenge/src/presentation/pages/posts_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostRoutes {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) {
        return BlocProvider(
          create: (_) => getIt<PostCubit>()..fetchPosts(),
          child: PostsPage(),
        );
      },
    );
  }
}
