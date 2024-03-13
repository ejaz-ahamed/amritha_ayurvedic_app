import 'package:amritha_ayurveda/features/authentication/data/datasource/login_datasource.dart';
import 'package:amritha_ayurveda/features/authentication/domain/entity/login_entity.dart';
import 'package:amritha_ayurveda/features/authentication/domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource dataSource;
  LoginRepositoryImpl({required this.dataSource});

  @override
  Future<LoginEntity> login(String name, String password) async {
    final data = await dataSource.login(name, password);

    final result = LoginEntity(
      status: data.status,
      message: data.message,
      token: data.token,
      isSuperuser: data.isSuperuser,
    );
    return result;
  }
}