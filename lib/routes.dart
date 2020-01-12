import 'package_list/package_list.dart';
import 'demos/flutter_echarts/main.dart' as flutter_echarts;
import 'demos/charts_flutter/main.dart' as charts_flutter;
import 'demos/flutter_charts/main.dart' as flutter_charts;
import 'demos/fcharts/main.dart' as fcharts;
import 'demos/flutter_circular_chart/main.dart' as flutter_circular_chart;

final routes = {
  '/': (constext) => PackageList(),
  '/demos/flutter_echarts': (constext) => flutter_echarts.entry(),
  '/demos/charts_flutter': (constext) => charts_flutter.entry(),
  '/demos/flutter_charts': (constext) => flutter_charts.entry(),
  '/demos/fcharts': (constext) => fcharts.entry(),
  '/demos/flutter_circular_chart': (constext) => flutter_circular_chart.entry(),
};
