import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 240, 215),
        title: const Text(
          'INFORMACIÓN PERSONAL',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.cancel),
            onPressed: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: const Color.fromARGB(255, 255, 240, 215),
              elevation: 16,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 140,
                      height: 140,
                      child: Image.network(
                        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F4kwallpapers.com%2Fimages%2Fwallpapers%2Flebron-james-american-basketball-player-nba-los-angeles-4928x3280-7605.jpg&f=1&nofb=1&ipt=b0239c22335eef3fcd70030310eafd97c32c53c7e1fea456294461f2c9b3d57a',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Kevin Carballo',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 18),
                          Text(
                            'Estudiante de Ingeniería de Sistemas',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 18),
                          Text(
                            '3012785259',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 240, 215),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'GITHUB',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'LINKEDIN',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'TWITTER',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 158, 130, 104),
      ),
    );
  }
}