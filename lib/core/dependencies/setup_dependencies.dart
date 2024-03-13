import 'package:amritha_ayurveda/core/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerSingleton<ThemeData>(lightTheme);
}
