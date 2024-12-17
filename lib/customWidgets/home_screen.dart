// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:brightcodelab/core/models/home_screen_model.dart';
import 'package:brightcodelab/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeScreenKnotsWidget extends StatelessWidget {
  // final String imgUrl;
  HomeScreenModel object_homeScreenModel = HomeScreenModel();

  CustomHomeScreenKnotsWidget({required this.object_homeScreenModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "${object_homeScreenModel.imgUrl}",
            scale: 2,
          ),
          SizedBox(
            height: 16.h,
          ),
          Divider(),
        ],
      ),
    );
  }
}
