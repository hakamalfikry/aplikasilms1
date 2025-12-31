class AppConstants {
  // User Profile
  static const String userName = "HAKAMAL FIKRY";
  static const String userRole = "Mahasiswa";

  // Mock Data: Upcoming Assignments
  static const List<Map<String, String>> upcomingAssignments = [
    {
      "course": "UID Android Mobile Game",
      "title": "Tugas 01",
      "deadline": "2024-12-31 23:59", // Example deadline
    },
  ];

  // Mock Data: Student Programs (Announcements)
  static const List<Map<String, dynamic>> announcements = [
    {
      "title": "Program Kreativitas Mahasiswa (PKM)",
      "description": "Pendaftaran proposal PKM 2024 telah dibuka. Segera ...",
      "color": 0xFFE3F2FD, // Blue[50]
    },
    {
      "title": "Magang & Studi Independen (MSIB)",
      "description": "Kesempatan magang di perusahaan top teknologi...",
      "color": 0xFFE8F5E9, // Green[50]
    },
    {
      "title": "Pertukaran Mahasiswa Merdeka",
      "description":
          "Kuliah satu semester di kampus favoritmu di luar pulau...",
      "color": 0xFFFFF8E1, // Amber[50]
    },
    {
      "title": "Info Maintenance Server",
      "description": "Server akan mengalami pemeliharaan pada tanggal...",
      "color": 0xFFFFEBEE, // Red[50]
    },
  ];

  // Academic Info
  static const String userProgram = "S1 Informatika";
  static const String userSemester = "Semester 5";
  static const String userGPA = "3.85";

  // Mock Data: Class List (Detailed for LMS Theme)
  static const List<Map<String, dynamic>> courseProgress = [
    {
      "name": "Desain Tampilan & Pengalaman Pengguna (UI/UX)",
      "code": "IF210",
      "lecturer": "Dr. Sarah Johnson",
      "schedule": "Senin, 08:00 - 10:30",
      "room": "R. 402",
      "progress": 0.75,
    },
    {
      "name": "Kewarganegaraan",
      "code": "KU102",
      "lecturer": "Budi Santoso, M.Pd",
      "schedule": "Senin, 13:00 - 14:40",
      "room": "R. 301",
      "progress": 0.40,
    },
    {
      "name": "Sistem Operasi",
      "code": "IF220",
      "lecturer": "Andi Wijaya, MT",
      "schedule": "Selasa, 10:00 - 12:30",
      "room": "Lab. Kom 2",
      "progress": 0.20,
    },
    {
      "name": "Pemrograman Perangkat Bergerak Multimedia",
      "code": "IF310",
      "lecturer": "Rina Kartika, M.Kom",
      "schedule": "Rabu, 08:00 - 11:00",
      "room": "R. 504",
      "progress": 0.60,
    },
    {
      "name": "Bahasa Inggris: Bisnis dan Ilmiah",
      "code": "KU201",
      "lecturer": "Mr. John Doe",
      "schedule": "Kamis, 09:00 - 10:40",
      "room": "Online",
      "progress": 0.90,
    },
  ];
}
