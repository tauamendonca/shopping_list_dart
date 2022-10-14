import 'dart:io';
import 'package:dart_application_1/adiciona_produto/adiciona_produto.dart';
import 'package:dart_application_1/sair_programa/sair_programa.dart';

void main() {
  bool condicao = true;

  print('======== LISTA DE COMPRAS ==========');

  while (condicao) {
    print('''
      Escolha uma opção:
      (1) Incluir produto na lista
      (2) Consultar Lista
      (3) Alterar produto da Lista
      (4) Excluir produto da lista
      (5) Sair

    ''');
    String? comando = stdin.readLineSync();

    if (comando == '1') adicionaProduto();
    // if (comando == '2') consultar();
    // if (comando == '3') alterar();
    // if (comando == '4') excluir();
    if (comando == '5') {
      print('Obrigado por utilizar nosso programa');
      condicao = saiPrograma();
    }
  }
}
