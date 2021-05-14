import 'package:chat/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


void main() async{
  runApp(MyApp());

 /*
 setando um dado
 Firestore.instance.collection("menssagens").document("msg2").collection("arquivos").document("imagens").setData({
    "foto": "foto.png"
  });*/
  
  /*
  visualizando todas os documents
  QuerySnapshot snapshot = await Firestore.instance.collection("menssagens").getDocuments();
  snapshot.documents.forEach((d) {
    print(d.data);
    print(d.documentID);
  });*/

  /*
  atualizando um documento
  QuerySnapshot snapshot = await Firestore.instance.collection("menssagens").getDocuments();
  snapshot.documents.forEach((d) {
    d.reference.updateData({"read": false});
  });*/

  /*
  visualizando um documento expecífico
  DocumentSnapshot snapshot = await Firestore.instance.collection("menssagens").document("msg3").get();
  print(snapshot.data);*/

  /*
  atualizando em tempo real todos os documetos
  Firestore.instance.collection("menssagens").snapshots().listen((dado) {
    dado.documents.forEach((d) {
      print(d.data);
    });
  });*/

 /* Firestore.instance.collection("menssagens").document("msg2").snapshots().listen((dado) {
    print(dado.data);
  });*/

}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.blue
        )
      ),
      home: ChatScreen(),
    );
  }
}

