import 'package:get/get.dart';

class NavigationController extends GetxController {
  // Variabel untuk menyimpan indeks halaman yang aktif
  var selectedIndex = 0.obs;

  // Fungsi untuk mengganti halaman berdasarkan indeks
  void changePage(int index) {
    selectedIndex.value = index;
  }
}
