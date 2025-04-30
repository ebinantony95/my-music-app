import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_music_app/core/config/theme/app_theme.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = AppTheme.lightTheme;

  static final _darkTheme = AppTheme.darkTheme;

  void setLightTheme() => emit(_lightTheme);
  void setDarkTheme() => emit(_darkTheme);
  void toggleTheme() =>
      emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
}
