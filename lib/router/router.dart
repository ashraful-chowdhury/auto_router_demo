import 'package:auto_route/annotations.dart';
import 'package:auto_router_demo/screens/bottom_nav_page.dart';
import 'package:auto_router_demo/screens/home_page.dart';
import 'package:auto_router_demo/screens/profile_page.dart';
import 'package:auto_router_demo/screens/second_page.dart';
import 'package:auto_router_demo/screens/settings_page.dart';
import 'package:auto_router_demo/screens/third_page.dart';

@MaterialAutoRouter(
  // replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(
      page: BottomNavPage,
      children: [
        AutoRoute(page: ProfilePage),
        AutoRoute(page: SettingsPage),
      ],
    ),
    AutoRoute(page: SecondPage),
    AutoRoute(page: ThirdPage),
  ],
)
class $AppRouter {}
