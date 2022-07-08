import 'package:adocao_de_pet/screens/Login/log_in_again.dart';
import 'package:adocao_de_pet/screens/Login/login.dart';
import 'package:adocao_de_pet/screens/cat_details/cat_details.dart';
import 'package:adocao_de_pet/screens/dog_details/dog_details.dart';
import 'package:adocao_de_pet/screens/home/cat/home_cat.dart';
import 'package:adocao_de_pet/screens/home/dog/home_dog.dart';
import 'package:adocao_de_pet/shared/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

String nameGlobal = '';
String specialtyGlobal = '';
String imageGlobal = '';
String groupGlobal = '';
String ageMaxGlobal = '';
String temperamentGlobal = '';
String descriptionGlobal = '';
String originGlobal = '';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.login: (_) => const Login(),
        AppRoutes.loginInAgain: (_) => const LogInAgain(),
        AppRoutes.homeDog: (_) => const HomeDog(),
        AppRoutes.homeCat: (_) => const HomeCat(),
        AppRoutes.detailsDog: (_) => const DogDetails(),
        AppRoutes.detailsCat: (_) => const CatDetails(),
      },
    );
  }
}
