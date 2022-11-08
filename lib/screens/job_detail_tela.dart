import 'package:flutter/material.dart';
import '../model/apimodel.dart';

class JobDetail extends StatelessWidget {
  final Job jobs;

  const JobDetail(this.jobs, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(179, 202, 199, 199),
        title: const Text(
          'JOBSWAY',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text(
                    jobs.search ?? "ERRO",
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 23.0),
                  )),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  jobs.details ?? "ERRO",
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 15.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  jobs.phone ?? "ERRO",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 15.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
