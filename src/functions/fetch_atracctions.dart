import '../utils/Atracctions_list.dart';
import '../models/Atracctions.dart';

Future<List<Attraction>> fetchAttractions() async {
	await Future.delayed(Duration(seconds: 1));
	return rawAttractions.map((json) => Attraction.fromJson(json)).toList();
}
