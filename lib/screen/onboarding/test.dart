// class CounterState {
//   final int count;
//   final String status;
//   const CounterState({required this.count, required this.status});

//   CounterState copyWith({
//       int? c, 
//       String? s
//     }) {
//     return CounterState(
//       count: c ?? this.count, 
//       status: s ?? this.status
//     );
//   }

// }

// void main() {
//   CounterState state1 = CounterState(count: 12, status: 'idle');
//   CounterState state2 = state1.copyWith(c: 10);
//   print('${state2.count} and ${state2.status}');
//   print(state1.hashCode);
//   print(state2.hashCode);
//   print(identical(state1, state2));
// }


import 'package:flutter/material.dart';

class Tp extends ThemeExtension<Tp>{
  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;

  const Tp({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
  });

  @override
  ThemeExtension<Tp> copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
  }) {
    return Tp(
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
    );
  }

  
  @override
  ThemeExtension<Tp> lerp(
      covariant ThemeExtension<Tp>? other,
      double t,
      ) {
    if (other is! Tp) {
      return this;
    }

    return Tp(
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t)!,
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t)!,
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t)!,
    );
  }


}