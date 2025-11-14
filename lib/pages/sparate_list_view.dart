import 'package:flutter/material.dart';

class SparateListViewPage extends StatelessWidget {
  const SparateListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Separated Vertical'),
      ),
      body: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 1,
            height: 16,
          );
        },


        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text('Item $index'),
            subtitle: Text('Ini adalah item ke-$index di ListView.separated'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Kamu menekan item $index')),
              );
            },
          );
        },
      ),
    );
  }
}
