import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "RaKos",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      defaultTransition: Transition.fade,
    ),
  );
}
