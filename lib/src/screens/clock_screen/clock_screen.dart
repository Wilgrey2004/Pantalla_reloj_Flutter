import 'dart:async';
import 'package:flutter/material.dart';

class ClockScreen extends StatefulWidget {
  const ClockScreen({super.key});

  @override
  State<ClockScreen> createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  late DateTime ahora;
  late Timer timer;
  bool seguir = true;

  @override
  void initState() {
    super.initState();
    ahora = DateTime.now();
    iniciarReloj();
  }

  void iniciarReloj() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (seguir) {
        setState(() {
          ahora = DateTime.now();
        });
      }
    });
  }
  //WIlgrey Ravelo cruz

  void pararLaHora() {
    setState(() {
      seguir = !seguir;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reloj en aumento",
          style: TextStyle(color: const Color.fromARGB(255, 21, 97, 160)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "La hora y día actual es:\n$ahora",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 60),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 155, 178, 219),
              ),
              onPressed: pararLaHora,
              icon: Icon(seguir ? Icons.play_arrow : Icons.pause),
              label: Text(
                seguir ? "Parar la hora" : "Reanudar la hora",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
