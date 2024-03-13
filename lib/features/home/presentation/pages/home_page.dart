import 'package:amritha_ayurveda/features/authentication/presentation/provider/auth_redirection_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              prefs.remove("token");
              Future.sync(
                  () => context.read<AuthProvider>().authRedirect(context));
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
