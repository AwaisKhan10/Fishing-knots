// ignore_for_file: use_key_in_widget_constructors

import 'package:brightcodelab/core/constant/colors.dart';
import 'package:brightcodelab/core/constant/string.dart';
import 'package:brightcodelab/customWidgets/knots_reuse.dart';
import 'package:brightcodelab/ui/knots/knots_view_model.dart';
import 'package:brightcodelab/ui/knots_details/knots_detail_screen.dart';
import 'package:brightcodelab/ui/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class KnotsScreen extends StatelessWidget {
  String? image;
  KnotsScreen({required this.image});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KnotsViewModel(),
      child: Consumer<KnotsViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// App Bar
          ///
          appBar: _appBar(context, image: image),

          ///
          /// Start Body
          ///
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 30),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.2),
              itemCount: model.knotsList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => KnotsDetailScreen(
                            knotsModel: model.knotsList[index],
                            // index: index,
                          ),
                        ));
                  },
                  child: KnotsReuse(
                    knotsModel: model.knotsList[index],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

_appBar(context, {required String? image}) {
  return AppBar(
    centerTitle: false,
    backgroundColor: Colors.blue,
    title: Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Image.asset(
        "$image",
        scale: 3,
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {
            _showSortDialog(context); // Show the filter dialog
          },
          icon: Image.asset(
            "$staticAssets/sort.png",
            color: whiteColor,
          )),
      IconButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SettingsScreen()));
        },
        icon: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      )
    ],
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back,
        color: whiteColor,
        size: 25.sp,
      ),
    ),
  );
}

/// Function to show sorting dialog
void _showSortDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Sort'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Overall ranking',
              style: TextStyle(fontWeight: FontWeight.bold)),
          RadioListTile(
            value: 1,
            groupValue: 1, // Update with ViewModel state
            onChanged: (val) {
              Navigator.pop(context);
            },
            title: const Text('Overall ranking'),
          ),
          const SizedBox(height: 10),
          const Text('Fishing line strength',
              style: TextStyle(fontWeight: FontWeight.bold)),
          RadioListTile(
            value: 2,
            groupValue: 1, // Update with ViewModel state
            onChanged: (val) {
              Navigator.pop(context);
            },
            title: const Text('Fluorocarbon line'),
          ),
          RadioListTile(
            value: 3,
            groupValue: 1, // Update with ViewModel state
            onChanged: (val) {
              Navigator.pop(context);
            },
            title: const Text('Monofilament line'),
          ),
          RadioListTile(
            value: 4,
            groupValue: 1, // Update with ViewModel state
            onChanged: (val) {
              Navigator.pop(context);
            },
            title: const Text('Braided line'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
