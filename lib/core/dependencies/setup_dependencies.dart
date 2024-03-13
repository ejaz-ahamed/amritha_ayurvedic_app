import 'package:amritha_ayurveda/core/themes/light_theme.dart';
import 'package:amritha_ayurveda/features/authentication/data/datasource/login_datasource.dart';
import 'package:amritha_ayurveda/features/authentication/data/datasource/login_datasource_impl.dart';
import 'package:amritha_ayurveda/features/authentication/data/repository/login_repository_impl.dart';
import 'package:amritha_ayurveda/features/authentication/domain/repository/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void setupDependencies() {
  final getIt = GetIt.instance;

  getIt.registerSingleton<ThemeData>(lightTheme);
  getIt.registerSingleton<LoginDataSource>(LoginDataSourceImpl());
  getIt.registerSingleton<LoginRepository>(
      LoginRepositoryImpl(dataSource: getIt.get<LoginDataSource>()));
}
