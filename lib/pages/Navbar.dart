import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/pages/login_page.dart';
import 'package:flutter_complete_guide/pages/ques-Ans.dart';
import 'package:flutter_complete_guide/pages/schoolHome.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/download.jpg'), fit: BoxFit.cover)
                
              ),
              accountName: Text("AlphaCoders",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),), 
            accountEmail: Text("alphacoders@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

            currentAccountPicture: CircleAvatar(
              child: Text("A",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w900),),
              backgroundColor: Colors.deepOrange,
              ),
             
              onDetailsPressed: () {},
              ),
              ListTile(
                leading: Icon(Icons.home_filled),
                title: Text("Home",),
              ),
               ListTile(
                leading: Icon(Icons.import_contacts),
                title: Text("Import Files"),
              ),
               ListTile(
                leading: Icon(Icons.safety_check),
                title: Text("Physical Safety"),
              ),
              ListTile(
                leading: Icon(Icons.clean_hands),
                title: Text("Hygine Safety"),
              ),
              ListTile(
                leading: Icon(Icons.safety_divider),
                title: Text("Cyber Safety"),
              ),
              Divider(),
              Expanded(
                child: Align(alignment: Alignment.bottomCenter,
                child: ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text("Exit"),
                ),
                ),
                ),
                ],
          
        ),
    );
  }
}
