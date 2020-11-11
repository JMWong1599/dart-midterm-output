//konting import mula dart sdk para sa Com/Ai ng laro
import 'dart:io';
import 'dart:math';

// mga choices
enum Move { bato, papel, gunting }
void main() {
  //logic ng AI or ng kalabang computer
  final rng = Random();
  while (true) {
    stdout

        //Starting Prompt ng laro
        .write('Bato, Papel o Gunting! Whats your pick? (Bato/Papel/Gunting) ');
    //input ng man lalaro
    final input = stdin.readLineSync();

    //choices ng manglalaro
    if (input == 'Bato' || input == 'Papel' || input == 'Gunting') {
      var playerMove;
      if (input == 'Bato') {
        playerMove = Move.bato;
      } else if (input == 'Papel') {
        playerMove = Move.papel;
      } else {
        playerMove = Move.gunting;
      }

      //choice ng COM/ Ai tulong ng RNG
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print('You played: $playerMove');
      print('AI played: $aiMove');

      //paglabas ng resulta
      if (playerMove == aiMove) {
        print("Ouch Tabla mga Lods, It's a draw!");
      } else if (playerMove == Move.bato && aiMove == Move.gunting ||
          playerMove == Move.papel && aiMove == Move.bato ||
          playerMove == Move.gunting && aiMove == Move.papel) {
        //kapag nanalo
        print("LAKAD MATATAG! You Win");
      } else {
        //kapag natalo
        print("Naku pambihira naman!, You Lose!");
      }
    } else if (input == 'q') {
      break;
    } else {
      //kapg maling input na inalagay
      print('Invalid input');
    }
  }
}
