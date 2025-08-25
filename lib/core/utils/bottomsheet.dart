import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';


void showForgotPasswordModalGGG(BuildContext context) {
  showMaterialModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // blur দেখানোর জন্য transparent
    builder: (context) {
      return Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Container(
              color: Colors.black.withOpacity(0.2), // dim effect
            ),
          ),
          ForgotPasswordBottomSheet(),
        ],
      );
    },
  );
}



class ForgotPasswordBottomSheet extends StatefulWidget {
  const ForgotPasswordBottomSheet({super.key});

  @override
  State<ForgotPasswordBottomSheet> createState() => _ForgotPasswordBottomSheetState();
}

class _ForgotPasswordBottomSheetState extends State<ForgotPasswordBottomSheet> {
  int selectedIndex = 0; // কোন option সিলেক্ট হয়েছে

  final options = [
    {"icon": Icons.chat, "title": "+12 8347 2838 28"},
    {"icon": Icons.email, "title": "Albertstevano@gmail.com"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        // margin: const EdgeInsets.only(bottom: 20), // নিচে স্পেস রাখার জন্য
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Drag indicator
              Container(
                height: 4,
                width: 40,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              const Text(
                "Forgot password?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Select which contact details should we use to reset your password",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              ...List.generate(options.length, (index) {
                final isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isSelected ? Colors.orange : Colors.grey.shade300,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Icon(options[index]["icon"] as IconData),
                      title: Text(options[index]["title"] as String),
                      trailing: isSelected
                          ? const Icon(Icons.check_circle, color: Colors.orange)
                          : const Icon(Icons.radio_button_unchecked, color: Colors.grey),
                    ),
                  ),
                );
              }),

              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  // এখান থেকে সিলেক্টেড অপশন পাওয়া যাবে
                  // final selectedOption = options[selectedIndex]["title"];
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(content: Text("Selected: $selectedOption")),
                  // );
                },
                child: const Text("Continue"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}











// class ForgotPasswordBottomSheetr extends StatelessWidget {
//   const ForgotPasswordBottomSheetr({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       child: Container(
//         decoration: const BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const SizedBox(height: 10),
//             Container(
//               height: 4,
//               width: 40,
//               decoration: BoxDecoration(
//                 color: Colors.grey[400],
//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               "Forgot password?",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 "Select which contact details should we use to reset your password",
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.chat),
//               title: const Text("+12 8347 2838 28"),
//               trailing: const Icon(Icons.check_circle, color: Colors.orange),
//             ),
//             ListTile(
//               leading: const Icon(Icons.email),
//               title: const Text("Albertstevano@gmail.com"),
//             ),
//             const SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.orange,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   minimumSize: const Size(double.infinity, 50),
//                 ),
//                 onPressed: () {},
//                 child: const Text("Continue"),
//               ),
//             ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }

