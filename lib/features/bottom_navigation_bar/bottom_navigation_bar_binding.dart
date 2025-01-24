import 'package:get/get.dart';
import 'package:pengaduan_mobile/features/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:pengaduan_mobile/features/dashboard/dashboard_controller.dart';
import 'package:pengaduan_mobile/features/pengaduan/pengaduan_controller.dart';
import 'package:pengaduan_mobile/features/persetujuan/persetujuan_controller.dart';

class BottomNavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationBarController>(() => BottomNavigationBarController());
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    Get.lazyPut<PengaduanController>(() => PengaduanController());
    Get.lazyPut<PersetujuanController>(() => PersetujuanController());
  }
}