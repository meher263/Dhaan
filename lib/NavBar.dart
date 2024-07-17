import 'package:dice/main.dart';
import 'package:dice/pages/about%20us.dart';
import 'package:dice/pages/settings.dart';
import 'package:dice/pages/terms%20and%20conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.close),
              onTap: () {
                Clipboard.setData(ClipboardData());
                HapticFeedback.vibrate();
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.home_filled),
              title: const Text('Home'),
              onTap: () => selectedItem(context, 0),
            ),
            ListTile(
              leading: const Icon(Icons.volunteer_activism),
              title: const Text('Donate'),
              onTap: () => selectedItem(context, 1),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => selectedItem(context, 2),
            ),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text('Terms And Conditions'),
              onTap: () => selectedItem(context, 3),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('About Us'),
              onTap: () => selectedItem(context, 4),
            ),
          ],
        ),
      ),
    );
  }
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const HomeApp(),
      ));
      break;

    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const DonatePage(),
      ));
      break;

    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const SettingsPage(),
      ));
      break;

    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const TermsAndConditions(),
      ));
      break;

    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const AboutUs(),
      ));
      break;
  }
}
