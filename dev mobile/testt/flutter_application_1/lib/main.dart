import 'package:flutter/material.dart';
import 'widgets/header.dart';
import 'widgets/task_card.dart';
import 'widgets/progress_card.dart';
import 'widgets/rounded_button.dart';
import 'widgets/bottom_nav.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard UI',
      theme: ThemeData(
        primaryColor: const Color(0xFF4FA3FF),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF4FA3FF), Color(0xFF6AD1FF)],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Header(),
              const SizedBox(height: 14),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const TaskCard(
                          title: 'Your Tasks',
                          tasks: [
                            TaskItem(
                              'Meeting with team at 10 AM',
                              Colors.green,
                            ),
                            TaskItem('Submit report by 3 PM', Colors.orange),
                            TaskItem('Call with client at 5 PM', Colors.red),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const ProgressCard(percent: 0.72),
                        const SizedBox(height: 18),
                        const RoundedButton(label: 'View More Details'),
                        const SizedBox(height: 90),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
      ),
    );
  }
}
