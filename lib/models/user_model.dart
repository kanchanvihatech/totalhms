class UserModel {
  bool? error;
  Data? data;
  Null? errors;

  UserModel({this.error, this.data, this.errors});

  UserModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    errors = json['errors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['errors'] = this.errors;
    return data;
  }
}

class Data {
  UserInfo? userInfo;
  List<Null>? permissionsKey;
  bool? checkAdmin;
  bool? checkSuperAdmin;
  bool? checkCustomerServiceAdmin;
  bool? isSuper;
  bool? assignGroup;
  String? baseUrl;
  String? accessToken;
  String? tokenType;
  int? expiresIn;

  Data(
      {this.userInfo,
        this.permissionsKey,
        this.checkAdmin,
        this.checkSuperAdmin,
        this.checkCustomerServiceAdmin,
        this.isSuper,
        this.assignGroup,
        this.baseUrl,
        this.accessToken,
        this.tokenType,
        this.expiresIn});

  Data.fromJson(Map<String, dynamic> json) {
    userInfo = json['user_info'] != null
        ? new UserInfo.fromJson(json['user_info'])
        : null;

    checkAdmin = json['checkAdmin'];
    checkSuperAdmin = json['checkSuperAdmin'];
    checkCustomerServiceAdmin = json['checkCustomerServiceAdmin'];
    isSuper = json['is_super'];
    assignGroup = json['assign_group'];
    baseUrl = json['base_url'];
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userInfo != null) {
      data['user_info'] = this.userInfo!.toJson();
    }

    data['checkAdmin'] = this.checkAdmin;
    data['checkSuperAdmin'] = this.checkSuperAdmin;
    data['checkCustomerServiceAdmin'] = this.checkCustomerServiceAdmin;
    data['is_super'] = this.isSuper;
    data['assign_group'] = this.assignGroup;
    data['base_url'] = this.baseUrl;
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['expires_in'] = this.expiresIn;
    return data;
  }
}

class UserInfo {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  int? companyId;
  int? roleId;
  String? customerStripeId;
  String? paymentMethod;
  String? fikenCustomerId;
  String? address;
  String? city;
  String? phoneNumber;
  String? personalNumber;
  String? avatar;
  int? zipCode;
  int? addedBy;
  String? status;
  Null? activeDate;
  String? lastLogin;
  Null? rememberToken;
  String? createdAt;
  String? updatedAt;
  String? fullName;
  Role? role;
  Company? company;

  UserInfo(
      {this.id,
        this.email,
        this.firstName,
        this.lastName,
        this.companyId,
        this.roleId,
        this.customerStripeId,
        this.paymentMethod,
        this.fikenCustomerId,
        this.address,
        this.city,
        this.phoneNumber,
        this.personalNumber,
        this.avatar,
        this.zipCode,
        this.addedBy,
        this.status,
        this.activeDate,
        this.lastLogin,
        this.rememberToken,
        this.createdAt,
        this.updatedAt,
        this.fullName,
        this.role,
        this.company});

  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    companyId = json['company_id'];
    roleId = json['role_id'];
    customerStripeId = json['customer_stripe_id'];
    paymentMethod = json['payment_method'];
    fikenCustomerId = json['fiken_customer_id'];
    address = json['address'];
    city = json['city'];
    phoneNumber = json['phone_number'];
    personalNumber = json['personal_number'];
    avatar = json['avatar'];
    zipCode = json['zip_code'];
    addedBy = json['added_by'];
    status = json['status'];
    activeDate = json['active_date'];
    lastLogin = json['last_login'];
    rememberToken = json['remember_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    fullName = json['fullName'];
    role = json['role'] != null ? new Role.fromJson(json['role']) : null;
    company =
    json['company'] != null ? new Company.fromJson(json['company']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['company_id'] = this.companyId;
    data['role_id'] = this.roleId;
    data['customer_stripe_id'] = this.customerStripeId;
    data['payment_method'] = this.paymentMethod;
    data['fiken_customer_id'] = this.fikenCustomerId;
    data['address'] = this.address;
    data['city'] = this.city;
    data['phone_number'] = this.phoneNumber;
    data['personal_number'] = this.personalNumber;
    data['avatar'] = this.avatar;
    data['zip_code'] = this.zipCode;
    data['added_by'] = this.addedBy;
    data['status'] = this.status;
    data['active_date'] = this.activeDate;
    data['last_login'] = this.lastLogin;
    data['remember_token'] = this.rememberToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['fullName'] = this.fullName;
    if (this.role != null) {
      data['role'] = this.role!.toJson();
    }
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    return data;
  }
}

class Role {
  int? id;
  String? name;
  Null? description;
  Null? companyId;
  Null? relatedId;
  int? level;
  String? permission;
  Null? addedBy;
  String? createdAt;
  String? updatedAt;

  Role(
      {this.id,
        this.name,
        this.description,
        this.companyId,
        this.relatedId,
        this.level,
        this.permission,
        this.addedBy,
        this.createdAt,
        this.updatedAt});

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    companyId = json['company_id'];
    relatedId = json['related_id'];
    level = json['level'];
    permission = json['permission'];
    addedBy = json['added_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['company_id'] = this.companyId;
    data['related_id'] = this.relatedId;
    data['level'] = this.level;
    data['permission'] = this.permission;
    data['added_by'] = this.addedBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Company {
  int? id;
  String? name;
  String? phoneNumber;
  String? email;
  String? website;
  String? vatNumber;
  int? industryId;
  String? address;
  String? city;
  int? zipCode;
  String? country;
  String? timeZone;
  String? logo;
  String? language;
  String? activeSince;
  String? establishedDate;
  int? ceo;
  int? hseManager;
  int? safetyManager;
  String? status;
  int? isFreeze;
  int? endingInvoiceFreeze;
  int? isFreeable;
  Null? subscriptionDeactivatedAt;
  String? createdAt;
  String? updatedAt;

  Company(
      {this.id,
        this.name,
        this.phoneNumber,
        this.email,
        this.website,
        this.vatNumber,
        this.industryId,
        this.address,
        this.city,
        this.zipCode,
        this.country,
        this.timeZone,
        this.logo,
        this.language,
        this.activeSince,
        this.establishedDate,
        this.ceo,
        this.hseManager,
        this.safetyManager,
        this.status,
        this.isFreeze,
        this.endingInvoiceFreeze,
        this.isFreeable,
        this.subscriptionDeactivatedAt,
        this.createdAt,
        this.updatedAt});

  Company.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phoneNumber = json['phone_number'];
    email = json['email'];
    website = json['website'];
    vatNumber = json['vat_number'];
    industryId = json['industry_id'];
    address = json['address'];
    city = json['city'];
    zipCode = json['zip_code'];
    country = json['country'];
    timeZone = json['time_zone'];
    logo = json['logo'];
    language = json['language'];
    activeSince = json['active_since'];
    establishedDate = json['established_date'];
    ceo = json['ceo'];
    hseManager = json['hse_manager'];
    safetyManager = json['safety_manager'];
    status = json['status'];
    isFreeze = json['is_freeze'];
    endingInvoiceFreeze = json['ending_invoice_freeze'];
    isFreeable = json['is_freeable'];
    subscriptionDeactivatedAt = json['subscription_deactivated_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone_number'] = this.phoneNumber;
    data['email'] = this.email;
    data['website'] = this.website;
    data['vat_number'] = this.vatNumber;
    data['industry_id'] = this.industryId;
    data['address'] = this.address;
    data['city'] = this.city;
    data['zip_code'] = this.zipCode;
    data['country'] = this.country;
    data['time_zone'] = this.timeZone;
    data['logo'] = this.logo;
    data['language'] = this.language;
    data['active_since'] = this.activeSince;
    data['established_date'] = this.establishedDate;
    data['ceo'] = this.ceo;
    data['hse_manager'] = this.hseManager;
    data['safety_manager'] = this.safetyManager;
    data['status'] = this.status;
    data['is_freeze'] = this.isFreeze;
    data['ending_invoice_freeze'] = this.endingInvoiceFreeze;
    data['is_freeable'] = this.isFreeable;
    data['subscription_deactivated_at'] = this.subscriptionDeactivatedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}