import 'package:flame/components/animation_component.dart';

abstract class CharacterComponent extends AnimationComponent {

  CharacterComponent.sequenced(double width, double height, String imagePath, int amount) :
        super.sequenced(width, height, imagePath, amount);



}