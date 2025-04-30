import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_music_app/presentation/choose%20mode/bloc/theme_cubit.dart';
import 'package:my_music_app/presentation/splash/splash_screen.dart';

void main() {
  runApp(BlocProvider(create: (_) => ThemeCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        return MaterialApp(
          title: 'Bloc Theming App',
          theme: theme,
          home: SplashScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
