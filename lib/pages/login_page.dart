import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/pages/dashboards/schoolHome.dart';
import 'package:flutter_complete_guide/pages/home_page.dart';
import 'package:flutter_complete_guide/pages/register_option.dart';

import 'package:flutter_complete_guide/resources/authmethod.dart';
import 'package:flutter_complete_guide/utils/routes.dart';
import 'package:flutter_complete_guide/widgets/SnackBar.dart';
import 'package:flutter_complete_guide/widgets/text_field_input.dart';

class LoginPage extends StatefulWidget {
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  // Text Controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isloading = false;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void loginUser() async {
    setState(() {
      _isloading = true;
    });
    String res = await AuthMethods().signInUser (
      email: emailController.text,
      password: passwordController.text,
    );

    if (res == "success") {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) =>  homepage()));
    } else {
      showSnackBar(res, context);
    }
    setState(() {
      _isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/Student.png",
                fit: BoxFit.cover,
                height: 300,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  children: [
                   TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Email",
                          hintText: "Enter Email"),
                    
                    ),
                    
                   Padding(
                      padding: const EdgeInsets.only(
                        top: 16.0,
                      ),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Password",
                            hintText: "Enter Password",
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15)),
                      
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.deepPurple,
                        child: InkWell(
                          onTap: loginUser,
                          child: Column(
                            children: [
                              Container(
                                width: 150,
                                height: 42,
                                alignment: Alignment.center,
                                child: Text("Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an Account?",
                                style: TextStyle(fontSize: 15),
                              ),
                              TextButton(
                                onPressed: () => {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, a, b) =>
                                            register_option(),
                                        transitionDuration:
                                            Duration(seconds: 0),
                                      ),
                                      (route) => false)
                                },
                                child: Text(
                                  'Signup',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => register_option(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.5);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: register_option(),
      );
    },
  );
}
