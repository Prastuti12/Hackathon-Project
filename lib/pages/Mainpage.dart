import 'package:flutter/material.dart';

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Image.asset("assets/images/mainpage.png", fit: BoxFit.cover, height: 300,),
        
        Center(
          child: Container(
            height: 50,
            width: 150,
            color: Colors.blueGrey,
            child: Center(child: 
            Text("Students",style: TextStyle(color: Colors.white),)),
          ),
        )
        ],
        
        )
    );
  }
}
