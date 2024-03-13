import 'package:amritha_ayurveda/core/dependencies/setup_dependencies.dart';
import 'package:amritha_ayurveda/features/authentication/presentation/provider/auth_redirection_provider.dart';
import 'package:amritha_ayurveda/features/authentication/presentation/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupDependencies();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LoginProvider()),
      ChangeNotifierProvider(
        create: (context) => AuthProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AuthProvider>().authRedirect(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: GetIt.I.get<ThemeData>(),
      home: context.watch<AuthProvider>().initialWidget,
    );
  }
}
