import 'package:flutter_api_consumption_challenge/src/commons/http/dio_factory.dart';
import 'package:flutter_api_consumption_challenge/src/commons/http/dio_http_client.dart';
import 'package:flutter_api_consumption_challenge/src/commons/http/http_client.dart';
import 'package:flutter_api_consumption_challenge/src/data/datasources/post_datasource_interface.dart';
import 'package:flutter_api_consumption_challenge/src/data/datasources/post_datasource_impl.dart';
import 'package:flutter_api_consumption_challenge/src/data/repositories/post_repository_impl.dart';
import 'package:flutter_api_consumption_challenge/src/domain/repositories/post_repository_interface.dart';
import 'package:flutter_api_consumption_challenge/src/domain/usecases/get_posts_usecase.dart';
import 'package:flutter_api_consumption_challenge/src/presentation/cubit/post_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupInjection() {
  getIt.registerLazySingleton(() => createDio());

  getIt.registerLazySingleton<HttpClientInterface>(
    () => DioHttpClient(getIt()),
  );

  getIt.registerLazySingleton<PostDatasourceInterface>(
    () => PostDatasourceImpl(httpClient: getIt<HttpClientInterface>()),
  );

  getIt.registerLazySingleton<PostRepositoryInterface>(
    () => PostRepositoryImpl(datasource: getIt<PostDatasourceInterface>()),
  );

  getIt.registerLazySingleton<GetPostsUsecase>(
    () => GetPostsUsecase(repository: getIt<PostRepositoryInterface>()),
  );

  getIt.registerLazySingleton<PostCubit>(
    () => PostCubit(getPostsUsecase: getIt<GetPostsUsecase>()),
  );
}
