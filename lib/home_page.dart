import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  final String data;

  const HomePage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple design"),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min, // Agar column tidak memakan semua ruang vertikal
                crossAxisAlignment: CrossAxisAlignment.center, // Memastikan konten di tengah
                children: [
                  // 1. Teks Selamat Datang
                  const Text(
                    'Selamat Datang',
                    style: TextStyle(fontSize: 24),
                  ),

                  const SizedBox(height: 8.0,),

                  Text(
                    data,
                    style: TextStyle(fontSize: 16),
                  ),
                  
                  // 2. Jarak antara teks dan card
                  const SizedBox(height: 20.0), 
                  
                  // 3. Menambahkan Widget Card di bawahnya
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4.0, // Memberikan efek bayangan pada card
                    margin: const EdgeInsets.symmetric(horizontal: 20.0), // Jarak kanan-kiri card dari layar
                    child: Padding(
                      padding: const EdgeInsets.all(16.0), // Jarak konten di dalam card
                      child: Column(
                        children: [
                          Image.network(
                            'https://t4.ftcdn.net/jpg/06/57/37/01/360_F_657370150_pdNeG5pjI976ZasVbKN9VqH1rfoykdYU.jpg',
                            width: double.infinity,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "Ini di dalam Card",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8.0),
                          Text("Anda bisa memasukkan form login, informasi, atau tombol di sini."),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 16.0,),

                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4.0,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.network(
                            'https://t4.ftcdn.net/jpg/06/57/37/01/360_F_657370150_pdNeG5pjI976ZasVbKN9VqH1rfoykdYU.jpg',
                            width: double.infinity,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8.0),
                          Text("Card Kedua", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          SizedBox(height: 8.0),
                          Text("ini adalah konten dari card yang kedua, entah apa yang diperlukan")
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 16.0,),

                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4.0,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.network(
                            'https://t4.ftcdn.net/jpg/06/57/37/01/360_F_657370150_pdNeG5pjI976ZasVbKN9VqH1rfoykdYU.jpg',
                            width: double.infinity,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8.0),
                          Text("Card Ketiga", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          SizedBox(height: 8.0),
                          Text("ini adalah konten dari card yang ketiga, entah apa yang diperlukan")
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 16.0,),

                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4.0,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.network(
                            'https://t4.ftcdn.net/jpg/06/57/37/01/360_F_657370150_pdNeG5pjI976ZasVbKN9VqH1rfoykdYU.jpg',
                            width: double.infinity,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8.0),
                          Text("Card Kedua", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          SizedBox(height: 8.0),
                          Text("ini adalah konten dari card yang kedua, entah apa yang diperlukan")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}