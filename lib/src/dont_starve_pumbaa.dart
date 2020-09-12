import 'package:dont_starve_pumbaa/src/components/background_component.dart';
import 'package:dont_starve_pumbaa/src/components/bug_component.dart';
import 'package:dont_starve_pumbaa/src/components/pumbaa_component.dart';
import 'package:dont_starve_pumbaa/src/config.dart';
import 'package:dont_starve_pumbaa/src/controllers/audio_controller.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flame/time.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DontStarvePumbaaGame extends BaseGame with PanDetector {

  PumbaaComponent pumbaa;
  AudioController audioController = Get.find();
  Timer timer;

  DontStarvePumbaaGame(){

    onStart();

  }

  void onStart(){

   audioController.play();

    add(BackgroundComponent());

    pumbaa = PumbaaComponent();
    add(pumbaa);

    timer = Timer(1.0, repeat: true, callback: ()=> add(BugComponent()))..start();

  }

  @override
  void update(double t) {

    timer.update(t);

    super.update(t);
  }

// ============= GESTURES ===============


  @override
  void onPanStart(DragStartDetails details) {

    print("DX ${details.globalPosition.dx}");

    pumbaa.changeAnimation(details.globalPosition.dx);

    super.onPanStart(details);
  }

  @override
  void onPanEnd(DragEndDetails details) {

    pumbaa.setIdle();

    super.onPanEnd(details);
  }

  @override
  void onPanCancel() {

    pumbaa.setIdle();

    super.onPanCancel();
  }

}