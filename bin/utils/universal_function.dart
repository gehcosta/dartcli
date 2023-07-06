import '../utils/classes.dart';

List<Character> createCharList() {
  Character guerreiro = Character(
      name: "Magnus", kind: "Guerreiro", life: 90, damage: 8, defense: 7);
  Character mago =
      Character(name: "Aria", kind: "Mago", life: 80, damage: 7, defense: 6);
  Character ladra =
      Character(name: "Lyra", kind: "Ladra", life: 85, damage: 7, defense: 6);
  Character arqueiro = Character(
      name: "Varian", kind: "Arqueiro", life: 85, damage: 7, defense: 6);
  Character sacerdote = Character(
      name: "Elara", kind: "Sacerdote", life: 80, damage: 6, defense: 8);

  List<Character> createCharList = [guerreiro, mago, ladra, arqueiro, sacerdote];
  return createCharList;
}
