import 'package:brightcodelab/core/constant/colors.dart';
import 'package:brightcodelab/core/constant/string.dart';
import 'package:brightcodelab/core/constant/text_style.dart';
import 'package:brightcodelab/core/models/knots_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KnotsDetailScreen extends StatelessWidget {
  final KnotsModel? knotsModel;

  const KnotsDetailScreen({
    super.key,
    required this.knotsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///
      /// App Bar
      ///
      appBar: _appBar(knotsModel, context),

      ///
      /// Start Body with CarouselSlider
      ///
      body: knotsModel?.knotslist == null || knotsModel!.knotslist!.isEmpty
          ? const Center(
              child: Text(
                "No details available.",
                style: TextStyle(color: Colors.black),
              ),
            )
          : CarouselSlider.builder(
              options: CarouselOptions(
                viewportFraction: 0.97,
                height: MediaQuery.of(context).size.height * 0.9,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: false,
              ),
              itemCount: knotsModel!.knotslist!.length,
              itemBuilder: (context, index, realIndex) {
                final detail = knotsModel!.knotslist![index];
                return Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(left: 5.0, right: 5.0, top: 40),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "${detail.title}" == "Subscription - \n <<Premium>>"
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  detail.title ?? "",
                                  style: style16.copyWith(
                                      color: whiteColor, fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                _rowPrmium(text: 'No Advertising'),
                                _rowPrmium(text: 'Strength graph'),
                                _rowPrmium(text: 'Knots Comparison'),
                                _rowPrmium(text: 'Filter and Storing')
                                // Text(
                                //   detail.title ?? "",
                                //   style: style16.copyWith(color: whiteColor),
                                //   textAlign: TextAlign.center,
                                // ),
                                // Text(
                                //   detail.title ?? "",
                                //   style: style16.copyWith(color: whiteColor),
                                //   textAlign: TextAlign.center,
                                // ),
                              ],
                            )
                          : Text(
                              detail.title ?? "",
                              style: style16.copyWith(color: whiteColor),
                              textAlign: TextAlign.center,
                            ),
                      const SizedBox(height: 16),
                      detail.img!.isNotEmpty
                          ? Image.asset(
                              detail.img!,
                              height: 200,
                              fit: BoxFit.cover,
                            )
                          : const SizedBox(),
                      const SizedBox(height: 16),
                      "${detail.title}" != "Subscription - \n <<Premium>>"
                          ? Text(
                              detail.description ?? "",
                              style: style16.copyWith(color: whiteColor),
                              textAlign: TextAlign.center,
                            )
                          : InkWell(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: borderBlueColor,
                                  borderRadius: BorderRadius.circular(24.r),
                                ),
                                child: Text(
                                  "Premium",
                                  style: style16.copyWith(color: whiteColor),
                                ),
                              ),
                            ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}

/// App Bar with dynamic title based on the current index
PreferredSizeWidget _appBar(KnotsModel? knotsModel, BuildContext context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.blue,
    title: Text(
      knotsModel?.name ?? "Knots Details",
      style: const TextStyle(color: Colors.white),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.favorite,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),
    ],
    leading: IconButton(
      onPressed: () {
        // Handle back navigation
        // Navigator.of(context).pop();
      },
      icon: Image.asset(
        "$staticAssets/menu.png",
        scale: 3,
      ),
    ),
  );
}

_rowPrmium({required String? text}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start, // Center horizontally
    crossAxisAlignment: CrossAxisAlignment.center, // Align items vertically
    children: [
      Icon(
        Icons.circle,
        size: 6.sp,
        color: whiteColor,
      ),
      SizedBox(width: 8.w),
      Text(
        "$text",
        style: style16.copyWith(color: whiteColor),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
