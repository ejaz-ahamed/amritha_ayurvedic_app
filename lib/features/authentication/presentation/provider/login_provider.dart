import 'dart:developer';

import 'package:amritha_ayurveda/features/authentication/domain/repository/login_repository.dart';
import 'package:amritha_ayurveda/features/authentication/domain/usecases/login_usecase.dart';
import 'package:amritha_ayurveda/features/authentication/presentation/provider/login_provider_state.dart';
import 'package:amritha_ayurveda/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginProvider extends ValueNotifier<LoginProviderState> {
  LoginProvider()
      : super(
          LoginProviderState(isLoading: false, token: ''),
        );

  Future<void> login(BuildContext context, String name, String password) async {
    log("sd");
    value = value.copyWith(isLoading: true);
    try {
      final user = await LoginUsecase(
          repository: GetIt.I.get<LoginRepository>())(name, password);
      if (user.token != null) {
        value = value.copyWith(token: user.token!);
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', user.token!);
        Future.sync(
          () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
              (route) => false),
        );
      }
    } catch (e) {
      Future.sync(
        () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
            backgroundColor: Colors.redAccent,
          ),
        ),
      );
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }
}
