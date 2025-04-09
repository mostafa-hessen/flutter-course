import 'package:flutter/material.dart';

void main() {
  runApp(Ui());
}

class Ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 142, 232),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
          children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("hi"),
                  Text("20-24-2024"),
                ],
              ),
              Icon(Icons.alarm)
            
            ],
           )
          ],
        ),
          
          ),
      ),
    );
  }
}
