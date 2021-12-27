import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fireabsecrud/screens/register/register_screen.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          const Text('or continue with'),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Google login');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      'assets/icons/google_icon.jpeg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('apple login');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      'assets/icons/apple_icon.jpeg',
                      width: 25,
                      height: 30,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('facebook login');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      'assets/icons/facebook_login.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          RichText(
              text: TextSpan(
                  text: 'Not a member?',
                  style: const TextStyle(
                      color: Colors.black, fontSize: 14, letterSpacing: 0.1),
                  children: [
                TextSpan(
                    text: " Register",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                        );
                      },
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 14))
              ]))
        ],
      ),
    );
  }
}
