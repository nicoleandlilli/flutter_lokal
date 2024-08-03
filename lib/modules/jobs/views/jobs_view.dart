import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lokal/modules/jobs/controllers/jobs_controller.dart';

import '../../../models/job_model.dart';
import '../../../routes/app_routes.dart';
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
      ],
    );
  }

  Widget _buildProductList(){
    return Obx(()=>controller.jobList.isNotEmpty&&!controller.loadError.value? ListView.builder(
        controller: controller.scrollController,
        padding: const EdgeInsets.fromLTRB(26, 80, 26, 26),
        itemCount: controller.jobList.length,
        itemBuilder: (context, index){
          var item = controller.jobList[index];
          var primaryDetails = item.primaryDetails;
          return Column(
            children: [
              Container(
                // color: Colors.white,
                margin: const EdgeInsets.only(bottom: 26),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // InkWell(
                          //   onTap: (){
                          //     Get.toNamed(Paths.jobDetails, arguments: {"job":item});
                          //   },
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       Padding(
                          //         padding: const EdgeInsets.only(left:10,top:20,bottom: 20,right: 10),
                          //         child: Text(item.title??"", maxLines:2, overflow:TextOverflow.ellipsis, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                          //       ),
                          //       Padding(
                          //         padding: const EdgeInsets.only(left:10,bottom: 20),
                          //         child: Text(primaryDetails?.place??"", style: const TextStyle(fontSize: 20,),),
                          //       ),
                          //       Padding(
                          //         padding: const EdgeInsets.only(left:10,bottom: 20),
                          //         child: Text(primaryDetails?.salary??"", style: const TextStyle(fontSize: 20,),),
                          //       ),
                          //       Padding(
                          //         padding: const EdgeInsets.only(left:10,bottom: 20),
                          //         child: Text(item.customLink??"", style: const TextStyle(fontSize: 20,),),
                          //       ),
                          //     ],
                          //   ),
                          // ),

                          Padding(
                            padding: const EdgeInsets.only(left:10,top:20,bottom: 20,right: 10),
                            child: Text(item.title??"", maxLines:2, overflow:TextOverflow.ellipsis, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10,bottom: 20),
                            child: Text(primaryDetails?.place??"", style: const TextStyle(fontSize: 20,),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10,bottom: 20),
                            child: Text(primaryDetails?.salary??"", style: const TextStyle(fontSize: 20,),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10,bottom: 20),
                            child: Text(item.customLink??"", style: const TextStyle(fontSize: 20,),),
                          ),



                          Padding(
                            padding: const EdgeInsets.only(left:10,bottom: 20),
                            child:InkWell(
                              onTap: (){
                                  controller.bookMark(item);
                                  print("click button book mark....................${item.title}");
                                },
                              child: Container(
                                padding: const EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
                                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(30)),
                                child: const Text("BookMark"),
                            ),),
                          ),
                          

                          Padding(
                            padding: const EdgeInsets.only(left:10,bottom: 20),
                            child: ElevatedButton(onPressed: controller.deleteDatabase,child: const Text('delete database'),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:10,bottom: 20),
                            child: ElevatedButton(onPressed: controller.deleteDatabaseInfo,child: const Text('delete database info'),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              (index==controller.jobList.length-1)?_buildProgressIndicator():const Text(""),
            ],
          );
        }):_buildProgressIndicator());
  }


  Widget _buildProgressIndicator(){
    if(controller.loadError.value){
      return Center(
        child: Text("There's something wrong: ${controller.loadErrorMsg.value} ",textAlign:TextAlign.center,),
      );
    }else if(controller.hasData.value){
      return const Center(
        child: CircularProgressIndicator(),
      );
    }else{
      return const Center(
        child: Text("There's no data ",textAlign:TextAlign.center,),
      );
    }
  }




}