import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tasks/task6/bmi_calculator/result_screen.dart';

import 'colors.dart';

class BmiHomeScreen extends StatefulWidget {
  const BmiHomeScreen({super.key});

  @override
  State<BmiHomeScreen> createState() => _BmiHomeScreenState();
}

class _BmiHomeScreenState extends State<BmiHomeScreen> {
  double height = 150;
  int weight = 80;
  String bodyTepe = "";
  int age = 20;
  bool isMale = true;
  double bmi = 0;
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (isMale) return;
                      isMale = !isMale;
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: isMale ? selectedColor : secondColor,
                      ),
                      height: 250,
                      margin: const EdgeInsets.all(10),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 80,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (!isMale) return;
                      isMale = !isMale;
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: !isMale ? selectedColor : secondColor,
                      ),
                      height: 250,
                      margin: const EdgeInsets.all(10),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 80,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: secondColor,
              ),
              height: 250,
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "HEIGHT",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.round()}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                      const Text(
                        "cm",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    inactiveColor: Colors.grey,
                    activeColor: pinkColor,
                    value: height,
                    max: 200,
                    min: 100,
                    onChanged: (value) {
                      height = value;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: secondColor,
                    ),
                    height: 250,
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "$weight",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 40,
                              child: GestureDetector(
                                onTap: () {
                                  if (weight != 0) {
                                    weight--;
                                  }

                                  setState(() {});
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: GestureDetector(
                                onTap: () {
                                  weight++;
                                  setState(() {});
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: secondColor,
                    ),
                    height: 250,
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "$age",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 40,
                              child: GestureDetector(
                                onTap: () {
                                  if (age != 0) {
                                    age--;
                                  }

                                  setState(() {});
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: GestureDetector(
                                onTap: () {
                                  age++;
                                  setState(() {});
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: pinkColor,
            width: double.infinity,
            height: 50,
            child: GestureDetector(
              onTap: () {
                bmi = weight / pow(height.round() / 100, 2);
                switch (bmi) {
                  case <= 18.4:
                    {
                      bodyTepe = "underWeight";
                      color = Colors.yellow;
                    }
                    break;
                  case >= 18.5 && <= 24.9:
                    bodyTepe = "normal";
                    color = Colors.green;
                    break;
                  case >= 25.0 && <= 39.9:
                    bodyTepe = "overWeight";
                    color = Colors.orange;
                    break;
                  case > 40:
                    bodyTepe = "obeses";
                    color = Colors.red;
                    break;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      bmiResult: bmi,
                      color: color,
                      bodyType: bodyTepe,
                      height: height.round(),
                      weight: weight,
                      age: age,
                      gender: isMale ? "Male" : "Female",
                    ),
                  ),
                );
              },
              child: const Center(
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
