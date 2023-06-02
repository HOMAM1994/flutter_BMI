import 'dart:math';

import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  var height = 180.0;
  var weight = 60;
  var age = 28;
  var bmi = 0.0;
  var gender = "Male";
  bool ismail = true;
  TextStyle styles=const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  var colors = Colors.deepPurple;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.withOpacity(0.3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "BMI_CALCULATOR",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ismail = true;
                          gender = "Male";
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: ismail
                                ? colors = Colors.deepPurple
                                : colors = Colors.blueGrey,
                            borderRadius: BorderRadius.circular(25)),
                        width: 175,
                        height: 200,
                        child: const Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/gg.png',
                              ),
                              width: 150,
                              height: 150,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Male",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ismail = false;
                          gender = "Female";
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: ismail
                                ? colors = Colors.blueGrey
                                : colors = Colors.deepPurple,
                            borderRadius: BorderRadius.circular(25)),
                        width: 175,
                        height: 200,
                        child: const Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/vvv.png',
                              ),
                              width: 150,
                              height: 150,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "FeMale",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade800,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      const Text(
                        "Height",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "${height.round()}",
                            style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "cm",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        max: 250,
                        min: 100,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade800,
                          borderRadius: BorderRadius.circular(25)),
                      width: 175,
                      height: 175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Weight",
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "$weight",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Kg",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                child: const Icon(Icons.minimize),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                child: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade800,
                          borderRadius: BorderRadius.circular(25)),
                      width: 175,
                      height: 175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Age",
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "$age",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "year",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,
                                child: const Icon(Icons.minimize),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                child: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      bmi = weight / pow(height / 100, 2);
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Center(
                          child: Container(
                            color: Colors.black,
                            child:Column(
                                mainAxisAlignment:MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                            Text(
                              "Gender : $gender",
                              style: styles,
                            ),
                            Text(
                              "Height : ${height.round()}",
                              style: styles,
                            ),
                            Text(
                              "Weight : $weight",
                              style: styles,
                            ),
                            Text(
                              "Age : $age",
                              style: styles,
                            ),
                            Text(
                              "BMI : $bmi",
                              style: styles,
                            ),

                          ]),),
                        );
                      },
                    );
                    // ignore: avoid_print
                  },
                  color: Colors.redAccent,
                  child: const Text(
                    "CALCULATE",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
