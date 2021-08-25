
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_topics/services/local_notification.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  NoticficationService.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: ()=> NoticficationService.notify(
            title: "This is notification title",
            body:  "This is notification body which is bigger than the title"
          ),
          child: const Text("Send notification"),
        ),
      ),
    );
  }
}