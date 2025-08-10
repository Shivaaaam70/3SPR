import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SuccessChart extends StatelessWidget {
  const SuccessChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "This Year Success Rate",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 250,
          child: BarChart(
            BarChartData(
              barGroups: _createBarGroups(),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: true, reservedSize: 40),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 30,
                    getTitlesWidget: (value, meta) {
                      const months = [
                        'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                        'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
                      ];
                      if (value.toInt() >= 0 && value.toInt() < months.length) {
                        return Text(months[value.toInt()]);
                      }
                      return const Text('');
                    },
                  ),
                ),
              ),
              gridData: FlGridData(show: true),
              borderData: FlBorderData(show: false),
              groupsSpace: 15, // space between groups
            ),
          ),
        ),
      ],
    );
  }

  List<BarChartGroupData> _createBarGroups() {
    final dataBlue = [8.0, 9.0, 10.0, 10.0, 14.0, 10.0, 9.0, 10.0, 9.0, 10.0, 12.0, 11.0];
    final dataRed = [4.0, 7.0, 5.0, 9.0, 12.0, 4.0, 8.0, 5.0, 7.0, 2.0, 3.0, 6.0];

    return List.generate(12, (i) {
      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: dataBlue[i],
            color: Colors.blue,
            width: 8,
          ),
          BarChartRodData(
            toY: dataRed[i],
            color: Colors.red,
            width: 8,
          ),
        ],
      );
    });
  }
}
