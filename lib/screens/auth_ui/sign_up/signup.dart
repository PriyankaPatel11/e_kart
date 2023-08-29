import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/primary_button/primarybutton.dart';
import '../../../widgets/top_title/toptitle.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopTitle(
                subtitle: "Welcome Back to E- Commerce App",
                title: "Create an account"),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "Enter Your Name",
                prefixIcon: Icon(
                  Icons.person_2_outlined,
                ),
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
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
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Enter Your Phone Number",
                prefixIcon: Icon(
                  Icons.phone_android_outlined,
                ),
              ),
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
              title: "Create an account",
              onPressed: () {},
            ),
            const SizedBox(
              height: 18.0,
            ),
            const Center(child: Text("I hav alreadye an account")),
            const SizedBox(
              height: 18.0,
            ),
            Center(
              child: CupertinoButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
