import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ScatterChartWidget extends StatefulWidget {
  const ScatterChartWidget({super.key});
  final blue1 = Colors.cyanAccent;
  final blue2 = Colors.blue;

  @override
  State<ScatterChartWidget> createState() => _ScatterChartWidgetState();
}

class _ScatterChartWidgetState extends State<ScatterChartWidget> {
  final maxX = 50.0;
  final maxY = 50.0;
  final radius = 8.0;

  bool showFlutter = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: GestureDetector(
        onTap: () {
          setState(() {
            showFlutter = !showFlutter;
          });
        },
        child: AspectRatio(
          aspectRatio: 2,
          child: ScatterChart(
            ScatterChartData(
              scatterSpots: showFlutter ? flutterLogoData() : randomLogoData(),
              minX: 0,
              minY: 0,
              maxX: maxX,
              maxY: maxY,
              borderData: FlBorderData(show: false),
              gridData: const FlGridData(show: false),
              titlesData: const FlTitlesData(show: false),
              scatterTouchData: ScatterTouchData(enabled: false),
            ),
            swapAnimationDuration: const Duration(milliseconds: 100),
            swapAnimationCurve: Curves.linear,
          ),
        ),
      ),
    );
  }

  List<ScatterSpot> flutterLogoData() {
    return [
      /// section 1
      ScatterSpot(20, 14.5, color: widget.blue1, radius: radius),
      ScatterSpot(22, 16.5, color: widget.blue1, radius: radius),
      ScatterSpot(24, 18.5, color: widget.blue1, radius: radius),

      ScatterSpot(22, 12.5, color: widget.blue1, radius: radius),
      ScatterSpot(24, 14.5, color: widget.blue1, radius: radius),
      ScatterSpot(26, 16.5, color: widget.blue1, radius: radius),

      ScatterSpot(24, 10.5, color: widget.blue1, radius: radius),
      ScatterSpot(26, 12.5, color: widget.blue1, radius: radius),
      ScatterSpot(28, 14.5, color: widget.blue1, radius: radius),

      ScatterSpot(26, 8.5, color: widget.blue1, radius: radius),
      ScatterSpot(28, 10.5, color: widget.blue1, radius: radius),
      ScatterSpot(30, 12.5, color: widget.blue1, radius: radius),

      ScatterSpot(28, 6.5, color: widget.blue1, radius: radius),
      ScatterSpot(30, 8.5, color: widget.blue1, radius: radius),
      ScatterSpot(32, 10.5, color: widget.blue1, radius: radius),

      ScatterSpot(30, 4.5, color: widget.blue1, radius: radius),
      ScatterSpot(32, 6.5, color: widget.blue1, radius: radius),
      ScatterSpot(34, 8.5, color: widget.blue1, radius: radius),

      ScatterSpot(34, 4.5, color: widget.blue1, radius: radius),
      ScatterSpot(36, 6.5, color: widget.blue1, radius: radius),

      ScatterSpot(38, 4.5, color: widget.blue1, radius: radius),

      /// section 2
      ScatterSpot(20, 14.5, color: widget.blue2, radius: radius),
      ScatterSpot(22, 12.5, color: widget.blue2, radius: radius),
      ScatterSpot(24, 10.5, color: widget.blue2, radius: radius),

      ScatterSpot(22, 16.5, color: widget.blue2, radius: radius),
      ScatterSpot(24, 14.5, color: widget.blue2, radius: radius),
      ScatterSpot(26, 12.5, color: widget.blue2, radius: radius),

      ScatterSpot(24, 18.5, color: widget.blue2, radius: radius),
      ScatterSpot(26, 16.5, color: widget.blue2, radius: radius),
      ScatterSpot(28, 14.5, color: widget.blue2, radius: radius),

      ScatterSpot(26, 20.5, color: widget.blue2, radius: radius),
      ScatterSpot(28, 18.5, color: widget.blue2, radius: radius),
      ScatterSpot(30, 16.5, color: widget.blue2, radius: radius),

      ScatterSpot(28, 22.5, color: widget.blue2, radius: radius),
      ScatterSpot(30, 20.5, color: widget.blue2, radius: radius),
      ScatterSpot(32, 18.5, color: widget.blue2, radius: radius),

      ScatterSpot(30, 24.5, color: widget.blue2, radius: radius),
      ScatterSpot(32, 22.5, color: widget.blue2, radius: radius),
      ScatterSpot(34, 20.5, color: widget.blue2, radius: radius),

      ScatterSpot(34, 24.5, color: widget.blue2, radius: radius),
      ScatterSpot(36, 22.5, color: widget.blue2, radius: radius),

      ScatterSpot(38, 24.5, color: widget.blue2, radius: radius),

      /// section 3
      ScatterSpot(10, 25, color: widget.blue2, radius: radius),
      ScatterSpot(12, 23, color: widget.blue2, radius: radius),
      ScatterSpot(14, 21, color: widget.blue2, radius: radius),

      ScatterSpot(12, 27, color: widget.blue2, radius: radius),
      ScatterSpot(14, 25, color: widget.blue2, radius: radius),
      ScatterSpot(16, 23, color: widget.blue2, radius: radius),

      ScatterSpot(14, 29, color: widget.blue2, radius: radius),
      ScatterSpot(16, 27, color: widget.blue2, radius: radius),
      ScatterSpot(18, 25, color: widget.blue2, radius: radius),

      ScatterSpot(16, 31, color: widget.blue2, radius: radius),
      ScatterSpot(18, 29, color: widget.blue2, radius: radius),
      ScatterSpot(20, 27, color: widget.blue2, radius: radius),

      ScatterSpot(18, 33, color: widget.blue2, radius: radius),
      ScatterSpot(20, 31, color: widget.blue2, radius: radius),
      ScatterSpot(22, 29, color: widget.blue2, radius: radius),

      ScatterSpot(20, 35, color: widget.blue2, radius: radius),
      ScatterSpot(22, 33, color: widget.blue2, radius: radius),
      ScatterSpot(24, 31, color: widget.blue2, radius: radius),

      ScatterSpot(22, 37, color: widget.blue2, radius: radius),
      ScatterSpot(24, 35, color: widget.blue2, radius: radius),
      ScatterSpot(26, 33, color: widget.blue2, radius: radius),

      ScatterSpot(24, 39, color: widget.blue2, radius: radius),
      ScatterSpot(26, 37, color: widget.blue2, radius: radius),
      ScatterSpot(28, 35, color: widget.blue2, radius: radius),

      ScatterSpot(26, 41, color: widget.blue2, radius: radius),
      ScatterSpot(28, 39, color: widget.blue2, radius: radius),
      ScatterSpot(30, 37, color: widget.blue2, radius: radius),

      ScatterSpot(28, 43, color: widget.blue2, radius: radius),
      ScatterSpot(30, 41, color: widget.blue2, radius: radius),
      ScatterSpot(32, 39, color: widget.blue2, radius: radius),

      ScatterSpot(30, 45, color: widget.blue2, radius: radius),
      ScatterSpot(32, 43, color: widget.blue2, radius: radius),
      ScatterSpot(34, 41, color: widget.blue2, radius: radius),

      ScatterSpot(34, 45, color: widget.blue2, radius: radius),
      ScatterSpot(36, 43, color: widget.blue2, radius: radius),

      ScatterSpot(38, 45, color: widget.blue2, radius: radius),
    ];
  }

  List<ScatterSpot> randomLogoData() {
    const blue1Count = 21;
    const blue2Count = 57;
    return List.generate(blue1Count + blue2Count, (i) {
      Color color;
      if (i < blue1Count) {
        color = widget.blue1;
      } else {
        color = widget.blue2;
      }
      return ScatterSpot(
        (Random().nextDouble() * (maxX - 8)) + 4,
        (Random().nextDouble() * (maxY - 8)) + 4,
        color: color,
        radius: (Random().nextDouble() * 16) + 4,
      );
    });
  }
}
