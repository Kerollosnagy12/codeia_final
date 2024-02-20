import 'package:codeia_final/FirebaseErrorCodes.dart';
import 'package:codeia_final/Ui/Login/LoginScreen.dart';
import 'package:codeia_final/Ui/common/CustomFornFeild.dart';
import 'package:codeia_final/ValidationUtils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../DialogUtils.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController fullname = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController passwordConfirmation = TextEditingController();

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
                      hint: 'Full Name',
                      keyboardType: TextInputType.name,
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please Enter Full Name!';
                        }
                        return null;
                      },
                      controller: fullname),
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
                      },
                      controller: email),
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
                      },
                      controller: password),
                  CustomFormField(
                      hint: 'Password Confirmation!',
                      keyboardType: TextInputType.text,
                      secureText: true,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Please enter Password';
                        }
                        if (password.text != text) {
                          return "password Doesn't match";
                        }
                        return null;
                      },
                      controller: passwordConfirmation),
                  SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        createAccount();
                      },
                      child: Text('Create Account')),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('Do You Have An Account?'),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, LoginScreen.routeName);
                          },
                          child: Text('Sign In'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void createAccount() async {
    if (formKey.currentState?.validate() == false) {
      return;
    }
    try {
      DialogUtils.showLoading(
        context,
        'Loading...',
        isCancelable: false,
      );
      var result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
      DialogUtils.showMessage(
        context,
        'Registered Successfully',
        posActionTitle: 'ok',
        posAction: () {
          Navigator.pushReplacementNamed(context, LoginScreen.routeName);
        },
      );
    } on FirebaseAuthException catch (e) {
      DialogUtils.hideDialog(context);
      if (e.code == FirebaseErrorCodes.weakPassword) {
        DialogUtils.showMessage(context, 'The password provided is too weak.');
      } else if (e.code == FirebaseErrorCodes.emailInuse) {
        DialogUtils.showMessage(
          context,
          'The account already exists for that email.',
          posActionTitle: 'ok',
          posAction: () {},
        );
      }
    } catch (e) {
      DialogUtils.showMessage(context, "Something Went Wrong");
    }
  }
}
