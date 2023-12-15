import 'package:codeia_final/Ui/common/CustomFornFeild.dart';
import 'package:codeia_final/ValidationUtils.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login';


TextEditingController email=TextEditingController();
TextEditingController password=TextEditingController();


var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.all(12),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  CustomFormField(
                      hint: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please Enter Email!';
                        }
                        if (!isVaildEmail(text)) {
                          return 'Email bad format';
                        }
                        return null;
                      },controller: email),
                  CustomFormField(
                      hint: 'Password',
                      keyboardType: TextInputType.text,
                      secureText: true,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Please enter Password';
                        }
                        if (text.length < 6) {
                          return 'Password Should at least 6 chars';
                        }
                        return null;
                      },controller: password),

                  SizedBox(
                    height: 24,
                  ),

                  ElevatedButton(onPressed: () {
                    Login();
                  }, child: Text('Login'))
                ],

              ),
            ),
          ),
        ));
  }

  void Login() {
    if(formKey.currentState?.validate() == false){
      return ;
    }
  }
}
