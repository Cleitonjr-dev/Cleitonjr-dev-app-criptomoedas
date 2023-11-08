// ignore_for_file: avoid_print
import 'package:cripto_moedas/repositories/moeda_repository.dart';
import 'package:flutter/material.dart';
import '../models/moeda_model.dart';
import '../widgets/widget_drawer_custom.dart';
import 'package:intl/intl.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  final tabela = MoedaRepository.tabela;

  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

  List<Moeda> selecionadas = [];

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
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            leading: SizedBox(
              width: 40,
              child: Image.asset(tabela[moeda].icone),
            ),
            title: Text(
              tabela[moeda].nome,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Text(
              real.format(tabela[moeda].preco),
            ),
            selected: selecionadas.contains(tabela[moeda]),
            selectedTileColor: Colors.indigo[50],
            onLongPress: () {
              setState(() {
                (selecionadas.contains(tabela[moeda]))
                  ? selecionadas.remove(tabela[moeda])
                  : selecionadas.add(tabela[moeda]);
              print(tabela[moeda].nome);
              });
              
            },
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: tabela.length,
      ),
    );
  }
}
