
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../views/pages/base_client_test_page.dart';
import '../routes.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: BaseClientTestPage(),
      routes: routes,
    );
  }
}
