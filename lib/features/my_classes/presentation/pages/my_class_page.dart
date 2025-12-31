import 'package:flutter/material.dart';
import '../../../../core/theme.dart';
import '../../../../core/constants.dart';
import '../widgets/my_class_card.dart';

class MyClassPage extends StatelessWidget {
  const MyClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text("Kelas Saya", style: AppTextStyles.heading2),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, // No back button needed for main tab
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Cari kelas anda...",
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
          ),

          // Course List
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              itemCount: AppConstants.courseProgress.length,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                final course = AppConstants.courseProgress[index];
                return MyClassCard(
                  courseName: course['name'],
                  courseCode: course['code'],
                  lecturer: course['lecturer'],
                  schedule: course['schedule'],
                  room: course['room'],
                  progress: course['progress'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
