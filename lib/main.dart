import 'package:flutter/material.dart';
import 'package:scopedmodel/ui/views/home_view.dart';
import 'service_locator.dart';

void main() {
  setupLocator();
  runApp(MyScopedModelApp());
}

class MyScopedModelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Scoped Model App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(),
    );
  }
}
