import 'package:flutter/material.dart';
import 'package:travel_app/presentation/resource/colors_manager.dart';
import 'package:travel_app/presentation/resource/image_manager.dart';
import 'package:travel_app/presentation/resource/string_manager.dart';
import 'package:travel_app/presentation/widgets/app_text.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key, this.width = 120, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: AppText(
                        text: StringManager.buttonText, color: Colors.white))
                : Container(),
            Image.asset(AssetsManager.buttonOne),
          ],
        ),
      ),
    );
  }
}
