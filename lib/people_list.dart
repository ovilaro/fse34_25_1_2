import 'package:flutter/material.dart';
import 'package:random_name_generator/random_name_generator.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  final _suggestions = <String>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  final _randomNames = RandomNames(Zone.us);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i >= _suggestions.length) {
          // add 10 more names
          for (var i = 0; i < 10; i++) {
            _suggestions.add(_randomNames.fullName());
          }
        }
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (direction) => direction == DismissDirection.endToStart
              ? debugPrint("Cap a l'esquerra")
              : debugPrint("Cap a la dreta"),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text(_suggestions[i], style: _biggerFont),
                subtitle: Text("Persona: $i"),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  debugPrint("Persona premuda: $i");
                },
              ),
              const Divider(),
            ],
          ),
        );
      },
    );
  }
}
