import 'dart:io';

void about() {
  print(
      "\n==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x");
  print("\n- Olá guerreiro, como está a aventura pelo seu mundo?");
  print(
      "\n- Este jogo se baseia no estilo RPG porém, com batalhas frenéticas via terminal :D");
  print(
      "\n- Acredito que com sua imaginação, podemos lutar bravamente contra os inimigos. Basta selecionar o personagem e lutar, simples assim!");
  print(
      "\n- Este jogo foi realizado por Geovanne Costa, o maior de todos os guerreiros (se me conhece vai entender haha)");
  print("\n- Apenas se divirta nesse protótipo!");
  print(
      "\n==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x==x");
  stdout.write("\n\nDeseja voltar? [y/Y] ou [n/N]: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    if (input == 'y' || input == 'Y') {
      return;
    } else if (input == 'n' || input == 'N') {
      exit(0);
    } else {
      about();
    }
  }
}
