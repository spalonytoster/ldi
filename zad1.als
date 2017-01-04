abstract sig Stanowisko {
	zarabia: Int
}

one sig Kasjer, Menadżer, Strażnik extends Stanowisko {}

abstract sig Osoba {
	stanowisko: one Stanowisko
}

one sig Piotrowicz, Karolak, Borewicz extends Osoba {}

fact {
	Strażnik.zarabia < Kasjer.zarabia && Strażnik.zarabia < Menadżer.zarabia
	Piotrowicz.stanowisko.zarabia > Menadżer.zarabia
	Karolak.stanowisko != Strażnik
}

fact {
	all s: Stanowisko | one o: Osoba | o.stanowisko = s
	all s: Stanowisko | s.zarabia > 0
}

run {} for 3 Int
