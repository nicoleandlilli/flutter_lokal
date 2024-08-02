import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../services/kee_alive_wrapper.dart';

class JobsView extends GetView{
  const JobsView({super.key});


  @override
  Widget build(BuildContext context) {
    return const KeepAliveWrapper(
        child: Scaffold(
          body: Center(
            child:  Text("JobsView"),
          ),
        )
    );
  }


}