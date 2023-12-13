class PasswordSetModel {
  PasswordSetModel({
      this.error,
      this.data, 
      this.errors,});

  PasswordSetModel.fromJson(dynamic json) {
    error = json['error'];
    data = json['data'];
    errors = json['errors'].toString();
  }
  bool? error;
  String? data;
  String? errors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['data'] = data;
    map['errors'] = errors;
    return map;
  }

}