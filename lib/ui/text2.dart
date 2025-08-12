import 'package:flutter/material.dart';

class Test2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Page"),
        backgroundColor: const Color.fromARGB(255, 166, 212, 167),
        ),
      body: Center(
        child: Text(
          "This is Test Page",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
