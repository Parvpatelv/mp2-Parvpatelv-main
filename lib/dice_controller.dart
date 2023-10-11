// ignore_for_file: avoid_print
import 'package:get/get.dart';

class Controller extends GetxController {
  var dice1 = 1.obs;
  var dice2 = 1.obs;
  var dice3 = 1.obs;
  var dice4 = 1.obs;
  var dice5 = 1.obs;
  var dice6 = 1.obs;
  var selectedDice1 = false.obs;
  var selectedDice2 = false.obs;
  var selectedDice3 = false.obs;
  var selectedDice4 = false.obs;
  var selectedDice5 = false.obs;
  var selectedDice6 = false.obs;
  var rollStatus = 0.obs;
  var pick1 = 0.obs;
  var pick2 = 0.obs;
  var pick3 = 0.obs;
  var pick4 = 0.obs;
  var pick5 = 0.obs;
  var pick6 = 0.obs;
  var threeOfKind = 0.obs;
  var fourOfKind = 0.obs;
  var chance = 0.obs;
  var fullHouses = 0.obs;
  var smallStr = 0.obs;
  var largeStr = 0.obs;
  var yahtze = 0.obs;
  var currentScore = 0.obs;

  var listOfNumber = [].obs;

  commonFunc() {
    listOfNumber.clear();
    dice1.value = 1;
    dice2.value = 1;
    dice3.value = 1;
    dice4.value = 1;
    dice5.value = 1;
    dice6.value = 1;
    selectedDice1.value = false;
    selectedDice2.value = false;
    selectedDice3.value = false;
    selectedDice4.value = false;
    selectedDice5.value = false;
    selectedDice6.value = false;
    rollStatus.value = 0;
  }

  pickOneVal() {
    listOfNumber.add(dice1.value);
    listOfNumber.add(dice2.value);
    listOfNumber.add(dice3.value);
    listOfNumber.add(dice4.value);
    listOfNumber.add(dice5.value);
    listOfNumber.add(dice6.value);
    print(listOfNumber);
    var contain = listOfNumber.where((element) => element == 1);
    print(contain);
    pick1.value = contain.length * 1;
    print(pick1.value);
    currentScore.value = currentScore.value + pick1.value;
    commonFunc();
  }

  pickTwoVal() {
    listOfNumber.add(dice1.value);
    listOfNumber.add(dice2.value);
    listOfNumber.add(dice3.value);
    listOfNumber.add(dice4.value);
    listOfNumber.add(dice5.value);
    listOfNumber.add(dice6.value);
    print(listOfNumber);
    var contain = listOfNumber.where((element) => element == 2);
    print(contain);
    pick2.value = contain.length * 2;
    print(pick2.value);
    currentScore.value = currentScore.value + pick2.value;
    commonFunc();
  }

  pickThreeVal() {
    listOfNumber.add(dice1.value);
    listOfNumber.add(dice2.value);
    listOfNumber.add(dice3.value);
    listOfNumber.add(dice4.value);
    listOfNumber.add(dice5.value);
    listOfNumber.add(dice6.value);
    print(listOfNumber);
    var contain = listOfNumber.where((element) => element == 3);
    print(contain);
    pick3.value = contain.length * 3;
    print(pick3.value);
    currentScore.value = currentScore.value + pick3.value;
    commonFunc();
  }

  pickFourVal() {
    listOfNumber.add(dice1.value);
    listOfNumber.add(dice2.value);
    listOfNumber.add(dice3.value);
    listOfNumber.add(dice4.value);
    listOfNumber.add(dice5.value);
    listOfNumber.add(dice6.value);
    print(listOfNumber);
    var contain = listOfNumber.where((element) => element == 4);
    print(contain);
    pick4.value = contain.length * 4;
    print(pick4.value);
    currentScore.value = currentScore.value + pick4.value;
    commonFunc();
  }

  pickFiveVal() {
    listOfNumber.add(dice1.value);
    listOfNumber.add(dice2.value);
    listOfNumber.add(dice3.value);
    listOfNumber.add(dice4.value);
    listOfNumber.add(dice5.value);
    listOfNumber.add(dice6.value);
    print(listOfNumber);
    var contain = listOfNumber.where((element) => element == 5);
    print(contain);
    pick5.value = contain.length * 5;
    print(pick5.value);
    currentScore.value = currentScore.value + pick5.value;
    commonFunc();
  }

  pickSixVal() {
    listOfNumber.add(dice1.value);
    listOfNumber.add(dice2.value);
    listOfNumber.add(dice3.value);
    listOfNumber.add(dice4.value);
    listOfNumber.add(dice5.value);
    listOfNumber.add(dice6.value);
    print(listOfNumber);
    var contain = listOfNumber.where((element) => element == 6);
    print(contain);
    pick6.value = contain.length * 6;
    print(pick6.value);
    currentScore.value = currentScore.value + pick6.value;
    commonFunc();
  }

  chanceFunc() {
    chance.value = dice1.value +
        dice2.value +
        dice3.value +
        dice4.value +
        dice5.value +
        dice6.value;
    currentScore.value = currentScore.value + chance.value;
  }

  void threeOfKindFunc() {
    listOfNumber.add(dice1.value);
    listOfNumber.add(dice2.value);
    listOfNumber.add(dice3.value);
    listOfNumber.add(dice4.value);
    listOfNumber.add(dice5.value);
    listOfNumber.add(dice6.value);
    print('Rolled dice: $listOfNumber');

    Map<int, int> counts = {};

    for (int value in listOfNumber) {
      counts[value] = counts.containsKey(value) ? counts[value]! + 1 : 1;
    }

    bool hasThreeOfAKind = counts.values.any((count) => count >= 3);

    if (hasThreeOfAKind) {
      threeOfKind.value = dice1.value +
          dice2.value +
          dice3.value +
          dice4.value +
          dice5.value +
          dice6.value;
      currentScore.value = currentScore.value + threeOfKind.value;
      commonFunc();
    } else {
      print('You do not have three dice with the same number.');
    }
  }

  void fourOfKindFunc() {
    listOfNumber.add(dice1.value);
    listOfNumber.add(dice2.value);
    listOfNumber.add(dice3.value);
    listOfNumber.add(dice4.value);
    listOfNumber.add(dice5.value);
    listOfNumber.add(dice6.value);
    print('Rolled dice: $listOfNumber');

    Map<int, int> counts = {};

    for (int value in listOfNumber) {
      counts[value] = counts.containsKey(value) ? counts[value]! + 1 : 1;
    }

    bool hasFourOfAKind = counts.values.any((count) => count >= 4);

    if (hasFourOfAKind) {
      fourOfKind.value = dice1.value +
          dice2.value +
          dice3.value +
          dice4.value +
          dice5.value +
          dice6.value;
      currentScore.value = currentScore.value + fourOfKind.value;
      commonFunc();
    } else {
      print('You do not have four dice with the same number.');
    }
  }

  void fullHouse() {
    listOfNumber.add(dice1.value);
    listOfNumber.add(dice2.value);
    listOfNumber.add(dice3.value);
    listOfNumber.add(dice4.value);
    listOfNumber.add(dice5.value);
    listOfNumber.add(dice6.value);

    listOfNumber.sort();

    print('Rolled listOfNumber: $listOfNumber');

    bool hasThreeOfAKind = false;
    bool hasPair = false;

    for (int i = 0; i < listOfNumber.length - 2; i++) {
      if (listOfNumber[i] == listOfNumber[i + 1] &&
          listOfNumber[i] == listOfNumber[i + 2]) {
        hasThreeOfAKind = true;
        break;
      }
    }

    for (int i = 0; i < listOfNumber.length - 1; i++) {
      if (listOfNumber[i] == listOfNumber[i + 1]) {
        hasPair = true;
        break;
      }
    }

    if (hasThreeOfAKind && hasPair) {
      fullHouses.value = 25;
      currentScore.value = currentScore.value + fullHouses.value;
      commonFunc();
    } else {
      print('You do not have three of a kind and a pair.');
    }
  }

  void smallStraight() {
    listOfNumber.add(dice1.value);
    listOfNumber.add(dice2.value);
    listOfNumber.add(dice3.value);
    listOfNumber.add(dice4.value);
    listOfNumber.add(dice5.value);
    listOfNumber.add(dice6.value);

    print('Rolled dice: $listOfNumber');

    // Sort the listOfNumber for easier analysis
    listOfNumber.sort();

    bool hasFourSequential = false;

    for (int i = 0; i < listOfNumber.length - 3; i++) {
      if (listOfNumber[i] + 1 == listOfNumber[i + 1] &&
          listOfNumber[i] + 2 == listOfNumber[i + 2] &&
          listOfNumber[i] + 3 == listOfNumber[i + 3]) {
        hasFourSequential = true;
        break;
      }
    }

    if (hasFourSequential) {
      smallStr.value = 30;
      currentScore.value = currentScore.value + smallStr.value;
      commonFunc();
    } else {
      print('You do not have four sequential listOfNumber.');
    }
  }

  void largeStraight() {
    listOfNumber.add(dice1.value);
    listOfNumber.add(dice2.value);
    listOfNumber.add(dice3.value);
    listOfNumber.add(dice4.value);
    listOfNumber.add(dice5.value);
    listOfNumber.add(dice6.value);
    print('Rolled dice: $listOfNumber');

    listOfNumber.sort();

    bool hasFourSequential = false;

    for (int i = 0; i < listOfNumber.length - 3; i++) {
      if (listOfNumber[i + 1] == listOfNumber[i] + 1 &&
          listOfNumber[i + 2] == listOfNumber[i] + 2 &&
          listOfNumber[i + 3] == listOfNumber[i] + 3) {
        hasFourSequential = true;
        break;
      }
    }

    if (hasFourSequential) {
      largeStr.value = 40;
      currentScore.value = currentScore.value + largeStr.value;
      commonFunc();
    } else {
      print('You do not have four sequential listOfNumber.');
    }
  }

  void yahtzee() {
    listOfNumber.add(dice1.value);
    listOfNumber.add(dice2.value);
    listOfNumber.add(dice3.value);
    listOfNumber.add(dice4.value);
    listOfNumber.add(dice5.value);
    listOfNumber.add(dice6.value);
    print('Rolled dice: $listOfNumber');

    int firstValue = listOfNumber[0];
    bool hasFiveOfAKind = listOfNumber.every((value) => value == firstValue);

    if (hasFiveOfAKind) {
      yahtze.value = 50;
      currentScore.value = currentScore.value + yahtze.value;
      commonFunc();
    } else {
      print('You do not have five of a kind.');
    }
  }
}
