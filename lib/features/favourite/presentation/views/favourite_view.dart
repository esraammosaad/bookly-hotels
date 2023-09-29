import 'package:booking_hotels/features/favourite/presentation/views/widgets/favourite_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/routes.dart';
import '../../../../core/utils/styles.dart';
import '../../../../generated/assets.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              context.pushReplacement(AppRoutes.kHomeView);
            },
            child: Image.asset(Assets.iconsBack)),
        title: Text("Favorite", style: Styles.textStyle24),
      ),
      body: const FavouriteViewBody(),
    );
  }
}
