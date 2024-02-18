import 'package:flutter/material.dart';
import 'package:solution_challege/Payment/paymentdone.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  bool isTextEntered = false;
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue, // Set app bar background color to blue
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              // backgroundImage: AssetImage('images/apple_img.png'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Abhishek CSE',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '3434787834',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Spacer(), // Add spacer to push icons to the right
            Icon(Icons.question_mark_outlined, color: Colors.white),
            SizedBox(width: 20),
            Icon(Icons.more_vert, color: Colors.white),
          ],
        ),
      ),
      body: Container(
        color: Colors.deepPurple.shade100,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        controller: _textEditingController,
                        style: TextStyle(color: Colors.black),
                        onChanged: (value) {
                          setState(() {
                            isTextEntered = value.isNotEmpty;
                          });
                        },
                        decoration: InputDecoration(
                          suffixIcon: isTextEntered
                              ? IconButton(
                                  icon: Icon(Icons.payment),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Paymentdone(),
                                      ),
                                    );
                                  },
                                )
                              : Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.photo_camera_back_outlined),
                                    SizedBox(width: 8),
                                    Icon(Icons.add_circle_outline_outlined),
                                    SizedBox(width: 8),
                                    Icon(Icons.send),
                                  ],
                                ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Enter the donation amount',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 25, horizontal: 15),
                        ),
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
}
