import 'package:flutter/material.dart';
import 'package:login/viewmodels/login_viewmodel.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<LoginViewModel>(context);

    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: vm.updateUsername,
            decoration: InputDecoration(labelText: 'Usuário'),
          ),
          ElevatedButton(
            onPressed: vm.isValid() ? () => print('Login OK') : null,
            child: Text('Entrar'),
          )
        ],
      ),
    );
  }
}
