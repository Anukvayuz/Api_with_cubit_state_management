import 'dart:developer';

import 'package:api_handling_with_cubit/data/model/api/api.dart';
import 'package:api_handling_with_cubit/data/model/post_model.dart';
import 'package:dio/dio.dart';

class PostRepository {
  API api = API();

  Future<List<Model>> fetchPosts() async {
    try {
      Response response = await api.sendRequest.get("/posts");
      List<dynamic> postMaps = response.data;
      //log("type of postMap ${postMaps.runtimeType}");

      //model ke data ko ak ak karke postmaps me convert kiya 
      return postMaps.map((e) => Model.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (ex) {
      throw ex;
    }
  }
}