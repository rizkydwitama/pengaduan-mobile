import 'package:get/get.dart';
import 'package:pengaduan_mobile/features/bottom_navigation_bar/bottom_navigation_bar_controller.dart';

class BottomNavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationBarController>(() => BottomNavigationBarController());
  }
}