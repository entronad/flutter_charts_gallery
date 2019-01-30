import 'package_list/package_list.dart';
import 'demos/charts_flutter/main.dart' as charts_flutter;
import 'demos/flutter_charts/main.dart' as flutter_charts;
import 'demos/fcharts/main.dart' as fcharts;
import 'demos/flutter_circular_chart/main.dart' as flutter_circular_chart;

final routes = {
  '/': (constext) => PackageList(),
  '/demos/charts_flutter': (constext) => charts_flutter.entry(),
  '/demos/flutter_charts': (constext) => flutter_charts.entry(),
  '/demos/fcharts': (constext) => fcharts.entry(),
  '/demos/flutter_circular_chart': (constext) => flutter_circular_chart.entry(),
};
