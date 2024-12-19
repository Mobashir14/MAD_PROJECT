import 'package:fitness_app/core/utilies/colors.style.dart';
import 'package:fitness_app/core/utilies/image_utils.dart';
import 'package:fitness_app/core/utilies/texts.style.dart';
import 'package:fitness_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardItem extends StatelessWidget {
  final String title;

  const CardItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.DETAIL, parameters: {
          "title": title,
        });
      },
      child: Card(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 5.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 95,
                height: 95,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: getImage(title),
                  ),
                ),
              ),
              Card(
                child: Center(
                  child: SizedBox(
                    width: 200.0,
                    child: Center(
                      child: Text(
                        title.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: IText.header4Black.copyWith(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'muli',
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
