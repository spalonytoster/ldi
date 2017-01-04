abstract sig Osoba {
	uscisnelaDlon: set Osoba
}



abstract sig Para {
	pierwsza: one Osoba,
	druga: one Osoba
}

run {} for 5 Para, 10 Osoba, 5 Int
