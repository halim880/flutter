
import 'package:flutter/material.dart';
import 'package:flutter_topics/controllers/base_client_controller.dart';
import 'package:flutter_topics/services/base_client.dart';

class BaseClientTestPage extends StatelessWidget {
  BaseClientTestPage({ Key? key }) : super(key: key);

  final controller = BaseClientController();
  static const String routeName = "base-client-test";

  void _onPressed(){
    controller.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _onPressed, 
          child: const Text("Test"),
        )
      ,),
    );
  }
}