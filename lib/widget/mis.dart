import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Mis extends StatelessWidget {
  const Mis({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MIS Menu"),),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            EntryItem(data[index]),
        itemCount: data.length,
      ),
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

// Data to display.
const List<Entry> data = <Entry>[
  Entry(
    'First Assessment Mark',
    <Entry>[
      Entry('First Semester'),
      Entry('Second Semester'),
      Entry('Third Semester'),
      Entry('Fourth Semester'),
      Entry('Fifth Semester'),
      Entry('Sixth Semester'),
      Entry('Seventh Semester'),
      Entry('Eighth Semester'),
    ],
  ),
  Entry(
    'Second Assessment Mark',
    <Entry>[
      Entry('First Semester'),
      Entry('Second Semester'),
      Entry('Third Semester'),
      Entry('Fourth Semester'),
      Entry('Fifth Semester'),
      Entry('Sixth Semester'),
      Entry('Seventh Semester'),
      Entry('Eighth Semester'),
    ],
  ),
  Entry(
    'Internal Mark',
    <Entry>[
      Entry('First Semester'),
      Entry('Second Semester'),
      Entry('Third Semester'),
      Entry('Fourth Semester'),
      Entry('Fifth Semester'),
      Entry('Sixth Semester'),
      Entry('Seventh Semester'),
      Entry('Eighth Semester'),
    ],
  ),
  Entry(
    'Feedback Form',
    <Entry>[
      Entry('First Semester'),
      Entry('Second Semester'),
      Entry('Third Semester'),
      Entry('Fourth Semester'),
      Entry('Fifth Semester'),
      Entry('Sixth Semester'),
      Entry('Seventh Semester'),
      Entry('Eighth Semester'),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;
  Widget _tiles(Entry i) {
    return InkWell(
      onTap: () {
        print(i.title);
      },
      child: Container(
        child: Text(
          i.title,
        ),
        width: 1000,
        height: 30.0,
        margin:
            const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0, bottom: 0.0),
        padding: const EdgeInsets.only(top: 5.0, left: 10.0),
      ),
    );
  }

  Widget _buildTiles(Entry root, BuildContext context) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_tiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry, context);
  }
}
