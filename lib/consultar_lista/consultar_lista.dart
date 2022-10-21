import 'dart:io';

import 'package:dart_application_1/variables/lista_de_produtos.dart';
import 'package:dart_application_1/utils/utils.dart';

consultarLista() {
  bool _condicao2 = true;

  while (_condicao2) {
    print('--------------------------------------');
    print('LISTA DE COMPRAS');
    print('--------------------------------------');

    listaProdutos.forEach(print);

    print('--------------------------------------');

    print('Digite Sair para voltar ao menu: ');
    var sair = stdin.readLineSync();

    if (sair != null && sair.toLowerCase() == 'sair') {
      limpaTela();
      _condicao2 = false;
    }
  }
}
