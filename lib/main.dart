import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/presentation/navigation/navigation.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'task',
      initialRoute: '/',
      getPages: Nav.routes,
    ),
  );
}
