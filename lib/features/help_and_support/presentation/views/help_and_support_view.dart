import 'package:booking_hotels/features/help_and_support/presentation/views/widgets/help_and_support_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/styles.dart';
import '../../../../generated/assets.dart';

class HelpAndSupportView extends StatelessWidget {
  const HelpAndSupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(


          leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Image.asset(Assets.iconsBack),
          ),
          title: Text(
            "Help & Support",
            style: Styles.textStyle24,
          ),),

      body: HelpAndSupportViewBody(),
    );
  }
}
