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
    List<String> arrNames = [
      'Raman',
      'Rajesh',
      'Asal',
      'Asish',
      'Kshitij',
      'Raman',
      'Rajesh',
      'Asal',
      'Asish',
      'Kshitij',
      'Raman',
      'Rajesh',
      'Asal',
      'Asish',
      'Kshitij'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
      ),
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Search',
                      hintText: 'Search',
                      border: OutlineInputBorder()),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Text(
                    "${arrNames[index]} sent you message.",
                    style: const TextStyle(
                        fontSize: 21, fontWeight: FontWeight.w500),
                  );
                },
                itemCount: arrNames.length,
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 40,
                    thickness: 2,
                  );
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}
