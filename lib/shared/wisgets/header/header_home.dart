import 'package:adocao_de_pet/shared/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HeaderHome extends PreferredSize {
  final IconData iconAnimal;
  final String route;
  final BuildContext context;
  HeaderHome({
    Key? key,
    required this.context,
    required this.iconAnimal,
    required this.route,
  }) : super(
          key: key,
          preferredSize: const Size.fromHeight(400),
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 18.0, bottom: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(route);
                  },
                  icon: Icon(iconAnimal),
                  color: Colors.pink[100],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .54,
                ),
                IconButton(
                  onPressed: () async {
                    final GoogleSignIn googleSignIn = GoogleSignIn();
                    await googleSignIn.signOut();
                    await FirebaseAuth.instance.signOut();

                    Navigator.of(context).pushNamed(AppRoutes.login);
                  },
                  icon: Icon(
                    FontAwesomeIcons.arrowRightFromBracket,
                    color: Colors.pink[100],
                  ),
                ),
              ],
            ),
          ),
        );
}
