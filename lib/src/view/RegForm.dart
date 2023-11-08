import 'package:flutter/material.dart';

import '../controller/Controller.dart';
import '../model/Model.dart';

class RegForm extends StatefulWidget {
  // final UserController controller;
  const RegForm({super.key, controller});

  @override
  State<RegForm> createState() => _RegFormState();
}

class _RegFormState extends State<RegForm> {
  final _formKey = GlobalKey<FormState>();
  final _user = User(username: '', email: '', password: '');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(labelText: 'Username'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your username';
              }
              return null;
            },
            onSaved: (value) {
              _user.username = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            onSaved: (value) {
              _user.email = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Password'),
            obscureText: true,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            onSaved: (value) {
              _user.password = value!;
            },
          ),

          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // widget.controller.registerUser(_user);
              }
            },
            child: const Text('Register'),
          ),
        ],
      ),
    );
  }
}
