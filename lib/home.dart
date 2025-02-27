import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ), // Ikon garis tiga (hamburger menu)
          onPressed: () {
            print("Buka menu!"); // Gantilah dengan aksi yang diinginkan
          },
        ),
        title: Text("Tugas 1", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              print('Buka Pengaturan');
            },
            icon: Icon(Icons.settings),
            color: Colors.white,
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: 385,
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 170, 9),
              ),
            ),
            Container(
              width: 385,
              height: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 170, 9),
              ),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs-Xd9UdFTO_WLIdTQd_pUrllKQsaGEfMYOw&s",
              ),
            ),
            Container(
              width: 385,
              height: 30,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 170, 9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
              ),
            ),

            SizedBox(height: 30),

            Text("Login Page", style: TextStyle(fontSize: 23)),

            SizedBox(height: 15),

            Container(
              width: 300, // Lebar box
              height: 50, // Tinggi box
              decoration: BoxDecoration(
                color: Colors.transparent, // Warna background
                // borderRadius: BorderRadius.circular(10), // Sudut melengkung
                border: Border.all(
                  color: Colors.transparent,
                  width: 2,
                ), // Garis tepi
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Isi aja brok',
                  labelText: 'Username',
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300, // Lebar box
              height: 50, // Tinggi box
              decoration: BoxDecoration(
                color: Colors.transparent, // Warna background
                // borderRadius: BorderRadius.circular(10), // Sudut melengkung
                border: Border.all(
                  color: Colors.transparent,
                  width: 2,
                ), // Garis tepi
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'Isi aja brok',
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 200, // Lebar button
              height: 60, // Tinggi button
              child: ElevatedButton(
                onPressed: () {
                  print("Submit");
                },
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
