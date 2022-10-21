import 'dart:io';

import 'package:dart_application_1/variables/lista_de_produtos.dart';
import 'package:dart_application_1/utils/utils.dart';

excluirProduto() {
  bool _condicao2 = true;

  while (_condicao2) {
    print('--------------------------------------');
    print('Qual o código do produto que você gostaria de excluir?');

    for (int i = 0; i < listaProdutos.length; i++) {
      print("Código do produto: $i | Nome do produto: ${listaProdutos[i]}");
    }

    String? codProduto = stdin.readLineSync();

    if (codProduto != null &&
        codProduto != '' &&
        codProduto != ' ' &&
        int.parse(codProduto) <= listaProdutos.length) {
      listaProdutos.removeAt(int.parse(codProduto));
      print('Produto removido corretamente');
      limpaTela();
      _condicao2 = false;
    } else {
      print('Por favor, indique um produto válido');
      limpaTela();
    }
  }
}
