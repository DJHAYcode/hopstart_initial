// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'package:flutter/material.dart';
// import '../models/user_account.dart'; // Import your UserAccount model

// class DBHelper {
//   static Database? _db;
//   static const String tableUserAccount = 'user_account';
//   static const String tableAppData = 'app_data';

//   // Open or create the database
//   Future<Database> get database async {
//     if (_db != null) {
//       print('DB already opened');
//       return _db!;
//     } else {
//       print('Opening DB...');
//       _db = await initializeDatabase();
//       print('DB opened');
//       return _db!;
//     }
//   }

//   // Initialize the database
//   Future<Database> initializeDatabase() async {
//     print('Initializing DB...');
//     var databasePath = await getDatabasesPath();
//     var path = join(databasePath, 'user_accounts.db');
    
//     // Open the database and create the tables if they don't exist
//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: (db, version) async {
//         print('Creating tables...');
        
//         // User account table
//         await db.execute(
//           'CREATE TABLE $tableUserAccount (email TEXT PRIMARY KEY, password TEXT)',
//         );
//         print('User account table created');
        
//         // App data table
//         await db.execute(
//           'CREATE TABLE $tableAppData (email TEXT PRIMARY KEY, username TEXT, petname TEXT, breed TEXT, age INTEGER)',
//         );
//         print('App data table created');
//       },
//     );
//   }

//   // Insert user account
//   Future<int> insertUserAccount(UserAccount userAccount) async {
//     final db = await database;
//     print('Inserting user account into db...');
//     var result = await db.insert(tableUserAccount, userAccount.toMap());
//     print('User account inserted with id: $result');
//     return result;
//   }

//   // Insert app data
//   Future<int> insertAppData(UserAccount userAccount) async {
//     final db = await database;
//     print('Inserting app data...');
//     var result = await db.insert(
//       tableAppData,
//       {
//         'email': userAccount.email,
//         'username': userAccount.username,
//         'petname': userAccount.petname,
//         'breed': userAccount.breed,
//         'age': userAccount.age,
//       },
//     );
//     print('App data inserted with id: $result');
//     return result;
//   }

//   // Get user account by email
//   Future<UserAccount?> getUserAccountByEmail(String email) async {
//     final db = await database;
//     print('Fetching user account with email: $email...');
//     var result = await db.query(
//       tableUserAccount,
//       where: 'email = ?',
//       whereArgs: [email],
//     );
//     if (result.isNotEmpty) {
//       print('User account fetched');
//       return UserAccount.fromMap(result.first);
//     } else {
//       print('No user account found');
//       return null;
//     }
//   }

//   // Get app data by email
//   Future<Map<String, dynamic>?> getAppDataByEmail(String email) async {
//     final db = await database;
//     print('Fetching app data with email: $email...');
//     var result = await db.query(
//       tableAppData,
//       where: 'email = ?',
//       whereArgs: [email],
//     );
//     if (result.isNotEmpty) {
//       print('App data fetched');
//       return result.first;
//     } else {
//       print('No app data found');
//       return null;
//     }
//   }

//   // Update user account
//   Future<int> updateUserAccount(UserAccount userAccount) async {
//     final db = await database;
//     print('Updating user account...');
//     var result = await db.update(
//       tableUserAccount,
//       userAccount.toMap(),
//       where: 'email = ?',
//       whereArgs: [userAccount.email],
//     );
//     print('User account updated, affected rows: $result');
//     return result;
//   }

//   // Update app data
//   Future<int> updateAppData(Map<String, dynamic> appData, String email) async {
//     final db = await database;
//     print('Updating app data...');
//     var result = await db.update(
//       tableAppData,
//       appData,
//       where: 'email = ?',
//       whereArgs: [email],
//     );
//     print('App data updated, affected rows: $result');
//     return result;
//   }

//   // Delete user account
//   Future<int> deleteUserAccount(String email) async {
//     final db = await database;
//     print('Deleting user account with email: $email...');
//     var result = await db.delete(
//       tableUserAccount,
//       where: 'email = ?',
//       whereArgs: [email],
//     );
//     print('User account deleted, affected rows: $result');
//     return result;
//   }

//   // Delete app data
//   Future<int> deleteAppData(String email) async {
//     final db = await database;
//     print('Deleting app data with email: $email...');
//     var result = await db.delete(
//       tableAppData,
//       where: 'email = ?',
//       whereArgs: [email],
//     );
//     print('App data deleted, affected rows: $result');
//     return result;
//   }

//   // Close the database
//   Future<void> closeDatabase() async {
//     var dbClient = await database;
//     print('Closing DB...');
//     dbClient.close();
//     print('DB closed');
//   }
// }
