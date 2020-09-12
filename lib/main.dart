import 'package:dont_starve_pumbaa/src/config.dart';
import 'package:dont_starve_pumbaa/src/controllers/audio_controller.dart';
import 'package:dont_starve_pumbaa/src/dont_starve_pumbaa.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Flame.util.fullScreen();
  await Flame.util.setOrientation(DeviceOrientation.landscapeLeft);
  //Size size = await Flame.util.initialDimensions();

  await Flame.images.loadAll(
    [
      "background.png",
      "pumbaa_idle.png",
      "pumbaa_running_left.png",
      "pumbaa_running_right.png",
      "bug_1.png",
      "bug_2.png",
      "bug_3.png",
      "bug_4.png",
      "bug_5.png",
      "bug_6.png",
      "bug_7.png",
      "bug_8.png",
      "bug_9.png",
      "bug_10.png",
      "bug_11.png",
      "bug_12.png",
      "bug_13.png",
      "bug_14.png",
      "bug_15.png",
    ]
  );

  await Flame.audio.loadAll(
    [
      "audio_music.mp3",
      "audio_swallow.mp3",
    ]
  );

  runApp(GameWrapper());
}

class GameWrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints){

          Get.put(AudioController());
          Get.put(Config(Size(constraints.maxWidth, constraints.maxHeight)));
          Get.put(DontStarvePumbaaGame());

          return Get.find<DontStarvePumbaaGame>().widget;

        },
      ),
    );
  }
}





