import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/utils/routes.dart';

class changePassword extends StatefulWidget {
  @override
  State<changePassword> createState() => _changePasswordState();
}

class _changePasswordState extends State<changePassword> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     backgroundColor: Colors.deepPurple,
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
         child: Form(
           key: _formKey,
           child: Column(
            children: [
              Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent)),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)),
                                  fillColor: Colors.white,
                                  hintText: "Current Password"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Required";
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent)),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)),
                                  fillColor: Colors.white,
                                  hintText: "New Password"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Required";
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent)),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)),
                                  fillColor: Colors.white,
                                  hintText: "Confirm Password"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Required";
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                            ),
                          ),
                          Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white, padding: EdgeInsets.all(20)),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                await Navigator.pushNamed(
                                    context, Myroutes.studentHome);
                              }
                            },
                            child: Text(
                              "Update",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        )
            ],
           ),
         ),
       ),
     ),
    );
  }
}
