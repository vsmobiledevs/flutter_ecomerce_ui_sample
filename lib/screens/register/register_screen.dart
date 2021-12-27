import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fireabsecrud/screens/login/login_welcome.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _form_key = GlobalKey<FormState>();

  late String _email;
  late String _password;

  onRegister() {
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
            LoginWelcome(title: 'Create your account',),
            buildFormContainer(context),
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
                label: Text("First Name"),
                contentPadding: EdgeInsets.fromLTRB(
                    10, 10, 10, 0), // control your hints text size
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "First Name Required";
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
                label: Text("Last Name"),
                contentPadding: EdgeInsets.fromLTRB(
                    10, 10, 10, 0), // control your hints text size
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Last Name Required";
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
                label: Text("Username"),
                contentPadding: EdgeInsets.fromLTRB(
                    10, 10, 10, 0), // control your hints text size
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Username Required";
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
              height: 40,
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
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                onPressed: () => {onRegister()},
                splashColor: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 40,),
            RichText(
                text: TextSpan(
                    text: 'Already a member?',
                    style: const TextStyle(
                        color: Colors.black, fontSize: 14, letterSpacing: 0.1),
                    children: [
                      TextSpan(
                          text: " Login",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            },
                          style: TextStyle(
                              color: Theme.of(context).primaryColor, fontSize: 14))
                    ])),
            const SizedBox(height: 40,),

          ]),
        ),
      ),
    );
  }
}
