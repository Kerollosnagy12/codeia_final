import 'package:codeia_final/FirebaseErrorCodes.dart';
import 'package:codeia_final/Ui/DialogUtils.dart';
import 'package:codeia_final/Ui/common/CustomFornFeild.dart';
import 'package:codeia_final/Ui/home/Course_Home.dart';
import 'package:codeia_final/ValidationUtils.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  var formKey = GlobalKey<FormState>();

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
          resizeToAvoidBottomInset: false,
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

  void Login() async {
    if (formKey.currentState?.validate() == false) {
      return;
    }
    try {
      DialogUtils.showLoading(
        context,
        'Loading...',
        isCancelable: false,
      );
      final result = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      DialogUtils.hideDialog(context);
      DialogUtils.showMessage(
        context,
        'User Logged In Successfully',
        posActionTitle: 'ok',
        posAction: () {
          Navigator.pushReplacementNamed(context, CourseHome.routeName);
        },
      );
      print(result.user?.uid);
    } on FirebaseAuthException catch (e) {
      DialogUtils.hideDialog(context);
      print(e.code);
      if (e.code == FirebaseErrorCodes.UserNotfound ||
          e.code == FirebaseErrorCodes.wrongPassword) {
        DialogUtils.showMessage(context, 'Wrong E-mail Or Password');
      }
    }
  }
}
