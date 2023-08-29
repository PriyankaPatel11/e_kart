// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/routes.dart';
import '../../../firebase_auth_helper/firebase_auth_helper.dart';
import '../../../widgets/primary_button/primarybutton.dart';
import '../../../widgets/top_title/toptitle.dart';
import '../../home/home.dart';
import '../sign_up/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopTitle(
                  subtitle: "Welcome Back to E- Commerce App", title: "Login"),
              TextField(
                decoration: const InputDecoration(
                  hintText: "Enter Your Email",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              TextField(
                obscureText: isShowPassword,
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  prefixIcon: Icon(
                    Icons.password_rounded,
                  ),
                  suffixIcon: CupertinoButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
                        });
                      },
                      padding: EdgeInsets.zero,
                      child: Icon(
                        Icons.visibility,
                        color: Colors.grey,
                      )),
                ),
              ),
              const SizedBox(
                height: 38.0,
              ),
              PrimaryButton(
                title: "Login",
                onPressed: ()  {

                },
              ),
              const SizedBox(
                height: 18.0,
              ),
              const Center(child: Text("Don't have an account")),
              const SizedBox(
                height: 18.0,
              ),
              Center(
                child: CupertinoButton(
                  onPressed: () {
                    Routes.instance
                        .push(widget: const Signup(), context: context);
                  },
                  child: Text(
                    "Create an account",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// bool isVaildated = loginValidation(email.text, password.text);
// if (isVaildated) {
// bool isLogined = await FirebaseAuthHelper.instance
//     .login(email.text, password.text, context);
// if (isLogined) {
// Routes.instance.pushAndRemoveUntil(
// widget: const Home(), context: context);
// }
// }