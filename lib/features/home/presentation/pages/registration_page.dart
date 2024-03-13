import 'package:amritha_ayurveda/core/constants/home_constatnts.dart';
import 'package:amritha_ayurveda/core/themes/app_theme.dart';
import 'package:amritha_ayurveda/core/widgets/button_widget.dart';
import 'package:amritha_ayurveda/core/widgets/subtitle_widget.dart';
import 'package:amritha_ayurveda/core/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    final theme = AppTheme.of(context);
    final constants = HomeConstants();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Register"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SubTitleWidget(
                title: constants.txtName,
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              TextFieldWidget(
                labelText: constants.txtEnterName,
                controller: controller,
              ),
              SizedBox(
                height: theme.spaces.space_200,
              ),
              SubTitleWidget(
                title: constants.txtNumber,
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              TextFieldWidget(
                labelText: constants.txtWhatsappNumber,
                controller: controller,
              ),
              SizedBox(
                height: theme.spaces.space_200,
              ),
              SubTitleWidget(
                title: constants.txtAddress,
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              TextFieldWidget(
                labelText: constants.txtEnterAddress,
                controller: controller,
              ),
              SizedBox(
                height: theme.spaces.space_200,
              ),
              SubTitleWidget(
                title: constants.txtLocation,
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              TextFieldWidget(
                labelText: '',
                controller: controller,
              ),
              SizedBox(
                height: theme.spaces.space_200,
              ),
              SubTitleWidget(
                title: constants.txtBranch,
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              TextFieldWidget(
                labelText: '',
                controller: controller,
              ),
              SizedBox(
                height: theme.spaces.space_200,
              ),
              SubTitleWidget(
                title: constants.txtTotalAmount,
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              TextFieldWidget(
                labelText: '',
                controller: controller,
              ),
              SizedBox(
                height: theme.spaces.space_200,
              ),
              SubTitleWidget(
                title: constants.txtDiscountAmount,
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              TextFieldWidget(
                labelText: '',
                controller: controller,
              ),
              SizedBox(
                height: theme.spaces.space_400,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton:
            ButtonWidget(buttonName: constants.txtSave, onPressed: () {}));
  }
}
