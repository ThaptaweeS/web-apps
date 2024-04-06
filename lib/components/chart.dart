import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: paiChartSelectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: defaultPadding),
                Text(
                  "${calculateTotalValue()}"
                  "\n\n",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                Text(
                  "Litter",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                // Text("of 100 Litter")
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to calculate the total value
  double calculateTotalValue() {
    double totalValue = 0;
    for (var data in paiChartSelectionData) {
      totalValue += data.value;
    }
    return totalValue;
  }
}

// Modify values dynamically based on your data
List<PieChartSectionData> paiChartSelectionData = [
  PieChartSectionData(
    color: primaryColor,
    value: 17.744,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 7.532,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    color: Color(0xFFFFCF26),
    value: 0,
    showTitle: false,
    radius: 19,
  ),
  PieChartSectionData(
    color: Color(0xFFEE2727),
    value: 0,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 0,
    showTitle: false,
    radius: 13,
  ),
];
