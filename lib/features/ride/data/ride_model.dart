import '../domain/ride_entity.dart';

class RideModel extends RideEntity {
  RideModel({
    required super.ongoingBids,
    required super.winningTrips,
    required super.newTrips,
  });

  factory RideModel.fromJson(Map<String, dynamic> json) {
    return RideModel(
      ongoingBids: json['ongoing'],
      winningTrips: json['winning'],
      newTrips: json['newTrips'],
    );
  }
}