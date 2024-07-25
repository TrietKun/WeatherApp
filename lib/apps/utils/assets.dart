class AssetsCustom {
  static String getLinkImg(String name) =>
      'assets/${name.replaceAll(' ', '').toLowerCase()}.png';
}

class MyKey {
  static const String api_token = '949dddde042a4469741e42ddf94a34a0';
}
