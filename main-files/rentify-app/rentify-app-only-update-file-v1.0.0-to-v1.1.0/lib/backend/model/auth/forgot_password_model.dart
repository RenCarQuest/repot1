// To parse this JSON data, do
//
//     final forgotPasswordModel = forgotPasswordModelFromJson(jsonString);

import 'dart:convert';

ForgotPasswordModel forgotPasswordModelFromJson(String str) =>
    ForgotPasswordModel.fromJson(json.decode(str));

String forgotPasswordModelToJson(ForgotPasswordModel data) =>
    json.encode(data.toJson());

class ForgotPasswordModel {
  Message message;
  Data data;
  String type;

  ForgotPasswordModel({
    required this.message,
    required this.data,
    required this.type,
  });

  factory ForgotPasswordModel.fromJson(Map<String, dynamic> json) =>
      ForgotPasswordModel(
        message: Message.fromJson(json["message"]),
        data: Data.fromJson(json["data"]),
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "message": message.toJson(),
        "data": data.toJson(),
        "type": type,
      };
}

class Data {
  String token;
  String code;
  String waitTime;

  Data({
    required this.token,
    required this.code,
    required this.waitTime,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
        code: json["code"],
        waitTime: json["wait_time"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "code": code,
        "wait_time": waitTime,
      };
}

class Message {
  List<String> success;

  Message({
    required this.success,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        success: List<String>.from(json["success"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "success": List<dynamic>.from(success.map((x) => x)),
      };
}
