import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lokal/modules/bookMarks/views/book_marks_view.dart';
import 'package:lokal/modules/jobs/views/jobs_view.dart';


class TabsController extends GetxController{

  RxInt currentIndex = 0.obs;
  PageController pageController=PageController(initialPage: 0);
  final List<Widget> pages=const [
    JobsView(),
    BookMarksView(),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setCurrentIndex(index){
    currentIndex.value=index;
    update();
  }

}