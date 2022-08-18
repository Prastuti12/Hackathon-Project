import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/pages/Navbar.dart';
import 'package:flutter_complete_guide/utils/routes.dart';
import 'package:flutter_svg/svg.dart';
import 'ques-Ans.dart';
class schoolHome extends StatefulWidget {
  @override
  State<schoolHome> createState() => _schoolHomeState();
}

class _schoolHomeState extends State<schoolHome> {
  String schoolname = "Mitrc";
  int complain_number = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Welcome")),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // done  something
            },
          )
        ],
      ),
      drawer: Navbar(),
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          // We will divide into two parts
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                "You have ",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 98, 98, 98),
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "$complain_number",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, Myroutes.loginRoute);
                                    },
                                    child: Text(
                                      "Complaints",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          // Other Conatiner WHITE bOX
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                                Navigator.pushNamed(
                                    context, Myroutes.ques_AnsRoute);
                              },
                            icon: 'assets/icons/clipboard.svg',
                            title: "Guideline",
                          ),
                          HomeCard(
                            onPress: () {
                                Navigator.pushNamed(
                                    context, Myroutes.ques_AnsRoute);
                              },
                            icon: 'assets/icons/home.svg',
                            title: "Physical Safety",
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeCard(
                              onPress: () {
                                Navigator.pushNamed(
                                    context, Myroutes.ques_AnsRoute);
                              },
                              icon: 'assets/icons/health.svg',
                              title: "Hygine Safety",
                            ),
                            HomeCard(
                              onPress: () {
                                Navigator.pushNamed(
                                    context, Myroutes.ques_AnsRoute);
                              },
                              icon: 'assets/icons/social.svg',
                              title: "Physo-Social Safety",
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeCard(
                              onPress: () {
                                Navigator.pushNamed(
                                    context, Myroutes.ques_AnsRoute);
                              },
                              icon: 'assets/icons/monitor.svg',
                              title: "Cyber Safety",
                            ),
                            HomeCard(
                              onPress: () {
                                Navigator.pushNamed(
                                    context, Myroutes.ques_AnsRoute);
                              },
                              icon: 'assets/icons/feedback.svg',
                              title: "Take Feed-Back",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 5,
              ),
              child: 
              SvgPicture.asset(
                icon,
                height: 40.0,
                width: 40.0,
                color: Colors.white,
              ),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
