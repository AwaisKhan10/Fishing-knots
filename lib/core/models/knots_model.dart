import 'package:brightcodelab/core/models/knots_detail_model.dart';

class KnotsModel {
  String? id;
  String? name;
  String? imgUrl;
  List<KnotsDetailModel>? knotslist;
  KnotsModel({this.imgUrl, this.name, this.id, this.knotslist});
}
