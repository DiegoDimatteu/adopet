import 'package:adocao_de_pet/service/login/login_service.dart';

class LoginController {
  final LoginService loginService;

  LoginController({required this.loginService});

  void login() async {
    await loginService.login();
  }
}
