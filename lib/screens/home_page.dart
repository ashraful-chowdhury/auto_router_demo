import 'package:auto_route/auto_route.dart';
import 'package:auto_router_demo/router/router.gr.dart';
import 'package:auto_router_demo/screens/bottom_nav_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.router.push(
                  const BottomNavPageRoute(),
                );
              },
              child: const Text('Bottom nav ex'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.router.push(
                  const SecondPageRoute(),
                );
              },
              child: const Text('Second Page'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.router.push(
                  ThirdPageRoute(title: 'Hello Third Page'),
                );
              },
              child: const Text('Third Page'),
            ),
          ],
        ),
      ),
    );
  }
}
