import 'package:riderapp/features/ride/domain/ride_entity.dart';


abstract class RideRepository {
  Future<RideEntity> getDashboardData();
}