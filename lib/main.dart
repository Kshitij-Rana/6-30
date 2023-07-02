import 'package:flutter/material.dart';

import 'cart.dart';
import 'home.dart';
import 'profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  List<Widget> screens = [
    const HomePage(),
    const CartPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My appbar'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      backgroundColor: Colors.teal,
      body: screens[currentPage],
      drawer: const Drawer(
          child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Home',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Cart',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Profile',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
          ]),
    );
  }
}
