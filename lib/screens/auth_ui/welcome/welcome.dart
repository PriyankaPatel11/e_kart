import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/assets_image.dart';
import '../../../constants/routes.dart';
import '../../../widgets/primary_button/primarybutton.dart';
import '../../../widgets/top_title/toptitle.dart';
import '../login/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello"),
          TopTitle(subtitle: "Buy AnyItems Form Using App", title: "Welcome"),          
          Center(child: Image.asset(AssetsImage.instance.welcomeImage)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Icon(
                  Icons.facebook,
                  size: 35,
                  color: Color.fromARGB(255, 39, 138, 204),
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: Image.asset(
                  AssetsImage.instance.google,
                  scale: 8.0,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 18.0,
          ),
          PrimaryButton(
            title: "Login",
            onPressed: () {
              Routes.instance.push(widget: const Login(), context: context);
            },
          ),
          const SizedBox(
            height: 18.0,
          ),
          const SizedBox(
            height: 18.0,
          ),
          PrimaryButton(
            title: "SignUp",
            onPressed: () {
              //Routes.instance.push(const Login(), context);
            },
          ),
          const SizedBox(
            height: 18.0,
          )
        ],
      ),
    ));
  }
}
