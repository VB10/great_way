// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserResponseModelAdapter extends TypeAdapter<UserResponseModel> {
  @override
  final int typeId = 0;

  @override
  UserResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserResponseModel(
      token: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserResponseModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
