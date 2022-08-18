
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/utils/routes.dart';

class register_option extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.only(top: 150.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Myroutes.schoolReG);
                        },
                        child: Container(
                          height: 80,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 5)
                              ]),
                          child: Center(
                              child: Text(
                            "School",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: InkWell(
                         onTap: () {
                          Navigator.pushNamed(context, Myroutes.parentsignup);
                        },
                        child: Container(
                          height: 80,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 5)
                              ]),
                          child: Center(
                              child: Text(
                            "Parent",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: InkWell(
                         onTap: () {
                          Navigator.pushNamed(context, Myroutes.teacherReg);
                        },
                        child: Container(
                          height: 80,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 5)
                              ]),
                          child: Center(
                              child: Text(
                            "Teacher",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: InkWell(
                         onTap: () {
                          Navigator.pushNamed(context, Myroutes.studentReg);
                        },
                        
                          child: Container(
                            height: 80,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 2,
                                      blurRadius: 5)
                                ]),
                            child: Center(
                                child: Text(
                              "Student",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700),
                            )),
                          ),
                       
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
