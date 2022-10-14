limpaTela() async {
  await Future.delayed(Duration(seconds: 2));
  print("\x1B[2J\x1B[0;0H"); //limpa a tela do terminal
}
