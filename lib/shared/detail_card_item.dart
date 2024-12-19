import 'package:fitness_app/core/utilies/colors.style.dart';
import 'package:fitness_app/core/utilies/theme.dart';
import 'package:fitness_app/shared/preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailCardItem extends StatelessWidget {
  final dynamic resource;
  const DetailCardItem({
    super.key,
    required this.resource,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(Preview(
          resource: resource,
        ));
      },
      child: Card(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 90.0,
                width: 90.0,
                child: Image.network(resource['gifUrl']),
              ),
              Card(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 140,
                  child: Center(
                    child: Text(
                      resource['name'].toString().toUpperCase(),
                      style: AppTheme.lightAppBarTheme.titleTextStyle!.copyWith(
                        color: AppColors.black2,
                        fontFamily: 'muli',
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
