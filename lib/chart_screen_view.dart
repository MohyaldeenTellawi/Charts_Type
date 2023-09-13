import 'package:flutter/material.dart';
import 'package:testcartapp/bar_chart.dart';
import 'package:testcartapp/line_chart.dart';
import 'package:testcartapp/pie_chart.dart';

import 'radar_chart.dart';
import 'scatter_chart.dart';

class ChartScreenView extends StatefulWidget {
  const ChartScreenView({super.key});

  @override
  State<ChartScreenView> createState() => _ChartScreenViewState();
}

class _ChartScreenViewState extends State<ChartScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Charts'),
      ),
      body: SingleChildScrollView(child: content()),
    );
  }

  Widget content() {
    return Column(
      children: [
        const SizedBox(height: 10),
        title('Line Chart'),
        const SizedBox(
          child: LineChartWidget(),
        ),
        const Divider(),
        title('Bar Chart'),
        const SizedBox(
          child: BarChartWidget(),
        ),
        const Divider(),
        title('Pie Chart'),
        const SizedBox(
          child: PieChartWidget(),
        ),
        const Divider(),
        title('Radar Chart'),
        const SizedBox(
          child: RadarChartWidget(),
        ),
        const Divider(),
        title('Scatter Chart'),
        const SizedBox(
          child: ScatterChartWidget(),
        )
      ],
    );
  }

  Widget title(String title) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
