import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/login_controller.dart';
import 'login_registrar_page.dart';
import 'moedas_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.controller}) : super(key: key);

  final LoginController controller;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<LoginController>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 45),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset('images/logo_bank.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          controller.showLoginForm ? 'Login' : 'Registrar',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 28),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (controller.showLoginForm)
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.username,
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
                        controller: controller.password,
                        obscureText: !controller.isPasswordVisible,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                          ),
                          labelText: 'Senha',
                          border: const OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              controller.togglePasswordVisibility();
                            },
                            child: Icon(
                              controller.isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                // Forgot password screen
                              },
                              child: const Text(
                                'Esqueceu sua senha',
                              ),
                            ),
                          ],
                        ),
                      ),
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
                            'Entrar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Inter',
                            ),
                          ),
                          onPressed: () {
                            if (controller.username.text == 'admin' &&
                                controller.password.text == '123') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MoedasPage(),
                                ),
                              );
                            } else {}
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Não tem uma conta?',
                            style: TextStyle(fontSize: 15),
                          ),
                          TextButton(
                            child: const Text(
                              'Registre-se',
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
              )
            else
              LoginRegistrarPage(controller: controller),
          ],
        ),
      ),
    );
  }
}
