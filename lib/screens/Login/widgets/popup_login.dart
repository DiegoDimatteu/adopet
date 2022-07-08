import 'package:adocao_de_pet/shared/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class PopupLogin extends StatelessWidget {
  const PopupLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('E-mail não autorizado'),
      content: const Text('Realizar novo login'),
      actions: [
        TextButton(
            onPressed: () async {
              final GoogleSignIn googleSignIn = GoogleSignIn();
              await googleSignIn.signOut();
              await FirebaseAuth.instance.signOut();

              await Navigator.of(context).pushNamed(AppRoutes.login);
            },
            child: const Text('Voltar'))
      ],
    );
  }
}
