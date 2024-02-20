import 'package:flutter/material.dart';
import 'package:solution_challege/Home_Screen/sign_in_details_screen.dart';

class SignInOptionScreen extends StatefulWidget {
  const SignInOptionScreen({Key? key}) : super(key: key);

  @override
  _SignInOptionScreenState createState() => _SignInOptionScreenState();
}

class _SignInOptionScreenState extends State<SignInOptionScreen> {
  String? _selectedRole; // Variable to store the selected role

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue, // Use a consistent color scheme
        title: Text('Choose Role'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSignInButton(
              'Donor',
              'assets/rich_man_image.jpg',
              'Sign in as Donor',
              context,
            ),
            SizedBox(height: 20),
            buildSignInButton(
              'Receiver',
              'assets/poor_man_image.jpg',
              'Sign in as Receiver',
              context,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSignInButton(
      String role, String imagePath, String buttonText, BuildContext context) {
    return SizedBox(
      height: 200,
      width: 320,
      child: ElevatedButton(
        onPressed: () => _navigateToSignInDetail(context, role),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 5,
          shadowColor: Colors.grey
              .withOpacity(0.5), // Add shadow for a raised appearance
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF4CAF50),
                    Color(0xFF388E3C)
                  ], // Apply subtle gradients
                ),
              ),
            ),
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    role == 'Donor' ? Icons.monetization_on : Icons.favorite,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    buttonText,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily:
                          'Roboto', // Use custom fonts for a unique style
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToSignInDetail(BuildContext context, String role) {
    setState(() {
      _selectedRole = role;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignInDetail(_selectedRole),
      ),
    );
  }
}
