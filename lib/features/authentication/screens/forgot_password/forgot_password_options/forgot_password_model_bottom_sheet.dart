import 'package:arrowj/features/authentication/screens/forgot_password/forgot_password_mail/forgot_password_mail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forgot_password_btn_widget.dart';

class ForgotPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        context: context,
        builder: (context) => Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tForgotPasswordTitle,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    tForgotPasswordSubTitle,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 30.0),
                  ForgotPasswordBtnWidget(
                    btnIcon: Icons.mail_outline_rounded,
                    title: tEmail,
                    subTitle: tResetViaEmail,
                    onTap: () {
                      Navigator.pop(context);
                      Get.to(
                        () => const ForgetPasswordMailScreen(),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ForgotPasswordBtnWidget(
                    btnIcon: Icons.mobile_friendly_rounded,
                    title: tPhone,
                    subTitle: tResetViaPhone,
                    onTap: () {},
                  ),
                ],
              ),
            ));
  }
}
