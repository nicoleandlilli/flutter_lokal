import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/tabs_controller.dart';

class TabsView extends GetView<TabsController>{
  const TabsView({super.key});


  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      // appBar: AppBar(
      //   title: const Text('TabsView'),
      //   centerTitle: true,
      // ),
      body: PageView(
        controller: controller.pageController,
        children: controller.pages,
        onPageChanged: (index){
          controller.setCurrentIndex(index);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,//选中的颜色
        iconSize: 35,
        currentIndex:controller.currentIndex.value,//第几个菜单选中
        type: BottomNavigationBarType.fixed, //如果有四个或四个以上的
        onTap: (index){
          controller.setCurrentIndex(index);
          controller.pageController.jumpToPage(index);

        },
        items: const [
          BottomNavigationBarItem(
              // icon: Icon(Icons.home),
              icon: Icon(Icons.work),
              label: "Jobs"
          ),
          BottomNavigationBarItem(
              // icon: Icon(Icons.category),
              icon: Icon(Icons.bookmark),
              label: "Bookmarks"
          ),

        ],
      ),
    ));
  }

}