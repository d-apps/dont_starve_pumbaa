import 'package:dont_starve_pumbaa/src/config.dart';
import 'package:dont_starve_pumbaa/src/controllers/audio_controller.dart';
import 'package:dont_starve_pumbaa/src/dont_starve_pumbaa.dart';
import 'package:flame/components/component.dart';
import 'package:flame/components/mixins/has_game_ref.dart';
import 'package:flame/sprite.dart';
import 'package:get/get.dart';

class BugComponent extends SpriteComponent with HasGameRef<DontStarvePumbaaGame>{

  double speedY = 100;
  Config config = Get.find();
  bool destroyed = false;
  AudioController audioController = Get.find();

  BugComponent({String spritePath}){

    sprite = Sprite("bug_1.png");
    width = 13;
    height = 18;
    x = 0;
    y = 0;

  }

  @override
  void update(double dt) {

    fall(dt);

    if(gameRef.pumbaa.toRect().overlaps(toRect())){
      destroyed = true;
      audioController.playSoundEffect();

    }

    super.update(dt);
  }

  void fall(double dt){

    y += speedY * dt;

  }

  @override
  bool destroy() => destroyed || toRect().top >= config.size.height + 10;
}