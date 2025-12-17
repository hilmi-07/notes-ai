enum AppEnvironment { dev, prod }

class AppConfig {
  final AppEnvironment environment;

  const AppConfig({
    required this.environment,
  });

  bool get isDev => environment == AppEnvironment.dev;
  bool get isProd => environment == AppEnvironment.prod;
}
