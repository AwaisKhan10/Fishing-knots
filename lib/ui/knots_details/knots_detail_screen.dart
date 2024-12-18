import 'package:brightcodelab/core/constant/colors.dart';
import 'package:brightcodelab/core/constant/string.dart';
import 'package:brightcodelab/core/constant/text_style.dart';
import 'package:brightcodelab/core/models/knots_model.dart';
import 'package:brightcodelab/ui/settings/settings_screen.dart';
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
                  margin: const EdgeInsets.only(left: 5.0, right: 5.0, top: 40),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "${detail.title}" == "Subscription - \n <<Premium>>"
                          ? Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      detail.title ?? "",
                                      style: style16.copyWith(
                                          color: whiteColor, fontSize: 20),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  _rowPrmium(text: 'No Advertising'),
                                  _rowPrmium(text: 'Strength graph'),
                                  _rowPrmium(text: 'Knots Comparison'),
                                  _rowPrmium(text: 'Filter and Storing'),
                                ],
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                detail.title ?? "",
                                style: style16.copyWith(color: whiteColor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                      const SizedBox(height: 16),
                      detail.img!.isNotEmpty
                          ? Padding(
                              padding: const EdgeInsets.all(20),
                              child: Image.asset(
                                detail.img!,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            )
                          : const SizedBox(),
                      const SizedBox(height: 16),
                      "${detail.title}" != "Subscription - \n <<Premium>>"
                          ? Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                detail.description ?? "",
                                style: style16.copyWith(color: whiteColor),
                                textAlign: TextAlign.center,
                              ),
                            )
                          : InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(20),
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
                            ),
                      if (index == 0)
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(6),
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
                                "${knotsModel!.percent} %",
                                style: style16.copyWith(
                                    fontSize: 14.sp, color: whiteColor),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                );
              },
            ),

      bottomNavigationBar: Container(
        height: 120,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "$staticAssets/play.png",
                      scale: 4,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      "Instruction",
                      style: style16,
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "$staticAssets/play.png",
                      scale: 4,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      "Testing",
                      style: style16,
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // First Backward Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.skip_previous,
                      color: Colors.black, size: 30),
                ),
                // Step Backward Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios,
                      color: Colors.black, size: 24),
                ),
                // Play Icon
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.60),
                        shape: BoxShape.circle),
                    child: const Icon(Icons.play_arrow,
                        color: Colors.black, size: 30),
                  ),
                ),
                // Pause Icon
                IconButton(
                  onPressed: () {},
                  icon: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.60),
                          shape: BoxShape.circle),
                      child: const Icon(Icons.pause,
                          color: Colors.black, size: 30)),
                ),
                // Step Forward Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios,
                      color: Colors.black, size: 24),
                ),
                // Last Forward Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.skip_next,
                      color: Colors.black, size: 30),
                ),
              ],
            ),
          ],
        ),
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
          Icons.share,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SettingsScreen()));
        },
        icon: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),
    ],
    leading: IconButton(
      onPressed: () {
        // Handle back navigation
        Navigator.of(context).pop();
      },
      icon: const Icon(
        Icons.arrow_back,
        color: whiteColor,
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
