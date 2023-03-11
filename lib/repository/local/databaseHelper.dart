import 'package:kapepi_app/repository/local/pasien.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  // initial DB
  static Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(join(path, 'puskesmasDB'),
        onCreate: (database, version) async {
      await database.execute(
          '''
        CREATE TABLE pasien(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        noRM TEXT NOT NULL,
        nik TEXT NOT NULL,
        nama TEXT NOT NULL,
        kk TEXT,
        ibu TEXT,
        jenisKelamin TEXT NOT NULL,
        tLahir TEXT NOT NULL,
        tglLahir TEXT NOT NULL,
        alamat TEXT NOT NULL,
        kelurahan TEXT, 
        puskesmas TEXT NOT NULL,
        status TEXT NOT NULL,
        caraBayar TEXT NOT NULL
        )       
        '''
      );
    }, version: 1);
  }

  // simpan data pasien setelah dicari
static Future<int> saveDataPasien(Pasien data) async{
    final Database db = await initializeDB();
    final id = await db.insert('pasien', data.toMap());
    return id;
}

// menampilkan riwayat
static Future<List<Pasien>> getPasienRiwayat() async{
    final db = await initializeDB();
    List<Map> maps = await db.query('pasien', orderBy: "id");
    List<Pasien> pasiens = [];
    if(maps.length>0){
      for(int i=0;i<maps.length;i++){
        pasiens.add(Pasien.fromMap(maps[i] as Map<String, dynamic>));
      }
    }
    return pasiens;
}

//delete pencarian


}
