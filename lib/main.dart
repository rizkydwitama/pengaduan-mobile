import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pengaduan_mobile/routes/page_names.dart';
import 'package:pengaduan_mobile/routes/page_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: PageRoutes.pages,
      debugShowCheckedModeBanner: false,
      initialRoute: PageName.bottomNavigationBar,
    );
  }
}
