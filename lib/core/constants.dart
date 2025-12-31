class AppConstants {
  // User Profile
  static const String userName = "Dandy Candra Pratama";
  static const String userRole = "Mahasiswa";

  // Mock Data: Upcoming Assignments
  static const List<Map<String, String>> upcomingAssignments = [
    {
      "course": "UID Android Mobile Game",
      "title": "Tugas 01",
      "deadline": "2024-12-31 23:59", // Example deadline
    },
  ];

  // Mock Data: Announcements
  static const List<Map<String, String>> announcements = [
    {
      "title": "Info Maintenance Server",
      "description": "Server akan mengalami pemeliharaan pada tanggal...",
    },
  ];

  // Mock Data: Course Progress
  static const List<Map<String, dynamic>> courseProgress = [
    {"name": "Desain Tampilan & Pengalaman Pengguna (UI/UX)", "progress": 0.75},
    {"name": "Kewarganegaraan", "progress": 0.40},
    {"name": "Sistem Operasi", "progress": 0.20},
    {"name": "Pemrograman Perangkat Bergerak Multimedia", "progress": 0.60},
    {"name": "Bahasa Inggris: Bisnis dan Ilmiah", "progress": 0.90},
    {"name": "Pemrograman Multimedia Interaktif", "progress": 0.10},
    {"name": "Olah Raga", "progress": 0.50},
  ];
}
