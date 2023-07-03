import 'package:flutter/material.dart';

import 'package:naya_project/main.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                runApp(const MaterialApp(
                  home: MyApp(),
                ));
              },
              icon: Icon(Icons.arrow_back_ios))
        ],
      ),
    );
  }
}
