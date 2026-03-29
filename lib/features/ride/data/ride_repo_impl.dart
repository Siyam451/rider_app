import '../domain/get_dashboard_data.dart';
import '../domain/ride_entity.dart';

class RideRepositoryImpl implements RideRepository {
  @override
  Future<RideEntity> getDashboardData() async {
    await Future.delayed(const Duration(seconds: 1));

    return RideEntity(
      ongoingBids: 0,
      winningTrips: 0,
      newTrips: 23,
    );
  }
}