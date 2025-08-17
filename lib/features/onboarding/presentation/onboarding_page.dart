import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_family_photos/gen/strings.g.dart';

class OnboardingPage extends HookConsumerWidget {
  const OnboardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 24,
          children: [
            Text(
              i18n.familyPhotos,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            FractionallySizedBox(
              widthFactor: 0.5,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  labelText: i18n.childNameKanji,
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text(i18n.seePhotos),
            ),
          ],
        ),
      ),
    );
  }
}
