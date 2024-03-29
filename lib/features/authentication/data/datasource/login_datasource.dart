import 'package:amritha_ayurveda/features/authentication/data/model/login_model.dart';

abstract class LoginDataSource {
  Future<LoginModel> login(String name, String password);
}
