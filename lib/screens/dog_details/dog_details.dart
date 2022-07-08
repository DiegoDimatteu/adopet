import 'package:adocao_de_pet/screens/dog_details/widgets.dart/card_dog_details.dart';
import 'package:adocao_de_pet/shared/routes.dart';
import 'package:adocao_de_pet/shared/wisgets/header/header_home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supercharged/supercharged.dart';

class DogDetails extends StatelessWidget {
  const DogDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "9362FC".toColor(),
      appBar: HeaderHome(
          context: context,
          iconAnimal: FontAwesomeIcons.arrowLeftLong,
          route: AppRoutes.homeDog),
      body: const CardDogDetails(),
    );
  }
}
