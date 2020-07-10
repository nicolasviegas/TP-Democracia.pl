%tp1 logico DEMOCRACIA


/* PUNTO 1 CANDIDATOS Y PARTIDOS */
%      nombre,edad
persona(frank,50).
persona(claire,52).
persona(catherine,59).
persona(peter,26).
persona(garrett,64).
persona(linda,30).
persona(jackie,38).
persona(seth,_). %% EDAD INVENTADa
persona(heather,51).

/*--------------------------------*/
%            persona,partido 
esDelPartido(frank,rojo).
esDelPartido(claire,rojo).
esDelPartido(catherine,rojo).
esDelPartido(garrett,azul).
esDelPartido(linda,azul).
esDelPartido(jackie,amarillo).
esDelPartido(seth,amarillo).
esDelPartido(heather,amarillo).

/*--------------------------------*/
%%          nombre  , habitantes
provincia(buenosAires,15355000).
provincia(chaco,1143201).
provincia(tierraDelFuego,160720).
provincia(sanLuis,489255).
provincia(nuequen,637913).
provincia(santaFe,3397532).
provincia(cordoba,3567654).
provincia(chubut,577466).
provincia(formosa,527895).
provincia(tucuman,1687305).
provincia(salta,1333365).
provincia(santaCruz,273964).
provincia(laPampa,349299).
provincia(corrientes,992595).
provincia(misiones,118946).

/*--------------------------------*/
partido(rojo).
partido(azul).
partido(amarillo).
partido(violeta).
/*--------------------------------*/
%%          partido, provincia
sePostulaEn(azul, buenosAires).
sePostulaEn(azul, chaco).
sePostulaEn(azul, tierraDelFuego).
sePostulaEn(azul, sanLuis).
sePostulaEn(azul, nuequen).

sePostulaEn(rojo,buenosAires).
sePostulaEn(rojo,santaFe).
sePostulaEn(rojo,cordoba).
sePostulaEn(rojo,chubut).
sePostulaEn(rojo,tierraDelFuego).
sePostulaEn(rojo,sanLuis).

sePostulaEn(amarillo,chaco).
sePostulaEn(amarillo,formosa).
sePostulaEn(amarillo,tucuman).
sePostulaEn(amarillo,salta).
sePostulaEn(amarillo,santaCruz).
sePostulaEn(amarillo,laPampa).
sePostulaEn(amarillo,corrientes).
sePostulaEn(amarillo,misiones).
sePostulaEn(amarillo,buenosAires).

/*--------------------------------*/

/* PUNTO 2 PROVINCIA PICANTE */

tieneMasDeUnMillonDeHabitantes(Provincia):-
    provincia(Provincia, CantHabitantes),
    CantHabitantes > 1000000.

sePostulanAlMenosDosPartidos(Provincia):-
    sePostulaEn(Partido1, Provincia),
    sePostulaEn(Partido2, Provincia),
    Partido1 \= Partido2.

esPicante(Provincia):-
    provincia(Provincia,_),
    tieneMasDeUnMillonDeHabitantes(Provincia),
    sePostulanAlMenosDosPartidos(Provincia).

/*--------------------------------*/

/* PUNTO 3 PASO */

% intencionDeVotoEn(Provincia, Partido, Porcentaje)
intencionDeVotoEn(buenosAires, rojo, 40).
intencionDeVotoEn(buenosAires, azul, 30).
intencionDeVotoEn(buenosAires, amarillo, 30).
intencionDeVotoEn(chaco, rojo, 50).
intencionDeVotoEn(chaco, azul, 20).
intencionDeVotoEn(chaco, amarillo, 0).
intencionDeVotoEn(tierraDelFuego, rojo, 40).
intencionDeVotoEn(tierraDelFuego, azul, 20).
intencionDeVotoEn(tierraDelFuego, amarillo, 10).
intencionDeVotoEn(sanLuis, rojo, 50).
intencionDeVotoEn(sanLuis, azul, 20).
intencionDeVotoEn(sanLuis, amarillo, 0).
intencionDeVotoEn(neuquen, rojo, 80).
intencionDeVotoEn(neuquen, azul, 10).
intencionDeVotoEn(neuquen, amarillo, 0).
intencionDeVotoEn(santaFe, rojo, 20).
intencionDeVotoEn(santaFe, azul, 40).
intencionDeVotoEn(santaFe, amarillo, 40).
intencionDeVotoEn(cordoba, rojo, 10).
intencionDeVotoEn(cordoba, azul, 60).
intencionDeVotoEn(cordoba, amarillo, 20).
intencionDeVotoEn(chubut, rojo, 15).
intencionDeVotoEn(chubut, azul, 15).
intencionDeVotoEn(chubut, amarillo, 15).
intencionDeVotoEn(formosa, rojo, 0).
intencionDeVotoEn(formosa, azul, 0).
intencionDeVotoEn(formosa, amarillo, 0).
intencionDeVotoEn(tucuman, rojo, 40).
intencionDeVotoEn(tucuman, azul, 40).
intencionDeVotoEn(tucuman, amarillo, 20).
intencionDeVotoEn(salta, rojo, 30).
intencionDeVotoEn(salta, azul, 60).
intencionDeVotoEn(salta, amarillo, 10).
intencionDeVotoEn(santaCruz, rojo, 10).
intencionDeVotoEn(santaCruz, azul, 20).
intencionDeVotoEn(santaCruz, amarillo, 30).
intencionDeVotoEn(laPampa, rojo, 25).
intencionDeVotoEn(laPampa, azul, 25).
intencionDeVotoEn(laPampa, amarillo, 40).
intencionDeVotoEn(corrientes, rojo, 30).
intencionDeVotoEn(corrientes, azul, 30).
intencionDeVotoEn(corrientes, amarillo, 10).
intencionDeVotoEn(misiones, rojo, 90).
intencionDeVotoEn(misiones, azul, 0).
intencionDeVotoEn(misiones, amarillo, 0).


