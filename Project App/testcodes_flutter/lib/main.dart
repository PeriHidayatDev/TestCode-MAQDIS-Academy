import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: Routes.LOGIN,
      getPages: AppPages.routes,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Mulish',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.orangeAccent,
        ),
      ),
    ),
  );
}
