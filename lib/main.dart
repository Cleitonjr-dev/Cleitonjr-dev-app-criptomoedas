import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/login_controller.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginController(),
      child: Consumer<LoginController>(
        builder: (context, controller, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Cripto Moedas',
            theme: ThemeData(
              primarySwatch: Colors.indigo,
              useMaterial3: true,
              iconButtonTheme: const IconButtonThemeData(
                style: ButtonStyle(
                  iconColor: MaterialStatePropertyAll(Colors.white),
                ),
              ),
              iconTheme: const IconThemeData(color: Colors.white),
            ),
            home: LoginPage(controller: controller),
          );
        },
      ),
    );
  }
}
