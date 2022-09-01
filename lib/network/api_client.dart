
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/fact.dart';

part 'api_client.g.dart';

@RestApi(baseUrl:"https://cat-fact.herokuapp.com")
abstract class RestClient{
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/facts")
  Future<List<Fact>> getFact();
}