import 'package:flutter/material.dart';

void main() {
  runApp(const DuaApp());
}

class DuaApp extends StatelessWidget {
  const DuaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Namaz Sonrası Dualar',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: const DuaListScreen(),
    );
  }
}

class Dua {
  final String title;
  final String arabic;
  final String meali;

  Dua({
    required this.title,
    required this.arabic,
    required this.meali,
  });
}

class DuaListScreen extends StatefulWidget {
  const DuaListScreen({super.key});

  @override
  State<DuaListScreen> createState() => _DuaListScreenState();
}

class _DuaListScreenState extends State<DuaListScreen> {
  final List<Dua> dualar = [
    Dua(
      title: '1. İstirfar ve Salavat',
      arabic: 'أَسْتَغْفِرُ اللَّهَ ، أَسْتَغْفِرُ اللَّهَ ، أَسْتَغْفِرُ اللَّهَ الْعَظِيمَ الَّذِي لاَ إِلَهَ إِلاَّ هُوَ الْحَيَّ الْقَيُّومَ وَأَتُوبُ إِلَيْهِ',
      meali: 'Aramızdan ayrılan veya yaşayan tüm müminler için Allah\'tan bağışlanma dilerim.',
    ),
    Dua(
      title: '2. Salat-ı Tüncina (Kurtuluş Salavatı)',
      arabic: 'اللَّهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ صَلاَةً تُنْجِينَا بِهَا مِنْ جَمِيعِ الأَهْوَالِ وَAfât...',
      meali: 'Allah\'ım! Efendimiz Muhammed\'e öyle bir salât et ki, onunla bizi tüm korku ve afetlerden kurtar...',
    ),
    Dua(
      title: '3. Ayete\'l-Kürsi',
      arabic: 'اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ...',
      meali: 'Allah, O\'ndan başka ilah yoktur. O diridir, kayyumdur (her şeyin varlığı O\'na bağlıdır)...',
    ),
    Dua(
      title: '4. Tesbihat (Subhanallah)',
      arabic: 'سُبْحَانَ اللَّهِ (33 Defa)',
      meali: 'Allah her türlü noksandan uzaktır, münezzehtir.',
    ),
    Dua(
      title: '5. Tahmid (Elhamdulillah)',
      arabic: 'الْحَمْدُ لِلَّهِ (33 Defa)',
      meali: 'Hamd ve övgü yalnız Allah\'a mahsustur.',
    ),
    Dua(
      title: '6. Takbir (Allahu Akbar)',
      arabic: 'اللَّهُ أَكْبَرُ (33 Defa)',
      meali: 'Allah en büyüktür.',
    ),
    Dua(
      title: '7. Kelime-i Tevhid ve Tahlil',
      arabic: 'لاَ إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ',
      meali: 'Allah\'tan başka ilah yoktur, O tektir, ortağı yoktur. Mülk O\'nundur, hamd O\'na aittir.',
    ),
    Dua(
      title: '8. Esma-ül Hüsna ile Dua',
      arabic: 'يَا رَبَّنَا يَا حَيُّ يَا قَيُّومُ يَا ذَا الْجَلاَلِ وَالإِكْرَامِ',
      meali: 'Ey Rabbimiz! Ey Hayy (diri) ve Kayyum olan, ey celal ve ikram sahibi Allah\'ım!',
    ),
    Dua(
      title: '9. Haşr Suresi Son Ayetler (Lâ Yestevî)',
      arabic: 'لَوْ أَنْزَلْنَا هَذَا الْقُرْآنَ عَلَى جَبَلٍ لَرَأَيْتَهُ خَاشِعًا مُتَصَدِّعًا مِنْ خَشْيَةِ اللَّهِ...',
      meali: 'Eğer biz bu Kur\'an\'ı bir dağa indirseydik, muhakkak ki onu Allah korkusundan baş eğerek parça parça olmuş görürdün...',
    ),
    Dua(
      title: '10. Amenerrasulü (Bakara Suresi Son Ayetler)',
      arabic: 'آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ...',
      meali: 'Peygamber, Rabbinden kendisine indirilene iman etti, müminler de iman ettiler...',
    ),
    Dua(
      title: '11. Namaz Sonrası Genel Bağışlanma Duası',
      arabic: 'اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ',
      meali: 'Allah\'ım! Seni anıp zikretmek, Sana şükretmek ve Sana güzelce ibadet etmek üzere bana yardım et.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Namaz Sonrası Dualar'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: dualar.length,
        itemBuilder: (context, index) {
          final dua = dualar[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ExpansionTile(
              title: Text(
                dua.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.teal,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAlignment.stretch,
                    children: [
                      Text(
                        dua.arabic,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          height: 1.8,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Divider(),
                      const SizedBox(height: 8),
                      Text(
                        dua.meali,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[800],
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
