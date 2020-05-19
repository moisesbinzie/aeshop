import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

class HomePageCategory extends StatelessWidget {
  final categoryName;
  final categoryImageName;
  final navigatorName;

  HomePageCategory(
      {@required this.categoryImageName,
      @required this.categoryName,
      @required this.navigatorName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '$navigatorName');
      },
      child: Column(
        children: <Widget>[
          SvgPicture.asset(
            'assets/$categoryImageName.svg',
            height: 40,
          ),
          Text(
            categoryName,
            style: Constants.style,
          ),
        ],
      ),
    );
  }
}
