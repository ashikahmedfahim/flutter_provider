import 'package:flutter/material.dart';
import 'package:flutter_provider/data_provider.dart';
import 'package:flutter_provider/view_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Provider.of<DataProvider>(context, listen: false)
                      .incrementCounter();
                },
                child: const Text("Increment")),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ViewScreen()),
                );
              },
              child: const Text("Go to View Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
