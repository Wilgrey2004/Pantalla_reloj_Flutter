import 'package:flutter/material.dart';
import "src/screens/Home_Screen/home_screen.dart";
import 'src/screens/clock_screen/clock_screen.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;

  final List<Widget> _paginas = [HomeScreen(), ClockScreen()];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaActual,
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: "Fecha en movimiento",
          ),
        ],
      ),
    );
  }
}
