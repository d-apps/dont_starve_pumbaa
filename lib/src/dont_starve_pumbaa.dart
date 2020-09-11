import 'package:dont_starve_pumbaa/src/components/background_component.dart';
import 'package:dont_starve_pumbaa/src/components/pumbaa_component.dart';
import 'package:dont_starve_pumbaa/src/config.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DontStarvePumbaaGame extends BaseGame with PanDetector {

  PumbaaComponent pumbaa;

  DontStarvePumbaaGame(){

    onStart();

  }

  void onStart(){

    add(BackgroundComponent());

    pumbaa = PumbaaComponent();
    add(pumbaa);

  }

// ============= GESTURES ===============

  @override
  void onPanUpdate(DragUpdateDetails details) {

    pumbaa.changeAnimation(details.delta.dx);

    super.onPanUpdate(details);
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