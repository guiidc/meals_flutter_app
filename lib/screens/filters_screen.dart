import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  static const routerName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: const MainDrawer(),
      body: const Center(child: Text('Your Filters!')),
    );
  }
}
