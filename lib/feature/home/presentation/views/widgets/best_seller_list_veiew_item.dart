import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AssetsData.testImage,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'bookModel.volumeInfo.title!',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20.copyWith(),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'lakdnvklsmfdfv',
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // const Spacer(),
                    // const BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




//  SizedBox(
//       height: 125,
//       child: Row(
//         children: [
//           AspectRatio(
//             aspectRatio: 2.5 / 4,
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 image: const DecorationImage(
//                   fit: BoxFit.fill,
//                   image: AssetImage(
//                     AssetsData.testImage,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(
//             width: 30,
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width *0.5,
//                   child: const Text(
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 2,
//                     'Harry Poter and the Goblet of Fire',
//                     style: Styles.textStyle20,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 3,
//                 ),
//                 const Text(
//                   'J.K. Rolling',
//                   style: Styles.textStyle14,
//                 ),
//                 const SizedBox(
//                   height: 3,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       '19.9 € ',
//                       style: Styles.textStyle20.copyWith(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const Spacer(),
//                     const BookRating(),
//                   ],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
 