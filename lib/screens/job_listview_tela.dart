import 'package:flutter/material.dart';
import 'package:projeto/model/apimodel.dart';
import 'package:projeto/screens/cadastro_tela.dart';
import 'job_detail_tela.dart';

class JobListViewPage extends StatelessWidget {
  const JobListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Job job = Job();
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
          itemCount: job.jobsList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                tileColor: const Color.fromARGB(179, 202, 199, 199),
                textColor: Colors.black,
                title: Text(job.search ?? "ERRO"),
                subtitle: Text(job.phone ?? "ERRO"),
                trailing: const Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JobDetailpage(
                        jobs: job.jobsList[index],
                      ),
                    ),
                  );
                },
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FormPage()));
        },
        label: const Text('CADASTRO'),
        backgroundColor: Colors.lightBlue,
        icon: const Icon(Icons.add),
      ),
    );
  }
}
