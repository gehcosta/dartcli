import 'dart:io';
import 'dart:math';
import 'dart:async';
import '../utils/universal_function.dart';
import 'classes.dart';

void play(Character characterCurrent) async {
  List<Character> characterPlay = createCharList();

  Random randomNum = Random();
  int randomChar = randomNum.nextInt(5);

  Character enemie = characterPlay[randomChar];

  print(
      "\n==x==x==x==x==x==x==x== Bem-Vindo ao duelo! ==x==x==x==x==x==x==x==");
  print("\nSeu duelista será: ${enemie.kind}");

  int randomStart = randomNum.nextInt(2);
  stdout.write("E quem começara será: ");
  for (int i = 0; i < 3; i++) {
    stdout.write(".");
    await Future.delayed(Duration(seconds: 1));
  }
  if (randomStart == 0) {
    stdout.write(" Vossa mercê ${characterCurrent.kind}");
  } else {
    stdout.write(" O inimígo ${enemie.kind}");
  }

  

}
