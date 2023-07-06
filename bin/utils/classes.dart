import 'dart:math';

class Character {
  String name;
  String kind;
  int life;
  int damage;
  int defense;

  Character(
      {required this.name,
      required this.kind,
      required this.life,
      required this.damage,
      required this.defense});

  Random randomNum = Random();

  int attack() {
    int randomDamage = randomNum.nextInt(6);
    int damage = this.damage + randomDamage;
    return damage;
  }

  int damageDefended(){
    int randomDefense = randomNum.nextInt(6);
    int defense = this.defense + randomDefense;
    return defense;
  }


}