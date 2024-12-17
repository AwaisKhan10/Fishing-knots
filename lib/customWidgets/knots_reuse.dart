// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:brightcodelab/core/constant/colors.dart';
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
            )
          ],
        ),
      ),
    );
  }
}
