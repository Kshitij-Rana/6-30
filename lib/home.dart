import 'package:flutter/material.dart';
import 'package:naya_project/message.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        // width: double.infinity,
        // height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MessagePage(),
                  ));
                },
                splashColor: const Color.fromRGBO(41, 182, 246, 1),
                child: Container(
                  height: double.infinity,
                  width: 100,
                  color: Colors.amber,
                  child: const Center(child: Text('hello')),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          color: Colors.white,
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          color: Colors.green,
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          color: Colors.blueGrey,
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
