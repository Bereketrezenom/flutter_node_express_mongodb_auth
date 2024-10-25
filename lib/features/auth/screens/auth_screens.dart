// ignore_for_file: prefer_const_constructors, unused_field

import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';
enum Auth{
  signin,
  signup,
}
class AuthScreen extends StatefulWidget {
  static const String routeName ="/auth-screen";

  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signupFormKey= GlobalKey<FormState>();
  final _signinFormKey= GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {

return Scaffold(
  backgroundColor: const Color.fromARGB(255, 243, 241, 241),
  body: SafeArea(child: 
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Text('Welcome',style: TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.bold

        ),),
        ListTile(
          tileColor: _auth == Auth.signup ? const Color.fromARGB(255, 228, 221, 221) : Color.fromARGB(213, 240, 230, 230)
         , shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),

      )
           ,
          title: const Text('Create Account',style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold

          ),),
        leading: Radio(
          activeColor: Colors.yellow,
          value: Auth.signup,
        groupValue: _auth,
        onChanged: (Auth? val){
          setState(() {
            _auth = val!;
            });
        }
        ),
        ),
        if(_auth == Auth.signup)

        Container(
          margin: const EdgeInsets.all(10),
          padding: EdgeInsets.all(8.0),
          color: GlobalVariables.backgroundColor,
          child: Form(
            key: _signupFormKey,
            child: Column(
                children: [
                  CustomTextField(controller: _emailController, hintText: 'Enter Your Email',),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(controller: _passwordController, hintText: 'Enter Your Password',),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(controller: _nameController, hintText: 'Enter Your FullName',),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(text: "Signup", onTap: (){
                    if(_emailController.text.isEmpty || _passwordController.text.isEmpty || _nameController.text.isEmpty){
    }  })
                ],

          )),
        
        ),
        SizedBox(
          height: 20,
        ),

         ListTile(
          title: const Text(' Signin',style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
        leading: Radio(
          activeColor: Colors.yellow,
          value: Auth.signin  ,
        groupValue: _auth,
        onChanged: (value) {
          setState(() {
            _auth = value as Auth;
          });}
        ),
        ),
          if(_auth == Auth.signin)
        Form(
          key: _signinFormKey,
          child: Column(
              children: [
                CustomTextField(controller: _emailController, hintText: 'Enter Your Email',),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(controller: _passwordController, hintText: 'Enter Your Password',),
                SizedBox(
                  height: 10,
                ),
      ],
    ),
  ),
  ]),

)));
}
}