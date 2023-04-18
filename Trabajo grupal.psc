Funcion Semis <- Semifinal ()
	Escribir 'El sorteo nos deparo un cruce de CienciayTegnologiaUCB vs AdministracionesUCB y en la otra llave tenemos MedicinaUCB vs ArquitecturaUCB'
	Escribir 'semifinales'
	golesdeCyT <- azar(9)
	golesdeAdm <- azar(9)
	Escribir 'Primera Semifinal'
	Escribir 'cienciayTecnologiaUCB vs administracioneUCB'
	Si golesdeCyT=golesAdm Entonces
		SuerteFInal <- azar(1)
		Escribir 'Segun expertos los penaltis suelen ser aleatorios'
		Si SuerteFInal=1 Entonces
			Escribir 'pasa a la final CienciayTegnologiaUCB'
			A <- 'CienciayTecnologiaUCB'
		SiNo
			Escribir 'pasa A la final AdministracionUCB '
			A <- 'AdministracioneUCB'
		FinSi
	SiNo
		Si golesdeCyT>golesdeAdm Entonces
			Escribir 'pasa a la final CienciayTegnologiaUCB'
			A <- 'CienciayTecnologiaUCB'
		SiNo
			Escribir 'pasa A la final AdministracionUCB '
			A <- 'AdministracioneUCB'
		FinSi
	FinSi
	Escribir 'Segunda Semifinal'
	golesdeM <- azar(9)
	golesdeArq <- azar(9)
	Escribir 'MedicinaUCB vs ArquitecturaUCB'
	Si golesdeM=golesdeArq Entonces
		suerteFInal2 <- azar(1)
		Escribir 'Segun expertos los penaltis suelen ser aleatorios'
		Si suerteFInal2=1 Entonces
			Escribir 'pasa a la final MedicinaUCB'
			B <- 'MedicinaUCB'
		SiNo
			Escribir 'pasa A la final ArquitecturaUCB '
			B <- 'ArquitecturaUCB'
		FinSi
	SiNo
		Si golesdeM>golesdeArq Entonces
			Escribir 'pasa a la final MedicinaUCB'
			B <- 'MedicinaUCB'
		SiNo
			Escribir 'pasa A la final ArquitecturaUCB '
			B <- 'ArquitecturaUCB'
		FinSi
	FinSi
	Escribir 'La FInal'
	ganador <- azar(1)
	Escribir A,'VS',B
	Si golesdeA=golesdeB Entonces
		SuerteFInal <- azar(1)
		Escribir 'Segun expertos los penaltis suelen ser aleatorios'
		Si SuerteFInal=1 Entonces
			Escribir 'Gana',A
		SiNo
			Escribir 'Gana',B
		FinSi
	SiNo
		Si golesdeaA>golesdeB Entonces
			Escribir 'Gana',A
		SiNo
			Escribir 'Gana',B
		FinSi
	FinSi
FinFuncion

Funcion teams <- Teamsfutbol ()
	n <- azar(16)+4
	Si n MOD 4=0 Entonces
		Escribir 'Los equipos son: ',n
	SiNo
		Mientras n MOD 4<>0 Hacer
			n <- azar(16)+4
		FinMientras
		Escribir 'Los equipos son: ',n
	FinSi
	Escribir 'Los resultados de los Partidos:'
	Si n=4 Entonces
		Escribir Semifinal ()
	SiNo
		Si n=8 Entonces
			Escribir 'cuartos de final'
			Partidos <- azar(2)
			Para i<-1 Hasta n/4 Hacer
				Segun Partidos  Hacer
					1:
						Escribir 'Resultado: Victoria Local'
						Escribir 'Resultado: Derrota Local'
					2:
						Escribir 'Resultado: Victoria Local'
						Escribir 'Resultado: Derrota Local'
					De Otro Modo:
						Escribir 'Resultado: Empate'
						Escribir 'Hubo empate por lo tanto tanda de penaltis'
						Escribir 'Resultado: Victoria Local'
						Escribir 'Resultado: Empate'
						Escribir 'Hubo empate por lo tanto tanda de penaltis'
						Escribir 'Resultado: Derrota Local'
				FinSegun
			FinPara
		SiNo
			Si n=12 Entonces
				Para i<-1 Hasta n/4 Hacer
					Escribir 'eliminatorias de 12'
					Partidos <- azar(2)
					Segun Partidos  Hacer
						1:
							Escribir 'Resultado: Victoria Local'
							Escribir 'Resultado: Derrota Local'
						2:
							Escribir 'Resultado: Victoria Local'
							Escribir 'Resultado: Derrota Local'
						De Otro Modo:
							Escribir 'Resultado: Empate'
							Escribir 'Hubo empate por lo tanto tanda de penaltis'
							Escribir 'Resultado: Victoria Local'
							Escribir 'Resultado: Empate'
							Escribir 'Hubo empate por lo tanto tanda de penaltis'
							Escribir 'Resultado: Derrota Local'
					FinSegun
				FinPara
				Mientras n=6 Hacer
					Para i<-1 Hasta n/4 Hacer
						Escribir 'eliminatorias de 12'
						Partidos <- azar(2)
						Segun Partidos  Hacer
							1:
								Escribir 'Resultado: Victoria Local'
								Escribir 'Resultado: Derrota Local'
							2:
								Escribir 'Resultado: Victoria Local'
								Escribir 'Resultado: Derrota Local'
							De Otro Modo:
								Escribir 'Resultado: Empate'
								Escribir 'Hubo empate por lo tanto tanda de penaltis'
								Escribir 'Resultado: Victoria Local'
								Escribir 'Resultado: Empate'
								Escribir 'Hubo empate por lo tanto tanda de penaltis'
								Escribir 'Resultado: Derrota Local'
						FinSegun
					FinPara
					Escribir 'pasa medicinaUCB,sistemasUCB,administracionUCB,ArquitecuraUCB por sorteo'
				FinMientras
			SiNo
				Mientras n=16 Hacer
					Escribir 'octavos de final'
					Partidos <- azar(2)
					Para i<-1 Hasta n/4 Hacer
						Segun Partidos  Hacer
							1:
								Escribir 'Resultado: Victoria Local'
								Escribir 'Resultado: Derrota Local'
							2:
								Escribir 'Resultado: Victoria Local'
								Escribir 'Resultado: Derrota Local'
							De Otro Modo:
								Escribir 'Resultado: Empate'
								Escribir 'Hubo empate por lo tanto tanda de penaltis'
								Escribir 'Resultado: Victoria Local'
								Escribir 'Resultado: Empate'
								Escribir 'Hubo empate por lo tanto tanda de penaltis'
								Escribir 'Resultado: Derrota Local'
						FinSegun
					FinPara
					n <- n/2
				FinMientras
				Escribir 'cuartos de final'
				Partidos <- azar(2)
				Para i<-1 Hasta n/4 Hacer
					Segun Partidos  Hacer
						1:
							Escribir 'Resultado: Victoria Local'
							Escribir 'Resultado: Derrota Local'
						2:
							Escribir 'Resultado: Victoria Local'
							Escribir 'Resultado: Derrota Local'
						De Otro Modo:
							Escribir 'Resultado: Empate'
							Escribir 'Hubo empate por lo tanto tanda de penaltis'
							Escribir 'Resultado: Victoria Local'
							Escribir 'Resultado: Empate'
							Escribir 'Hubo empate por lo tanto tanda de penaltis'
							Escribir 'Resultado: Derrota Local'
					FinSegun
				FinPara
			FinSi
		FinSi
	FinSi
FinFuncion

Algoritmo sin_titulo
	Escribir 'Los representantes del UCB: SistemasUCB,MedicinaUCB,ArquitecturaUCB,MarketingUCB'
	teams <- Teamsfutbol()
	Escribir teams
	Semifinalfutbol <- Semifinal()
	Escribir Semifinalfutbol
FinAlgoritmo
