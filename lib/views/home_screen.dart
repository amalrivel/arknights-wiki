import 'package:arknights_wiki/bloc/auth/auth_bloc.dart';
import 'package:arknights_wiki/bloc/operator/operator_bloc.dart';
import 'package:arknights_wiki/bloc/operator_images/operator_images_bloc.dart';
import 'package:arknights_wiki/services/operator_images_services.dart';
import 'package:arknights_wiki/services/operator_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(listener: (context, state) {
          if (state.userData == null) {
            context.go('/welcome');
          }
        }),
        BlocListener<OperatorBloc, OperatorState>(listener: (context, state) {
          if (state is OperatorErrorState) {
            context.read<OperatorBloc>().add(const LoadOperatorEvent());
          }
        }),
        // BlocListener<OperatorImagesBloc, OperatorImagesState>(
        //listener: (context, state) {
        //   if (state is OperatorImagesErrorState) {
        //     const LoadOperatorImagesEvent();
        //   }
        // }),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return Text("Hallo ${state.userData?.email}");
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                context.read<AuthBloc>().add(const AuthLogout());
                context.go('/welcome');
              },
            ),
          ],
        ),
        body: BlocProvider(
            create: (context) => OperatorBloc(OperatorServices())
              ..add(const LoadOperatorEvent()),
            child: BlocBuilder<OperatorBloc, OperatorState>(
                builder: (context, state) {
              if (state is OperatorLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is OperatorErrorState) {
                return Center(
                  child: Text(state.error),
                );
              }
              if (state is OperatorLoadedState) {
                List operatorList = state.operator;
                return ListView.builder(
                    itemCount: operatorList.length,
                    itemBuilder: (context, index) {
                      var operator = operatorList[index];
                      return BlocListener<OperatorImagesBloc,
                          OperatorImagesState>(
                        listener: (context, state) {
                          if (state is OperatorImagesErrorState) {
                            context.read<OperatorImagesBloc>().add(
                                  LoadOperatorImagesEvent(
                                    name: operator.name,
                                  ),
                                );
                          }
                        },
                        child: ListTile(
                          leading: BlocProvider(
                              create: (context) =>
                                  OperatorImagesBloc(OperatorImagesServices())
                                    ..add(LoadOperatorImagesEvent(
                                        name: operator.name)),
                              child: BlocBuilder<OperatorImagesBloc,
                                      OperatorImagesState>(
                                  builder: (context, state) {
                                if (state is OperatorImagesLoadingState) {
                                  return const Icon(Icons.account_circle);
                                }
                                if (state is OperatorImagesErrorState) {
                                  return const Icon(Icons.error);
                                }
                                if (state is OperatorImagesLoadedState) {
                                  List imagesList = state.operatorImages;
                                  return Tab(
                                    icon: Image.network(
                                        imagesList[0].originalLink),
                                  );
                                }
                                return const Icon(Icons.account_circle);
                              })),
                          title: Text(operator.name),
                          subtitle: Text(operator.classes.join(' ')),
                        ),
                      );
                    });
              }
              return Container();
            })),
        // body: Column(
        //   children: [
        //     BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
        //       return AnimatedSwitcher(
        //         duration: const Duration(milliseconds: 250),
        //         child: state.isLoading
        //             ? const CircularProgressIndicator()
        //             : FloatingActionButton(
        //                 onPressed: () {
        //                   context.read<AuthBloc>().add(const AuthLogout());
        //                   context.go('/welcome');
        //                 },
        //                 child: const Text('Log out')),
        //       );
        //     }),
        //     Padding(
        //       padding: const EdgeInsets.all(16.0),
        //       child: BlocBuilder<AuthBloc, AuthState>(
        //         builder: (context, state) {
        //           return state.errorMessage.isNotEmpty
        //               ? Text("Error: ${state.errorMessage}")
        //               : Text(
        //                   "Email: ${state.userData?.email}\nUID: ${state.userData?.uid}");
        //         },
        //       ),
        //     ),

        //   ],
        // ),
      ),
    );
  }
}
