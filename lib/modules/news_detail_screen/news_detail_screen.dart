import 'package:flutter/material.dart';
import 'package:pertemuan5/models/news_detail.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen(
      {super.key,
      required this.id,
      required this.title,
      required this.content});
  final String id;
  final String title;
  final String content;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

// class _NewsDetailScreenState extends State<NewsDetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           widget.id,
//         ),
//       ),
//     );
//   }
// }

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Berita",
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "https://i.postimg.cc/pdjgTGFg/image-600x460-63e746ba7da53.jpg",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Formula E India, Mobil dan Motor Warga Masuk Sirkuit',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Peristiwa unik terjadi pada Formula E India 2023 di Circuit Hyderabad, India, Jumat (10/2). Masyarakat lokal menyerobot masuk ke circuit memakai sepeda mobil dan motor. Peristiwa itu terjadi saat sebelum sesi Free Practice Pertama (FP 1) pada Jumat sore waktu setempat.",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Kemacetan parah di area luar circuit karena jam sibuk rutinitas karyawan membuat beberapa pengendara ngotot melintasi di area circuit Formula E India.",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Like: $likeCount'),
                          const SizedBox(width: 10),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          setState(() {
            likeCount++;
          });
          print(likeCount);
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}

class NewsDetailScreenHot extends StatefulWidget {
  const NewsDetailScreenHot({
    super.key,
    required this.newsDetailHot,
  });
  final String newsDetailHot;

  @override
  State<NewsDetailScreenHot> createState() => _NewsDetailScreenHotState();
}

class _NewsDetailScreenHotState extends State<NewsDetailScreenHot> {
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hot News!",
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "https://i.postimg.cc/gJW8Fjpf/image-750x-642461ebbb28c.jpg",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'FIFA Batalkan Indonesia Jadi Tuan Rumah Piala Dunia U-20 2023',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Indonesia gagal menjadi tuan rumah dalam Piala Dunia U-20 yang akan digelar Mei 2023 mendatang. Karena ramai adanya penolakan atas kehadiran Timnas Israel U-20 di tanah air.Hasil itu berdasarkan dari pertemuan Ketua FIFA, Gianni Infantino dengan Ketua Umum PSSI Erick Thohir. Menurutnya, FIFA akan segera mengumumkan pengganti Indonesia Sebagai tuan rumah Piala Dunia U-20 tersebut.Sampai saat ini, jadwal Piala Dunia U-20 belum berubah. Sanksi terhadap Indonesia yang sudah dibatalkan Sebagai tuan rumah juga belum diputuskan.",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 10),
                    Text(' Like: $likeCount')
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          setState(() {
            likeCount++;
          });
          print(likeCount);
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
