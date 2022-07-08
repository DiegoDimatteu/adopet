import 'package:adocao_de_pet/repositories/login/login_repository_impl.dart';
import 'package:adocao_de_pet/repositories/users/users_repository.dart';
import 'package:adocao_de_pet/screens/Login/login_controller.dart';
import 'package:adocao_de_pet/service/login/login_service_impl.dart';
import 'package:adocao_de_pet/shared/routes.dart';
import 'package:adocao_de_pet/shared/wisgets/buttons/google_sign_in_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? userEmail;
  String? message = '';
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final controller = LoginController(
      loginService: LoginServiceImpl(
        loginRepository: LoginRepositoryImpl(),
      ),
    );

    return Scaffold(
      backgroundColor: "9362FC".toColor(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png',
                height: screenSize.height * 0.25),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Text(
              'AdoPet',
              style: TextStyle(
                fontFamily: 'Pet',
                fontSize: 42,
                color: "1B1464".toColor(),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.05,
            ),
            SizedBox(
              width: screenSize.width * 0.4,
              child: GoogleSignInButton(
                onTap: () {
                  controller.login();
                  FirebaseAuth.instance
                      .authStateChanges()
                      .listen((User? user) async {
                    if (user != null) {
                      userEmail = user.email;
                      message = user.email;
                      final authorizedUsers = UsersRepository().authorizedUsers;
                      for (var i in authorizedUsers) {
                        if (i.email == userEmail) {
                          await Navigator.of(context)
                              .pushNamed(AppRoutes.homeDog);
                        }
                      }
                      await Navigator.of(context)
                          .pushNamed(AppRoutes.loginInAgain);
                    }
                  });
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
