import 'package:flutter/material.dart';
import 'package:pulse/utils/color_utils.dart';
import 'package:pulse/reusable_widgets/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("CB2B93"),
              hexStringToColor("E55D87"),
              hexStringToColor("F9887B")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/pulse_logo.png"),
                SizedBox(
                  height: 30,
                ),
            reusableTextField("Enter Username", Icons.person_outline, false,
                _emailController),
            SizedBox(
              height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordController),
        ],
            ),
          ),
        ),
      ),
    );
  }


}



