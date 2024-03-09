import 'package:arknights_wiki/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (!state.isLoading && state.userData != null) {
          context.go('/home');
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Fill your personal data below",
                ),
                textField(
                    title: "Email",
                    controller: emailController,
                    obscureText: false),
                textField(
                    title: "Password",
                    controller: passController,
                    obscureText: true),
                BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                  return Text(
                    state.errorMessage,
                    style: const TextStyle(
                      color: Colors.redAccent,
                    ),
                  );
                })
              ],
            ),
          ),
        ),
        floatingActionButton: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: state.isLoading
                  ? const CircularProgressIndicator()
                  : FloatingActionButton(
                      onPressed: () {
                        final email = emailController.text;
                        final password = passController.text;

                        context.read<AuthBloc>().add(
                            AuthRegister(email: email, password: password));
                      },
                      child: const Icon(Icons.arrow_forward)),
            );
          },
        ),
      ),
    );
  }

  Widget textField(
      {required String title,
      required TextEditingController controller,
      required bool obscureText}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          labelText: title,
        ),
        controller: controller,
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }
}
