import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Expanded(
              child: Center(child: null),
            ),
            Text("Email: ServerData",
            style: TextStyle(
              fontSize: 20.0
              ),
            ),
            const Expanded(
              child: Center(child: null),
            ),
          ],
        ),
      ),
    );
  }
}
