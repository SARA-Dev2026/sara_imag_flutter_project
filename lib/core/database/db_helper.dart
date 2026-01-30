import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'app_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // Table 1: Users (For Authentication)
        await db.execute('''
          CREATE TABLE users(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            username TEXT UNIQUE,
            password TEXT
          )
        ''');

        // Table 2: Departments (For Relationship)
        await db.execute('''
          CREATE TABLE departments(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT
          )
        ''');

        // Table 3: Students (Relational Table)
        await db.execute('''
          CREATE TABLE students(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            grade TEXT,
            department_id INTEGER,
            FOREIGN KEY (department_id) REFERENCES departments (id)
          )
        ''');

        // Insert some initial data
        await db.insert('departments', {'name': 'General'});
        await db.insert('departments', {'name': 'IT'});
        await db.insert('users', {'username': 'admin', 'password': '123'}); // Default user
      },
    );
  }

  // --- Auth Methods ---
  Future<bool> registerUser(String username, String password) async {
    final db = await database;
    try {
      await db.insert('users', {'username': username, 'password': password});
      return true;
    } catch (e) {
      print("Register Error: $e");
      return false; // Username likely exists
    }
  }

  Future<bool> loginUser(String username, String password) async {
    final db = await database;
    List<Map> result = await db.query(
      'users',
      where: 'username = ? AND password = ?',
      whereArgs: [username, password],
    );
    return result.isNotEmpty;
  }

  // --- Student Methods ---
  Future<int> addStudent(String name, String grade, int departmentId) async {
    final db = await database;
    return await db.insert('students', {
      'name': name,
      'grade': grade,
      'department_id': departmentId,
    });
  }

  Future<List<Map<String, dynamic>>> getStudents() async {
    final db = await database;
    return await db.rawQuery('''
      SELECT students.id, students.name, students.grade, departments.name as dept_name 
      FROM students 
      LEFT JOIN departments ON students.department_id = departments.id
    ''');
  }
}
