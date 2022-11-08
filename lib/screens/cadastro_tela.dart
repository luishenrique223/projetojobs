import 'package:flutter/material.dart';
import 'package:projeto/model/apimodel.dart';

class FormPage extends StatelessWidget {
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
    final TextEditingController search = TextEditingController();
    final TextEditingController details = TextEditingController();
    final TextEditingController phone = TextEditingController();
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
                  controller: search,
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
                  controller: details,
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
                  controller: phone,
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
                      search: search.text,
                      details: details.text,
                      phone: phone.text));
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
