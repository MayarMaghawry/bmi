import 'package:bmi/bmi.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
   Login({super.key});
 final bool isANumber = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 55,
                color: Color.fromARGB(255, 56, 56, 56),
                fontWeight: FontWeight.bold,
                //fontFamily :
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            TextField(
              onChanged: (isANumber){
               if (isANumber.isEmpty) {
              const Text('Required');} 
          },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(prefixIcon:const Icon(Icons.email) ,
                  filled: true,
                  fillColor: const Color.fromARGB(255, 206, 206, 206),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(35)),
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 124, 126, 128)),
                  hintText: "Enter your mail"),
            ),
            const Spacer(
              flex: 2,
            ),
            TextField(
              onChanged: (isANumber){
               if (isANumber.isEmpty) {
              const Text('Required');
            } else if (isANumber.length < 6) {
              const Text('Password should be atleast 6 characters');
            } else if (isANumber.length > 15) {
              const Text('Password should not be greater than 15 characters');
            } },
              obscureText: true,
              obscuringCharacter: "*",
              keyboardType: TextInputType.number,
              decoration: InputDecoration( prefixIcon:const Icon(Icons.password),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 206, 206, 206),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(35)),
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 124, 126, 128)),
                  hintText: "Enter your Password",),
            ),
            const Spacer(
              flex: 3,
            ),
            Container(
              color: Color(0xff526f7a),
                width: 150,
                height: 70,
                  child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff526f7a), 
                    foregroundColor: Colors.white, ),
                  child: const Text('Login',style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bmi()),
                      );                  },
                ),),
            const Spacer(
              flex: 10,
            ),
          ],
        ),
      ),
    );
  }
}
