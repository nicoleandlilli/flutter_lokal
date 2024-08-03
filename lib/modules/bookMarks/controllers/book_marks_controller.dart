import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../models/job_model.dart';
import '../../../services/http_client.dart';

class BookMarksController extends GetxController{
  int page= 6;
  RxBool hasData = true.obs;
  RxList<Job> jobList=<Job> [].obs;   //注意，需要定义成响应式数据
  HttpClient httpClient = HttpClient();
  ScrollController scrollController=ScrollController();

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
          update();
          if(temp.results!.length<=1){
            hasData.value=false;
          }
        }
      }
    }catch(e){
      if (kDebugMode) {
        print("exception is..........................$e");
      }
    }
  }
}