import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/navigation/navigation.dart';
import 'presentation/navigation/routes.dart';

void main() async {
  String initialRoute = await Routes.initialRoute;
  runApp(GetMaterialApp(
    title: "Task",
    initialRoute: initialRoute,
    getPages: Navigation.routes,
  ));
}
