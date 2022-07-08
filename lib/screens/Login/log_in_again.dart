import 'package:adocao_de_pet/screens/Login/widgets/popup_login.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class LogInAgain extends StatelessWidget {
  const LogInAgain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
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
            const SizedBox(
              height: 5,
            ),
            const PopupLogin(),
          ],
        ),
      ),
    );
  }
}
