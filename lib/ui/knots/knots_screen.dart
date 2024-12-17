// ignore_for_file: use_key_in_widget_constructors

import 'package:brightcodelab/core/constant/string.dart';
import 'package:brightcodelab/customWidgets/knots_reuse.dart';
import 'package:brightcodelab/ui/knots/knots_view_model.dart';
import 'package:brightcodelab/ui/knots_details/knots_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KnotsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KnotsViewModel(),
      child: Consumer<KnotsViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// App Bar
          ///
          appBar: _appBar(),

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

_appBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.blue,
    title: const Text(
      "App Name",
      style: TextStyle(color: Colors.white),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            color: Colors.white,
          )),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      )
    ],
    leading: IconButton(
        onPressed: () {},
        icon: Image.asset(
          "$staticAssets/menu.png",
          scale: 3,
        )),
  );
}
