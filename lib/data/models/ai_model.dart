class AiResponseModel {
  AiResponseModel({
    required this.candidates,
    required this.usageMetadata,
  });

  final List<Candidate> candidates;
  final UsageMetadata? usageMetadata;

  factory AiResponseModel.fromJson(Map<String, dynamic> json) {
    return AiResponseModel(
      candidates: json["candidates"] == null
          ? []
          : List<Candidate>.from(
              json["candidates"]!.map((x) => Candidate.fromJson(x))),
      usageMetadata: json["usageMetadata"] == null
          ? null
          : UsageMetadata.fromJson(json["usageMetadata"]),
    );
  }
}

class Candidate {
  Candidate({
    required this.content,
    required this.finishReason,
    required this.index,
    required this.safetyRatings,
  });

  final Content? content;
  final String? finishReason;
  final int? index;
  final List<SafetyRating> safetyRatings;

  factory Candidate.fromJson(Map<String, dynamic> json) {
    return Candidate(
      content:
          json["content"] == null ? null : Content.fromJson(json["content"]),
      finishReason: json["finishReason"],
      index: json["index"],
      safetyRatings: json["safetyRatings"] == null
          ? []
          : List<SafetyRating>.from(
              json["safetyRatings"]!.map((x) => SafetyRating.fromJson(x))),
    );
  }
}

class Content {
  Content({
    required this.parts,
    required this.role,
  });

  final List<Part> parts;
  final String? role;

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      parts: json["parts"] == null
          ? []
          : List<Part>.from(json["parts"]!.map((x) => Part.fromJson(x))),
      role: json["role"],
    );
  }
}

class Part {
  Part({
    required this.text,
  });

  final String? text;

  factory Part.fromJson(Map<String, dynamic> json) {
    return Part(
      text: json["text"],
    );
  }
}

class SafetyRating {
  SafetyRating({
    required this.category,
    required this.probability,
  });

  final String? category;
  final String? probability;

  factory SafetyRating.fromJson(Map<String, dynamic> json) {
    return SafetyRating(
      category: json["category"],
      probability: json["probability"],
    );
  }
}

class UsageMetadata {
  UsageMetadata({
    required this.promptTokenCount,
    required this.candidatesTokenCount,
    required this.totalTokenCount,
  });

  final int? promptTokenCount;
  final int? candidatesTokenCount;
  final int? totalTokenCount;

  factory UsageMetadata.fromJson(Map<String, dynamic> json) {
    return UsageMetadata(
      promptTokenCount: json["promptTokenCount"],
      candidatesTokenCount: json["candidatesTokenCount"],
      totalTokenCount: json["totalTokenCount"],
    );
  }
}
