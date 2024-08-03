import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lokal/models/job_model.dart';
import 'package:lokal/services/http_client.dart';


class JobDetailController extends GetxController{

  int page= 1;
  late Rx<Job> jobRx=Job().obs;
  bool flag=true;
  String sort = "";
  RxBool hasData = true.obs;
  RxList<Job> pList=<Job> [].obs;   //注意，需要定义成响应式数据
  HttpClient httpClient = HttpClient();
  ScrollController scrollController=ScrollController();
  GlobalKey<ScaffoldState> scaffoldGlobalKey=GlobalKey<ScaffoldState>();



  @override
  void onInit() {
    super.onInit();
    // getPListData();
  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getPListData() {
    jobRx.value=Get.arguments["job"];
    print("job.............${jobRx.value.title}");
    update();
  }

}

