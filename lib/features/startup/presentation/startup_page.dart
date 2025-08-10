import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_family_photos/features/startup/application/app_startup.dart';
import 'package:kingu_family_photos/gen/strings.g.dart';
import 'package:kingu_family_photos/utils/my_logger.dart';

class AppStartupWidget extends HookConsumerWidget {
  const AppStartupWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(appStartupProvider)
        .maybeWhen(
          orElse: () => const AppStartupLoadingWidget(),
          error: (error, trace) {
            logger.handle(error, trace);

            return AppStartupErrorWidget(
              // Discard and try to initialize again
              onRetry: () => ref.invalidate(appStartupProvider),
            );
          },
        );
  }
}

class AppStartupLoadingWidget extends StatelessWidget {
  const AppStartupLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}

class AppStartupErrorWidget extends StatelessWidget {
  const AppStartupErrorWidget({required this.onRetry, super.key});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              i18n.anUnexpectedErrorOccurred,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Gap(16),
            ElevatedButton(
              onPressed: onRetry,
              child: Text(i18n.retry),
            ),
          ],
        ),
      ),
    );
  }
}
