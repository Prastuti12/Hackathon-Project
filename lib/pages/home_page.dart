import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/pages/dashboards/parenthome.dart';
import 'package:flutter_complete_guide/pages/dashboards/schoolHome.dart';
import 'package:flutter_complete_guide/pages/dashboards/studentHome.dart';

import 'package:flutter_complete_guide/pages/login_page.dart';
import 'package:flutter_complete_guide/pages/parentsignup.dart';

import 'package:flutter_complete_guide/resources/authmethod.dart';
import 'package:flutter_complete_guide/widgets/SnackBar.dart';


class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool _isloading = false;
  String Role = "";
  @override
  void initState() {
    super.initState();
    getuserid();
   
  }

  void getuserid() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    print(snap.data());
    setState(() {
      Role = (snap.data() as Map<String, dynamic>)["role"];
    });
     routing();
  }

  routing() {
    
    if (Role == 'student') {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => studentHome()));
    } else if (Role == 'parent') {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => parenthome()));
    } else {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => schoolHome()));
    }
  }

  void logout() async {
    await AuthMethods().logOut();
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
