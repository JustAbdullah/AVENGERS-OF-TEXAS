//import 'package:http/http.dart' as http;

import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

import '../views/WelcomeScreen/welcome_screen.dart';

class ControllerApp extends GetxController {
  final audioPlayer = AudioPlayer();

  RxBool sound = true.obs;
  RxBool soundM = false.obs;
  RxBool soundO = false.obs;

  Future setAd() async {
    AudioCache.instance = AudioCache(prefix: 'android/assets/audio/');
    final player = AudioPlayer();
    player.audioCache = AudioCache(prefix: 'android/assets/audio/');
    player.setReleaseMode(ReleaseMode.loop);
    await player.play(AssetSource('gun.mp3'));
  }

  RxBool isGoToWelcome = false.obs;
  GoToWelcome() {
    Future.delayed(Duration(seconds: 7), () async {
      if (isGoToWelcome.value == false) {
        isGoToWelcome.value = true;
        Get.to(WelcomeScreen());
      } else {}
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    setAd();
    GoToWelcome();
    super.onInit();
  }
}
