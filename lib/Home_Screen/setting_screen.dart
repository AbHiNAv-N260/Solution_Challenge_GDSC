import 'package:flutter/material.dart';
import 'package:solution_challege/Home_Screen/account_info.dart';
import 'package:solution_challege/Home_Screen/language_selection.dart';
import 'package:solution_challege/Home_Screen/notification_screen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text(
          'Settings',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'App Settings',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 20),
            SettingsTile(
              leadingIcon: Icons.account_circle,
              title: 'Account',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountInfoPage()),
                );
              },
            ),
            SettingsTile(
              leadingIcon: Icons.notifications,
              title: 'Notifications',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
            ),
            SettingsTile(
              leadingIcon: Icons.security,
              title: 'Privacy & Security',
              onTap: () {
                // Navigate to privacy & security settings
              },
            ),
            SettingsTile(
              leadingIcon: Icons.language,
              title: 'Language',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LanguageSelectionPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final VoidCallback onTap;

  const SettingsTile({
    required this.leadingIcon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontFamily: 'Montserrat',
        ),
      ),
      onTap: onTap,
    );
  }
}
