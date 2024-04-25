// import 'package:ecommerce_1/data/data.dart';
// import 'package:ecommerce_1/utils/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:go_router/go_router.dart';

// import '../../widgets/widgets.dart';

// class DetailsScreen extends StatelessWidget {
//   static DetailsScreen builder(BuildContext context, GoRouterState state) {
//     return  const DetailsScreen();
//   }

//   const DetailsScreen({super.key,  this.productId});
//    final String? productId; 

//   @override
//   Widget build(BuildContext context) {
//     final colors = context.colorScheme.primary;
//     final colorScheme = context.colorScheme;
//     final sizeWidth = context.width;
//     final sizeHeight = context.height;
//     final product  = combo.length;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               ShowSquare(
//                 width: sizeWidth,
//                 colors: colors.primary,
//                 height: sizeHeight * 0.6,
//               ),
//             ],
//           ),
//           Positioned(
//             left: 20,
//             top: 50,
//             child: RectangleContainer(
//               colors: colorScheme.surface,
//               width: sizeWidth * 0.28,
//               height: sizeHeight * 0.05,
//               radius: 200,
//               padding: 5,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.arrow_back_ios,
//                     color: colors.black,
//                     size: 30,
//                   ),
//                   DisplayWhiteText(
//                       text: 'Go back',
//                       textColor: colors.black,
//                       fontSize: 12,
//                       textAlign: TextAlign.center)
//                 ],
//               ),
//             ),
//           ),
//            Positioned(
//             left: 0,
//             top: -130,
//             right: 0,
//             bottom: 200,
//             child: Image(
//               image: AssetImage(product['image']),
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             child: ShowSquare(
//               width: sizeWidth,
//               colors: colorScheme.surface,
//               topLeft: 25,
//               topRight: 25,
//               height: sizeHeight * 0.57,
//               child: Expanded(
//                   child: SingleChildScrollView(
//                 physics: const BouncingScrollPhysics(),
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Gap(20),
//                     DisplayWhiteText(
//                       text: product['name'],
//                       textColor: colors.black,
//                       textAlign: TextAlign.left,
//                     ),
//                     const Gap(20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             CircleContainer(
//                               height: 40,
//                               width: 40,
//                               border: 1,
//                               borderColor: colors.black,
//                               child: const Icon(Icons.remove),
//                             ),
//                             const Gap(20),
//                             DisplayWhiteText(
//                                 text: '1', textColor: colors.black),
//                             const Gap(20),
//                             CircleContainer(
//                               height: 40,
//                               width: 40,
//                               colors: colors.primary.withOpacity(0.2),
//                               child: Icon(
//                                 Icons.add,
//                                 color: colors.primary,
//                               ),
//                             ),
//                           ],
//                         ),
//                         DisplayWhiteText(
//                           text: '\$ ${product['price']}0',
//                           textColor: colors.black,
//                           textAlign: TextAlign.center,
//                           fontSize: 20,
//                         ),
//                       ],
//                     ),
//                     const Gap(20),
//                     const Divider(
//                       thickness: 1.3,
//                     ),
//                     const Gap(20),
//                     DisplayWhiteText(
//                       text: product['subTitle'],
//                       textColor: colors.black,
//                       fontSize: 17,
//                       fontWeight: FontWeight.w400,
//                     ),
//                     const Gap(5),
//                     RectangleContainer(
//                       colors: colors.primary,
//                       width: context.width * 0.51,
//                       height: 2,
//                     ),
//                     const Gap(20),
//                     DisplayWhiteText(
//                       text:
//                           product['subName'],
//                       textColor: colors.black,
//                       fontSize: 12,
//                       fontWeight: FontWeight.normal,
//                       heightText: 1.7,
//                     ),
//                     const Gap(20),
//                     const Divider(
//                       thickness: 1.3,
//                     ),
//                     const Gap(20),
//                     DisplayWhiteText(
//                       text:
//                          product['description'],
//                       textColor: colors.black,
//                       fontSize: 10,
//                       fontWeight: FontWeight.normal,
//                       heightText: 1.7,
//                     ),
//                     const Gap(20),
//                     Row(
//                       children: [
//                         CircleContainer(
//                           height: 50,
//                           width: 50,
//                           colors: colors.primary.withOpacity(0.2),
//                           child: Icon(
//                             Icons.favorite_border,
//                             color: colors.primary,
//                             size: 30,
//                           ),
//                         ),
//                         const Spacer(),
//                         RectangleContainer(
//                           height: sizeHeight * 0.07,
//                           width: sizeWidth * 0.7,
//                           colors: colors.primary,
//                           radius: 10,
//                           child: const DisplayWhiteText(
//                             text: 'Add to basket',
//                             fontSize: 13,
//                             fontWeight: FontWeight.bold,
//                             textAlign: TextAlign.center,
//                           ),
//                         )
//                       ],
//                     ),
//                     const Gap(20),
//                   ],
//                 ),
//               )),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// // Stack(
// //         children: [
// //           Column(
// //             children: [
// //               ShowSquare(
// //                 width: sizeWidth,
// //                 colors: colors.primary,
// //                 height: sizeHeight * 0.6,
// //               ),
// //             ],
// //           ),
// //           Positioned(
// //             left: 20,
// //             top: 50,
// //             child: RectangleContainer(
// //               colors: colorScheme.surface,
// //               width: sizeWidth * 0.28,
// //               height: sizeHeight * 0.05,
// //               radius: 200,
// //               padding: 5,
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 crossAxisAlignment: CrossAxisAlignment.center,
// //                 children: [
// //                   Icon(
// //                     Icons.arrow_back_ios,
// //                     color: colors.black,
// //                     size: 30,
// //                   ),
// //                   DisplayWhiteText(
// //                       text: 'Go back',
// //                       textColor: colors.black,
// //                       fontSize: 12,
// //                       textAlign: TextAlign.center)
// //                 ],
// //               ),
// //             ),
// //           ),
// //           const Positioned(
// //             left: 0,
// //             top: -130,
// //             right: 0,
// //             bottom: 200,
// //             child: Image(
// //               image: AssetImage('assets/images/combo3.png'),
// //             ),
// //           ),
// //           Positioned(
// //             bottom: 0,
// //             child: ShowSquare(
// //               width: sizeWidth,
// //               colors: colorScheme.surface,
// //               topLeft: 25,
// //               topRight: 25,
// //               height: sizeHeight * 0.57,
// //               child: Expanded(
// //                   child: SingleChildScrollView(
// //                 physics: const BouncingScrollPhysics(),
// //                 padding: const EdgeInsets.symmetric(
// //                   horizontal: 20,
// //                 ),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     const Gap(20),
// //                     DisplayWhiteText(
// //                       text: 'Quinoa Fruit Salad',
// //                       textColor: colors.black,
// //                       textAlign: TextAlign.left,
// //                     ),
// //                     const Gap(20),
// //                     Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         Row(
// //                           children: [
// //                             CircleContainer(
// //                               height: 40,
// //                               width: 40,
// //                               border: 1,
// //                               borderColor: colors.black,
// //                               child: const Icon(Icons.remove),
// //                             ),
// //                             const Gap(20),
// //                             DisplayWhiteText(
// //                                 text: '1', textColor: colors.black),
// //                             const Gap(20),
// //                             CircleContainer(
// //                               height: 40,
// //                               width: 40,
// //                               colors: colors.primary.withOpacity(0.2),
// //                               child: Icon(
// //                                 Icons.add,
// //                                 color: colors.primary,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                         DisplayWhiteText(
// //                           text: '\$ 20.00',
// //                           textColor: colors.black,
// //                           textAlign: TextAlign.center,
// //                           fontSize: 20,
// //                         ),
// //                       ],
// //                     ),
// //                     const Gap(20),
// //                     const Divider(
// //                       thickness: 1.3,
// //                     ),
// //                     const Gap(20),
// //                     DisplayWhiteText(
// //                       text: 'One Pack Contains:',
// //                       textColor: colors.black,
// //                       fontSize: 17,
// //                       fontWeight: FontWeight.w400,
// //                     ),
// //                     const Gap(5),
// //                     RectangleContainer(
// //                       colors: colors.primary,
// //                       width: context.width * 0.51,
// //                       height: 2,
// //                     ),
// //                     const Gap(20),
// //                     DisplayWhiteText(
// //                       text:
// //                           'Red Quinoa, Lime, Honey, Blueberry, Strawberry, Mango, Fresh mint.',
// //                       textColor: colors.black,
// //                       fontSize: 12,
// //                       fontWeight: FontWeight.normal,
// //                       heightText: 1.7,
// //                     ),
// //                     const Gap(20),
// //                     const Divider(
// //                       thickness: 1.3,
// //                     ),
// //                     const Gap(20),
// //                     DisplayWhiteText(
// //                       text:
// //                           'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
// //                       textColor: colors.black,
// //                       fontSize: 10,
// //                       fontWeight: FontWeight.normal,
// //                       heightText: 1.7,
// //                     ),
// //                     const Gap(20),
// //                     Row(
// //                       children: [
// //                         CircleContainer(
// //                           height: 50,
// //                           width: 50,
// //                           colors: colors.primary.withOpacity(0.2),
// //                           child: Icon(
// //                             Icons.favorite_border,
// //                             color: colors.primary,
// //                             size: 30,
// //                           ),
// //                         ),
// //                         const Spacer(),
// //                         RectangleContainer(
// //                           height: sizeHeight * 0.07,
// //                           width: sizeWidth * 0.7,
// //                           colors: colors.primary,
// //                           radius: 10,
// //                           child: const DisplayWhiteText(
// //                             text: 'Add to basket',
// //                             fontSize: 13,
// //                             fontWeight: FontWeight.bold,
// //                             textAlign: TextAlign.center,
// //                           ),
// //                         )
// //                       ],
// //                     ),
// //                     const Gap(20),
// //                   ],
// //                 ),
// //               )),
// //             ),
// //           )
// //         ],
// //       ),

























// // class _DetailsCustom extends StatelessWidget {
// //   const _DetailsCustom();

// //   @override
// //   Widget build(BuildContext context) {
// //     final colors = context.colorScheme.primary;
// //         final sizeWidth = context.width;
// //     final sizeHeight = context.height;
// //     return SingleChildScrollView(
// //       physics: const BouncingScrollPhysics(),
// //       padding: const EdgeInsets.symmetric(
// //         horizontal: 20,
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           const Gap(20),
// //           DisplayWhiteText(
// //             text: 'Quinoa Fruit Salad',
// //             textColor: colors.black,
// //             textAlign: TextAlign.left,
// //           ),
// //           const Gap(20),
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: [
// //               Row(
// //                 children: [
// //                   CircleContainer(
// //                     height: 40,
// //                     width: 40,
// //                     border: 1,
// //                     borderColor: colors.black,
// //                     child: const Icon(Icons.remove),
// //                   ),
// //                   const Gap(20),
// //                   DisplayWhiteText(text: '1', textColor: colors.black),
// //                   const Gap(20),
// //                   CircleContainer(
// //                     height: 40,
// //                     width: 40,
// //                     colors: colors.primary.withOpacity(0.2),
// //                     child: Icon(
// //                       Icons.add,
// //                       color: colors.primary,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               DisplayWhiteText(
// //                 text: '\$ 20.00',
// //                 textColor: colors.black,
// //                 textAlign: TextAlign.center,
// //                 fontSize: 20,
// //               ),
// //             ],
// //           ),
// //           const Gap(20),
// //           const Divider(
// //             thickness: 1.3,
// //           ),
// //           const Gap(20),
// //           DisplayWhiteText(
// //             text: 'One Pack Contains:',
// //             textColor: colors.black,
// //             fontSize: 17,
// //             fontWeight: FontWeight.w400,
// //           ),
// //           const Gap(5),
// //           RectangleContainer(
// //             colors: colors.primary,
// //             width: context.width * 0.51,
// //             height: 2,
// //           ),
// //           const Gap(20),
// //           DisplayWhiteText(
// //             text:
// //                 'Red Quinoa, Lime, Honey, Blueberry, Strawberry, Mango, Fresh mint.',
// //             textColor: colors.black,
// //             fontSize: 12,
// //             fontWeight: FontWeight.normal,
// //             heightText: 1.7,
// //           ),
// //           const Gap(20),
// //           const Divider(
// //             thickness: 1.3,
// //           ),
// //           const Gap(20),
// //           DisplayWhiteText(
// //             text:
// //                 'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
// //             textColor: colors.black,
// //             fontSize: 10,
// //             fontWeight: FontWeight.normal,
// //             heightText: 1.7,
// //           ),
// //                  const Gap(20),
// //           Row(
// //             children: [
// //               CircleContainer(
// //                 height: 50,
// //                 width: 50,
// //                 colors: colors.primary.withOpacity(0.2),
// //                 child:  Icon(Icons.favorite_border, color: colors.primary, size: 30,),
// //               ),
// //               const Spacer(),
// //               RectangleContainer(
// //                 height: sizeHeight * 0.07,
// //                 width: sizeWidth * 0.7,
// //                 colors: colors.primary,
// //                 radius: 10,
// //                 child: const DisplayWhiteText(
// //                   text: 'Add to basket',
// //                   fontSize: 13,
// //                   fontWeight: FontWeight.bold,
// //                   textAlign: TextAlign.center,
// //                 ),
// //               )
// //             ],
// //           ),
// //             const Gap(20),
// //         ],
// //       ),
// //     );
// //   }
// // }
