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
        backgroundColor: Colors.blue,
        title: Text('Choose Role'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 320,
              child: ElevatedButton(
                onPressed: () => _navigateToSignInDetail(context, 'Donor'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.blue),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/rich_man_image.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Sign in as Donor',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 200,
              width: 320,
              child: ElevatedButton(
                onPressed: () => _navigateToSignInDetail(context, 'Receiver'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.blue),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/poor_man_image.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Sign in as Receiver',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ],
                ),
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
