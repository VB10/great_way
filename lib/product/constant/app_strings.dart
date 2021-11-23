class AppStrings {
  static AppStrings? _instace;
  static AppStrings get instance {
    _instace ??= AppStrings._init();
    return _instace!;
  }

  AppStrings._init();
}
