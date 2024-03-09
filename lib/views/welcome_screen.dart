import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/arknights_logo.png'),
                  const Text(
                    "Arknights Wiki",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => context.go('/welcome/login'),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 20),
              ),
              child: const Text("Log In"),
            ),
            OutlinedButton(
              onPressed: () => context.go('/welcome/register'),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 20),
              ),
              child: const Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}
