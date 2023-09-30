import 'package:booking_hotels/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/routes.dart';
import '../../../../core/utils/styles.dart';
import '../../../../generated/assets.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pushReplacement(AppRoutes.kHomeView);
          },
          child: Image.asset(Assets.iconsBack),
        ),
        title: Text(
          "Profile",
          style: Styles.textStyle24,
        ),
      ),
      body: const ProfileViewBody(),
    );
  }
}
