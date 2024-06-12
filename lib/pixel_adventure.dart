import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:pixel_adventure/levels/level.dart';

class PixelAdventure extends FlameGame {
  @override
  FutureOr<void> onLoad() async {
    world = Level();
    camera = CameraComponent.withFixedResolution(
      width: 640,
      height: 360,
    )..viewfinder.anchor = Anchor.topLeft;

    return super.onLoad();
  }
}
