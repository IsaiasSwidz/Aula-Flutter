import 'package:flutter/material.dart';
import 'package:login/viewmodels/login_viewmodel.dart';
import 'package:login/views/welcome_page.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<LoginViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Nome de usuário',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                viewModel.setUsername(value);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: viewModel.canLogin
                  ? () {
                      viewModel.login().then((_) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomePage(username: viewModel.username),
                          ),
                        );
                      });
                    }
                  : null,
              child: const Text("Entrar"),
            ),
          ],
        ),
      ),
    );
  }
}