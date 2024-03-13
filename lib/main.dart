import 'package:amritha_ayurveda/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: GetIt.I.get<ThemeData>(),
      home: const HomePage(),
    );
  }
}
