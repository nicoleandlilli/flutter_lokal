import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:lokal/models/job_model.dart';
import 'package:lokal/services/http_client.dart';

import '../../../sqlite/data_base_helper.dart';
// https://json.flutterschool.cn/
// https://javiercbk.github.io/json_to_dart/
// https://autocode.icu/jsontodart
class JobsController extends GetxController{
  //https://testapi.getlokalapp.com/common/jobs?page=1  请求地址
  int page= 1;
  RxBool hasData = true.obs;
  RxBool loadError = false.obs;
  RxString loadErrorMsg = "".obs;
  RxList<Job> jobList=<Job> [].obs;   //注意，需要定义成响应式数据
  HttpClient httpClient = HttpClient();
  ScrollController scrollController=ScrollController();
  final DatabaseHelper _dbHelper = DatabaseHelper();

  @override
  void onInit() {
    super.onInit();
    getJobListData();
    initScrollController();
  }

  //监听滚动条事件
  void initScrollController(){
    scrollController.addListener((){
      // scrollController.position.pixels     滚动条高度
      // scrollController.position.maxScrollExtent              页面高度

      if(scrollController.position.pixels>(scrollController.position.maxScrollExtent-20)){
        getJobListData();
      }
    });
  }

  getJobListData() async{
    try{
      if(hasData.value) {
        var response = await httpClient.get("/common/jobs?page=$page");
        if (kDebugMode) {
          print("response.............$response");
        }
        if (response != null) {
          JobListModel temp = JobListModel.fromJson(response.data);
          jobList.addAll(temp.results);
          page++;
          loadError.value=false;
          update();
          if(temp.results!.length<=1){
            hasData.value=false;
          }
        }else{
          hasData.value=false;
          update();
        }
      }
    }catch(e){
      if (kDebugMode) {
        print("exception is..........................$e");
      }
      loadError.value=true;
      loadErrorMsg.value=e.toString();
    }
  }

  bookMark(Job job){
    _dbHelper.insertItem(job);
  }
}