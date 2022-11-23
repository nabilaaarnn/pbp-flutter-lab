import 'dart:convert';
import 'package:counter_7/page/detail.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/myWatchListModel.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  _MyWatchListState createState() => _MyWatchListState();
}

class _MyWatchListState extends State<MyWatchListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('counter_07'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('My Watch List'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pop(
                    context,
                  );
                },
              ),
              ListTile(
               title: const Text('Data Budget'),
               onTap: () {
                  // Route menu ke halaman form
                  Navigator.pop(
                    context,
                  );
               },
              ), 
              ListTile(
                title: const Text('My Watch List'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                  );
                },
              ),             
            ],
          ),
        ),
        body: FutureBuilder(
            future: Mywatchlist.fetchMyWatchList(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada to do list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.separated(
                      padding: const EdgeInsets.all(20.0),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) {
                        return ListTile(
                          tileColor: Color.fromARGB(255, 179, 84, 156),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color.fromARGB(255, 116, 62, 123),
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          title: Text(
                            "${snapshot.data![index].fields.title}",
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                                  builder: (context) => MyDetailPage(
                                      modelWatchList: snapshot.data![index])
                            )
                                    );
                          },
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            height: 10,
                          ));
                }
              }
            }));
  }
}
