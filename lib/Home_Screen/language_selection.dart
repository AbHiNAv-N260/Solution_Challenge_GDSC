import 'package:flutter/material.dart';

class LanguageSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text(
          'Language Selection',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select a Language',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 20),
            LanguageOptionTile(
              language: 'English',
              onTap: () {
                // Handle selection of English language
              },
            ),
            LanguageOptionTile(
              language: 'Spanish',
              onTap: () {
                // Handle selection of Spanish language
              },
            ),
            LanguageOptionTile(
              language: 'French',
              onTap: () {
                // Handle selection of French language
              },
            ),
            // Add more language options as needed
          ],
        ),
      ),
    );
  }
}

class LanguageOptionTile extends StatelessWidget {
  final String language;
  final VoidCallback onTap;

  const LanguageOptionTile({
    required this.language,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          language,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontFamily: 'Montserrat',
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        });
  }
}
