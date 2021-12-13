// ignore_for_file: prefer_const_constructors
import 'package:coffe_shop/detailproduk.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main() {
  runApp(const DepanPage());
}

class DepanPage extends StatelessWidget {
  const DepanPage({Key? key}) : super(key: key);

  final String url = 'http://127.0.0.1:8000/api/products';

  Future getProducts() async {
    var response = await http.get(Uri.parse(url));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  FutureBuilder(
      future: getProducts(),
      builder:(context, AsyncSnapshot snapshot){
        if(snapshot.hasData){
          return ListView.builder(
            itemCount: snapshot.data['data'].length,
            itemBuilder: (context, index){
            return SizedBox(
              height: 180,
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetail(product: snapshot.data['data'] [index],)));
                      },
                      child: Container(
                      padding: EdgeInsets.all(10),
                      height: 120,
                      width: 120,
                      child: Image.network(snapshot.data['data'][index]['image_url']),
                      ),
                    ),
                    
                    Expanded(
                      
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(snapshot.data['data'][index]['nama'], 
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(snapshot.data['data'][index]['deskripsi']),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.edit),
                                Text(snapshot.data['data'][index]['harga'].toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        }else{
          return Text('data error');
        }
      }
      ),
      );
  }
}
