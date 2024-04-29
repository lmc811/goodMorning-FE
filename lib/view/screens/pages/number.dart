import 'package:flutter/material.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<NumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Expanded(
              child: Center(child: null),
            ),
            Text("Number: ServerData",
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
