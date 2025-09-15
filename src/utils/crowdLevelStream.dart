import '../models/Atracctions.dart';
import 'dart:async';

Stream<String> crowdLevelStream(List<Attraction> itinerary) async* {
	final levels = ['Bajo', 'Medio', 'Alto'];
	for (var i = 0; i < itinerary.length; i++) {

		await Future.delayed(Duration( milliseconds: 100));
		yield 'Aforo en ${itinerary[i].name}: ${levels[i % levels.length]}';
	}
	await Future.delayed(Duration(milliseconds: 100));
	yield 'Clima: Soleado';
}
