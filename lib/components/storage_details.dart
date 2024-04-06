import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Summary Data",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/icon3.svg",
            title: "TA Feed/Month",
            amountOfFiles: "17.744 Litter",
            numOfFiles: 1328,
            color: Color.fromARGB(255, 21, 145, 247),
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/icon3.svg",
            title: "AC Feed/Month",
            amountOfFiles: "7.532 Litter",
            numOfFiles: 1328,
            color: Color(0xFFA4CDFF),
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/icon3.svg",
            title: "FA Feed/Month",
            amountOfFiles: "0 Litter",
            numOfFiles: 1328,
            color: Color.fromARGB(255, 210, 229, 0),
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknown",
            amountOfFiles: "0 Litter",
            numOfFiles: 140,
            color: Color.fromARGB(255, 255, 167, 45),
          ),
        ],
      ),
    );
  }
}
