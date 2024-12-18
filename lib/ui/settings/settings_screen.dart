import 'package:brightcodelab/core/constant/colors.dart';
import 'package:brightcodelab/core/constant/string.dart';
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
          body: Column(
            children: [],
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
          color: blaclColor,
        )),
  );
}
