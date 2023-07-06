import 'utils/classes.dart';
import 'utils/menu.dart';
import 'utils/universal_function.dart';

void main() {
  List<Character> initialClass = createCharList();
  //List of the characthers:
  //0. Warrior - Guerreiro
  //1. Mage - Mago
  //2. Thief - Ladrão
  //3. Archer - Arqueiro
  //4. Priest - Sacerdote

  //Initial class:
  runGame(initialClass[0]);
}
