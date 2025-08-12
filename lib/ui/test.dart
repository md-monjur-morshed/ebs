import 'package:flutter/material.dart';
import 'text2.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test App"),
        backgroundColor: const Color.fromARGB(255, 166, 212, 167),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello from Test!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Test2()),
                );
              },
              child: Text("Click Me"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Test FAB pressed!");
        },
        child: Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 59, 184, 215),
      ),
    );
  }
}
