import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/pages/Navbar.dart';
import 'package:flutter_complete_guide/pages/login_page.dart';
import 'package:flutter_complete_guide/resources/authmethod.dart';
import 'package:flutter_complete_guide/utils/routes.dart';
import 'package:flutter_svg/svg.dart';

class parenthome extends StatefulWidget {
  const parenthome({Key? key}) : super(key: key);

  @override
  State<parenthome> createState() => _parenthomeState();
}

class _parenthomeState extends State<parenthome> {
  String studentname = "Prastuti";
  logout() async {
    await AuthMethods().logOut();
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home")),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.power_settings_new,
              color: Colors.white,
            ),
            onPressed: () {
              // done  something
              logout();
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
            height: MediaQuery.of(context).size.height / 3.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Hii",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " $studentname",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              height: 40,
                              width: 200,
                              child: Center(
                                  child: Text(
                                "Student Name",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/parentimage.jpeg"),
                              minRadius: 50.0,
                              maxRadius: 50.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 50,
                            width: 150,
                            child: Center(
                                child: Text(
                              "Complaints",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200),
                            )),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            height: 50,
                            width: 150,
                            child: Center(
                                child: Text(
                              "Score",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200),
                            )),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
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
                  padding: const EdgeInsets.only(top: 10),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/clipboard.svg',
                            title: "Guideline",
                          ),
                          HomeCard(
                            onPress: () {},
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
                              onPress: () {},
                              icon: 'assets/icons/health.svg',
                              title: "Hygiene Safety",
                            ),
                            HomeCard(
                              onPress: () {},
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
                                    context, Myroutes.loginRoute);
                              },
                              icon: 'assets/icons/monitor.svg',
                              title: "Cyber Safety",
                            ),
                            HomeCard(
                              onPress: () {},
                              icon: 'assets/icons/feedback.svg',
                              title: "Give Feed-Back",
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
  final onPress;
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
              child: SvgPicture.asset(
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
