import 'package:flutter/material.dart';
import 'package:projeto/model/apimodel.dart';
import 'package:projeto/screens/cadastro_tela.dart';
import 'job_detail_tela.dart';

class JobListViewPage extends StatelessWidget {
  const JobListViewPage({super.key});

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
      body: ListView.builder(
          itemCount: Job().jobsList.length,
          itemBuilder: (context, index) {
            Job jobs = Job().jobsList[index];
            return Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                tileColor: const Color.fromARGB(179, 202, 199, 199),
                textColor: Colors.black,
                title: Text(jobs.search ?? "ERRO"),
                subtitle: Text(jobs.phone ?? "ERRO"),
                trailing: const Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JobDetailPage(jobsList[index])));
                },
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Form()));
        },
        label: const Text('CADASTRO'),
        backgroundColor: Colors.lightBlue,
        icon: const Icon(Icons.add),
      ),
    );
  }
}
