import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 35),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 25),
          Align(alignment: Alignment.centerLeft,
            child: Text(
              "Welcome Back! Glad",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(alignment: Alignment.centerLeft,
              child: Text(
                "to see you,Again",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter your email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 243, 242, 242),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 243, 242, 242),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: Text(
              "forgot password?",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: Colors.black,minimumSize: Size(double.infinity, 45)),
              onPressed: () {},
            
              child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            
          ),
          Row(
            children: [
              Expanded(child: Divider(color: const Color.fromARGB(255, 245, 236, 236),thickness: 3,)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("Or login  with",style: TextStyle(color: Colors.grey),),
              ),
               Expanded(child: Divider(color: const Color.fromARGB(255, 245, 236, 236),thickness: 3,)),
            ],
          ),
         Padding(
           padding: const EdgeInsets.only(left: 130),
           child: Row(
             children: [
               IconButton(
                 onPressed: () {},
                 icon: Container(
                   width: 50, 
                   height: 50, 
                   child: Image.asset("facebook.png"),
                 ),
               ),
               IconButton(
                 onPressed: () {},
                 icon: Container(
                   width: 50,  
                   height: 50,  
                   child: Image.asset("google.jpg"),
                 ),
               ),
              
             ],
           ),
         )
,SizedBox(height: 220,),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: [
                Text("Don't have an account?",style: TextStyle(color: Colors.black),),
                TextButton(onPressed: (){}, child: Text("Regiter Now",style: TextStyle(color: Colors.blue),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
