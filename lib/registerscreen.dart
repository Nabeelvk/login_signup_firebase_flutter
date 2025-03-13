import 'package:flutter/material.dart';

class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {Navigator.pop(context);},
          icon: Icon(Icons.arrow_back, size: 35),
        ),
      ),
      body: Column(
        children: [
          Align(alignment: Alignment.centerLeft,
            child: Text(
              "Hello!Register to get",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          Align(alignment: Alignment.centerLeft,
            child: Text(
              "started",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),),
          ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Username",
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
                  hintText: "Email",
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
                  hintText: "Password",
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
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 243, 242, 242),
                ),
              ),
            ),
            Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black,minimumSize: Size(double.infinity, 45)),
              onPressed: () {},
              child: Text(
                "Register",
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
                child: Text("Or Register  with",style: TextStyle(color: Colors.grey),),
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
         ),
          Row(
            children: [
            
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130),
            child: Row(
              children: [
                Text("Already have an account?",style: TextStyle(color: Colors.black),),
                TextButton(onPressed: (){}, child: Text("Login Now",style: TextStyle(color: Colors.blue),))
              ],
            ),
          )
          
        ],
      ),
    );
  }
}
