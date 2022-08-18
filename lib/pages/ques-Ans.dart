import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/pages/Navbar.dart';

class ques_Ans extends StatefulWidget {
  const ques_Ans({Key? key}) : super(key: key);

  @override
  State<ques_Ans> createState() => _ques_AnsState();
}

class _ques_AnsState extends State<ques_Ans> {
  String? gender;
  var title = "Test";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("$title")),
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
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Text(
                  "You have Fire Extigution in your college ?",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                RadioListTile(
                  title: Text("Yes"),
                  value: "No",
                  groupValue: gender,
                  onChanged: ((value) {
                    gender = value.toString();
                  }),
                ),
                RadioListTile(
                  title: Text("No"),
                  value: "No",
                  groupValue: gender,
                  onChanged: ((value) {
                    gender = value.toString();
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
