import 'package:dont_starve_pumbaa/src/config.dart';
import 'package:dont_starve_pumbaa/src/dont_starve_pumbaa.dart';
import 'package:flame/animation.dart';
import 'package:flame/components/animation_component.dart';
import 'package:flame/components/component.dart';
import 'package:flame/components/mixins/has_game_ref.dart';
import 'package:get/get.dart';

class PumbaaComponent extends AnimationComponent with HasGameRef<DontStarvePumbaaGame> {

  static Config config = Get.find();
  double speedX;
  bool run = false;

  static Animation animationIdle = Animation.sequenced(
    "pumbaa_idle.png",
    2,
    textureWidth: 41,
    textureHeight: 44,
    stepTime: 0.25,
    loop: true,
  );

  static Animation animationRunningLeft = Animation.sequenced(
    "pumbaa_running_left.png",
    8,
    textureWidth: 78,
    textureHeight: 45,
    stepTime: 0.10,
    loop: true,
  );

  static Animation animationRunningRight = Animation.sequenced(
    "pumbaa_running_right.png",
    8,
    textureWidth: 78,
    textureHeight: 45,
    stepTime: 0.10,
    loop: true,
  );

  PumbaaComponent() : super(
      config.size.width * 0.15,
      config.size.height * 0.20,
      animationIdle
  ){

    x = config.size.width / 2;
    y = config.size.height - config.size.height * 0.25;

  }

  @override
  void update(double t) {

    if(run){
      move(t);
    }

    super.update(t);
  }

  void move(double t){

    x += speedX * t;

  }

  void changeAnimation(double x){

    if(x > config.size.width / 2){

      animation = animationRunningRight;
      speedX = 180;

    } else if(x < config.size.width / 2) {

      animation = animationRunningLeft;
      speedX = -180;
    }

    run = true;

  }

  void setIdle(){

    run = false;
    animation = animationIdle;

  }

}

