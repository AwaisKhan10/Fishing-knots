import 'package:brightcodelab/core/constant/string.dart';
import 'package:brightcodelab/core/models/knots_detail_model.dart';
import 'package:brightcodelab/core/models/knots_model.dart';
import 'package:brightcodelab/core/other/base_veiw_model.dart';

class KnotsViewModel extends BaseViewModel {
  List<KnotsModel> knotsList = [
    KnotsModel(
        id: '1',
        imgUrl: "$staticAssets/knot_d.png",
        name: "Improved clinch knot",
        knotslist: [
          KnotsDetailModel(
              id: '1',
              title: 'Improved clinch knot',
              description:
                  'Safety starts with understanding how developers collect and share your data. Data privacy and security practices may vary based on your use, region and age. The developer provided this information and may update it over time.',
              img: '$staticAssets/knot_detail1.png'),
          KnotsDetailModel(
              id: '1',
              title: 'Subscription - \n <<Premium>>',
              description: '',
              img: ''),

          ///
          /// Without title and description
          ///
          KnotsDetailModel(
              id: '1',
              title: '',
              description: '',
              img: '$staticAssets/knot_d2.png'),
        ]),
    KnotsModel(
        imgUrl: "$staticAssets/knot_d2.png",
        name: "Palomar knot",
        knotslist: [
          KnotsDetailModel(
              id: '1',
              title: 'Palomar knot',
              description:
                  'Safety starts with understanding how developers collect and share your data. Data privacy and security practices may vary based on your use, region and age. The developer provided this information and may update it over time.',
              img: '$staticAssets/knot_detail1.png'),
          KnotsDetailModel(
              id: '1',
              title: 'Subscription - \n <<Premium>>',
              description: '',
              img: ''),

          ///
          /// Without title and description
          ///
          KnotsDetailModel(
              id: '1',
              title: '',
              description: '',
              img: '$staticAssets/knot_d2.png'),
        ]),
    KnotsModel(imgUrl: "$staticAssets/knot_d3.png", name: "Blood knot"),
    KnotsModel(imgUrl: "$staticAssets/knot_d4.png", name: "Berkley Braid Knot"),
    KnotsModel(
        imgUrl: "$staticAssets/knot_d5.png",
        name: "Uni knot",
        knotslist: [
          KnotsDetailModel(
              id: '1',
              title: 'Uni knot',
              description:
                  'Safety starts with understanding how developers collect and share your data. Data privacy and security practices may vary based on your use, region and age. The developer provided this information and may update it over time.',
              img: '$staticAssets/knot_detail1.png'),
          KnotsDetailModel(
              id: '1',
              title: 'Subscription - \n <<Premium>>',
              description: '',
              img: ''),
        ]),
    KnotsModel(imgUrl: "$staticAssets/knot_d6.png", name: "Albright knot"),
    KnotsModel(imgUrl: "$staticAssets/knot_d7.png", name: "Surgeons knot"),
    KnotsModel(imgUrl: "$staticAssets/knot_d8.png", name: "Trilene knot"),
    KnotsModel(imgUrl: "$staticAssets/knot_d4.png", name: "Arbor knot"),
    KnotsModel(imgUrl: "$staticAssets/knot_d2.png", name: "Arbor knot"),
  ];

  int currentIndex = 0;

  void updateCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners(); // Notify listeners to update the UI
  }
}
