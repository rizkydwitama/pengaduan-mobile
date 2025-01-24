import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pengaduan_mobile/features/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:pengaduan_mobile/features/dashboard/dashboard_page.dart';
import 'package:pengaduan_mobile/features/pengaduan/pengaduan_page.dart';
import 'package:pengaduan_mobile/features/persetujuan/persetujuan_page.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarController controller = Get.find();

    return Scaffold(
      body: Obx(() => IndexedStack(
        index: controller.currentIndex.value,
        children: const [
          DashboardPage(),
          PengaduanPage(),
          PersetujuanPage(),
        ],
      ),),
      bottomNavigationBar: SizedBox(
        height: 68,
        child: Obx(() => BottomNavigationBar(
          onTap: (value) {
            controller.currentIndex.value = value;
          },
          currentIndex: controller.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
              color: Colors.black,
              fontSize: 11,
              fontWeight: FontWeight.w600
          ),
          unselectedLabelStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 11,
              fontWeight: FontWeight.w600
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 24,
                color: controller.currentIndex.value == 0
                    ? Colors.black
                    : Colors.grey,
              ),
              label: 'Dashboard'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.note_add,
                  size: 24,
                  color: controller.currentIndex.value == 1
                      ? Colors.black
                      : Colors.grey,
                ),
                label: 'Pengaduan'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.approval,
                  size: 24,
                  color: controller.currentIndex.value == 2
                      ? Colors.black
                      : Colors.grey,
                ),
                label: 'Persetujuan'
            ),
          ],
        ),),
      ),
    );
  }
}
