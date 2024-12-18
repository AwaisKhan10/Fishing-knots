// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:brightcodelab/core/constant/colors.dart';
import 'package:brightcodelab/core/constant/string.dart';
import 'package:brightcodelab/core/constant/text_style.dart';
import 'package:brightcodelab/core/models/knots_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KnotsReuse extends StatelessWidget {
  KnotsModel knotsModel = KnotsModel();

  KnotsReuse({
    required this.knotsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            color: borderBlueColor.withOpacity(0.10),
            border: Border.all(width: 1, color: borderBlueColor)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: Image.asset("${knotsModel.imgUrl}")),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                '${knotsModel.name}',
                textAlign: TextAlign.center,
                style: style16.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: blaclColor.withOpacity(0.40),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10.r),
                      bottomLeft: Radius.circular(10.r))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "$staticAssets/play.png",
                    scale: 4,
                  ),
                  Image.asset("$staticAssets/icon1.png", scale: 2),
                  Image.asset("$staticAssets/icon2.png", scale: 2),
                  Image.asset("$staticAssets/icon3.png", scale: 2),
                  Text(
                    "${knotsModel.percent} %",
                    style: style16.copyWith(fontSize: 14.sp, color: whiteColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
