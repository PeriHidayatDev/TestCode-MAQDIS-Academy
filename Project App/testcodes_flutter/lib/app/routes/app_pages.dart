import 'package:get/get.dart';

import '../modules/acara/bindings/acara_binding.dart';
import '../modules/acara/views/acara_view.dart';
import '../modules/donasi/bindings/donasi_binding.dart';
import '../modules/donasi/views/donasi_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lainnya/bindings/lainnya_binding.dart';
import '../modules/lainnya/views/lainnya_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/qris/bindings/qris_binding.dart';
import '../modules/qris/views/qris_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: _Paths.HOME, page: () => HomeView(), binding: HomeBinding()),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DONASI,
      page: () => const DonasiView(),
      binding: DonasiBinding(),
    ),
    GetPage(
      name: _Paths.QRIS,
      page: () => const QrisView(),
      binding: QrisBinding(),
    ),
    GetPage(
      name: _Paths.ACARA,
      page: () => const AcaraView(),
      binding: AcaraBinding(),
    ),
    GetPage(
      name: _Paths.LAINNYA,
      page: () => const LainnyaView(),
      binding: LainnyaBinding(),
    ),
  ];
}
