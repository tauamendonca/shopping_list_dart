import 'dart:io';

import 'package:dart_application_1/variables/lista_de_produtos.dart';
import 'package:dart_application_1/utils/utils.dart';

alterarProduto() {
  bool _condicao2 = true;
  List<String> listNovoProduto = [];

  while (_condicao2) {
    print('--------------------------------------');
    print('Qual o código do produto que você gostaria de alterar?');

    for (int i = 0; i < listaProdutos.length; i++) {
      print("Código do produto: $i | Nome do produto: ${listaProdutos[i]}");
    }
    String? codProduto = stdin.readLineSync();

    if (codProduto != null &&
        codProduto != '' &&
        codProduto != ' ' &&
        int.parse(codProduto) <= listaProdutos.length) {
      print('--------------------------------------');
      print('Qual o novo produto que será adicionado?');
      String? novoProduto = stdin.readLineSync();

      if (novoProduto != null && novoProduto != '' && novoProduto != ' ') {
        listaProdutos[int.parse(codProduto)] = novoProduto;
      }

      print('Produto alterado corretamente');
      limpaTela();
      _condicao2 = false;
    } else {
      print('Por favor, indique um produto válido');
      limpaTela();
    }
  }
}
