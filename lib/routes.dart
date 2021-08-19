import 'package:flutter/material.dart';
import 'package:flutter_topics/views/pages/home_page.dart';

Map<String, Widget Function(BuildContext)> 
routes = {
  HomePage.routeName : (_)=> const HomePage(),
};