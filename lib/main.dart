import 'package:dont_starve_pumbaa/src/config.dart';
import 'package:dont_starve_pumbaa/src/dont_starve_pumbaa.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Flame.util.fullScreen();
  await Flame.util.setOrientation(DeviceOrientation.landscapeLeft);
  Size size = await Flame.util.initialDimensions();

  await Future.delayed(Duration(seconds: 3));

  Config config = Config(size);
  Get.put(config);

  Get.put(DontStarvePumbaaGame());

  runApp(Get.find<DontStarvePumbaaGame>().widget);
}




