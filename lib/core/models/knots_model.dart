import 'package:brightcodelab/core/models/knots_detail_model.dart';

class KnotsModel {
  String? id;
  String? name;
  String? imgUrl;
  String? percent;
  List<KnotsDetailModel>? knotslist;
  KnotsModel({this.imgUrl, this.name, this.id, this.knotslist, this.percent});
}
