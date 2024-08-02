import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:lokal/modules/bookMarks/controllers/book_marks_controller.dart';
import 'package:lokal/modules/jobs/controllers/jobs_controller.dart';

import '../controllers/tabs_controller.dart';

class TabsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(
        () => TabsController(),
    );
    Get.lazyPut<JobsController>(
          () => JobsController(),
    );
    Get.lazyPut<BookMarksController>(
          () => BookMarksController(),
    );
  }

}