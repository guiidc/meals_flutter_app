import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  static const routerName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildSwitchListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: (value) => updateValue(value),
      activeColor: Theme.of(context).colorScheme.primary,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      drawer: const MainDrawer(),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Text('Adjust your meal selection.',
              style: Theme.of(context).textTheme.headline6),
        ),
        Expanded(
          child: ListView(
            children: [
              _buildSwitchListTile(
                'Gluten-free',
                'Only include gluten-free meals.',
                _glutenFree,
                (value) {
                  setState(() {
                    _glutenFree = value;
                  });
                },
              ),
              _buildSwitchListTile(
                'Lactose-free',
                'Only include lactose-free meals.',
                _lactoseFree,
                (value) {
                  setState(() {
                    _lactoseFree = value;
                  });
                },
              ),
              _buildSwitchListTile(
                'Vegetarian-food',
                'Only include vegetarian meals.',
                _vegetarian,
                (value) {
                  setState(() {
                    _vegetarian = value;
                  });
                },
              ),
              _buildSwitchListTile(
                'Vegan-food',
                'Only include vegan meals.',
                _vegan,
                (value) {
                  setState(() {
                    _vegan = value;
                  });
                },
              ),
            ],
          ),
        )
      ]),
    );
  }
}
