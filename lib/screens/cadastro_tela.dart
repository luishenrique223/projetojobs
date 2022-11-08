import 'package:flutter/material.dart';
import 'package:projeto/model/apimodel.dart';
import 'package:projeto/screens/job_listview_tela.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

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
      body: const CadastroPage(),
    );
  }
}

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    final TextEditingController detailsController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'POR FAVOR INSIRA INFORMAÇÃO NO CAMPO';
                    }
                    return null;
                  },
                  controller: searchController,
                  cursorColor: Colors.black,
                  maxLines: 2,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFCE4EC),
                      labelStyle: TextStyle(color: Color(0xFF000000)),
                      labelText: 'search',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF000000)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF000000)),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF000000)),
                      )))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'POR FAVOR INSIRA INFORMAÇÃO NO CAMPO';
                    }
                    return null;
                  },
                  controller: detailsController,
                  cursorColor: Colors.black,
                  maxLines: 2,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFCE4EC),
                      labelStyle: TextStyle(color: Color(0xFF000000)),
                      labelText: 'details',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF000000)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF000000)),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF000000)),
                      )))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'POR FAVOR INSIRA INFORMAÇÃO NO CAMPO';
                    }
                    return null;
                  },
                  controller: phoneController,
                  cursorColor: Colors.black,
                  maxLines: 2,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFCE4EC),
                      labelStyle: TextStyle(color: Color(0xFF000000)),
                      labelText: 'phone',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF000000)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF000000)),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF000000)),
                      )))),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Job().jobsList.add(Job(
                      search: searchController.text,
                      details: detailsController.text,
                      phone: phoneController.text));

                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const JobListViewPage(),
                  ));
                  setState(() {});
                },
                child: const Text('Enviar'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
