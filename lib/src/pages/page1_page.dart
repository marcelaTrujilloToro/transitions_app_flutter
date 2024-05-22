import 'package:flutter/material.dart';
import 'package:transition_app/src/pages/page2_page.dart';

class Page1Page extends StatelessWidget {
  const Page1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, _createRoute());
        },
        child: const Icon(Icons.home_work_rounded),
      ),
      body: const Center(
        child: Text('Página 1'),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) =>
          const Page2Page(),
      transitionDuration: const Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);

        return SlideTransition(
          position:
              Tween<Offset>(begin: const Offset(0.5, 1.0), end: Offset.zero)
                  .animate(curvedAnimation),
          child: child,
        );
      },
    );
  }
}
