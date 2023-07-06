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
      ),
      body: ListTile(
        leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/3135/3135715.png')),
        title: Text('Kshitij Rana'),
        subtitle: Text('K cha khabar'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
