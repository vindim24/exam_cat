
import 'package:hive/hive.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fact.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class Fact extends HiveObject{
  @HiveField(0)
  final String text;
  
  @HiveField(1)
  final String creationAt;

  Fact(this.text, this.creationAt);
  factory Fact.fromJson(Map<String, dynamic> json) => _$FactFromJson(json);
  Map<String, dynamic> toJson() => _$FactToJson(this);
  
}
