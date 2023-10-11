// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parv_assigment2/dice_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Controller controller = Get.put(Controller(), permanent: false);
  void update() {
    setState(() {
      if (controller.selectedDice1.value != true) {
        controller.dice1.value = Random().nextInt(6) + 1;
        debugPrint("dice1 ${controller.dice1.value}");
      } else {}

      if (controller.selectedDice2.value != true) {
        controller.dice2.value = Random().nextInt(6) + 1;
        debugPrint("dice2 ${controller.dice2.value}");
      } else {}

      if (controller.selectedDice3.value != true) {
        controller.dice3.value = Random().nextInt(6) + 1;
        debugPrint("dice3 ${controller.dice3.value}");
      } else {}

      if (controller.selectedDice4.value != true) {
        controller.dice4.value = Random().nextInt(6) + 1;
        debugPrint("dice4 ${controller.dice4.value}");
      } else {}

      if (controller.selectedDice5.value != true) {
        controller.dice5.value = Random().nextInt(6) + 1;
        debugPrint("dice5 ${controller.dice5.value}");
      } else {}
      if (controller.selectedDice6.value != true) {
        controller.dice6.value = Random().nextInt(6) + 1;
        debugPrint("dice6 ${controller.dice6.value}");
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
                onTap: () {
                  update();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.selectedDice1.value == false
                              ? controller.selectedDice1.value = true
                              : controller.selectedDice1.value = false;
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: controller.selectedDice1.value == true
                                      ? Colors.red
                                      : Colors.black,
                                  width: 1)),
                          child: Center(
                            child: Text(
                              controller.rollStatus.value == 0
                                  ? ""
                                  : controller.dice1.value.toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.selectedDice2.value == false
                              ? controller.selectedDice2.value = true
                              : controller.selectedDice2.value = false;
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: controller.selectedDice2.value == true
                                      ? Colors.red
                                      : Colors.black,
                                  width: 1)),
                          child: Center(
                            child: Text(
                              controller.rollStatus.value == 0
                                  ? ""
                                  : controller.dice2.value.toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.selectedDice3.value == false
                              ? controller.selectedDice3.value = true
                              : controller.selectedDice3.value = false;
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: controller.selectedDice3.value == true
                                      ? Colors.red
                                      : Colors.black,
                                  width: 1)),
                          child: Center(
                            child: Text(
                              controller.rollStatus.value == 0
                                  ? ""
                                  : controller.dice3.value.toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.selectedDice4.value == false
                              ? controller.selectedDice4.value = true
                              : controller.selectedDice4.value = false;
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: controller.selectedDice4.value == true
                                      ? Colors.red
                                      : Colors.black,
                                  width: 1)),
                          child: Center(
                            child: Text(
                              controller.rollStatus.value == 0
                                  ? ""
                                  : controller.dice4.value.toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.selectedDice5.value == false
                              ? controller.selectedDice5.value = true
                              : controller.selectedDice5.value = false;
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: controller.selectedDice5.value == true
                                      ? Colors.red
                                      : Colors.black,
                                  width: 1)),
                          child: Center(
                            child: Text(
                              controller.rollStatus.value == 0
                                  ? ""
                                  : controller.dice5.value.toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.selectedDice6.value == false
                              ? controller.selectedDice6.value = true
                              : controller.selectedDice6.value = false;
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: controller.selectedDice6.value == true
                                      ? Colors.red
                                      : Colors.black,
                                  width: 1)),
                          child: Center(
                            child: Text(
                              controller.rollStatus.value == 0
                                  ? ""
                                  : controller.dice6.value.toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => controller.rollStatus.value == 3
                  ? GestureDetector(
                      onTap: () {
                        // update();
                        // if (controller.rollStatus.value < 3) {
                        //   controller.rollStatus.value =
                        //       controller.rollStatus.value + 1;
                        //   print('+');
                        // } else if (controller.rollStatus.value >= 3) {
                        controller.rollStatus.value = 0;
                        print('0');
                        controller.listOfNumber.clear();
                        controller.commonFunc();
                        // }controller.rollStatus.value ==1 ? "":
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Out of roll!',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        update();
                        if (controller.rollStatus.value < 3) {
                          controller.rollStatus.value =
                              controller.rollStatus.value + 1;
                          print('+');
                        } else if (controller.rollStatus.value >= 3) {
                          controller.rollStatus.value = 0;
                          print('0');
                        }
                        controller.listOfNumber.clear();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade400,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Roll (${controller.rollStatus.value})',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CountOfScore()
          ],
        ));
  }
}

class CountOfScore extends StatelessWidget {
  const CountOfScore({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller(), permanent: false);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Obx(
        () => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const Text('Ones: ', style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.pick1.value == 0) {
                              controller.pickOneVal();
                            } else {}
                          },
                          child: Text(
                            '${controller.pick1.value == 0 ? 'Pick' : controller.pick1.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Tows: ', style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.pick2.value == 0) {
                              controller.pickTwoVal();
                            } else {}
                          },
                          child: Text(
                            '${controller.pick2.value == 0 ? 'Pick' : controller.pick2.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Threes: ', style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.pick3.value == 0) {
                              controller.pickThreeVal();
                            } else {}
                          },
                          child: Text(
                            '${controller.pick3.value == 0 ? 'Pick' : controller.pick3.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Fours: ', style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.pick4.value == 0) {
                              controller.pickFourVal();
                            } else {}
                          },
                          child: Text(
                            '${controller.pick4.value == 0 ? 'Pick' : controller.pick4.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Fives: ', style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.pick5.value == 0) {
                              controller.pickFiveVal();
                            } else {}
                          },
                          child: Text(
                            '${controller.pick5.value == 0 ? 'Pick' : controller.pick5.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Sixs: ', style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.pick6.value == 0) {
                              controller.pickSixVal();
                            } else {}
                          },
                          child: Text(
                            '${controller.pick6.value == 0 ? 'Pick' : controller.pick6.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text('Three of Kind: ',
                            style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.threeOfKind.value == 0) {
                              controller.threeOfKindFunc();
                            } else {}
                          },
                          child: Text(
                            '${controller.threeOfKind.value == 0 ? 'Pick' : controller.threeOfKind.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Four of Kind: ',
                            style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.fourOfKind.value == 0) {
                              controller.fourOfKindFunc();
                            } else {}
                          },
                          child: Text(
                            '${controller.fourOfKind.value == 0 ? 'Pick' : controller.fourOfKind.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Full House: ',
                            style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.fullHouses.value == 0) {
                              controller.fullHouse();
                            } else {}
                          },
                          child: Text(
                            '${controller.fullHouses.value == 0 ? 'Pick' : controller.fullHouses.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('smallStraight : ',
                            style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.smallStr.value == 0) {
                              controller.smallStraight();
                            } else {}
                          },
                          child: Text(
                            '${controller.smallStr.value == 0 ? 'Pick' : controller.smallStr.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Large Straight : ',
                            style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.largeStr.value == 0) {
                              controller.largeStraight();
                            } else {}
                          },
                          child: Text(
                            '${controller.largeStr.value == 0 ? 'Pick' : controller.largeStr.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Yahtzee : ',
                            style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.yahtze.value == 0) {
                              controller.yahtzee();
                            } else {}
                          },
                          child: Text(
                            '${controller.yahtze.value == 0 ? 'Pick' : controller.yahtze.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Chance : ', style: TextStyle(fontSize: 16)),
                        GestureDetector(
                          onTap: () {
                            if (controller.chance.value == 0) {
                              controller.chanceFunc();
                            } else {}
                          },
                          child: Text(
                            '${controller.chance.value == 0 ? 'Pick' : controller.chance.value}',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Current Score: ${controller.currentScore.value}',
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
