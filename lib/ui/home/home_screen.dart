// ignore_for_file: use_key_in_widget_constructors

import 'package:brightcodelab/core/constant/string.dart';
import 'package:brightcodelab/customWidgets/home_screen.dart';
import 'package:brightcodelab/ui/home/home_view_model.dart';
import 'package:brightcodelab/ui/knots/knots_screen.dart';
import 'package:brightcodelab/ui/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeScreenVeiwModel(),
        child: Consumer<HomeScreenVeiwModel>(
            builder: (context, model, child) => Scaffold(

                ///
                /// App Bar
                ///
                appBar: _appBar(context),

                ///
                /// Start Body
                ///
                body: Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                  ),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: model.listhomeScreen.length,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => KnotsScreen(),
                                    ));
                              },
                              child: CustomHomeScreenKnotsWidget(
                                  object_homeScreenModel:
                                      model.listhomeScreen[index]),
                            ),
                          )),
                ))));
  }
}

///
/// App Bar
///

_appBar(context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.blue,
    title: const Text(
      "App Name",
      style: TextStyle(color: Colors.white),
    ),
    actions: [
      IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingsScreen()));
          },
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
