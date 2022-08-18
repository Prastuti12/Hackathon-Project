
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

             //STUDENT SIGNUP//
 
  Future<String> studentsignup({
    required String email,
    required String password,
    required String confirmPassword,
    required String role,
    required String firstname,
    required String lastname,
    required String phonenumber,
    required String state,
    required String city,
    required String address,
    required String schoolname,
    required String pincode,
  }) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          confirmPassword.isNotEmpty || role.isNotEmpty || firstname.isNotEmpty || lastname.isNotEmpty || phonenumber.isNotEmpty ||
          state.isNotEmpty || city.isNotEmpty ||address.isNotEmpty ||schoolname.isNotEmpty ||pincode.isNotEmpty) {
        if (password != confirmPassword) {
          res = "Password not matching";
          return res;
        }

        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        await _firestore.collection('users').doc(cred.user!.uid).set({
          'uid': cred.user!.uid,
          'email': email,
          'role': role,
          'firstname':firstname,
          'lastname':lastname,
          'state':state,
          'city':city,
          'pincode':pincode,
          'address':address,
          'schoolname':schoolname,
          'phonenumber':phonenumber,
        });

        res = "success";
      } else {
        res = "Please fill all the details";
      }
    } catch (err) {
      res = err.toString().split("]")[1];
    }
    return res;
  }
 
               //SCHOOL SIGNUP//

   Future<String> schoolsignup({
    required String email,
    required String password,
    required String confirmPassword,
    required String role,

    required String phonenumber,
    required String state,
    required String city,
    required String address,
    required String schoolname,
    required String pincode,
  }) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          confirmPassword.isNotEmpty || role.isNotEmpty || phonenumber.isNotEmpty ||
          state.isNotEmpty || city.isNotEmpty ||address.isNotEmpty ||schoolname.isNotEmpty ||pincode.isNotEmpty) {
        if (password != confirmPassword) {
          res = "Password not matching";
          return res;
        }

        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        await _firestore.collection('schools').doc(cred.user!.uid).set({
          'uid': cred.user!.uid,
          'email': email,
          'role': role,
          'state':state,
          'city':city,
          'pincode':pincode,
          'address':address,
          'schoolname':schoolname,
          'phonenumber':phonenumber,
        });

        res = "success";
      } else {
        res = "Please fill all the details";
      }
    } catch (err) {
      res = err.toString().split("]")[1];
    }
    return res;
  }

         //PARENTS SIGNUP//

  Future<String> parentsignup({
    required String email,
    required String password,
    required String confirmPassword,
    required String role,
    required String firstname,
    required String lastname,
    required String phonenumber,
    required String state,
    required String city,
    required String address,
    required String schoolname,
    required String pincode,
    required String studentname,
  }) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          confirmPassword.isNotEmpty || role.isNotEmpty || firstname.isNotEmpty || lastname.isNotEmpty || phonenumber.isNotEmpty ||
          state.isNotEmpty || city.isNotEmpty ||address.isNotEmpty ||schoolname.isNotEmpty ||pincode.isNotEmpty || studentname.isNotEmpty) {
        if (password != confirmPassword) {
          res = "Password not matching";
          return res;
        }

        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        await _firestore.collection('parent').doc(cred.user!.uid).set({
          'uid': cred.user!.uid,
          'email': email,
          'role': role,
          'firstname':firstname,
          'lastname':lastname,
          'state':state,
          'city':city,
          'pincode':pincode,
          'address':address,
          'schoolname':schoolname,
          'phonenumber':phonenumber,
          'studentname':studentname,
        });

        res = "success";
      } else {
        res = "Please fill all the details";
      }
    } catch (err) {
      res = err.toString().split("]")[1];
    }
    return res;
  }

  Future<String> signInUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);

        res = "success";
      } else {
        res = "Please fill all the details";
      }
    } catch (err) {
      res = err.toString().split("]")[1];
    }
    return res;
  }

  Future<String> logOut() async {
    String res = "Some error occured";
    try {
      await _auth.signOut();
      res = "success";
    } catch (err) {
      res = err.toString().split("]")[1];
    }
    return res;
  }
}


 