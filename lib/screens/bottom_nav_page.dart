import 'package:auto_route/auto_route.dart';
import 'package:auto_router_demo/router/router.gr.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatelessWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_,tabsRouter){
        return AppBar(
          title: Text(tabsRouter.current.name),
        );
      },
      routes: const [
        ProfilePageRoute(),
        SettingsPageRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
        );
      },
    );
  }
}
