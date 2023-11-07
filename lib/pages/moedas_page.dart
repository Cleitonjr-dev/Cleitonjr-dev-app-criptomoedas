import 'package:flutter/material.dart';

import '../widgets/widget_drawer_custom.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        surfaceTintColor: Colors.indigo,
        width: 185,
        child: WidgetDrawerCustom(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          'Cripto Moedas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(),
    );
  }
}
