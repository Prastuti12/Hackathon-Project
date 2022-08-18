import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/resources/authmethod.dart';
import 'package:flutter_complete_guide/utils/routes.dart';
import 'package:flutter_complete_guide/widgets/SnackBar.dart';
import 'package:flutter_complete_guide/widgets/text_field_input.dart';

class studentReg extends StatefulWidget {
  String? dropdownvalue;
  var roles = ["Student"];
  @override
  State<studentReg> createState() => _studentRegState();
}

class _studentRegState extends State<studentReg> {
String? dropdownvalue;
// List of items in our dropdown menu
  var roles = ["Student"];

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
  final lastnameController = TextEditingController();
  final firstnameController = TextEditingController();
  final roleController = TextEditingController(text: "student");
  bool _isloading = false;
  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    schoolnameController.dispose();
    addressController.dispose();
    cityController.dispose();
    stateController.dispose();
    pincodeController.dispose();
    phonenumberController.dispose();
    lastnameController.dispose();
    firstnameController.dispose();
    roleController.dispose();
    super.dispose();
  }

  void signUpUser() async {
    setState(() {
      _isloading = true;
    });
    String res = await AuthMethods().studentsignup(
      email: emailController.text,
      password: passwordController.text,
      confirmPassword: confirmPasswordController.text,
      address: addressController.text,
      state: stateController.text,
      city: cityController.text,
      firstname: firstnameController.text,
      lastname: lastnameController.text,
      role: roleController.text,
      phonenumber: phonenumberController.text,
      pincode: pincodeController.text,
      schoolname: schoolnameController.text,
    );

    setState(() {
      _isloading = false;
    });

    if (res != 'success') {
      showSnackBar(res, context);
    } else {
      //
    }
  }

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
                "Student Sign Up",
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
                        textEditingController: firstnameController,
                        hintText: "First Name",
                        labelText: "",
                        textInputType: TextInputType.text),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFieldInput(
                            textEditingController: lastnameController,
                            hintText: "Last Name",
                            labelText: "",
                            textInputType: TextInputType.text)),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFieldInput(
                            textEditingController: emailController,
                            hintText: "Email",
                            labelText: "",
                            textInputType: TextInputType.emailAddress)),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFieldInput(
                            textEditingController: phonenumberController,
                            hintText: "Contact No.",
                            labelText: "",
                            textInputType: TextInputType.number)),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFieldInput(
                            textEditingController: stateController,
                            hintText: "State",
                            labelText: "",
                            textInputType: TextInputType.text)),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFieldInput(
                            textEditingController: cityController,
                            hintText: "City",
                            labelText: "",
                            textInputType: TextInputType.text)),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFieldInput(
                            textEditingController: addressController,
                            hintText: "Address",
                            labelText: "",
                            textInputType: TextInputType.text)),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFieldInput(
                            textEditingController: schoolnameController,
                            hintText: "School Name",
                            labelText: "",
                            textInputType: TextInputType.text)),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFieldInput(
                            textEditingController: pincodeController,
                            hintText: "PinCode",
                            labelText: "",
                            textInputType: TextInputType.text)),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        controller: roleController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            fillColor: Colors.white,
                            hintText: "Role"),
                        enabled: false,
                      ),
                      
                    ),
                    DropdownButton(
                    
                  // Initial Value
                  value: dropdownvalue,
                  isExpanded: true,
                  hint: Text("select role",style: TextStyle(fontSize: 20,color: Colors.black,),),
                
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 20,),
                  // Array list of items
                  items: roles.map((String roles) {
                    return DropdownMenuItem(
                      value: roles,
                      child: Text(roles),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFieldInput(
                            isPass: true,
                            textEditingController: passwordController,
                            hintText: "Password",
                            labelText: "",
                            textInputType: TextInputType.text)),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFieldInput(
                            isPass: true,
                            textEditingController: confirmPasswordController,
                            hintText: "Confirm Password",
                            labelText: "",
                            textInputType: TextInputType.text)),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white, padding: EdgeInsets.all(20)),
                        onPressed: signUpUser,
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
