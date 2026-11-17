
import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),

      // APPBAR
      appBar: AppBar(
        title: const Text('Student Dashboard', style: appbarstyle),
        backgroundColor: const Color(0xFFFFF7FF),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              _showActionMessage(context, 'Logout clicked!');
            },
          ), // IconButton
        ],
      ), // AppBar

      // BODY
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 15),

              // PROFILE HEADER
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/cd.jpg',
                    ),
                  ), // CircleAvatar

                  const SizedBox(width: 15),

                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Miko Velez', style: namestyle),
                      Text('ID: 555-252', style: infostyle),
                      Text('BSIT 3RD YEAR', style: infostyle),
                    ],
                  ), // Column
                ],
              ), // Row

              const SizedBox(height: 20),

              // STUDENT INFORMATION CARD
              Card(
                elevation: 3,
                color: const Color(0xFFF8F3FA),
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(Icons.email),
                      title: Text(
                        'Mikovelez@gmail.com',
                        style: infostyle,
                      ),
                    ), // ListTile

                    const ListTile(
                      leading: Icon(Icons.phone),
                      title: Text(
                        '+63 912 345 6789',
                        style: infostyle,
                      ),
                    ), // ListTile

                    const ListTile(
                      leading: Icon(Icons.home),
                      title: Text(
                        '123 Matina, Davao City, Philippines',
                        style: infostyle,
                      ),
                    ), // ListTile
                  ],
                ), // Column
              ), // Card

              const SizedBox(height: 15),

              // SUBJECTS TITLE
              const Text('Subjects', style: subjecttitlestyle),

              const SizedBox(height: 10),

              // SUBJECT 1
              subjectCard(
                'Mobile App Development',
                'Mr. Smith',
                'Mon/Wed 10:00 - 11:30 AM',
              ), // subjectCard

              // SUBJECT 2
              subjectCard(
                'Database Systems',
                'Mrs. Garcia',
                'Tue/Thu 1:00 - 2:30 PM',
              ), // subjectCard

              // SUBJECT 3
              subjectCard(
                'Operating Systems',
                'Dr. Lee',
                'Fri 8:00 - 11:00 AM',
              ), // subjectCard

              const SizedBox(height: 20),

            ], // children
          ), // Column
        ), // Container
      ), // SingleChildScrollView

      // FLOATING ACTION BUTTON
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE8D8FF),
        onPressed: () {
          _showActionMessage(context, 'Add Subject Clicked!');
        },
        child: const Icon(Icons.add),
      ), // FloatingActionButton
    ); // Scaffold
  }

  void _showActionMessage(BuildContext context, String message) {
    debugPrint(message);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.only(bottom: 20, right: 20),
        duration: const Duration(seconds: 2),
        content: Text(message),
      ),
    );
  }

  // SUBJECT CARD METHOD
  Widget subjectCard(
    String subject,
    String instructor,
    String schedule,
  ) {
    return Card(
      elevation: 2,
      color: const Color(0xFFF8F3FA),
      margin: const EdgeInsets.only(bottom: 8),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subject, style: subjectstyle),
            Text('Instructor: $instructor', style: infostyle),
            Text('Schedule: $schedule', style: infostyle),
          ],
        ), // Column
      ), // Container
    ); // Card
  }

  // TEXT STYLES

  static const appbarstyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: Colors.black87,
  );

  static const namestyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static const infostyle = TextStyle(
    fontSize: 12,
    color: Colors.black87,
  );

  static const subjecttitlestyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const subjectstyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

} // StudentDashboard
