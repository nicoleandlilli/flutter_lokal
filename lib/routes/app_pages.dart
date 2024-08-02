
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../modules/jobs/views/jobs_view.dart';
import '../tabs/bingdings/tabs_binding.dart';
import '../tabs/views/tabs_view.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.tabs;

  static final routes = [
    GetPage(
      name: Paths.tabs,
      page: ()=>const TabsView(),
      binding: TabsBinding(),
    ),


  ];
}


