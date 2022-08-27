import 'package:json_annotation/json_annotation.dart';
import 'package:redux_elementary/domain/main/entities/dog_data.dart';

part 'dog_dto.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class DogDTO {
  final String message;
  final String status;

  const DogDTO({
    required this.message,
    required this.status,
  });

  factory DogDTO.fromJson(Map<String, dynamic> json) => _$DogDTOFromJson(json);

  DogData toModel() {
    return DogData(
      message: message,
      status: status,
    );
  }
}
