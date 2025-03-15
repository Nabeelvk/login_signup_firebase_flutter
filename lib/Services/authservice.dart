import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> signup(
  {required String Username,
  required String Password,
  required String Email,
  required String Confirm_Password,
  required BuildContext context}) async {
    try {
      UserCredential userCredential = 
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: Email,
        password: Password,  
        );
        User? user = userCredential.user;
        await FirebaseFirestore.instance.collection('users').doc(user?.uid).set({
          'username': Username,
          'email': Email,
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('User created succssfully')),
        );
        // Navigator.push(
        //   context,
        //    MaterialPageRoute(
        //     builder: (context) => ProfileScreen(),
        //   )
        // );
    } catch(e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())
        ),
        
      );
    } 
    
  }



  Future<void> login({
    required String Email,
    required String Password,
    required BuildContext context }) async {
       try {
      UserCredential userCredential = 
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: Email,
        password: Password,  
        );
       
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('login succssfully')),
        );
        // Navigator.push(
        //   context,
        //    MaterialPageRoute(
        //     builder: (context) => ProfileScreen(),
        //   )
        // );
    }
    catch(e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())
        ),
        
      );
    } 
    }
    Future<void> resetpassword({required String Email,required BuildContext context})async{
      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(email:Email );
      
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('check your inbox for Reset link')),
        );
        // Navigator.push(
        //   context,
        //    MaterialPageRoute(
        //     builder: (context) => ProfileScreen(),
        //   )
        // );
    }
    catch(e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())
        ),
        
      );
    } 

    }