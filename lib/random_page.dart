// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_foundation/randomizer_page.dart';
import 'package:flutter_foundation/range_form.dart';

class RandomPage extends StatefulWidget {
  const RandomPage({Key? key}) : super(key: key);

  @override
  State<RandomPage> createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {
  final formKey = GlobalKey<FormState>();
  int _min = 0;
  int _max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Range'),
      ),
      body: RangeSelectorForm(
          formKey: formKey,
          minValueSetter: (value) => _min = value,
          maxValueSetter: (value) => _max = value),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RandomizerPage(
                  min: _min,
                  max: _max,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
