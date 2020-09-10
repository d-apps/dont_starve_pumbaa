import 'package:dont_starve_pumbaa/src/components/background_component.dart';
import 'package:dont_starve_pumbaa/src/config.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DontStarvePumbaaGame extends BaseGame {

  DontStarvePumbaaGame(){

    onStart();

  }

  void onStart(){

    add(BackgroundComponent());

  }


}