import 'package:flutter/material.dart';
import 'package:tempapp/injection_container.dart';

import 'features/favorite/presentation/users_screen_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await inisinitializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const UsersScreenview());
  }
}
