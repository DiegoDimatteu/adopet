import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class CardBody extends StatelessWidget {
  final VoidCallback? onTap;
  final String name;
  final String specialty;
  final String image;
  final int index;
  const CardBody({
    Key? key,
    required this.name,
    required this.specialty,
    required this.image,
    required this.index,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        left: screenSize.width * 0.05,
        right: screenSize.width * 0.05,
        bottom: screenSize.height * 0.03,
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              height: screenSize.height * 0.17,
              width: screenSize.width * 0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              height: screenSize.height * 0.12,
              width: screenSize.width * 0.55,
              decoration: BoxDecoration(
                color: "BD9EFF".toColor(),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'PetName',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: "1B1464".toColor(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      specialty,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: "1B1464".toColor(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
