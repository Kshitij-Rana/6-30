import 'package:flutter/material.dart';

import 'main.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message'),
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
