import 'package:amritha_ayurveda/core/constants/login_constants.dart';
import 'package:amritha_ayurveda/core/themes/app_theme.dart';
import 'package:amritha_ayurveda/core/widgets/subtitle_widget.dart';
import 'package:amritha_ayurveda/core/widgets/textfield_widget.dart';
import 'package:amritha_ayurveda/features/authentication/presentation/widgets/image_widget.dart';
import 'package:amritha_ayurveda/features/authentication/presentation/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final userController = useTextEditingController();
    final passwordController = useTextEditingController();
    final theme = AppTheme.of(context);
    final appConstants = LoginConstants();

    return Scaffold(
      body: Column(
        children: [
          const ImageWidget(),
          SizedBox(
            height: theme.spaces.space_400,
          ),
          const TitleWidget(),
          SizedBox(
            height: theme.spaces.space_400,
          ),
          SubTitleWidget(
            title: appConstants.txtuserName,
          ),
          SizedBox(
            height: theme.spaces.space_100,
          ),
          TextFieldWidget(
            controller: userController,
            labelText: appConstants.txtEnterUserName,
          ),
          SizedBox(
            height: theme.spaces.space_300,
          ),
          SubTitleWidget(
            title: appConstants.txtPassword,
          ),
          SizedBox(
            height: theme.spaces.space_100,
          ),
          TextFieldWidget(
            controller: passwordController,
            labelText: appConstants.txtEnterPass,
          ),
          SizedBox(
            height: theme.spaces.space_500 * 1.5,
          ),
        ],
      ),
    );
  }
}
