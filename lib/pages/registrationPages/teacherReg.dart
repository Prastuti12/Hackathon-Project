import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/utils/routes.dart';
import 'package:flutter_complete_guide/widgets/text_field_input.dart';


class teacherReg extends StatefulWidget {
  @override
  State<teacherReg> createState() => _teacherRegState();
}

class _teacherRegState extends State<teacherReg> {
  final _formKey = GlobalKey<FormState>();
   final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final schoolnameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final pincodeController = TextEditingController();
  final phonenumberController = TextEditingController();
  final lastnameController=TextEditingController();
  final firstnameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                "Teacher Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFieldInput(
                        textEditingController:firstnameController,
                        hintText: "First Name",
                        labelText: "",
                        textInputType: TextInputType.text),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFieldInput(
                        textEditingController:lastnameController,
                        hintText: "Last Name",
                        labelText: "",
                        textInputType: TextInputType.text)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFieldInput(
                        textEditingController:schoolnameController,
                        hintText: "School Name",
                        labelText: "",
                        textInputType: TextInputType.text)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFieldInput(
                        textEditingController:emailController,
                        hintText: "Address",
                        labelText: "",
                        textInputType: TextInputType.text)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFieldInput(
                        textEditingController:cityController,
                        hintText: "City",
                        labelText: "",
                        textInputType: TextInputType.text)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child:TextFieldInput(
                        textEditingController:stateController,
                        hintText: "State",
                        labelText: "",
                        textInputType: TextInputType.text)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child:TextFieldInput(
                        textEditingController:emailController,
                        hintText: "Email",
                        labelText: "",
                        textInputType: TextInputType.emailAddress)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFieldInput(
                        textEditingController:phonenumberController,
                        hintText: "Contact No.",
                        labelText: "",
                        textInputType: TextInputType.number)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFieldInput(
                        textEditingController:pincodeController,
                        hintText: "PinCode",
                        labelText: "",
                        textInputType: TextInputType.number)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFieldInput(
                        textEditingController:passwordController,
                        hintText: "Password",
                        labelText: "",
                        textInputType: TextInputType.text)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFieldInput(
                        textEditingController:confirmPasswordController,
                        hintText: " Confirm Password",
                        labelText: "",
                        textInputType: TextInputType.text),
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
                          "Sign Up",
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
          ],
        ),
      ),
    );
  }
}

