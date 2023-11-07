import 'package:cripto_moedas/repositories/moeda_repository.dart';
import 'package:flutter/material.dart';

import '../widgets/widget_drawer_custom.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabela = MoedaRepository.tabela;

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
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
            leading: Image.asset(tabela[moeda].icone),
            title: Text(tabela[moeda].nome),
            trailing: Text(
              tabela[moeda].preco.toString(),
            ),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: tabela.length,
      ),
    );
  }
}
