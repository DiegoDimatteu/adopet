import 'package:adocao_de_pet/model/authorized_users.dart';
import 'package:flutter/material.dart';

class UsersRepository extends ChangeNotifier {
  final List<AuthorizedUsers> _authorizedUsers = [
    AuthorizedUsers(email: 'diegodimatteu@gmail.com'),
    AuthorizedUsers(email: 'diego.telles@estudante.ifb.edu.br'),
    AuthorizedUsers(email: 'yasmin.pugliesi@waproject.com.br'),
    AuthorizedUsers(email: 'sakamoto@waproject.com.br'),
    AuthorizedUsers(email: 'patricia.ribeiro@waproject.com.br'),
    //E-mail abaixo de um amigo que testou o apk para mim em seu celular
    AuthorizedUsers(email: 'gustavoscosta274@gmail.com'),
  ];

  List<AuthorizedUsers> get authorizedUsers => _authorizedUsers;
}
