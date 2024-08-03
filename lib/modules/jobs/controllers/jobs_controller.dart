import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:lokal/models/job_model.dart';
import 'package:lokal/services/http_client.dart';
// https://json.flutterschool.cn/
// https://javiercbk.github.io/json_to_dart/
// https://autocode.icu/jsontodart
class JobsController extends GetxController{
  //https://testapi.getlokalapp.com/common/jobs?page=1  请求地址
  int page= 1;
  RxBool hasData = true.obs;
  RxList<Job> jobList=<Job> [].obs;   //注意，需要定义成响应式数据
  HttpClient httpClient = HttpClient();
  ScrollController scrollController=ScrollController();

  @override
  void onInit() {
    super.onInit();
    getPListData();
  }

  getPListData() async{

    try{
      var response = await httpClient.get("/common/jobs?page=$page");
      if (kDebugMode) {
        print("response.............$response");
      }
      if(response!=null){
        JobListModel temp = JobListModel.fromJson(response.data);
        jobList.addAll(temp.results);
        update();
      }
    }catch(e){
      if (kDebugMode) {
        print("exception is..........................$e");
      }
    }
  }
}