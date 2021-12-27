import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fireabsecrud/screens/login/login_welcome.dart';
import 'package:flutter_fireabsecrud/screens/login/social_media_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _form_key = GlobalKey<FormState>();

  late String _email;
  late String _password;

  onLogin() {
    if (!_form_key.currentState!.validate()) {
      return;
    }
    _form_key.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginWelcome(title: 'Login',),
            buildFormContainer(context),
            const SocialMediaWidget()
          ],
        ),
      ),
    );
  }

  Container buildFormContainer(BuildContext context) {
    return Container(
      // height: 300,
      //color: Colors.deepOrangeAccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: _form_key,
          child: Column(children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Email"),
                contentPadding: EdgeInsets.fromLTRB(
                    10, 10, 10, 0), // control your hints text size
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Email Required";
                } else {
                  return null;
                }
              },
              onSaved: (value) {
                _email = value!;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Password"),
                contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Password Required";
                } else if (value.length < 6) {
                  return "Password must be at least 6 digits";
                } else {
                  return null;
                }
              },
              onSaved: (value) {
                _password = value!;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: InkWell(
                hoverColor: Colors.transparent,
                enableFeedback: false,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  print('Hiey');
                },
                child: const Text(
                  "Forgot Password ?",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 4.0,
              color: const Color(0xFF801E48),
              clipBehavior: Clip.antiAlias,
              child: MaterialButton(
                height: 50.0,
                minWidth: MediaQuery.of(context).size.width - 60,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: const Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                onPressed: () => {onLogin()},
                splashColor: Colors.blueAccent,
              ),
            )
          ]),
        ),
      ),
    );
  }
}

