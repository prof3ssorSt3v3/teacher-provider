import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.nav, required this.page});
  final Function nav;
  final int page;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.person), label: 'Steve'),
        NavigationDestination(icon: Icon(Icons.verified_user), label: 'Tony'),
        NavigationDestination(icon: Icon(Icons.supervised_user_circle), label: 'Adesh'),
      ],
      selectedIndex: page,
      onDestinationSelected: (int index) {
        nav(index);
      },
    );
  }
}
