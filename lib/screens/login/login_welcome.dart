import 'package:flutter/material.dart';

class LoginWelcome extends StatelessWidget {

  String title;

  LoginWelcome({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    // color: Colors.red,
      height: 250,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag:1,
                child: Image.asset('assets/icons/app_icon.jpeg',width: 400,height: 150,fit: BoxFit.contain,)),
            Text(
              title,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            // const Text("Welcome back you've \n been missed",
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         color: Colors.black, fontWeight: FontWeight.normal))
          ],
        ),
      ),
    );
  }
}
