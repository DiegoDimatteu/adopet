import 'dart:convert';

import 'package:adocao_de_pet/main.dart';
import 'package:adocao_de_pet/screens/home/widgets/card_body.dart';
import 'package:adocao_de_pet/shared/routes.dart';
import 'package:adocao_de_pet/shared/wisgets/header/header_home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supercharged/supercharged.dart';
import 'package:http/http.dart' as http;

class HomeCat extends StatefulWidget {
  const HomeCat({Key? key}) : super(key: key);

  @override
  State<HomeCat> createState() => _HomeCatState();
}

Future<List> fetchDogApi() async {
  var url =
      "https://api.thecatapi.com/v1/breeds?key=c47178ea-fd5d-4a5e-ab09-3771ffc7285c";
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return jsonDecode(utf8.decode(response.bodyBytes));
  } else {
    throw Exception('Failed to load cat');
  }
}

class _HomeCatState extends State<HomeCat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderHome(
          context: context,
          iconAnimal: FontAwesomeIcons.dog,
          route: AppRoutes.homeDog),
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
                  specialty: snapshot.data![index]['origin'] ?? '',
                  image: snapshot.data![index]['image']['url'] ?? '',
                  onTap: () {
                    nameGlobal = snapshot.data![index]['name'] ?? '';
                    originGlobal = snapshot.data![index]['origin'] ?? '';
                    imageGlobal = snapshot.data![index]['image']['url'] ?? '';
                    ageMaxGlobal = snapshot.data![index]['life_span'] ?? '';
                    descriptionGlobal =
                        snapshot.data![index]['description'] ?? '';
                    temperamentGlobal =
                        snapshot.data![index]['temperament'] ?? '';
                    Navigator.of(context).pushNamed(AppRoutes.detailsCat);
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
