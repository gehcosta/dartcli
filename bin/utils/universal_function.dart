import '../utils/classes.dart';

List<Character> createCharList() {
  Character guerreiro = Character(
      name: "Magnus", kind: "Guerreiro", vida: 90, forca: 8, defesa: 7);
  Character mago =
      Character(name: "Aria", kind: "Mago", vida: 80, forca: 7, defesa: 6);
  Character ladra =
      Character(name: "Lyra", kind: "Ladra", vida: 85, forca: 7, defesa: 6);
  Character arqueiro = Character(
      name: "Varian", kind: "Arqueiro", vida: 85, forca: 7, defesa: 6);
  Character sacerdote = Character(
      name: "Elara", kind: "Sacerdote", vida: 80, forca: 6, defesa: 8);

  List<Character> createCharList = [guerreiro, mago, ladra, arqueiro, sacerdote];
  return createCharList;
}
