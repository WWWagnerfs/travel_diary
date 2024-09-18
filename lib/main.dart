import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_diary/views/countri_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Diary',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CountriListPage(),
    );
  }
}
