import 'package:arknights_wiki/views/home_screen.dart';
import 'package:arknights_wiki/views/login_screen.dart';
import 'package:arknights_wiki/views/register_screen.dart';
import 'package:arknights_wiki/views/splash_screen.dart';
import 'package:arknights_wiki/views/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routers {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    routes: <RouteBase>[
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        redirect: (context, state) {
          if (FirebaseAuth.instance.currentUser == null){
            return '/welcome';
          }
          return null;
        },
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: '/welcome',
        name: 'welcome',
        redirect: (context, state) {
          if (FirebaseAuth.instance.currentUser != null){
            return '/home';
          }
          return null;
        },
        builder: (BuildContext context, GoRouterState state) {
          return const WelcomeScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'login',
            name: 'login',
            builder: (BuildContext context, GoRouterState state) {
              return const LoginScreen();
            },
          ),
          GoRoute(
            path: 'register',
            name: 'register',
            builder: (BuildContext context, GoRouterState state) {
              return const RegisterScreen();
            },
          )
        ],
      ),
    ],
    // redirect: (context, state) {
    //   if (FirebaseAuth.instance.currentUser != null) {
    //     return state.subloc == '/welcome' ? null : '/home';
    //   } else {
    //     return state.subloc == '/home' ? null : '/welcome';
    //   }
    // },
  );
}
