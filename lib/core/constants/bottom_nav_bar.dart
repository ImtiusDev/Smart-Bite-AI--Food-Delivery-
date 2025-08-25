import 'package:flutter/material.dart';
import 'package:smart_bite_ai/core/constants/colors.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int selectedPage = 0;

  final List<Widget> _pages = [
    
    Center(child: Text('cart', style: TextStyle(fontSize: 24))),
    Center(child: Text('chat', style: TextStyle(fontSize: 24))),
    Center(child: Text('profile', style: TextStyle(fontSize: 24))),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedPage],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 179, 179, 179),
        iconSize: 20,
        // currentIndex: selectedPage,
        onTap: (index){
          setState(() {
            selectedPage = index;
         });
        },
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.NeutralGrey60,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Camera'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
        ],
      ),
    );
  }
}