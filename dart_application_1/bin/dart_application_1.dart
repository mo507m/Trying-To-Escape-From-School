import 'dart:io';

main() {
  gameTitle();
  levelOneTitle();
}

makeSpace(int spaces) {
  for (int index = 0; index < spaces; index++) {
    print(" ");
  }
}

gameTitle() {
  makeSpace(2);
  print("###### Escape School ######");
  makeSpace(2);
}

levelOneTitle() {
  print("level 1");
  printToday();
  print("You are sitting on your desk,");
  print("and the teacher left the class,");
  print("with on of your class mates.");
  levelOne();
}

levelOne() {
  print("do your want to 1#(escape), 2#(fight), 3#(cheet):");
  String option1 = stdin.readLineSync()!;
  switch (option1) {
    case "escape":
    case "1":
      win();
      levelTwoTitle();
      break;
    case "fight":
    case "2":
      lose();
      break;
    case "cheet":
    case "3":
      lose();
      break;
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelOne();
      break;
  }

  makeSpace(2);
}

levelTwoTitle() {
  print("level 2");
  print(".............");
  print(".............");
  print(".............");
  levelTwo();
}

levelTwo() {
  print("1 Go To Home,2 Driving,3 Go To Resturent");
  String option1 = stdin.readLineSync()!;
  makeSpace(2);
  switch (option1) {
    case "1":
    win();
   levelThree();
      break;
    case "2":
    lose();
      break;
    case "3":
      lose();
      break;
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelTwo();
      break;
  }
}

levelThree() {
  print("level 3");
  print("You Want Sleep");
  print("play");
  print("shoping");

    String option1 = stdin.readLineSync()!;
  makeSpace(2);
  endGame();
}

endGame() {
  makeSpace(2);
  print("######### The End #########");
  makeSpace(2);
}

printToday() {
  print(
      "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}");
}

win() {
  makeSpace(1);
  print("🎉🎉🎉🎉🎉🎉🎉🎉");
  makeSpace(1);
}

lose() {
  makeSpace(1);
  print("🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️");
  makeSpace(1);
  endGame();
}

quitGame() {
  endGame();
  exit(0);
}