import './about.dart';
import './play.dart';
import './select_char.dart';
import './classes.dart';
import 'dart:io';


runGame(Character character) {
  Character characterCurrent = character;
  print("\n=================== Bem-vindo ao RPG em CLI ! ===================");
  menuShow();
  String? input = stdin.readLineSync();

  if (input != null) {
    try {
      int selectMenu = int.parse(input);
      switch (selectMenu) {
        case 1:
          play(characterCurrent);
          runGame(characterCurrent);
        case 2:
          characterCurrent = selectCharacter(characterCurrent);
          runGame(characterCurrent);
          break;
        case 3:
          about();
          runGame(characterCurrent);
        case 4:
          exit(0);
        default:
          runGame(characterCurrent);
      }
    } on FormatException {
      runGame(characterCurrent);
    }
    // catch (e) {
    //   print("Algo de errado ocorreu!");
    // }
  }
}

void menuShow() {
  print("\nEscolha uma opção:");
  print("1. Jogar");
  print("2. Selecionar personagem");
  print("3. Sobre o jogo");
  print("4. Sair");
  stdout.write("\nSelecione uma opção: ");
}
