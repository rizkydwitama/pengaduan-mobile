import 'package:get/get.dart';
import 'package:pengaduan_mobile/features/bottom_navigation_bar/bottom_navigation_bar_binding.dart';
import 'package:pengaduan_mobile/features/bottom_navigation_bar/bottom_navigation_bar_page.dart';
import 'package:pengaduan_mobile/routes/page_names.dart';

class PageRoutes {
  static final pages = [
    GetPage(
        name: PageName.bottomNavigationBar,
        page: () => BottomNavigationBarPage(),
        binding: BottomNavigationBarBinding()
    )
  ];
}