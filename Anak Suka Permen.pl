anakIbu(andi).
anakIbu(budi).
anakIbu(cika).
anakIbu(dani).
anakIbu(emil).
not(anakIbu(fadil)).

sukaPermen(andi).
sukaPermen(budi).
sukaPermen(cika).
not(sukaPermen(dani)).
not(sukaPermen(email)).

siapa_saja(X) :- anakIbu(X).
dapatPermen(X) :- anakIbu(X), sukaPermen(X).
dapatUang(X) :- anakIbu(X), not(sukaPermen(X)).
 tidakMendapatkanApaApa(fadil) :- not(dapatPermen(fadil)), not(dapatUang(fadil)).














