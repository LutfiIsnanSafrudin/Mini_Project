class ModelMenu {
  final int id;
  final String nama_menu;
  final double harga_menu;
  final int estimasi_menu;
  final int kategori_menu;
  final String path;

  ModelMenu(
      {required this.id,
      required this.nama_menu,
      required this.harga_menu,
      required this.estimasi_menu,
      required this.kategori_menu,
      required this.path});

  ModelMenu.fromMap(Map<String, dynamic> item)
      : id = item["id"],
        nama_menu = item["nama_menu"],
        harga_menu = item["harga_menu"],
        estimasi_menu = item["estimasi_menu"],
        kategori_menu = item["kategori_menu"],
        path = item["path"];

  Map<String, Object> toMap() {
    return {
      'id': id,
      'nama_menu': nama_menu,
      'harga_menu': harga_menu,
      'estimasi_menu': estimasi_menu,
      'kategori_menu': kategori_menu,
      'path': path
    };
  }
}
