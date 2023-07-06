import 'dart:io';
import '../utils/universal_function.dart';
import 'classes.dart';

Character selectCharacter(Character characterCurrent) {
  List<Character> characterList = createCharList();
  print("\n\n=========== Você está na seleção de personagem ===========");

  print("\nPersonagem atual: ${characterCurrent.kind}\n");
  print("Deseja voltar ou selecionar outro personagem?");
  print("1. Selecionar personagem\n2. Voltar\n");
  stdout.write("Selecione sua opção: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    int inputSelect = int.parse(input);
    if (inputSelect == 1) {
      print("================ Lista de personagens ================");
      for (Character character in characterList) {
        print("==x==x==x==x==x==x==x==x==x==x==x==x==x==x==\n");
        print("-Nome do personagem: ${character.name}");
        print("-Classe: ${character.kind}");
        print("-Vida: ${character.life}");
        print("-Força: ${character.damage}");
        print("-Defesa: ${character.defense}\n");
      }
      return select(characterList, characterCurrent);
    } else if (inputSelect == 2) {
      return characterCurrent;
    }
  }
  return characterCurrent;
}

Character select(List<Character> characterList, characterCurrent) {
  print("\nQual personagem deseja escolher?\n");
  for (int i = 0; i < characterList.length; i++) {
    Character characterKind = characterList[i];
    print("${i + 1}. ${characterKind.kind}");
  }
  stdout.write("Selecione sua opção: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    int inputSelect = int.parse(input);

    if (inputSelect >= 1 && inputSelect <= characterList.length) {
      return characterList[inputSelect - 1];
    } else {
      select(characterList, characterCurrent);
    }
  }
  return characterCurrent;
}

