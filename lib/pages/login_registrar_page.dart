import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/login_controller.dart';

class LoginRegistrarPage extends StatefulWidget {
  const LoginRegistrarPage({Key? key, required this.controller})
      : super(key: key);

  final LoginController controller;

  @override
  State<LoginRegistrarPage> createState() => _LoginRegistrarPageState();
}

class _LoginRegistrarPageState extends State<LoginRegistrarPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<LoginController>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          children: [
            TextFormField(
              controller: controller.createName,
              decoration: const InputDecoration(
                labelText: 'Nome',
                prefixIcon: Icon(
                  Icons.person,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            TextFormField(
              controller: controller.createEmail,
              decoration: const InputDecoration(
                labelText: 'E-mail',
                prefixIcon: Icon(
                  Icons.mail_outline_sharp,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            TextFormField(
              controller: controller.createPassword,
              decoration: const InputDecoration(
                labelText: 'Senha',
                prefixIcon: Icon(
                  Icons.lock_outline,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            TextFormField(
              controller: controller.confirmCreatePassword,
              decoration: const InputDecoration(
                labelText: 'Confirmar Senha',
                prefixIcon: Icon(
                  Icons.lock_outline,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.grey[50],
                ),
                child: const Text(
                  'Inscrever-se',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Inter',
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Você já tem uma conta?',
                  style: TextStyle(fontSize: 15),
                ),
                TextButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    controller.toggleForm();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
