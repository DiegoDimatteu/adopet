import 'package:adocao_de_pet/main.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class CardDogDetails extends StatelessWidget {
  const CardDogDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Container(
            height: screenSize.height * 0.4,
            width: screenSize.width * 0.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  imageGlobal,
                ),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            height: screenSize.height * 0.42,
            width: screenSize.width * 0.9,
            decoration: BoxDecoration(
              color: "BD9EFF".toColor(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  Text(
                    nameGlobal,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'PetName',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: "1B1464".toColor(),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.03),
                  Text(
                    'Specialty: $specialtyGlobal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: "1B1464".toColor(),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  Text(
                    'Breed Group: $groupGlobal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: "1B1464".toColor(),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  Text(
                    'Life Span: $ageMaxGlobal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: "1B1464".toColor(),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  Text(
                    'Temperament: $temperamentGlobal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: "1B1464".toColor(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
