import 'package:dont_starve_pumbaa/src/config.dart';
import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:get/get.dart';

class BackgroundComponent extends SpriteComponent {

  Config config = Get.find();

  BackgroundComponent(){

    sprite = Sprite("background.png");
    width = config.size.width;
    height = config.size.height;

  }

}