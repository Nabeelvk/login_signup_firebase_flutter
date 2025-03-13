import 'package:flutter/material.dart';
import 'package:login_signup_firebase_flutter/loginscreen.dart';
import 'package:login_signup_firebase_flutter/registerscreen.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset("assets/Animation - 1741840900313.json",
              width:200 ,
              height:200 ,
              fit: BoxFit.cover),
            ),
        
            
            ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              minimumSize: Size(double.infinity, 45),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
            onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));}, child: Text(
              "Login",
              style: TextStyle
              (color: Colors.white,fontWeight: FontWeight.bold),)),

              SizedBox(height: 10,),
            ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: Size(double.infinity, 45),
              side: BorderSide(color: Colors.black,width: 3),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
              )
              
            ),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Registerscreen()));}, child: Text(
              "Register",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
              )),

              SizedBox(height: 15,),
            Text("Continue as Guest",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}