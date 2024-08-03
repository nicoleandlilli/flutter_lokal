import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../models/job_model.dart';
import '../../../services/http_client.dart';
import '../../../sqlite/data_base_helper.dart';

class BookMarksController extends GetxController{
  int page= 6;
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
    // getItems();
  }



  getItems() async{
    try {
      List<Job> temp =await _dbHelper.getItems();
      print("bookmark page has data.................................: ${temp.length}");
      if(temp.isNotEmpty) {
        hasData.value = true;
        jobList.clear();
        jobList.value=temp;
        update();
      }else{
        hasData.value = false;
        update();
      }
    }catch(e){
      if (kDebugMode) {
        print(e);
      }
      loadError.value=true;
      loadErrorMsg.value=e.toString();
    }
  }



}
