import 'package:newmaster/presentation/resources/app_resources.dart';
import 'package:newmaster/util/app_utils.dart';
import 'package:flutter/material.dart';

class ChartHolder extends StatelessWidget {

  const ChartHolder({
    Key? key, required chartSample,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const SizedBox(width: 6),
            Text(
              "",
              style: const TextStyle(
                color: AppColors.primary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.code,
                color: AppColors.primary,
              ),
              tooltip: 'Source code',
            ),
          ],
        ),
        const SizedBox(height: 2),
        Container(
          decoration: const BoxDecoration(
            color: AppColors.itemsBackground,
            borderRadius:
                BorderRadius.all(Radius.circular(AppDimens.defaultRadius)),
          ),
          
        ),
      ],
    );
  }
}
