import 'package:flutter/material.dart';
import 'package:naya_project/cart.dart';
import 'package:naya_project/home.dart';
import 'package:naya_project/message.dart';
import 'package:naya_project/notification.dart';
import 'package:naya_project/profile.dart';

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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 203, 239, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentState = 0;
  List<Widget> screens = [
    const HomePage(),
    const ProfilePage(),
    const CartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My AppBar',
          style: TextStyle(
              color: Colors.blue.shade300, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                runApp(const MaterialApp(
                  home: NotificationPage(),
                ));
              },
              icon: const Icon(Icons.notification_add)),
          IconButton(
              onPressed: () {
                runApp(const MaterialApp(
                  home: MessagePage(),
                ));
              },
              icon: const Icon(Icons.message))
        ],
      ),
      body: screens[currentState],
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentState,
          onTap: (value) {
            setState(() {
              currentState = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart")
          ]),
    );
  }
}
