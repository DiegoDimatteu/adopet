import 'dart:convert';

import 'package:adocao_de_pet/main.dart';
import 'package:adocao_de_pet/screens/home/widgets/card_body.dart';
import 'package:adocao_de_pet/shared/routes.dart';
import 'package:adocao_de_pet/shared/wisgets/header/header_home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supercharged/supercharged.dart';
import 'package:http/http.dart' as http;

class HomeDog extends StatefulWidget {
  const HomeDog({Key? key}) : super(key: key);

  @override
  State<HomeDog> createState() => _HomeDogState();
}

Future<List> fetchDogApi() async {
  var url =
      "https://api.thedogapi.com/v1/breeds?key=e32a9861-27f7-47c4-941d-4e561e9675f4";
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return jsonDecode(utf8.decode(response.bodyBytes));
  } else {
    throw Exception('Failed to load dog');
  }
}

class _HomeDogState extends State<HomeDog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderHome(
          context: context,
          iconAnimal: FontAwesomeIcons.cat,
          route: AppRoutes.homeCat),
      backgroundColor: "9362FC".toColor(),
      body: FutureBuilder<List>(
        future: fetchDogApi(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Erro ao carregar pet'),
            );
          }
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CardBody(
                  index: index,
                  name: snapshot.data![index]['name'] ?? '',
                  specialty: snapshot.data![index]['bred_for'] ?? '',
                  image: snapshot.data![index]['image']['url'] ?? '',
                  onTap: () {
                    nameGlobal = snapshot.data![index]['name'] ?? '';
                    specialtyGlobal = snapshot.data![index]['bred_for'] ?? '';
                    imageGlobal = snapshot.data![index]['image']['url'] ?? '';
                    ageMaxGlobal = snapshot.data![index]['life_span'] ?? '';
                    groupGlobal = snapshot.data![index]['breed_group'] ?? '';
                    temperamentGlobal =
                        snapshot.data![index]['temperament'] ?? '';
                    Navigator.of(context).pushNamed(AppRoutes.detailsDog);
                  },
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
