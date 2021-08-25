import 'package:flutter/material.dart';
import 'package:flutter_topics/services/local_notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  static const String routeName = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local notifications"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text("Send notification")),),
    );
  }
}