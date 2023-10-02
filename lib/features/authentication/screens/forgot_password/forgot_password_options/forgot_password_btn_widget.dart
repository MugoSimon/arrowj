import 'package:flutter/material.dart';

class ForgotPasswordBtnWidget extends StatelessWidget {
  const ForgotPasswordBtnWidget({
    Key? key,
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onTap,
  }) : super(key: key);

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey.shade200),
        child: Row(
          children: [
            Icon(
              btnIcon,
              size: 60.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
