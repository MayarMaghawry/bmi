import 'dart:math';

import 'package:flutter/material.dart';

import 'result.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  bool isFemale = true;
  double height = 120;
  double weight = 70.0;
  int age = 10;
  double res = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(0xff526f7a),
          centerTitle: true,
          title: const Text(
            'Body Mass Index',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color:
                                    isFemale ? Colors.blueGrey : Colors.grey),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 70,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 40),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              isFemale = true;
                            });
                          }),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isFemale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: isFemale ? Colors.grey : Colors.blueGrey),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 70,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 40),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.all(14),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'CM',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Slider(
                          thumbColor: Colors.blueGrey[700],
                          activeColor: Colors.blueGrey[700],
                          inactiveColor: Colors.grey,
                          value: height,
                          min: 80,
                          max: 220,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          })
                    ]),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blueGrey),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.grey),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${weight.round()}',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 57, 93, 111),
                                  fontSize: 40),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'weight+',
                                  backgroundColor:
                                      Color.fromARGB(255, 57, 93, 111),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: const Icon(Icons.add,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                FloatingActionButton(
                                  heroTag: 'wei+',
                                  backgroundColor:
                                      Color.fromARGB(255, 57, 93, 111),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.minimize_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.grey),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 57, 93, 111),
                                  fontSize: 40),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    heroTag: 'age+',
                                    backgroundColor:
                                        const Color.fromARGB(255, 57, 93, 111),
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                                const SizedBox(
                                  width: 30,
                                ),
                                FloatingActionButton(
                                  heroTag: 'age-',
                                  backgroundColor:
                                      const Color.fromARGB(255, 57, 93, 111),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: const Icon(Icons.minimize_rounded,
                                      color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 57, 93, 111),
                    borderRadius: BorderRadius.circular(20)),
                height: 70,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    res = weight / pow(height / 100, 2);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => bmires(
                              age: age,gender: isFemale? 'Female':'Male',result: res,
                                )));
                  },
                  child: const Text(
                    'CALCULATE',
                    style: TextStyle(color: Colors.black, fontSize: 35),
                  ),
                ))
          ],
        ));
  }
}
