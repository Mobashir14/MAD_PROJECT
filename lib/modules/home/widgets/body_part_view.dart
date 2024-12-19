import 'package:fitness_app/core/utilies/colors.style.dart';
import 'package:fitness_app/core/utilies/size_config.dart';
import 'package:fitness_app/core/utilies/theme.dart';
import 'package:fitness_app/modules/home/controllers/home_controller.dart';
import 'package:fitness_app/shared/card_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyPartView extends GetView<HomeController> {
  const BodyPartView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {
        controller.fetBodyPartList();
      },
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            leading: Row(children: [
              ClipOval(
                child: Image.asset('assets/images/ME.jpg', height: 45, width: 45,),
              ),
            ],),
            title: Text(
              "PHYSIQUE",
              style: AppTheme.lightAppBarTheme.titleTextStyle!.copyWith(
                color: AppColors.black2,
                fontFamily: 'muli',
              ),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
            centerTitle: true,
          ),
          body: Obx(
            () => ListView.builder(
              shrinkWrap: true,
              itemCount: controller.state.bodyPartList.length,
              itemBuilder: (BuildContext context, int index) {
                final title = controller.state.bodyPartList[index];
                return CardItem(title: title);
              },
            ),
          ),
        );
      },
    );
  }
}
