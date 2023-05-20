import 'dart:math';

import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  var Height = 180.0;
  var Weight = 60;
  var Age = 28;
  var BMI = 0.0;
  var Gender = "Male";
  bool Ismail = true;
  TextStyle styles= TextStyle(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: const [
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
                          Ismail = true;
                          Gender = "Male";
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Ismail
                                ? colors = Colors.deepPurple
                                : colors = Colors.blueGrey,
                            borderRadius: BorderRadius.circular(25)),
                        width: 175,
                        height: 200,
                        child: Column(
                          children: const [
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
                          Ismail = false;
                          Gender = "Female";
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Ismail
                                ? colors = Colors.blueGrey
                                : colors = Colors.deepPurple,
                            borderRadius: BorderRadius.circular(25)),
                        width: 175,
                        height: 200,
                        child: Column(
                          children: const [
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
                            "${Height.round()}",
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
                        value: Height,
                        max: 250,
                        min: 100,
                        onChanged: (value) {
                          setState(() {
                            Height = value;
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
                                "$Weight",
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
                                    Weight--;
                                  });
                                },
                                mini: true,
                                child: const Icon(Icons.minimize),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    Weight++;
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
                                "$Age",
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
                                    Age--;
                                  });
                                },
                                mini: true,
                                child: const Icon(Icons.minimize),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    Age++;
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
                      BMI = Weight / pow(Height / 100, 2);
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
                              "Gender : $Gender",
                              style: styles,
                            ),
                            Text(
                              "Height : ${Height.round()}",
                              style: styles,
                            ),
                            Text(
                              "Weight : $Weight",
                              style: styles,
                            ),
                            Text(
                              "Age : $Age",
                              style: styles,
                            ),
                            Text(
                              "BMI : $BMI",
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
