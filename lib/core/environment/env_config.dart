import 'base_env_config.dart';
import 'global_env_config.dart';

enum Environment { global }

class EnvConfig {
  late BaseEnvConfig config;

  initConfig({Environment? environment}) {
    config = _getConfig(environment ?? null);
  }

  _getConfig([Environment? environment]) {
    switch (environment) {
      case Environment.global:
        return GlobalEnvConfig();
      default:
        return GlobalEnvConfig();
    }
  }
}
