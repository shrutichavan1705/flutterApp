import 'package:application/main.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String title;
  const ChatScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,

        actions:  [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Icon(Icons.call),
              ),

              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Icon(Icons.search),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Icon(Icons.camera_alt_rounded),
              )
            ],
          )
        ],
      ),
      body: Container(
        child: Text("Inside"),//not working
      ),
    );
  }
}
