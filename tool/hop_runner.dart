library hop_runner;

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main() {

  List pathList = [
    'lib/sqladmin_v1beta3_api_browser.dart',
    'lib/sqladmin_v1beta3_api_console.dart',
    'lib/sqladmin_v1beta3_api_client.dart'
  ];

  addTask('docs', createDartDocTask(pathList, linkApi: true));

  addTask('analyze', createAnalyzerTask(pathList));

  runHop();
}