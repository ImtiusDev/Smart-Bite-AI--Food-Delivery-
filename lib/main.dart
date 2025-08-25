import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_bite_ai/screen/auth/forgot_password.dart';
import 'package:smart_bite_ai/screen/auth/login.dart';
import 'package:smart_bite_ai/screen/auth/sign_up.dart';
import 'package:smart_bite_ai/screen/auth/varification_mail_otp.dart';
import 'package:smart_bite_ai/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    
      theme: ThemeData(
        canvasColor: Colors.transparent,
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryTextTheme: GoogleFonts.interTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    
      home: HomeScreen(),
      initialRoute: '/',
      routes: {
        // '/' :(context)=> OnboardingPage(), 
        '/login' :(context)=> LoginScreen(), 
        '/signup' :(context)=> SignUpScreen(), 
        '/forgotPassword' :(context)=> ForgotPasswordScreen(), 
        '/verification' :(context)=> VerificationScreen(), 
        '/home' : (context)=> HomeScreen(),
      },
      // home: CounterAppBloc(),
    );
  }
}
