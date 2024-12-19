import 'package:fitness_app/core/utilies/colors.style.dart';
import 'package:fitness_app/core/utilies/size_config.dart';
import 'package:fitness_app/core/utilies/theme.dart';
import 'package:fitness_app/modules/detail/controllers/detail_controller.dart';
import 'package:fitness_app/shared/detail_card_item.dart';
import 'package:fitness_app/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends GetView<DatailController> {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<DatailController>(
      init: DatailController(),
      initState: (_) {
        controller.fetBodyPartByName();
      },
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              Get.parameters['title']!.toUpperCase(),
              style: AppTheme.lightAppBarTheme.titleTextStyle!.copyWith(
                color: AppColors.black2,
                fontFamily: 'muli',
              ),
            ),
            centerTitle: true,
          ),
          body: Obx(
            () => controller.state.isLoading
                ? const LoadingAnimation()
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.state.detailList.length,
                    itemBuilder: (BuildContext context, int index) {
                      final resource = controller.state.detailList[index];
                      return DetailCardItem(resource: resource);
                    },
                  ),
          ),
        );
      },
    );
  }
}
