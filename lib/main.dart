import 'package:flutter/material.dart';
import 'package:perfect_eggs/blocs/app.bloc.dart';
import 'package:perfect_eggs/pages/splash.page.dart';
import 'package:perfect_eggs/themes/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppBloc>.value(
          value: AppBloc(),
        ),
      ],
      child: const Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfect Eggs',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: const SplashPage(),
    );
  }
}
