import 'package:flutter/material.dart';
import 'package:login_signup_firebase_flutter/Services/authservice.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, size: 35),
        ),
      ),

      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: Text(
              "forgot password",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Enter your Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 243, 242, 242),
              ),
            ),
          ),
          SizedBox(height: 50,),
          ElevatedButton(
            onPressed: () {resetpassword(Email: emailController.text, context: context);},
            child: Text("send", style: TextStyle(color: Colors.white,fontSize: 25)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              minimumSize: Size(250, 60),
            ),
          ),
        ],
      ),
    );
  }
}
