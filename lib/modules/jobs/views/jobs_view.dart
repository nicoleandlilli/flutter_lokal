import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lokal/modules/jobs/controllers/jobs_controller.dart';

import '../../../services/kee_alive_wrapper.dart';

class JobsView extends GetView<JobsController>{
  const JobsView({super.key});


  @override
  Widget build(BuildContext context) {
    return KeepAliveWrapper(
        child: Scaffold(
          body: _buildBody(),
        )
    );
  }

  Widget _buildBody(){
    return Stack(
      children: [
        _buildProductList(),
        // _buildSubHeader(),
      ],
    );
  }

  Widget _buildProductList(){
    return Obx(()=>controller.pList.isNotEmpty? ListView.builder(
        controller: controller.scrollController,
        padding: const EdgeInsets.fromLTRB(26, 80, 26, 26),
        itemCount: controller.pList.length,
        itemBuilder: (context, index){
          String item = controller.pList[index];
          return Column(
            children: [
              Container(
                // color: Colors.white,
                margin: const EdgeInsets.only(bottom: 26),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left:10,bottom: 20),
                            child: Text("item.title", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:10,bottom: 20),
                            child: Text("item.location", style: TextStyle(fontSize: 20,),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:10,bottom: 20),
                            child: Text("item.salary", style: TextStyle(fontSize: 20,),),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left:10,bottom: 20),
                            child: Text("phone", style: TextStyle(fontSize: 20,),),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              (index==controller.pList.length-1)?_buildProgressIndicator():const Text(""),
            ],
          );
        }):_buildProgressIndicator());
  }


  Widget _buildProgressIndicator(){
    if(controller.hasData.value){
      return const Center(
        child: CircularProgressIndicator(),
      );
    }else{
      return const Center(
        child: Text("没有数据了喔，我是有底线的"),
      );
    }
  }

}