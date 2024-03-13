import 'package:amritha_ayurveda/core/constants/home_constatnts.dart';
import 'package:amritha_ayurveda/core/themes/app_theme.dart';
import 'package:amritha_ayurveda/features/authentication/presentation/provider/auth_redirection_provider.dart';
import 'package:amritha_ayurveda/features/home/presentation/pages/branch_page.dart';
import 'package:amritha_ayurveda/features/home/presentation/pages/treatment_page.dart';
import 'package:amritha_ayurveda/features/home/presentation/widgets/container_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final constants = HomeConstants();

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: theme.spaces.space_100),
          child: Text(
            constants.txtHome,
            style: theme.typography.h600.copyWith(fontSize: 24),
          ),
        ),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContainerWidget(
              text: constants.txtShowBranches,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BranchPage(),
                  ),
                );
              },
            ),
            ContainerWidget(
              text: constants.txtShowTreatments,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TreatmentPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
