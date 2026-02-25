import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: ReorderableExample()));

class ReorderableExample extends StatefulWidget {
  const ReorderableExample({super.key});

  @override
  State<ReorderableExample> createState() => _ReorderableExampleState();
}

class _ReorderableExampleState extends State<ReorderableExample> {
  final List<String> _items = ['2', '5', '1', '4', '3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Order numbers from lowest to highest',
          style: TextStyle(
            fontSize: 18
          ),
          )
      ),
      body: ReorderableListView(
        children: [
          for (int index = 0; index < _items.length; index++)
            ListTile(
              key: Key('$index'), // Keys are required for reordering
              title: Text(_items[index]),
            ),
        ],
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) newIndex -= 1;
            final String item = _items.removeAt(oldIndex);
            _items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
