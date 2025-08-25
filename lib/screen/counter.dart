// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:smart_bite_ai/bloc/counter/counter_bloc.dart';

// class CounterAppBloc extends StatelessWidget {
//   const CounterAppBloc({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(height: 30),
//           Center(
//             child: BlocBuilder<CounterBloc, CounterState>(
//               builder: (context, state) {
//                 if(state.value == 0 && state.showResetIndicator){
//                   return Container(
//                     height: 70,
//                     width: 70,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.yellow,
//                     ),
//                     child: Center(
//                       child: Text('${state.value}',
//                         style: TextStyle(
//                           fontSize: 40,
//                           color: Colors.black,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   );
//                 }
//                 return SizedBox(
//                     height: 70,
//                     width: 70,
                    
//                     child: Center(
//                       child: Text('${state.value}',
//                         style: TextStyle(
//                           fontSize: 40,
//                           color: Colors.black,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   );
//               },
//             ),
//           ),
          

//           SizedBox(height: 120,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FloatingActionButton(
//                 onPressed: ()=> BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvent()),
//                 child: Icon(Icons.add),          
//               ),

//               SizedBox(width: 20,),

//               FloatingActionButton(
//                 onPressed: ()=> BlocProvider.of<CounterBloc>(context).add(DecrementCounterEvent()),
//                 child: Icon(Icons.minimize_sharp),          
//               ),

//               SizedBox(width: 20,),
              
//               FloatingActionButton(
//                 onPressed: (){
//                   BlocProvider.of<CounterBloc>(context).add(ResetCounterEvent());
//                 },
                  
//                 child: Icon(Icons.restart_alt_rounded),          
//               ),
//             ],
//           )

//         ],
//       ),
//     );
//   }
// }
