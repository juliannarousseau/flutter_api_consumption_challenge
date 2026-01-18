import 'package:flutter/material.dart';
import 'package:flutter_api_consumption_challenge/src/commons/di/injection.dart';
import 'package:flutter_api_consumption_challenge/src/presentation/routes/post_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: (_) => PostRoutes.route(),
    );
  }
}
