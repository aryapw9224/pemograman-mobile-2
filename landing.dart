import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Tampilan awal',
      style: optionStyle,
    ),
    Text(
      'Akan Menampilkan Jenis jenis makanan yang di sediakan',
      style: optionStyle,
    ),
    Text(
      'Menampilkan jenis jenis minuman yang di sediakan',
      style: optionStyle,
    ),
    Text(
      'Menampilkan pengaturan sederhana',
      style: optionStyle,
    ),
    Text(
      'Menampilkan Menu Tentang ',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Taman Di Mari Ke Taman Mari Ngopi'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 235, 53, 40),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Makanan',
            backgroundColor: Color.fromARGB(255, 243, 204, 30),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'Minuman',
            backgroundColor: Color.fromARGB(255, 32, 224, 25),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_center),
            label: 'About',
            backgroundColor: Color.fromARGB(255, 68, 2, 175),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
