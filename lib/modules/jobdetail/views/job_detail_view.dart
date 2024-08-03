import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/job_model.dart';
import '../../../services/kee_alive_wrapper.dart';
import '../controllers/job_detail_controller.dart';


class JobDetailView extends GetView<JobDetailController>{
  const JobDetailView({super.key});

  @override
  Widget build(BuildContext context) {

    return KeepAliveWrapper(
        child: Scaffold(
          key: controller.scaffoldGlobalKey,
          backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
          appBar: _buildAppBar(),
          body: _buildBody(),
        )
    );
  }

  Widget _buildBody(){
    return Stack(
      children: [
        _buildJobDetailList(),
      ],
    );
  }


  Widget _buildJobDetailList(){
    Job job = Get.arguments["job"];
    return job.title!=null?ListView(children: [Column(
      children: [
        Container(
          // color: Colors.white,
          margin: const EdgeInsets.only(left:10, top:10, right:10, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:  Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(job.title??"", style: const TextStyle(fontSize:20, fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text("Place: ${job.primaryDetails?.place}", style: const TextStyle(fontSize: 20,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text("Salary: ${job.primaryDetails?.salary}", style: const TextStyle(fontSize: 20,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text("Job Type: ${job.primaryDetails?.jobType}", style: const TextStyle(fontSize: 20,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text("Experience: ${job.primaryDetails?.experience}", style: const TextStyle(fontSize: 20,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text("Qualification: ${job.primaryDetails?.qualification}", style: const TextStyle(fontSize: 20,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text("Company Name: ${job.companyName}", style: const TextStyle(fontSize: 20,),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text("Tel: ${job.customLink}", style: const TextStyle(fontSize: 20,),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text("WhatsApp Number: ${job.whatsappNo}", style: const TextStyle(fontSize: 20,),),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    )],):const Text("");

  }



  //自定义箭头组件

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: const[
        Text(""),
      ],
    );
  }


}