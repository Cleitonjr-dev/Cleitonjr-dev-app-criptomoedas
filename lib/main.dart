import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/login_controller.dart';
import 'pages/login_page.dart';
import 'repositories/favorita_repository.dart'; // Import the FavoritaRepository

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginController>(create: (context) => LoginController()),
        ChangeNotifierProvider<FavoritasRepository>(create: (context) => FavoritasRepository()),
        // Add other providers as needed
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Fix the constructor

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginController>(
      builder: (context, controller, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Cripto Moedas',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            useMaterial3: true,
            iconButtonTheme: IconButtonThemeData(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white), // Fix the icon color
              ),
            ),
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          home: LoginPage(controller: controller),
        );
      },
    );
  }
}
