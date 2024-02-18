import 'package:flutter/material.dart';
import 'package:solution_challege/Home_Screen/home_page.dart';

class Paymentdone extends StatefulWidget {
  const Paymentdone({Key? key}) : super(key: key);

  @override
  _PaymentdoneState createState() => _PaymentdoneState();
}

class _PaymentdoneState extends State<Paymentdone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              size: 150,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            Text(
              'Payment Successful',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
ElevatedButton(
  onPressed: () {
    Navigator.of(context).popUntil((route) => route.isFirst);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  },
  child: Text('Back to Home'),
),
          ],
        ),
      ),
    );
  }
}
