import 'package:flutter/material.dart';

class bmires extends StatelessWidget {
  final String gender;
  final double result;
  final int age;
  const bmires({required this.age, required this.gender, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff526f7a),
        centerTitle: true,
        title: const Text(
          'BMI Result',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('If you are $gender',
                    style: const TextStyle(color: Color(0xff526f7a), fontSize: 35)),
                Text('And your Age is $age',style: const TextStyle(color: Color(0xff526f7a), fontSize: 35)),
                Text('So your BMI Result is ${result.round()}',style: const TextStyle(color: Color(0xff526f7a), fontSize: 30))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
