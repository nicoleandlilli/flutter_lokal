class JobListModel {
  late List<Job> results;

  JobListModel({required this.results});

  JobListModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Job>[];
      json['results'].forEach((v) { results!.add(new Job.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Job {
  int? id;
  String? title;
  int? type;
  PrimaryDetails? primaryDetails;
  FeeDetails? feeDetails;
  List<JobTags>? jobTags;
  int? jobType;
  int? jobCategoryId;
  int? qualification;
  int? experience;
  int? shiftTiming;
  int? jobRoleId;
  int? salaryMax;
  int? salaryMin;
  int? cityLocation;
  int? locality;
  String? premiumTill;
  String? content;
  String? companyName;
  int? advertiser;
  String? buttonText;
  String? customLink;
  String? amount;
  int? views;
  int? shares;
  int? fbShares;
  bool? isBookmarked;
  bool? isApplied;
  bool? isOwner;
  String? updatedOn;
  String? whatsappNo;
  ContactPreference? contactPreference;
  String? createdOn;
  bool? isPremium;
  List<Creatives>? creatives;
  List<Null>? videos;
  List<Locations>? locations;
  List<Null>? tags;
  ContentV3? contentV3;
  int? status;
  String? expireOn;
  String? jobHours;
  int? openingsCount;
  String? jobRole;
  String? otherDetails;
  String? jobCategory;
  int? numApplications;
  bool? enableLeadCollection;
  bool? isJobSeekerProfileMandatory;
  TranslatedContent? translatedContent;
  String? jobLocationSlug;
  String? feesText;
  Null? questionBankId;
  Null? screeningRetry;
  bool? shouldShowLastContacted;
  int? feesCharged;

  Job({this.id, this.title, this.type, this.primaryDetails, this.feeDetails, this.jobTags, this.jobType, this.jobCategoryId, this.qualification, this.experience, this.shiftTiming, this.jobRoleId, this.salaryMax, this.salaryMin, this.cityLocation, this.locality, this.premiumTill, this.content, this.companyName, this.advertiser, this.buttonText, this.customLink, this.amount, this.views, this.shares, this.fbShares, this.isBookmarked, this.isApplied, this.isOwner, this.updatedOn, this.whatsappNo, this.contactPreference, this.createdOn, this.isPremium, this.creatives, this.videos, this.locations, this.tags, this.contentV3, this.status, this.expireOn, this.jobHours, this.openingsCount, this.jobRole, this.otherDetails, this.jobCategory, this.numApplications, this.enableLeadCollection, this.isJobSeekerProfileMandatory, this.translatedContent, this.jobLocationSlug, this.feesText, this.questionBankId, this.screeningRetry, this.shouldShowLastContacted, this.feesCharged});

  Job.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    primaryDetails = json['primary_details'] != null ? new PrimaryDetails.fromJson(json['primary_details']) : null;
    feeDetails = json['fee_details'] != null ? new FeeDetails.fromJson(json['fee_details']) : null;
    if (json['job_tags'] != null) {
      jobTags = <JobTags>[];
      json['job_tags'].forEach((v) { jobTags!.add(new JobTags.fromJson(v)); });
    }
    jobType = json['job_type'];
    jobCategoryId = json['job_category_id'];
    qualification = json['qualification'];
    experience = json['experience'];
    shiftTiming = json['shift_timing'];
    jobRoleId = json['job_role_id'];
    salaryMax = json['salary_max'];
    salaryMin = json['salary_min'];
    cityLocation = json['city_location'];
    locality = json['locality'];
    premiumTill = json['premium_till'];
    content = json['content'];
    companyName = json['company_name'];
    advertiser = json['advertiser'];
    buttonText = json['button_text'];
    customLink = json['custom_link'];
    amount = json['amount'];
    views = json['views'];
    shares = json['shares'];
    fbShares = json['fb_shares'];
    isBookmarked = json['is_bookmarked'];
    isApplied = json['is_applied'];
    isOwner = json['is_owner'];
    updatedOn = json['updated_on'];
    whatsappNo = json['whatsapp_no'];
    contactPreference = json['contact_preference'] != null ? new ContactPreference.fromJson(json['contact_preference']) : null;
    createdOn = json['created_on'];
    isPremium = json['is_premium'];
    if (json['creatives'] != null) {
      creatives = <Creatives>[];
      json['creatives'].forEach((v) { creatives!.add(new Creatives.fromJson(v)); });
    }
    if (json['videos'] != null) {
      videos = <Null>[];
      // json['videos'].forEach((v) { videos!.add(new Null.fromJson(v)); });
    }
    if (json['locations'] != null) {
      locations = <Locations>[];
      json['locations'].forEach((v) { locations!.add(new Locations.fromJson(v)); });
    }
    if (json['tags'] != null) {
      tags = <Null>[];
      // json['tags'].forEach((v) { tags!.add(new Null.fromJson(v)); });
    }
    contentV3 = json['contentV3'] != null ? new ContentV3.fromJson(json['contentV3']) : null;
    status = json['status'];
    expireOn = json['expire_on'];
    jobHours = json['job_hours'];
    openingsCount = json['openings_count'];
    jobRole = json['job_role'];
    otherDetails = json['other_details'];
    jobCategory = json['job_category'];
    numApplications = json['num_applications'];
    enableLeadCollection = json['enable_lead_collection'];
    isJobSeekerProfileMandatory = json['is_job_seeker_profile_mandatory'];
    translatedContent = json['translated_content'] != null ? new TranslatedContent.fromJson(json['translated_content']) : null;
    jobLocationSlug = json['job_location_slug'];
    feesText = json['fees_text'];
    questionBankId = json['question_bank_id'];
    screeningRetry = json['screening_retry'];
    shouldShowLastContacted = json['should_show_last_contacted'];
    feesCharged = json['fees_charged'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['type'] = this.type;
    if (this.primaryDetails != null) {
      data['primary_details'] = this.primaryDetails!.toJson();
    }
    if (this.feeDetails != null) {
      data['fee_details'] = this.feeDetails!.toJson();
    }
    if (this.jobTags != null) {
      data['job_tags'] = this.jobTags!.map((v) => v.toJson()).toList();
    }
    data['job_type'] = this.jobType;
    data['job_category_id'] = this.jobCategoryId;
    data['qualification'] = this.qualification;
    data['experience'] = this.experience;
    data['shift_timing'] = this.shiftTiming;
    data['job_role_id'] = this.jobRoleId;
    data['salary_max'] = this.salaryMax;
    data['salary_min'] = this.salaryMin;
    data['city_location'] = this.cityLocation;
    data['locality'] = this.locality;
    data['premium_till'] = this.premiumTill;
    data['content'] = this.content;
    data['company_name'] = this.companyName;
    data['advertiser'] = this.advertiser;
    data['button_text'] = this.buttonText;
    data['custom_link'] = this.customLink;
    data['amount'] = this.amount;
    data['views'] = this.views;
    data['shares'] = this.shares;
    data['fb_shares'] = this.fbShares;
    data['is_bookmarked'] = this.isBookmarked;
    data['is_applied'] = this.isApplied;
    data['is_owner'] = this.isOwner;
    data['updated_on'] = this.updatedOn;
    data['whatsapp_no'] = this.whatsappNo;
    if (this.contactPreference != null) {
      data['contact_preference'] = this.contactPreference!.toJson();
    }
    data['created_on'] = this.createdOn;
    data['is_premium'] = this.isPremium;
    if (this.creatives != null) {
      data['creatives'] = this.creatives!.map((v) => v.toJson()).toList();
    }
    if (this.videos != null) {
      // data['videos'] = this.videos!.map((v) => v.toJson()).toList();
    }
    if (this.locations != null) {
      data['locations'] = this.locations!.map((v) => v.toJson()).toList();
    }
    if (this.tags != null) {
      // data[''] = this.tags!.map((v) => v.toJson()).toList();
    }
    if (this.contentV3 != null) {
      data['contentV3'] = this.contentV3!.toJson();
    }
    data['status'] = this.status;
    data['expire_on'] = this.expireOn;
    data['job_hours'] = this.jobHours;
    data['openings_count'] = this.openingsCount;
    data['job_role'] = this.jobRole;
    data['other_details'] = this.otherDetails;
    data['job_category'] = this.jobCategory;
    data['num_applications'] = this.numApplications;
    data['enable_lead_collection'] = this.enableLeadCollection;
    data['is_job_seeker_profile_mandatory'] = this.isJobSeekerProfileMandatory;
    if (this.translatedContent != null) {
      data['translated_content'] = this.translatedContent!.toJson();
    }
    data['job_location_slug'] = this.jobLocationSlug;
    data['fees_text'] = this.feesText;
    data['question_bank_id'] = this.questionBankId;
    data['screening_retry'] = this.screeningRetry;
    data['should_show_last_contacted'] = this.shouldShowLastContacted;
    data['fees_charged'] = this.feesCharged;
    return data;
  }
}

class PrimaryDetails {
  String? place;
  String? salary;
  String? jobType;
  String? experience;
  String? feesCharged;
  String? qualification;

  PrimaryDetails({this.place, this.salary, this.jobType, this.experience, this.feesCharged, this.qualification});

  PrimaryDetails.fromJson(Map<String, dynamic> json) {
    place = json['Place'];
    salary = json['Salary'];
    jobType = json['Job_Type'];
    experience = json['Experience'];
    feesCharged = json['Fees_Charged'];
    qualification = json['Qualification'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Place'] = this.place;
    data['Salary'] = this.salary;
    data['Job_Type'] = this.jobType;
    data['Experience'] = this.experience;
    data['Fees_Charged'] = this.feesCharged;
    data['Qualification'] = this.qualification;
    return data;
  }
}

class FeeDetails {
  List<Null>? v3;

  FeeDetails({this.v3});

  FeeDetails.fromJson(Map<String, dynamic> json) {
    if (json['V3'] != null) {
      v3 = <Null>[];
      // json['V3'].forEach((v) { v3!.add(new Null.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.v3 != null) {
      // data['V3'] = this.v3!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JobTags {
  String? value;
  String? bgColor;
  String? textColor;

  JobTags({this.value, this.bgColor, this.textColor});

  JobTags.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    bgColor = json['bg_color'];
    textColor = json['text_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['bg_color'] = this.bgColor;
    data['text_color'] = this.textColor;
    return data;
  }
}

class ContactPreference {
  int? preference;
  String? whatsappLink;
  String? preferredCallStartTime;
  String? preferredCallEndTime;

  ContactPreference({this.preference, this.whatsappLink, this.preferredCallStartTime, this.preferredCallEndTime});

  ContactPreference.fromJson(Map<String, dynamic> json) {
    preference = json['preference'];
    whatsappLink = json['whatsapp_link'];
    preferredCallStartTime = json['preferred_call_start_time'];
    preferredCallEndTime = json['preferred_call_end_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['preference'] = this.preference;
    data['whatsapp_link'] = this.whatsappLink;
    data['preferred_call_start_time'] = this.preferredCallStartTime;
    data['preferred_call_end_time'] = this.preferredCallEndTime;
    return data;
  }
}

class Creatives {
  String? file;
  String? thumbUrl;
  int? creativeType;
  int? orderId;
  String? imageUrl;

  Creatives({this.file, this.thumbUrl, this.creativeType, this.orderId, this.imageUrl});

  Creatives.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    thumbUrl = json['thumb_url'];
    creativeType = json['creative_type'];
    orderId = json['order_id'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['file'] = this.file;
    data['thumb_url'] = this.thumbUrl;
    data['creative_type'] = this.creativeType;
    data['order_id'] = this.orderId;
    data['image_url'] = this.imageUrl;
    return data;
  }
}

class Locations {
  int? id;
  String? locale;
  int? state;

  Locations({this.id, this.locale, this.state});

  Locations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    locale = json['locale'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['locale'] = this.locale;
    data['state'] = this.state;
    return data;
  }
}

class ContentV3 {
  List<V3>? v3;

  ContentV3({this.v3});

  ContentV3.fromJson(Map<String, dynamic> json) {
    if (json['V3'] != null) {
      v3 = <V3>[];
      json['V3'].forEach((v) { v3!.add(new V3.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.v3 != null) {
      data['V3'] = this.v3!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class V3 {
  String? fieldKey;
  String? fieldName;
  String? fieldValue;

  V3({this.fieldKey, this.fieldName, this.fieldValue});

  V3.fromJson(Map<String, dynamic> json) {
    fieldKey = json['field_key'];
    fieldName = json['field_name'];
    fieldValue = json['field_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['field_key'] = this.fieldKey;
    data['field_name'] = this.fieldName;
    data['field_value'] = this.fieldValue;
    return data;
  }
}

class TranslatedContent {


  TranslatedContent();

TranslatedContent.fromJson(Map<String, dynamic> json) {
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
return data;
}
}
