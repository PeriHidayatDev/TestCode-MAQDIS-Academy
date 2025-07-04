//
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:testcodes_flutter/app/modules/acara/views/acara_view.dart';
import 'package:testcodes_flutter/app/modules/donasi/views/donasi_view.dart';
import 'package:testcodes_flutter/app/modules/home/controllers/navigation_controller.dart';
import 'package:testcodes_flutter/app/modules/home/views/home_content.dart';
import 'package:testcodes_flutter/app/modules/lainnya/views/lainnya_view.dart';
import 'package:testcodes_flutter/app/modules/qris/views/qris_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final items = <Widget>[
    Icon(Icons.home, size: 30, color: Colors.white),
    Icon(Icons.front_hand_outlined, size: 30, color: Colors.white),
    Icon(Icons.qr_code, size: 30, color: Colors.white),
    Icon(Icons.calendar_month, size: 30, color: Colors.white),
    Icon(Icons.dashboard_customize_rounded, size: 30, color: Colors.white),
  ];

  final List<Widget> _pages = [
    HomeContent(), 
    DonasiView(),
    QrisView(),
    AcaraView(),
    LainnyaView(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        body: _pages[controller.selectedIndex.value],
        bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          items: items,
          color: Colors.orangeAccent,
          buttonBackgroundColor: Colors.orangeAccent,
          backgroundColor: Colors.white,
          index: controller.selectedIndex.value,
          onTap: (index) {
            controller.changePage(index);
          },
        ),
      ),
    );
  }
}
