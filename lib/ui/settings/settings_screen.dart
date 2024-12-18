// ignore_for_file: use_key_in_widget_constructors

import 'package:brightcodelab/core/constant/colors.dart';
import 'package:brightcodelab/ui/settings/setting_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsViewModel(),
      child: Consumer<SettingsViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// App Bar
          ///
          appBar: _appBar(context: context),

          ///
          /// Start Body
          ///
          body: const Column(
            children: [
              ListTile(
                leading: Icon(Icons.perm_identity),
                title: Text(
                  "Go Premium",
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text("Language"),
                subtitle: Text("Select language"),
              ),
              ListTile(
                leading: Icon(Icons.brightness_4),
                title: Text("Dark theme"),
                subtitle: Text("Select appearance"),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Rate"),
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
              ),
              ExpansionTile(
                title: Text("Apps"),
                leading: Icon(Icons.app_shortcut_sharp),
              ),
              ListTile(
                leading: Icon(Icons.payment),
                title: Text("Payment and Subscription"),
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text("Privacy Policy"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_appBar({BuildContext? context}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.blue,
    title: const Text(
      "Settings",
      style: TextStyle(color: Colors.white),
    ),
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context!);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: whiteColor,
        )),
  );
}
