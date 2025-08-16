late final AppEnv appEnv;

final kAppEnvDev = appEnv == AppEnv.dev;
final kAppEnvProd = appEnv == AppEnv.prod;

final String kReCaptchaV3SiteKey = switch (appEnv) {
  AppEnv.prod => '6LcnkqUrAAAAAAPwMlfGyaKiUgHFGdu_OPNSpplM',
  _ => throw UnsupportedError('Unsupported app environment: $appEnv'),
};

enum AppEnv {
  dev,
  prod,
}
