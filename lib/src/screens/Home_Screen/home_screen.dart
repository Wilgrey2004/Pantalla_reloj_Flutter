import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Informacion sobre mi",
          style: TextStyle(color: const Color.fromARGB(255, 21, 97, 160)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Wilgrey Ravelo Cruz", style: TextStyle(fontSize: 20)),
            Text("2023-0611", style: TextStyle(fontSize: 20)),
            CircleAvatar(
              backgroundImage: AssetImage("assets/me.jpeg"),
              radius: 150,
            ),
          ],
        ),
      ),
    );
  }
}
