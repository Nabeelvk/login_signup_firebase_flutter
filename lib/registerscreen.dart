import 'package:flutter/material.dart';
import 'package:login_signup_firebase_flutter/Services/authservice.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  TextEditingController usernameController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  TextEditingController confirm_passwordController =TextEditingController();
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
                controller: usernameController,
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
                controller: emailController,
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
                obscureText: true,
                controller: passwordController,
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
                obscureText: true,
                controller: confirm_passwordController,
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
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: Colors.black,minimumSize: Size(double.infinity, 45)),
              onPressed: () {
                signup(Username:usernameController.text, Password: passwordController.text, Email: emailController.text, Confirm_Password: confirm_passwordController.text, context: context);
              },
              child: Text(
                "Register",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            
          ),
          SizedBox(height: 20,),
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
          SizedBox(height: 20,),
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
          SizedBox(height: 150,),
          Padding(
            padding: const EdgeInsets.only(left: 100),
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
