import 'dart:io';

import 'package:dart_application_1/variables/lista_de_produtos.dart';
import 'package:dart_application_1/utils/utils.dart';

adicionaProduto() {
  bool _condicao2 = true;

  while (_condicao2) {
    print('--------------------------------------');
    print('Qual produto você gostaria de incluir?');

    String? produto = stdin.readLineSync();

    if (produto != null && produto != '' && produto != ' ') {
      listaProdutos.add(produto);
      print('Produto adicionado corretamente');
      limpaTela();
      _condicao2 = false;
    } else {
      print('Por favor, indique um produto válido');
      limpaTela();
    }
  }
}
