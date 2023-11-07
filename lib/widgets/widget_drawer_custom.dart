import 'package:flutter/material.dart';

class WidgetDrawerCustom extends StatefulWidget {
  const WidgetDrawerCustom({super.key});

  @override
  State<WidgetDrawerCustom> createState() => _WidgetDrawerCustomState();
}

class _WidgetDrawerCustomState extends State<WidgetDrawerCustom> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.indigo,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Item 1'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Item 2'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Item 3'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Item 4'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Item 5'),
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.only(top: 280),
          child: ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Sair'),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
