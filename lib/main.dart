import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';
import 'presentation/wallpaper_detail/controllers/wallpaper_detail.controller.dart';

void main() async {
  final String initialRoute = await Routes.initialRoute;


  Get.put(WallpaperDetailController());


  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {

  const Main(this.initialRoute, {super.key});
  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (BuildContext context, Orientation orientation,  deviceType) {
      return GetMaterialApp(
        initialRoute: initialRoute,
        getPages: Nav.routes,
      );
    });
  }
}
