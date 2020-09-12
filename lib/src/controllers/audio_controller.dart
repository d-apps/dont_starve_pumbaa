import 'package:audioplayers/audioplayers.dart';
import 'package:flame/flame.dart';

class AudioController {

  AudioPlayer audioPlayer;

  void play(){

    Flame.audio.loopLongAudio("audio_music.mp3");

  }

  void pause(){

  }

  void stop(){

  }

  void playSoundEffect(){

    Flame.audio.play("audio_swallow.mp3");

  }

}