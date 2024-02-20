import 'package:flutter/material.dart';
import 'notification_detail.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: listView(context),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue, // Set background color to blue
      title: Text('Notifications'), // Updated title
    );
  }

  Widget listView(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListViewItem(context, index);
      },
      separatorBuilder: (context, index) {
        return Divider(height: 0);
      },
      itemCount: 15,
    );
  }

  Widget ListViewItem(BuildContext context, int index) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      leading: prefixIcon(),
      title: Text(
        'Message',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'Description',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NotificationDetails()),
        );
      },
      trailing: TimeAndDate(),
    );
  }

  Widget prefixIcon() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.withOpacity(0.3), // Update icon background color
      ),
      child: Icon(
        Icons.notifications_active_outlined,
        size: 25,
        color: Colors.blue, // Update icon color
      ),
    );
  }

  Widget TimeAndDate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '18-01-2024',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 5),
        Text(
          '18:30',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
