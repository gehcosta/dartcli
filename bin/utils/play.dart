import 'dart:io';
import 'dart:math';
import 'dart:async';
import '../utils/universal_function.dart';
import 'classes.dart';

play(Character characterCurrent) async {
  List<Character> characterPlay = createCharList();

  Random randomNum = Random();
  int randomChar = randomNum.nextInt(5);

  Character enemie = characterPlay[randomChar];

  print(
      "\n==x==x==x==x==x==x==x== Bem-Vindo ao duelo! ==x==x==x==x==x==x==x==");
  print("\nSeu duelista será: ${enemie.kind}");

  int randomStart = randomNum.nextInt(2);
  stdout.write("E quem começara será: ");
  if (randomStart == 0) {
    stdout.write(" Vossa mercê ${characterCurrent.kind}");
  } else {
    stdout.write(" O inimígo ${enemie.kind}");
  }

  print("\nVamos para a batalha!");
  delay(seconds: 2);

  // battle(
  //     enemie: enemie,
  //     characterCurrent: characterCurrent,
  //     randomStart: randomStart);

  print("Fim de jogo!");
}

battle(
    {required Character enemie,
    required Character characterCurrent,
    required int randomStart}) async {
  while (true) {
    if (randomStart == 0) {
      int damage = characterCurrent.attack();
      int defense = enemie.damageDefended();
      int damageTaken = damage - defense;
      enemie.life = enemie.life - damageTaken;
      print("O inimigo ${enemie.name} recebeu $damageTaken de dano");
      print("A vida do inimigo ${enemie.name} é de ${enemie.life}");
      if (enemie.life <= 0) {
        print("O inimigo ${enemie.name} morreu");
        await Future.delayed(Duration(seconds: 2));
        break;
      }
      randomStart = 1;
    } else {
      int damage = enemie.attack();
      int defense = characterCurrent.damageDefended();
      int damageTaken = damage - defense;
      characterCurrent.life = characterCurrent.life - damageTaken;
      print("Você recebeu $damageTaken de dano do inimigo ${enemie.name}");
      print("Sua vida atual é de ${enemie.life}");
      if (characterCurrent.life <= 0) {
        print("Você morreu!");
        await Future.delayed(Duration(seconds: 2));
        break;
      }
      randomStart = 0;
    }
  }
}
//O dano é afetado pelo dano do persoagem + um valor aleatório entre 0 e 10
//A defesa é afetada pela defesa do personagem + um valor aleatório entre 0 e 10

delay({required int seconds}) async {
  await Future.delayed(Duration(seconds: seconds));
}
