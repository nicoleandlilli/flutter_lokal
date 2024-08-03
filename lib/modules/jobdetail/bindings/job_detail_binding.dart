import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../controllers/job_detail_controller.dart';

class JobDetailsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<JobDetailController>(
          () => JobDetailController(),
    );
  }

}