import 'package:adocao_de_pet/repositories/login/login_repository.dart';
import 'package:adocao_de_pet/service/login/login_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginServiceImpl implements LoginService {
  final LoginRepository loginRepository;

  LoginServiceImpl({required this.loginRepository});

  @override
  Future<UserCredential> login() {
    return loginRepository.login();
  }
}
