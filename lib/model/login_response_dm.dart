import 'dart:convert';
/// access_token : "string"
/// refresh_token : "string"
/// access_token_expiration : "2025-01-26T20:11:06.222Z"
/// refresh_token_expiration : "2025-01-26T20:11:06.222Z"
/// country_id : 0
/// subscription_id : 0

LoginResponseDm loginResponseDmFromJson(String str) => LoginResponseDm.fromJson(json.decode(str));
String loginResponseDmToJson(LoginResponseDm data) => json.encode(data.toJson());
class LoginResponseDm {

  String? accessToken;
  String? refreshToken;
  String? accessTokenExpiration;
  String? refreshTokenExpiration;
  int? countryId;
  int? subscriptionId;
  String? message;
  String? error;

  LoginResponseDm({
      this.accessToken, 
      this.refreshToken, 
      this.accessTokenExpiration, 
      this.refreshTokenExpiration, 
      this.countryId, 
      this.subscriptionId,
    this.message,
    this.error
  });

  LoginResponseDm.fromJson(dynamic json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    accessTokenExpiration = json['access_token_expiration'];
    refreshTokenExpiration = json['refresh_token_expiration'];
    countryId = json['country_id'];
    subscriptionId = json['subscription_id'];
    message = json['message'];
    error = json['error'];
  }

LoginResponseDm copyWith({  String? accessToken,
  String? refreshToken,
  String? accessTokenExpiration,
  String? refreshTokenExpiration,
  int? countryId,
  int? subscriptionId,
  String? message,
  String? error,
}) => LoginResponseDm(  accessToken: accessToken ?? this.accessToken,
  refreshToken: refreshToken ?? this.refreshToken,
  accessTokenExpiration: accessTokenExpiration ?? this.accessTokenExpiration,
  refreshTokenExpiration: refreshTokenExpiration ?? this.refreshTokenExpiration,
  countryId: countryId ?? this.countryId,
  subscriptionId: subscriptionId ?? this.subscriptionId,
  message: message ?? this.message,
  error: error ?? this.error,

);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access_token'] = accessToken;
    map['refresh_token'] = refreshToken;
    map['access_token_expiration'] = accessTokenExpiration;
    map['refresh_token_expiration'] = refreshTokenExpiration;
    map['country_id'] = countryId;
    map['subscription_id'] = subscriptionId;
    map['message'] = message;
    map['error'] = error;

    return map;
  }

}