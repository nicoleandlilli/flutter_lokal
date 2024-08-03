
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../modules/jobdetail/bindings/job_detail_binding.dart';
import '../modules/jobdetail/views/job_detail_view.dart';
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

    GetPage(
      name: Paths.jobDetails,
      page: ()=>JobDetailView(),
      binding: JobDetailsBinding(),
    ),
  ];
}


