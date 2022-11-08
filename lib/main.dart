import 'package:flutter/material.dart';
import 'screens/job_listview_tela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'JOBSWAY',
      home: JobListViewPage(),
    );
  }
}
