
// ANMMM - Al-Haj Nur Mohammed Model Madrasa - Full Management App
// App Name: ANMMM | Theme: Blue | Established: 2024
// Founder: Alhajj Nur Mohammed (Ex-MP)
// Address: Goalghurni, Mirkadim Municipality, Munshiganj
// Developed for Flutter 3.x

import 'package:flutter/material.dart';

void main() {
  runApp(const ANMMMApp());
}

// ===================== CONSTANTS & THEME =====================
class AppConstants {
  static const String appNameBn = "আলহাজ্ব নূর মোহাম্মদ মডেল মাদ্রাসা";
  static const String appNameAr = "الحاج نور محمد موديل مدرسة";
  static const String appNameEn = "Al-Haj Nur Mohammed Model Madrasa";
  static const String shortName = "ANMMM";
  static const String motto = "হে আমাদের রব! আমাদেরকে দুনিয়াতে কল্যাণ দান করো এবং আখিরাতেও কল্যাণ দান করো";
  static const String address = "গোয়ালঘূর্ণী, মিরকাদিম পৌরসভা, মুন্সিগঞ্জ";
  static const String email = "anmmm151224@gmail.com";
  static const List<String> phones = ["01762115426", "01908977310", "01946126398"];
  static const String founder = "আলহাজ্ব নূর মোহাম্মদ (সাবেক এম.পি.)";
  static const int establishedYear = 2024;
  static const Color primaryBlue = Color(0xFF2E3192);
  static const Color secondaryBlue = Color(0xFF29ABE2);
  static const Color lightBlueBg = Color(0xFFE8F0FE);
}

// ===================== MODELS =====================
enum Campus { balok, balika }
enum Department { general, hifz }

class Teacher {
  final int id;
  final String name;
  final String mobile;
  final String position;
  final Campus campus;
  Teacher({required this.id, required this.name, required this.mobile, required this.position, required this.campus});
}

class Student {
  final String name;
  final String roll;
  final String regNo;
  final String className;
  final String section;
  final Campus campus;
  final String fatherName;
  final String fatherMobile;
  final String motherName;
  final String imageUrl;
  bool isPresent;
  int marks;
  Student({required this.name, required this.roll, required this.regNo, required this.className, required this.section, required this.campus, required this.fatherName, required this.fatherMobile, required this.motherName, this.imageUrl = "", this.isPresent = true, this.marks = 0});
}

class SchoolClass {
  final String name;
  final List<String> sections;
  final Campus campus;
  final Department dept;
  final int studentCount;
  SchoolClass({required this.name, required this.sections, required this.campus, required this.dept, required this.studentCount});
}

// ===================== DUMMY DATA FROM USER =====================
class AppData {
  static final List<Teacher> balokTeachers = [
    Teacher(id: 3, name: "মুফতি শাহাদাত হোসেন", mobile: "01963911891", position: "সহকারি মৌলভী", campus: Campus.balok),
    Teacher(id: 4, name: "মুফতি মোঃ ইসমাঈল", mobile: "01607943615", position: "সহকারি মৌলভী", campus: Campus.balok),
    Teacher(id: 5, name: "রাসেল আহমেদ", mobile: "01777101208", position: "সহকারি শিক্ষক (গণিত)", campus: Campus.balok),
    Teacher(id: 6, name: "দাদন ফরাজী", mobile: "01758902126", position: "সহকারি শিক্ষক (গণিত)", campus: Campus.balok),
    Teacher(id: 7, name: "মোঃ ইমন হোসেন", mobile: "01339851954", position: "সহকারি শিক্ষক (বাংলা)", campus: Campus.balok),
    Teacher(id: 8, name: "রিফাত ইসলাম", mobile: "01932559672", position: "সহকারি শিক্ষক (বিজ্ঞান)", campus: Campus.balok),
    Teacher(id: 9, name: "মোঃ আতিকুর রহমান", mobile: "01926924678", position: "সহকারি শিক্ষক (ইংরেজি)", campus: Campus.balok),
    Teacher(id: 10, name: "সাজিদুল ইসলাম সেজান", mobile: "01310569664", position: "সহকারি শিক্ষক (সামাজিক বিজ্ঞান)", campus: Campus.balok),
    Teacher(id: 11, name: "সানজু আক্তার", mobile: "01878211593", position: "সহকারি শিক্ষিকা (গণিত)", campus: Campus.balok),
    Teacher(id: 12, name: "হাফেজ সাব্বির হুসাইন", mobile: "01903279132", position: "ইবতেদায়ি প্রধান", campus: Campus.balok),
    Teacher(id: 13, name: "মুফতি আবুল কালাম", mobile: "01818478120", position: "ইবতেদায়ি মৌলভী", campus: Campus.balok),
    Teacher(id: 14, name: "চম্পা আক্তার কলি", mobile: "01947318235", position: "ইবতেদায়ি মৌলভী", campus: Campus.balok),
    Teacher(id: 15, name: "মাহমুদা আক্তার মনিরা", mobile: "01904266143", position: "ইবতেদায়ি শিক্ষিকা", campus: Campus.balok),
    Teacher(id: 16, name: "জাহিদুল ইসলাম", mobile: "01930256126", position: "ইবতেদায়ি শিক্ষক", campus: Campus.balok),
    Teacher(id: 17, name: "মাওঃ আশরাফ আলী", mobile: "01626935955", position: "ইবতেদায়ি ক্বারী", campus: Campus.balok),
    Teacher(id: 18, name: "মাওঃ আব্দুল্লাহ আল ফাত্তাহ", mobile: "01400415585", position: "সহকারি শিক্ষক (আরবী)", campus: Campus.balok),
    Teacher(id: 19, name: "তাজরিয়া আক্তার রাফিম", mobile: "01904982755", position: "ইবতেদায়ি শিক্ষিকা", campus: Campus.balok),
    Teacher(id: 20, name: "জিদনী দেওয়ান", mobile: "01648813878", position: "ইবতেদায়ি শিক্ষিকা", campus: Campus.balok),
    Teacher(id: 21, name: "দেলোয়ার হোসেন", mobile: "01940087972", position: "হিসাব রক্ষক", campus: Campus.balok),
    Teacher(id: 22, name: "মাও: সাজ্জাদ হুসাইন", mobile: "01400350242", position: "হিফজ শিক্ষক", campus: Campus.balok),
  ];

  static final List<Teacher> balikaTeachers = [
    Teacher(id: 1, name: "নাসরিন আখতার", mobile: "01996164401", position: "সহকারি শিক্ষিকা (গণিত) ও শাখা ইনচার্জ", campus: Campus.balika),
    Teacher(id: 2, name: "হারিসুন", mobile: "01725376534", position: "সহকারি মৌলভী", campus: Campus.balika),
    Teacher(id: 3, name: "ফাতেমা আক্তার আরজু", mobile: "01600274705", position: "সহকারি শিক্ষিকা (ইংরেজি)", campus: Campus.balika),
    Teacher(id: 4, name: "ফারজানা আখতার", mobile: "01674711918", position: "সহকারি শিক্ষিকা (ইংরেজি)", campus: Campus.balika),
    Teacher(id: 5, name: "রিয়ামনি", mobile: "01954377705", position: "সহকারি শিক্ষিকা (বাংলা)", campus: Campus.balika),
    Teacher(id: 6, name: "সায়মা ইসলাম জান্নাত", mobile: "01991993547", position: "সহকারি শিক্ষিকা (সামাজিক বিজ্ঞান)", campus: Campus.balika),
    Teacher(id: 7, name: "জান্নাতুল মুনা", mobile: "01926051334", position: "ইবতেদায়ি মৌলভী", campus: Campus.balika),
    Teacher(id: 8, name: "হালিমা আক্তার", mobile: "01934174215", position: "ইবতেদায়ি শিক্ষিকা", campus: Campus.balika),
    Teacher(id: 9, name: "খন্দকার সাদিয়া হাসান", mobile: "01933980762", position: "ইবতেদায়ি শিক্ষিকা", campus: Campus.balika),
    Teacher(id: 10, name: "মারিয়া আক্তার", mobile: "01947806781", position: "ইবতেদায়ি ক্বারি", campus: Campus.balika),
    Teacher(id: 11, name: "সাফিনা আক্তার", mobile: "01931512980", position: "হিফজ শিক্ষিকা", campus: Campus.balika),
  ];

  static final List<SchoolClass> classes = [
    SchoolClass(name: "প্লে", sections: ["শাপলা-44", "গোলাপ-40"], campus: Campus.balok, dept: Department.general, studentCount: 88),
    SchoolClass(name: "নার্সারি", sections: ["শাপলা-39", "গোলাপ-25"], campus: Campus.balok, dept: Department.general, studentCount: 64),
    SchoolClass(name: "প্রথম শ্রেণী", sections: ["শাপলা-25", "গোলাপ-36", "বেলী-24"], campus: Campus.balok, dept: Department.general, studentCount: 85),
    SchoolClass(name: "দ্বিতীয় শ্রেণী", sections: ["Main-37"], campus: Campus.balok, dept: Department.general, studentCount: 37),
    SchoolClass(name: "তৃতীয় শ্রেণী", sections: ["Main-26"], campus: Campus.balok, dept: Department.general, studentCount: 26),
    SchoolClass(name: "চতুর্থ শ্রেণি", sections: ["Main-28"], campus: Campus.balok, dept: Department.general, studentCount: 28),
    SchoolClass(name: "পঞ্চম শ্রেণী", sections: ["Main-12"], campus: Campus.balok, dept: Department.general, studentCount: 12),
    SchoolClass(name: "ষষ্ঠ শ্রেণী", sections: ["Main-11"], campus: Campus.balok, dept: Department.general, studentCount: 11),
    SchoolClass(name: "সপ্তম শ্রেণী", sections: ["Main-3"], campus: Campus.balok, dept: Department.general, studentCount: 3),
    SchoolClass(name: "অষ্টম শ্রেণি", sections: ["Main-7"], campus: Campus.balok, dept: Department.general, studentCount: 7),
    SchoolClass(name: "দ্বিতীয় শ্রেণী", sections: ["Main-17"], campus: Campus.balika, dept: Department.general, studentCount: 17),
    SchoolClass(name: "তৃতীয় শ্রেণী", sections: ["Main-28"], campus: Campus.balika, dept: Department.general, studentCount: 28),
    SchoolClass(name: "চতুর্থ শ্রেণি", sections: ["Main-18"], campus: Campus.balika, dept: Department.general, studentCount: 18),
    SchoolClass(name: "পঞ্চম শ্রেণী", sections: ["Main-26"], campus: Campus.balika, dept: Department.general, studentCount: 26),
    SchoolClass(name: "ষষ্ঠ শ্রেণী", sections: ["Main-22"], campus: Campus.balika, dept: Department.general, studentCount: 22),
    SchoolClass(name: "সপ্তম শ্রেণী", sections: ["Main-14"], campus: Campus.balika, dept: Department.general, studentCount: 14),
    SchoolClass(name: "অষ্টম শ্রেণি", sections: ["Main-11"], campus: Campus.balika, dept: Department.general, studentCount: 11),
    SchoolClass(name: "কায়দা", sections: [], campus: Campus.balok, dept: Department.hifz, studentCount: 0),
    SchoolClass(name: "আমপারা", sections: [], campus: Campus.balok, dept: Department.hifz, studentCount: 0),
    SchoolClass(name: "নাজারা", sections: [], campus: Campus.balok, dept: Department.hifz, studentCount: 0),
    SchoolClass(name: "হিফজ", sections: [], campus: Campus.balok, dept: Department.hifz, studentCount: 0),
  ];
}

// ===================== MAIN APP =====================
class ANMMMApp extends StatelessWidget {
  const ANMMMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ANMMM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppConstants.primaryBlue,
        colorScheme: ColorScheme.fromSeed(seedColor: AppConstants.primaryBlue, primary: AppConstants.primaryBlue, secondary: AppConstants.secondaryBlue),
        useMaterial3: true,
        fontFamily: 'HindSiliguri',
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 200, height: 200, errorBuilder: (c,e,s)=> Icon(Icons.school, size: 100, color: AppConstants.primaryBlue)),
            const SizedBox(height: 20),
            const Text(AppConstants.appNameBn, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppConstants.primaryBlue), textAlign: TextAlign.center),
            const Text(AppConstants.appNameAr, style: TextStyle(fontSize: 16, color: AppConstants.secondaryBlue)),
            const SizedBox(height: 8),
            Container(padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4), color: AppConstants.primaryBlue, child: Text("স্থাপিত : ${AppConstants.establishedYear}", style: TextStyle(color: Colors.white))),
            const SizedBox(height: 12),
            const Text(AppConstants.motto, style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.lightBlueBg,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 120, errorBuilder: (c,e,s)=> Icon(Icons.school, size: 80, color: AppConstants.primaryBlue)),
            const SizedBox(height: 16),
            const Text("ANMMM", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppConstants.primaryBlue)),
            const Text("মাদরাসা ম্যানেজমেন্ট সিস্টেম", style: TextStyle(color: Colors.black54)),
            const SizedBox(height: 32),
            TextField(decoration: InputDecoration(labelText: "ইউজারনেম", border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), prefixIcon: Icon(Icons.person))),
            const SizedBox(height: 12),
            TextField(obscureText: true, decoration: InputDecoration(labelText: "পাসওয়ার্ড", border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), prefixIcon: Icon(Icons.lock))),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity, height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: AppConstants.primaryBlue, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomeScreen())),
                child: const Text("লগইন করুন", style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 12),
            Text("প্রতিষ্ঠাতা: ${AppConstants.founder}", style: TextStyle(fontSize: 11, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const DashboardScreen(),
    const StudentsScreen(),
    const TeachersScreen(),
    const AttendanceScreen(),
    const ResultsScreen(),
    const FeesScreen(),
    const InfoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.primaryBlue,
        title: const Text("ANMMM", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.notifications, color: Colors.white))],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: AppConstants.primaryBlue),
              child: Column(children: [
                Image.asset('assets/logo.png', width: 80, errorBuilder: (c,e,s)=> Icon(Icons.school, size: 50, color: Colors.white)),
                SizedBox(height: 8),
                Text(AppConstants.appNameBn, style: TextStyle(color: Colors.white, fontSize: 12), textAlign: TextAlign.center),
                Text(AppConstants.address, style: TextStyle(color: Colors.white70, fontSize: 10)),
              ]),
            ),
            ListTile(leading: Icon(Icons.dashboard), title: Text("ড্যাশবোর্ড"), onTap: ()=> setState(()=> _selectedIndex=0)),
            ListTile(leading: Icon(Icons.people), title: Text("ছাত্র-ছাত্রী (497 জন)"), onTap: ()=> setState(()=> _selectedIndex=1)),
            ListTile(leading: Icon(Icons.person), title: Text("শিক্ষক (33 জন)"), onTap: ()=> setState(()=> _selectedIndex=2)),
            ListTile(leading: Icon(Icons.check_circle), title: Text("হাজিরা"), onTap: ()=> setState(()=> _selectedIndex=3)),
            ListTile(leading: Icon(Icons.grade), title: Text("রেজাল্ট"), onTap: ()=> setState(()=> _selectedIndex=4)),
            ListTile(leading: Icon(Icons.money), title: Text("ফি ম্যানেজমেন্ট"), onTap: ()=> setState(()=> _selectedIndex=5)),
            Divider(),
            ListTile(title: Text("Honorable Advisor: অধ্যক্ষ ড. মো. আবু ইউসুফ খান"), subtitle: Text("Super: হাফেজ মাওলানা মুফতি মো. মিজানুর রহমান সিরাজী\nCo-Super: মাওলানা মিজানুর রহমান")),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: AppConstants.primaryBlue,
        unselectedItemColor: Colors.grey,
        onTap: (i)=> setState(()=> _selectedIndex=i),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "হোম"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "ছাত্র"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "শিক্ষক"),
          BottomNavigationBarItem(icon: Icon(Icons.fact_check), label: "হাজিরা"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "রেজাল্ট"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "ফি"),
        ],
      ),
    );
  }
}

// ===================== SCREENS =====================
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    int totalStudents = AppData.classes.fold(0, (sum, c)=> sum + c.studentCount);
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16), decoration: BoxDecoration(color: AppConstants.primaryBlue, borderRadius: BorderRadius.circular(16)),
            child: Row(children: [
              Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(AppConstants.motto, style: TextStyle(color: Colors.white, fontSize: 12, fontStyle: FontStyle.italic)),
                SizedBox(height: 8),
                Text("${AppConstants.phones.join(' | ')}", style: TextStyle(color: Colors.white70, fontSize: 10)),
                Text(AppConstants.email, style: TextStyle(color: Colors.white70, fontSize: 10)),
              ])),
              Icon(Icons.format_quote, color: Colors.white24, size: 40),
            ]),
          ),
          SizedBox(height: 16),
          GridView.count(
            crossAxisCount: 2, shrinkWrap: true, physics: NeverScrollableScrollPhysics(), childAspectRatio: 1.6, mainAxisSpacing: 12, crossAxisSpacing: 12,
            children: [
              _statCard("মোট ছাত্র", "$totalStudents জন", Icons.people, AppConstants.primaryBlue),
              _statCard("বালক ক্যাম্পাস", "361 জন", Icons.school, AppConstants.secondaryBlue),
              _statCard("বালিকা ক্যাম্পাস", "136 জন", Icons.girl, Colors.pink),
              _statCard("মোট শিক্ষক", "33 জন", Icons.person, Colors.orange),
              _statCard("আজ উপস্থিত", "92%", Icons.check_circle, Colors.green),
              _statCard("ক্লাস", "21 টি", Icons.class_, Colors.purple),
            ],
          ),
          SizedBox(height: 16),
          Text("ক্যাম্পাস অনুযায়ী", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          _campusCard("বালক ক্যাম্পাস", "জেনারেল: 10 ক্লাস + হিফজ: 4 ক্লাস", "361"),
          SizedBox(height: 8),
          _campusCard("বালিকা ক্যাম্পাস", "জেনারেল: 7 ক্লাস", "136"),
        ],
      ),
    );
  }
  Widget _statCard(String title, String value, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(12), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(icon, color: color), Spacer(), Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), Text(title, style: TextStyle(fontSize: 12, color: Colors.grey)),
      ]),
    );
  }
  Widget _campusCard(String title, String subtitle, String count) {
    return Container(
      padding: EdgeInsets.all(12), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border(left: BorderSide(color: AppConstants.primaryBlue, width: 4))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: TextStyle(fontWeight: FontWeight.bold)), Text(subtitle, style: TextStyle(fontSize: 11, color: Colors.grey))]),
        Text(count, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppConstants.primaryBlue)),
      ]),
    );
  }
}

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(12),
      itemCount: AppData.classes.length,
      itemBuilder: (context, i){
        var c = AppData.classes[i];
        return Card(child: ListTile(
          leading: CircleAvatar(backgroundColor: c.campus==Campus.balok ? AppConstants.primaryBlue : Colors.pink, child: Text(c.name[0], style: TextStyle(color: Colors.white))),
          title: Text("${c.name} (${c.campus==Campus.balok?'বালক':'বালিকা'})"),
          subtitle: Text("শাখা: ${c.sections.join(', ')} | ${c.dept==Department.general?'জেনারেল':'হিফজ'}"),
          trailing: Text("${c.studentCount} জন", style: TextStyle(fontWeight: FontWeight.bold)),
        ));
      },
    );
  }
}

class TeachersScreen extends StatefulWidget {
  const TeachersScreen({super.key});
  @override
  State<TeachersScreen> createState() => _TeachersScreenState();
}
class _TeachersScreenState extends State<TeachersScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState(){ _tabController = TabController(length: 2, vsync: this); super.initState();}
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TabBar(controller: _tabController, labelColor: AppConstants.primaryBlue, tabs: [Tab(text: "বালক ক্যাম্পাস (22)"), Tab(text: "বালিকা ক্যাম্পাস (11)")]),
      Expanded(child: TabBarView(controller: _tabController, children: [
        _teacherList(AppData.balokTeachers),
        _teacherList(AppData.balikaTeachers),
      ])),
    ]);
  }
  Widget _teacherList(List<Teacher> teachers){
    return ListView.builder(
      itemCount: teachers.length,
      itemBuilder: (c,i){
        var t = teachers[i];
        return Card(margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4), child: ListTile(
          leading: CircleAvatar(backgroundColor: AppConstants.lightBlueBg, child: Text(t.name[0])),
          title: Text(t.name, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
          subtitle: Text("${t.position}\n${t.mobile}", style: TextStyle(fontSize: 11)),
          isThreeLine: true,
          trailing: Icon(Icons.call, color: Colors.green),
          onTap: (){},
        ));
      },
    );
  }
}

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(Icons.fact_check, size: 60, color: AppConstants.primaryBlue),
      SizedBox(height: 12),
      Text("হাজিরা ম্যানেজমেন্ট", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text("ক্লাস, শাখা, তারিখ অনুযায়ী হাজিরা নিন", style: TextStyle(color: Colors.grey)),
      SizedBox(height: 16),
      ElevatedButton(onPressed: (){}, child: Text("আজকের হাজিরা নিন")),
    ]));
  }
}

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("রেজাল্ট - ১ম ধাপের উত্তর, অধ্যায়: আয়েশার গল্প - শীঘ্রই"));
  }
}

class FeesScreen extends StatelessWidget {
  const FeesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("ফি ম্যানেজমেন্ট - বিকাশ/নগদ ইন্টিগ্রেশন সহ"));
  }
}

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(AppConstants.appNameBn, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppConstants.primaryBlue)),
      Text(AppConstants.appNameAr),
      Text(AppConstants.appNameEn, style: TextStyle(fontSize: 12)),
      Divider(),
      Text("মূলনীতি: ${AppConstants.motto}"),
      SizedBox(height: 8),
      Text("ঠিকানা: ${AppConstants.address}"),
      Text("ফোন: ${AppConstants.phones.join(', ')}"),
      Text("ইমেইল: ${AppConstants.email}"),
      Text("প্রতিষ্ঠাতা: ${AppConstants.founder}"),
      Text("স্থাপিত: ${AppConstants.establishedYear}"),
      SizedBox(height: 16),
      Text("Honorable Advisor: অধ্যক্ষ ড. মো. আবু ইউসুফ খান", style: TextStyle(fontWeight: FontWeight.bold)),
      Text("Super: হাফেজ মাওলানা মুফতি মো. মিজানুর রহমান সিরাজী"),
      Text("Co-Super: মাওলানা মিজানুর রহমান"),
    ]));
  }
}
