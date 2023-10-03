import 'package:flutter/material.dart';
import 'package:flutter_provider/data_provider.dart';
import 'package:provider/provider.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<DataProvider>(context).counter;
    return Scaffold(
      body: Center(
        child: Text(
          counter.toString(),
        ),
      ),
    );
  }
}
