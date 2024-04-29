import 'package:flutter/material.dart';
import 'package:goodmorning/view/screens/navigation.dart';
import 'package:goodmorning/viewmodels/login_viewmodel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("kakao login"),
      ),
      body: Center(
        child: Column(
          children: [
            const Expanded(
              child: Center(child: null),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                child: Image.asset('images/kakao_login_large_narrow.png'),
                onPressed: () {
                  signInWithKakao();
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Navigation()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
