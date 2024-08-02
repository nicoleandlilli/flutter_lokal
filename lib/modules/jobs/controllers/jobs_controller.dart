import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class JobsController extends GetxController{

  RxBool hasData = true.obs;
  RxList<String> pList=<String> [].obs;   //注意，需要定义成响应式数据
  ScrollController scrollController=ScrollController();

  @override
  void onInit() {
    super.onInit();
    getPListData();
  }

  getPListData() async{
    for(int i=0;i<10;i++){
      pList.add("list $i");
    }
    update();
  }
}