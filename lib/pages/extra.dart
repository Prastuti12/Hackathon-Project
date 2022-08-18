// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_complete_guide/utils/routes.dart';
// import 'package:flutter_svg/svg.dart';

// class schoolHome extends StatefulWidget {
//   @override
//   State<schoolHome> createState() => _schoolHomeState();
// }

// class _schoolHomeState extends State<schoolHome> {
//   String schoolname = "Mitrc";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple,
//       body: Column(
//         children: [
//           // We will divide into two parts
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height / 3.0,
//             child: Column(
//               children: [
//                  SizedBox(
//                   height: 70,
//                  ),
//                   Row(
//                    children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20, right: 10),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 8),
//                             child: Text("Welcome $schoolname", style: TextStyle(color: Colors.white, fontSize: 18,), ),
//                           ),
//                           Text("Class X- || A | Roll no: 12" ,style: TextStyle(color: Colors.white, fontSize: 18,),),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 15),
//                             child: Container(
//                               height: 20,
//                               width: 100,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: Center(child: Text("2021 -2022")),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
                    
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 30),
//                       child: CircleAvatar(
//                         minRadius: 50.0,
//                         maxRadius: 50.0,
//                         backgroundColor: Colors.red,
//                         backgroundImage: AssetImage("assets/images/students.jpeg"),
//                       ),
//                     )
//                    ],
//                   )

//             ],)
//           ),

//           // Other Conatiner WHITE bOX
//           Expanded(
//             child: Container(
//               color: Colors.transparent,
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(50),
//                       topRight: Radius.circular(50),
//                     )),
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 10),
//                   child: ListView(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           HomeCard(
//                             onPress: () {},
//                             icon: 'assets/icons/clipboard.svg',
//                             title: "Guideline",
//                           ),
//                           HomeCard(
//                             onPress: () {},
//                             icon: 'assets/icons/home.svg',
//                             title: "Physical Safety",
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 15,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             HomeCard(
//                               onPress: () {},
//                               icon: 'assets/icons/health.svg',
//                               title: "Hygine Safety",
//                             ),
//                             HomeCard(
//                               onPress: () {},
//                               icon: 'assets/icons/social.svg',
//                               title: "Physo-Social Safety",
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 15),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             HomeCard(
//                               onPress: () {
//                                 Navigator.pushNamed(
//                                     context, Myroutes.loginRoute);
//                               },
//                               icon: 'assets/icons/monitor.svg',
//                               title: "Cyber Safety",
//                             ),
//                             HomeCard(
//                               onPress: () {},
//                               icon: 'assets/icons/feedback.svg',
//                               title: "Take Feed-Back",
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class HomeCard extends StatelessWidget {
//   const HomeCard(
//       {Key? key,
//       required this.onPress,
//       required this.icon,
//       required this.title})
//       : super(key: key);
//   final VoidCallback onPress;
//   final String icon;
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPress,
//       child: Container(
//         width: MediaQuery.of(context).size.width / 2.5,
//         height: MediaQuery.of(context).size.height / 6,
//         decoration: BoxDecoration(
//             color: Colors.deepPurple,
//             borderRadius: BorderRadius.circular(20.0),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey,
//                 blurRadius: 10.0,
//               ),
//             ]),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                 top: 20,
//                 bottom: 5,
//               ),
//               child: SvgPicture.asset(
//                 icon,
//                 height: 40.0,
//                 width: 40.0,
//                 color: Colors.white,
//               ),
//             ),
//             Text(
//               title,
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//             SizedBox(
//               height: 10,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
