//
//  EscuelasViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 1/26/19.
//  Copyright © 2019 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class EscuelasViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    /*var arrayEscuelas:[String] = [
        "Selecciona una escuela",
        "CBT ALBERT EINSTEIN, LA PAZ  Técnico en administración",
        "CBT ALBERT EINSTEIN, LA PAZ  Técnico en informática",
        "CBT DR. EDUARDO SUÁREZ A., TEXCOCO  Técnico en contabilidad",
        "CBT DR. EDUARDO SUÁREZ A., TEXCOCO  Técnico en informática",
        "CBT DR. EDUARDO SUÁREZ A., TEXCOCO  Técnico en turismo",
        "CBT GABRIEL V. ALCOCER, CUAUTITLAN  Técnico en administración",
        "CBT GABRIEL V. ALCOCER, CUAUTITLAN  Técnico en contabilidad",
        "CBT GABRIEL V. ALCOCER, CUAUTITLAN  Técnico en informática",
        "CBT GABRIEL V. ALCOCER, CUAUTITLAN  Técnico en mecatrónica",
        "CBT GABRIEL V. ALCOCER, CUAUTITLAN  Técnico en mercadotecnia",
        "CBT JUAN DE DIOS BÁTIZ, VALLE DE CHALCO SOLIDARIDAD  Técnico en informática",
        "CBT JUAN GUTENBERG, ECATEPEC  Técnico en administración",
        "CBT JUAN GUTENBERG, ECATEPEC  Técnico en mercadotecnia",
        "CBT JUAN GUTENBERG, ECATEPEC  Técnico laboratorista químico",
        "CBT LIC. ADOLFO LÓPEZ MATEOS, TLALNEPANTLA  Técnico en administración",
        "CBT LIC. ADOLFO LÓPEZ MATEOS, TLALNEPANTLA  Técnico en diseño asistido por computadora",
        "CBT LIC. ADOLFO LÓPEZ MATEOS, TLALNEPANTLA  Técnico en informática",
        "CBT MARÍA LUISA MARINA DE SUÁREZ, COACALCO  Técnico en administración",
        "CBT MARÍA LUISA MARINA DE SUÁREZ, COACALCO  Técnico en comunicación",
        "CBT MARÍA LUISA MARINA DE SUÁREZ, COACALCO  Técnico en contabilidad",
        "CBT MARÍA LUISA MARINA DE SUÁREZ, COACALCO  Técnico en informática",
        "CBT No. 1 DR. DONATO ALARCÓN SEGOVIA, ACOLMAN  Técnico en gastronomía",
        "CBT No. 1 DR. DONATO ALARCÓN SEGOVIA, ACOLMAN  Técnico en manufactura asistida por computadora",
        "CBT No. 1 DR. DONATO ALARCÓN SEGOVIA, ACOLMAN  Técnico en mecatrónica",
        "CBT No. 1 DR. DONATO ALARCÓN SEGOVIA, ACOLMAN  Técnico laboratorista químico",
        "CBT No. 1 DR. JORGE JIMÉNEZ CANTÚ, TECÁMAC  Técnico en administración",
        "CBT No. 1 DR. JORGE JIMÉNEZ CANTÚ, TECÁMAC  Técnico en diseño asistido por computadora",
        "CBT No. 1 DR. JORGE JIMÉNEZ CANTÚ, TECÁMAC  Técnico en informática",
        "CBT No. 1 DR. JORGE JIMÉNEZ CANTÚ, TECÁMAC  Técnico en manufactura asistida por computadora",
        "CBT No. 1 DR. JORGE JIMÉNEZ CANTÚ, TECÁMAC  Técnico en mercadotecnia",
        "CBT No. 1 DR. JORGE JIMÉNEZ CANTÚ, TECÁMAC  Técnico en servicios bancarios",
        "CBT No. 1 DR. LEOPOLDO RÍO DE LA LOZA, IXTAPALUCA  Técnico en administración",
        "CBT No. 1 DR. LEOPOLDO RÍO DE LA LOZA, IXTAPALUCA  Técnico en contabilidad",
        "CBT No. 1 DR. LEOPOLDO RÍO DE LA LOZA, IXTAPALUCA  Técnico en electrónica",
        "CBT No. 1 DR. LEOPOLDO RÍO DE LA LOZA, IXTAPALUCA  Técnico laboratorista químico",
        "CBT No. 1 LIC. AGUSTÍN REYES PONCE, CHIMALHUACÁN  Técnico en enfermería general",
        "CBT No. 1 LIC. AGUSTÍN REYES PONCE, CHIMALHUACÁN  Técnico en informática",
        "CBT No. 1 LIC. AGUSTÍN REYES PONCE, CHIMALHUACÁN  Técnico en puericultura",
        "CBT No. 1 MIGUEL DE CERVANTES SAAVEDRA, NAUCALPAN  Técnico en edificación",
        "CBT No. 1 MIGUEL DE CERVANTES SAAVEDRA, NAUCALPAN  Técnico en informática",
        "CBT No. 1 REFUGIO ESTÉVES REYES, NEZAHUALCOYOTL  Técnico en administración",
        "CBT No. 1 REFUGIO ESTÉVES REYES, NEZAHUALCOYOTL  Técnico en enfermería general",
        "CBT No. 1, CHICOLOAPAN  Técnico en gastronomía",
        "CBT No. 1, CHICOLOAPAN  Técnico en informática",
        "CBT No. 2 ÁNGEL MARÍA GARIBAY KINTANA, CHALCO  Técnico en enfermería general",
        "CBT No. 2 DR. MAXIMILIANO RUIZ CASTAÑEDA, NEZAHUALCÓYOTL  Técnico en administración",
        "CBT No. 2 DR. MAXIMILIANO RUIZ CASTAÑEDA, NEZAHUALCÓYOTL  Técnico en informática",
        "CBT No. 2 DR. MAXIMILIANO RUIZ CASTAÑEDA, NEZAHUALCÓYOTL  Técnico en servicios bancarios",
        "CBT No. 2 GUILLERMO GONZÁLEZ CAMARENA, IXTAPALUCA  Técnico en electrónica",
        "CBT No. 2 GUILLERMO GONZÁLEZ CAMARENA, IXTAPALUCA  Técnico en informática",
        "CBT No. 2 ING. GUILLERMO GONZÁLEZ CAMARENA, NAUCALPAN  Técnico en manufactura del vestido",
        "CBT No. 2 ING. GUILLERMO GONZÁLEZ CAMARENA, NAUCALPAN  Técnico en mecatrónica",
        "CBT No. 2 ISAAC GUZMÁN VALDIVIA, CHIMALHUACÁN  Técnico en administración",
        "CBT No. 2 ISAAC GUZMÁN VALDIVIA, CHIMALHUACÁN  Técnico en informática",
        "CBT No. 2 ISAAC GUZMÁN VALDIVIA, CHIMALHUACÁN  Técnico en servicios bancarios",
        "CBT No. 2 ISAAC GUZMÁN VALDIVIA, CHIMALHUACÁN  Técnico laboratorista químico",
        "CBT No. 2 LIC. CARLOS PICHARDO, TECÁMAC  Técnico en biotecnología en alimentos",
        "CBT No. 2 LIC. CARLOS PICHARDO, TECÁMAC  Técnico en contabilidad",
        "CBT No. 2 LIC. CARLOS PICHARDO, TECÁMAC  Técnico en diseño asistido por computadora",
        "CBT No. 2 LIC. CARLOS PICHARDO, TECÁMAC  Técnico en informática",
        "CBT No. 2 LIC. CARLOS PICHARDO, TECÁMAC  Técnico en instrumentación dental",
        "CBT No. 2 LIC. CARLOS PICHARDO, TECÁMAC  Técnico en manufactura asistida por computadora",
        "CBT No. 2 OCTAVIO PAZ, ACOLMAN  Técnico en contabilidad",
        "CBT No. 2 OCTAVIO PAZ, ACOLMAN  Técnico en informática",
        "CBT No. 2 OCTAVIO PAZ, ACOLMAN  Técnico en turismo",
        "CBT No. 2, ATIZAPÁN DE ZARAGOZA  Técnico en diseño asistido por computadora",
        "CBT No. 2, ATIZAPÁN DE ZARAGOZA  Técnico en gastronomía",
        "CBT No. 2, ATIZAPÁN DE ZARAGOZA  Técnico en informática",
        "CBT No. 2, ATIZAPÁN DE ZARAGOZA  Técnico en turismo",
        "CBT No. 2, CUAUTITLAN  Técnico en diseño asistido por computadora",
        "CBT No. 2, CUAUTITLAN  Técnico en informática",
        "CBT No. 2, ECATEPEC  Técnico en gastronomía",
        "CBT No. 2, ECATEPEC  Técnico en puericultura",
        "CBT No. 2, ECATEPEC Técnico en autotrónica",
        "CBT No. 2, TEXCOCO  Técnico en administración",
        "CBT No. 2, TEXCOCO  Técnico en gastronomía",
        "CBT No. 2, TEXCOCO  Técnico en informática",
        "CBT No. 2, TEXCOCO  Técnico en turismo",
        "CBT No. 3 SR. MAX SHEIN HEISLER, CHALCO  Técnico en contabilidad",
        "CBT No. 3 SR. MAX SHEIN HEISLER, CHALCO  Técnico en diseño asistido por computadora",
        "CBT No. 3 SR. MAX SHEIN HEISLER, CHALCO  Técnico en informática",
        "CBT No. 3, TECÁMAC  Técnico en gastronomía",
        "CBT No. 3, TECÁMAC  Técnico en informática",
        "CBT No. 3, TECÁMAC  Técnico en mecatrónica",
        "CBT No. 3, TEXCOCO  Técnico en comunicación",
        "CBT No. 3, TEXCOCO  Técnico en mercadotecnia",
        "CBT No. 3, TEXCOCO  Técnico en turismo",
        "CBT No. 4, CHALCO  Técnico en informática",
        "CBT No. 4, TECÁMAC  Técnico en biotecnología en alimentos",
        "CBT No. 4, TECÁMAC  Técnico en diseño asistido por computadora",
        "CBT No. 4, TECÁMAC  Técnico en informática",
        "CBT No. 4, TEXCOCO  Técnico en comunicación",
        "CBT No. 4, TEXCOCO  Técnico en diseño asistido por computadora",
        "CBT No. 4, TEXCOCO  Técnico en gastronomía",
        "CBT No. 4, TEXCOCO  Técnico en turismo",
        "CBT No. 5 MARÍA AMPARO VIDERIQUE DE SHEIN, CHALCO  Técnico en diseño asistido por computadora",
        "CBT No. 5 MARÍA AMPARO VIDERIQUE DE SHEIN, CHALCO  Técnico en gastronomía",
        "CBT No. 5 MARÍA AMPARO VIDERIQUE DE SHEIN, CHALCO  Técnico en informática",
        "CBT No. 5, TEXCOCO  Técnico en gastronomía",
        "CBT No. 5, TEXCOCO  Técnico en mecatrónica",
        "CBT No. 5, TEXCOCO  Técnico en puericultura",
        "CBT No. 6, CHALCO  Técnico en expresión gráfica digital",
        "CBT No. 6, CHALCO  Técnico en mercadotecnia",
        "CBT No. 6, CHALCO  Técnico en turismo",
        "CBT, ATIZAPÁN DE ZARAGOZA  Técnico en informática",
        "CBT, HUIXQUILUCAN  Técnico en administración",
        "CBT, HUIXQUILUCAN  Técnico en contabilidad",
        "CBT, TULTITLÁN  Técnico en informática",
        "CBT, TULTITLÁN  Técnico en mecatrónica",
        "CBT, TULTITLÁN  Técnico en turismo",
        "CBTA No. 35 EXTENSIÓN DE MILPA ALTA ",
        "CBTA No. 35 EXTENSIÓN DE TLÁHUAC ",
        "CECyT NÚM. 1 GONZALO VÁZQUEZ VELA RAMA DE INGENIERÍA Y CIENCIAS FÍSICO-MATEMÁTICAS ",
        "CECyT NÚM. 10 CARLOS VALLEJO MÁRQUEZ RAMA DE INGENIERÍA Y CIENCIAS FÍSICO-MATEMÁTICAS ",
        "CECyT NÚM. 11 WILFRIDO MASSIEU PÉREZ RAMA DE INGENIERÍA Y CIENCIAS FÍSICO - MATEMÁTICAS ",
        "CECyT NÚM. 12 JOSÉ MA. MORELOS Y PAVÓN RAMA DE CIENCIAS SOCIALES Y ADMINISTRATIVAS ",
        "CECyT NÚM. 13 RICARDO FLORES MAGÓN RAMA DE CIENCIAS SOCIALES Y ADMINISTRATIVAS ",
        "CECyT NÚM. 14 LUIS ENRIQUE ERRO SOLER RAMA DE CIENCIAS SOCIALES Y ADMINISTRATIVAS ",
        "CECyT NÚM. 15 DIÓDORO ANTÚNEZ ECHEGARAY RAMA DE CIENCIAS MÉDICO-BIOLÓGICAS ",
        "CECyT NÚM. 2 MIGUEL BERNARD PERALES RAMA DE INGENIERÍA Y CIENCIAS FÍSICO - MATEMÁTICAS ",
        "CECyT NÚM. 3 ESTANISLAO RAMÍREZ RUIZ RAMA DE INGENIERÍA Y CIENCIAS FÍSICO-MATEMÁTICAS ",
        "CECyT NÚM. 4 LÁZARO CÁRDENAS DEL RÍO RAMA DE INGENIERÍA Y CIENCIAS FÍSICO- MATEMÁTICAS ",
        "CECyT NÚM. 5 BENITO JUÁREZ GARCÍA RAMA DE CIENCIAS SOCIALES Y ADMINISTRATIVAS ",
        "CECyT NÚM. 6 MIGUEL OTHÓN DE MENDIZÁBAL RAMA DE CIENCIAS MÉDICO - BIOLÓGICAS ",
        "CECyT NÚM. 7 CUAUHTÉMOC RAMA DE INGENIERÍA Y CIENCIAS FÍSICO-MATEMÁTICAS ",
        "CECyT NÚM. 8 NARCISO BASSOLS GARCÍA RAMA DE INGENIERÍA Y CIENCIAS FÍSICO - MATEMÁTICAS ",
        "CECyT NÚM. 9 JUAN DE DIOS BÁTIZ PAREDES RAMA DE INGENIERÍA Y CIENCIAS FÍSICO - MATEMÁTICAS ",
        "CET 1 Centro de estudios tecnológicos Walter Cross Buchanan",
        "CECyTEM PLANTEL CHALCO  Diseño gráfico digital",
        "CECyTEM PLANTEL CHALCO  Técnico en mantenimiento a motores de combustión interna",
        "CECyTEM PLANTEL CHICOLOAPAN  Producción industrial",
        "CECyTEM PLANTEL CHICOLOAPAN  Soporte y mantenimiento de equipo de cómputo",
        "CECyTEM PLANTEL CHICOLOAPAN  Técnico en procesos de gestión administrativa",
        "CECyTEM PLANTEL CHIMALHUACÁN  Desarrollo organizacional",
        "CECyTEM PLANTEL CHIMALHUACÁN  Electrónica",
        "CECyTEM PLANTEL CHIMALHUACÁN  Programación",
        "CECyTEM PLANTEL CHIMALHUACÁN II  Animación digital",
        "CECyTEM PLANTEL CHIMALHUACÁN II  Programación",
        "CECyTEM PLANTEL COACALCO  Desarrollo Organizacional",
        "CECyTEM PLANTEL COACALCO  Programación",
        "CECyTEM PLANTEL COACALCO  Soporte y mantenimiento de equipo de cómputo",
        "CECyTEM PLANTEL CUAUTITLÁN  Programación",
        "CECyTEM PLANTEL CUAUTITLÁN IZCALLI  Estudios de mercado y entornos sociales",
        "CECyTEM PLANTEL CUAUTITLÁN IZCALLI  Laboratorista químico",
        "CECyTEM PLANTEL CUAUTITLÁN IZCALLI  Programación",
        "CECyTEM PLANTEL ECATEPEC  Logística",
        "CECyTEM PLANTEL ECATEPEC  Programación",
        "CECyTEM PLANTEL ECATEPEC  Técnico en procesos de gestión administrativa",
        "CECyTEM PLANTEL ECATEPEC II  Programación",
        "CECyTEM PLANTEL ECATEPEC II  Técnico en trabajo social",
        "CECyTEM PLANTEL ECATEPEC III  Programación",
        "CECyTEM PLANTEL HUIXQUILUCAN  Programación",
        "CECyTEM PLANTEL IXTAPALUCA  Electricidad",
        "CECyTEM PLANTEL IXTAPALUCA  Técnico en procesos de gestión administrativa",
        "CECyTEM PLANTEL IXTAPALUCA II  Animación digital",
        "CECyTEM PLANTEL IXTAPALUCA II  Construcción",
        "CECyTEM PLANTEL IXTAPALUCA II  Programación",
        "CECyTEM PLANTEL LA PAZ  Mantenimiento industrial",
        "CECyTEM PLANTEL LA PAZ  Programación",
        "CECyTEM PLANTEL NEZAHUALCÓYOTL  Técnico en procesos de gestión administrativa",
        "CECyTEM PLANTEL NEZAHUALCÓYOTL  Técnico en trabajo social",
        "CECyTEM PLANTEL NEZAHUALCÓYOTL II  Animación digital",
        "CECyTEM PLANTEL NEZAHUALCÓYOTL II  Soporte y mantenimiento de equipo de cómputo",
        "CECyTEM PLANTEL NICOLÁS ROMERO I  Programación",
        "CECyTEM PLANTEL NICOLÁS ROMERO I  Soporte y mantenimiento de equipo de cómputo",
        "CECyTEM PLANTEL NICOLÁS ROMERO II  Mecatrónica",
        "CECyTEM PLANTEL NICOLÁS ROMERO II  Programación",
        "CECyTEM PLANTEL NICOLÁS ROMERO II  Técnico en ventas",
        "CECyTEM PLANTEL NICOLÁS ROMERO III  Programación",
        "CECyTEM PLANTEL TECÁMAC  Máquinas - herramienta",
        "CECyTEM PLANTEL TECÁMAC  Programación",
        "CECyTEM PLANTEL TECÁMAC  Técnico en ventas",
        "CECyTEM PLANTEL TEPOTZOTLÁN  Construcción",
        "CECyTEM PLANTEL TEPOTZOTLÁN  Programación",
        "CECyTEM PLANTEL TEXCOCO  Soporte y mantenimiento de equipo de cómputo",
        "CECyTEM PLANTEL TULTEPEC  Diseño gráfico digital",
        "CECyTEM PLANTEL TULTEPEC  Programación",
        "CECyTEM PLANTEL TULTITLÁN  Electricidad",
        "CECyTEM PLANTEL TULTITLÁN  Programación",
        "CECyTEM PLANTEL VALLE DE CHALCO SOLIDARIDAD I  Animación Digital",
        "CECyTEM PLANTEL VALLE DE CHALCO SOLIDARIDAD I  Desarrollo organizacional",
        "CECyTEM PLANTEL VALLE DE CHALCO SOLIDARIDAD I  Laboratorio clínico",
        "CECyTEM PLANTEL VALLE DE CHALCO SOLIDARIDAD I  Soporte y mantenimiento de equipo de cómputo",
        "CECyTEM PLANTEL VALLE DE CHALCO SOLIDARIDAD II  Diseño gráfico digital",
        "CECyTEM PLANTEL VALLE DE CHALCO SOLIDARIDAD II  Electricidad",
        "CENTRO DE BACHILLERATO TECNOLÓGICO AGROPECUARIO NÚM. 35 ",
        "CENTRO DE BACHILLERATO TECNOLÓGICO INDUSTRIAL Y DE SERVICIOS NÚM. 133 ",
        "CENTRO DE BACHILLERATO TECNOLÓGICO INDUSTRIAL Y DE SERVICIOS NÚM. 160 ",
        "CENTRO DE BACHILLERATO TECNOLÓGICO INDUSTRIAL Y DE SERVICIOS NÚM. 202 ",
        "CENTRO DE BACHILLERATO TECNOLÓGICO INDUSTRIAL Y DE SERVICIOS NÚM. 227 ",
        "CENTRO DE BACHILLERATO TECNOLÓGICO INDUSTRIAL Y DE SERVICIOS NÚM. 29 ",
        "CENTRO DE BACHILLERATO TECNOLÓGICO INDUSTRIAL Y DE SERVICIOS NÚM. 50 ",
        "CENTRO DE BACHILLERATO TECNOLÓGICO INDUSTRIAL Y DE SERVICIOS NÚM. 6 ",
        "CENTRO DE ESTUDIOS DE BACHILLERATO LIC. JESÚS REYES HEROLES ",
        "CENTRO DE ESTUDIOS DE BACHILLERATO MTRO. MOISÉS SÁENZ GARZA ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 1 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 10 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 11 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 119 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 13 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 152 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 153 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 154 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 165 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 166 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 167 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 2 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 29 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 3 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 30 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 31 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 32 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 33 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 35 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 36 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 37 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 39 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 4 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 42 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 49 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 5 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 50 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 51 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 52 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 53 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 54 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 55 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 56 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 57 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 6 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 65 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 7 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 76 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 8 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 9 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 92 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 95 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 96 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 97 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS WALTER CROSS BUCHANAN RAMA DE INGENIERÍA Y CIENCIAS FÍSICO-MATEMÁT ",
        "CENTRO MULTIMODAL DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS DEL MAR Y AGUAS CONTINENTALES ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 02 ECATEPEC (Integrante del SNB) ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 03 CHIMALHUACÁN (Integrante del SNB) ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 04 VALLE DE CHALCO (Integrante del SNB) ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 09 HUIXQUILUCAN ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 10 ECATEPEC II (Integrante del SNB) ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 15 NICOLÁS ROMERO ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 17 HUIXQUILUCAN II ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 18 IXTAPALUCA ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 19 TECÁMAC ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 22 CHICOLOAPAN (Integrante del SNB) ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 23 ECATEPEC III ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 24 CHIMALHUACÁN II ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 25 TULTITLÁN ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 30 NEZAHUALCÓYOTL ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 31 CHICOLOAPAN II ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 35 TECÁMAC II ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 37 NAUCALPAN ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 39 ACOLMAN ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 43 TEXCOCO ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 56 IXTAPALUCA II ",
        "COLEGIO DE CIENCIAS Y HUMANIDADES, PLANTEL AZCAPOTZALCO ",
        "COLEGIO DE CIENCIAS Y HUMANIDADES, PLANTEL NAUCALPAN ",
        "COLEGIO DE CIENCIAS Y HUMANIDADES, PLANTEL ORIENTE ",
        "COLEGIO DE CIENCIAS Y HUMANIDADES, PLANTEL SUR ",
        "COLEGIO DE CIENCIAS Y HUMANIDADES, PLANTEL VALLEJO ",
        "CONALEP AEROPUERTO  Laministería y recubrimiento de las aeronaves",
        "CONALEP AEROPUERTO  Mantenimiento de motores y planeadores",
        "CONALEP AEROPUERTO  Sistemas electrónicos de aviación",
        "CONALEP AEROPUERTO  Telecomunicaciones",
        "CONALEP ÁLVARO OBREGÓN I  Electromecánica industrial",
        "CONALEP ÁLVARO OBREGÓN I  Escenotecnia",
        "CONALEP ÁLVARO OBREGÓN I  Hospitalidad turística",
        "CONALEP ÁLVARO OBREGÓN I  Refrigeración y climatización",
        "CONALEP ÁLVARO OBREGÓN II  Asistente directivo",
        "CONALEP ÁLVARO OBREGÓN II  Contabilidad",
        "CONALEP ÁLVARO OBREGÓN II  Informática",
        "CONALEP ARAGÓN  Electricidad industrial",
        "CONALEP ARAGÓN  Expresión gráfica digital",
        "CONALEP ARAGÓN  Informática",
        "CONALEP ARAGÓN  Mantenimiento de sistemas electrónicos",
        "CONALEP ATIZAPÁN I  Autotrónica",
        "CONALEP ATIZAPÁN I  Informática",
        "CONALEP ATIZAPÁN I  Mantenimiento de sistemas automáticos",
        "CONALEP ATIZAPÁN II  Contabilidad",
        "CONALEP ATIZAPÁN II  Electromecánica industrial",
        "CONALEP ATIZAPÁN II  Soporte y mantenimiento de equipo de cómputo",
        "CONALEP AZCAPOTZALCO  Administración",
        "CONALEP AZCAPOTZALCO  Mantenimiento automotriz",
        "CONALEP AZCAPOTZALCO  Seguridad e higiene y Protección civil",
        "CONALEP AZTAHUACAN  Contabilidad",
        "CONALEP AZTAHUACAN  Industria del vestido",
        "CONALEP AZTAHUACAN  Mantenimiento de sistemas electrónicos",
        "CONALEP AZTAHUACAN  Optometría",
        "CONALEP CENTRO MÉXICO-CANADÁ  Contabilidad",
        "CONALEP CENTRO MÉXICO-CANADÁ  Informática",
        "CONALEP CENTRO MÉXICO-CANADÁ  Soporte y mantenimiento de equipo de cómputo",
        "CONALEP CHALCO  Contabilidad",
        "CONALEP CHALCO  Electromecánica industrial",
        "CONALEP CHALCO  Enfermería general",
        "CONALEP CHIMALHUACÁN  Contabilidad",
        "CONALEP CHIMALHUACÁN  Electromecánica industrial",
        "CONALEP CHIMALHUACÁN  Informática",
        "CONALEP CIUDAD AZTECA  Electricidad industrial",
        "CONALEP CIUDAD AZTECA  Metalmecánica",
        "CONALEP CIUDAD AZTECA  Química industrial",
        "CONALEP CIUDAD AZTECA  Refrigeración y climatización",
        "CONALEP COACALCO  Contabilidad",
        "CONALEP COACALCO  Informática",
        "CONALEP COACALCO  Química industrial",
        "CONALEP COMERCIO Y FOMENTO INDUSTRIAL (SECOFI)  Administración",
        "CONALEP COMERCIO Y FOMENTO INDUSTRIAL (SECOFI)  Asistente directivo",
        "CONALEP COYOACÁN  Enfermería general",
        "CONALEP COYOACÁN  Optometría",
        "CONALEP COYOACÁN  Terapia respiratoria",
        "CONALEP CUAUTITLÁN  Alimentos y bebidas",
        "CONALEP CUAUTITLÁN  Asistente y protesista dental",
        "CONALEP CUAUTITLÁN  Enfermería general",
        "CONALEP CUAUTITLÁN  Hospitalidad turística",
        "CONALEP DEL SOL  Asistente directivo",
        "CONALEP DEL SOL  Construcción",
        "CONALEP DEL SOL  Seguridad e higiene y Protección civil",
        "CONALEP DEL SOL  Soporte y mantenimiento de equipo de cómputo",
        "CONALEP ECATEPEC I  Asistente directivo",
        "CONALEP ECATEPEC I  Electromecánica industrial",
        "CONALEP ECATEPEC I  Informática",
        "CONALEP ECATEPEC I  Mantenimiento de sistemas electrónicos",
        "CONALEP ECATEPEC II  Administración",
        "CONALEP ECATEPEC II  Contabilidad",
        "CONALEP ECATEPEC II  Informática",
        "CONALEP ECATEPEC II  Soporte y mantenimiento de equipo de cómputo",
        "CONALEP ECATEPEC III  Autotrónica",
        "CONALEP ECATEPEC III  Contabilidad",
        "CONALEP ECATEPEC III  Máquinas herramienta",
        "CONALEP EL ZARCO  Alimentos y bebidas",
        "CONALEP EL ZARCO  Contabilidad",
        "CONALEP EL ZARCO  Producción y transformación de productos acuícolas",
        "CONALEP GUSTAVO A. MADERO I  Contabilidad",
        "CONALEP GUSTAVO A. MADERO I  Informática",
        "CONALEP GUSTAVO A. MADERO I  Optometría",
        "CONALEP GUSTAVO A. MADERO II  Asistente directivo",
        "CONALEP GUSTAVO A. MADERO II  Electromecánica industrial",
        "CONALEP GUSTAVO A. MADERO II  Informática",
        "CONALEP GUSTAVO A. MADERO II  Mantenimiento automotriz",
        "CONALEP GUSTAVO BAZ - TLALNEPANTLA  Conservación del medio ambiente",
        "CONALEP GUSTAVO BAZ - TLALNEPANTLA  Informática",
        "CONALEP GUSTAVO BAZ - TLALNEPANTLA  Productividad industrial",
        "CONALEP GUSTAVO BAZ - TLALNEPANTLA  Química industrial",
        "CONALEP HUIXQUILUCAN  Autotrónica",
        "CONALEP HUIXQUILUCAN  Contabilidad",
        "CONALEP HUIXQUILUCAN  Expresión gráfica digital",
        "CONALEP ING. BERNARDO QUINTANA ARRIOJA - CUAUTITLÁN  Contabilidad",
        "CONALEP ING. BERNARDO QUINTANA ARRIOJA - CUAUTITLÁN  Informática",
        "CONALEP ING. BERNARDO QUINTANA ARRIOJA - CUAUTITLÁN  Mantenimiento de sistemas automáticos",
        "CONALEP ING. BERNARDO QUINTANA ARRIOJA - CUAUTITLÁN  Máquinas herramienta",
        "CONALEP ING. JOSÉ ANTONIO PADILLA SEGURA III (ANTES TICOMÁN)  Asistente directivo",
        "CONALEP ING. JOSÉ ANTONIO PADILLA SEGURA III (ANTES TICOMÁN)  Electricidad industrial",
        "CONALEP ING. JOSÉ ANTONIO PADILLA SEGURA III (ANTES TICOMÁN)  Mecatrónica",
        "CONALEP ING. JOSÉ ANTONIO PADILLA SEGURA III (ANTES TICOMÁN)  Química industrial",
        "CONALEP IXTAPALUCA  Industria del vestido",
        "CONALEP IXTAPALUCA  Informática",
        "CONALEP IXTAPALUCA  Química industrial",
        "CONALEP IZTACALCO I  Asistente directivo",
        "CONALEP IZTACALCO I  Electromecánica industrial",
        "CONALEP IZTACALCO I  Industria del vestido",
        "CONALEP IZTAPALAPA I  Asistente directivo",
        "CONALEP IZTAPALAPA I  Control de calidad",
        "CONALEP IZTAPALAPA I  Electricidad industrial",
        "CONALEP IZTAPALAPA I  Máquinas herramienta",
        "CONALEP IZTAPALAPA II  Autotrónica",
        "CONALEP IZTAPALAPA II  Construcción",
        "CONALEP IZTAPALAPA II  Contabilidad",
        "CONALEP IZTAPALAPA III  Asistente directivo",
        "CONALEP IZTAPALAPA III  Informática",
        "CONALEP IZTAPALAPA III  Refrigeración y climatización",
        "CONALEP IZTAPALAPA IV  Contabilidad",
        "CONALEP IZTAPALAPA IV  Mantenimiento automotriz",
        "CONALEP IZTAPALAPA IV  Soporte y mantenimiento de equipo de cómputo",
        "CONALEP IZTAPALAPA V  Contabilidad",
        "CONALEP IZTAPALAPA V  Informática",
        "CONALEP IZTAPALAPA V  Soporte y mantenimiento de equipo de cómputo",
        "CONALEP LOS REYES LA PAZ  Autotrónica",
        "CONALEP LOS REYES LA PAZ  Contabilidad",
        "CONALEP LOS REYES LA PAZ  Electricidad industrial",
        "CONALEP MAGDALENA CONTRERAS  Alimentos y bebidas",
        "CONALEP MAGDALENA CONTRERAS  Contabilidad",
        "CONALEP MAGDALENA CONTRERAS  Informática",
        "CONALEP MILPA ALTA  Asistente directivo",
        "CONALEP MILPA ALTA  Contabilidad",
        "CONALEP MILPA ALTA  Enfermería general",
        "CONALEP NAUCALPAN I  Alimentos y bebidas",
        "CONALEP NAUCALPAN I  Contabilidad",
        "CONALEP NAUCALPAN I  Hospitalidad turística",
        "CONALEP NAUCALPAN I  Informática",
        "CONALEP NAUCALPAN II  Administración",
        "CONALEP NAUCALPAN II  Electromecánica industrial",
        "CONALEP NAUCALPAN II  Plásticos",
        "CONALEP NEZAHUALCÓYOTL I  Asistente y protesista dental",
        "CONALEP NEZAHUALCÓYOTL I  Enfermería general",
        "CONALEP NEZAHUALCÓYOTL II  Autotrónica",
        "CONALEP NEZAHUALCÓYOTL II  Industria del vestido",
        "CONALEP NEZAHUALCÓYOTL III  Alimentos y bebidas",
        "CONALEP NEZAHUALCÓYOTL III  Asistente directivo",
        "CONALEP NEZAHUALCÓYOTL III  Contabilidad",
        "CONALEP NEZAHUALCÓYOTL III  Informática",
        "CONALEP NICOLÁS ROMERO  Administración",
        "CONALEP NICOLÁS ROMERO  Contabilidad",
        "CONALEP NICOLÁS ROMERO  Mantenimiento de sistemas electrónicos",
        "CONALEP NICOLÁS ROMERO  Soporte y mantenimiento de equipo de cómputo",
        "CONALEP SANTA FE  Asistente directivo",
        "CONALEP SANTA FE  Expresión gráfica digital",
        "CONALEP SANTA FE  Informática",
        "CONALEP SANTA FE  Optometría",
        "CONALEP TECÁMAC  Mantenimiento de sistemas automáticos",
        "CONALEP TECÁMAC  Química industrial",
        "CONALEP TEXCOCO  Asistente directivo",
        "CONALEP TEXCOCO  Fuentes alternas de energía",
        "CONALEP TEXCOCO  Industria del vestido",
        "CONALEP TEXCOCO  Informática",
        "CONALEP TLÁHUAC  Contabilidad",
        "CONALEP TLÁHUAC  Mantenimiento automotriz",
        "CONALEP TLÁHUAC  Mantenimiento de sistemas electrónicos",
        "CONALEP TLALNEPANTLA I  Electromecánica industrial",
        "CONALEP TLALNEPANTLA I  Informática",
        "CONALEP TLALNEPANTLA I  Mecatrónica",
        "CONALEP TLALNEPANTLA II  Autotrónica",
        "CONALEP TLALNEPANTLA II  Industria del vestido",
        "CONALEP TLALNEPANTLA II  Mantenimiento de sistemas automáticos",
        "CONALEP TLALNEPANTLA II  Procesamiento industrial de alimentos",
        "CONALEP TLALNEPANTLA III  Asistente directivo",
        "CONALEP TLALNEPANTLA III  Contabilidad",
        "CONALEP TLALNEPANTLA III  Electricidad industrial",
        "CONALEP TLALNEPANTLA III  Enfermería general",
        "CONALEP TLALPAN I  Alimentos y bebidas",
        "CONALEP TLALPAN I  Informática",
        "CONALEP TLALPAN II  Administración",
        "CONALEP TLALPAN II  Electromecánica industrial",
        "CONALEP TLALPAN II  Química industrial",
        "CONALEP TULTITLÁN  Autotrónica",
        "CONALEP TULTITLÁN  Contabilidad",
        "CONALEP TULTITLÁN  Mantenimiento de sistemas electrónicos",
        "CONALEP VALLE DE ARAGÓN  Asistente directivo",
        "CONALEP VALLE DE ARAGÓN  Conservación del medio ambiente",
        "CONALEP VALLE DE ARAGÓN  Contabilidad",
        "CONALEP VALLE DE ARAGÓN  Máquinas herramienta",
        "CONALEP VENUSTIANO CARRANZA I  Asistente directivo",
        "CONALEP VENUSTIANO CARRANZA I  Contabilidad",
        "CONALEP VENUSTIANO CARRANZA I  Mantenimiento de sistemas electrónicos",
        "CONALEP VENUSTIANO CARRANZA I  Soporte y mantenimiento de equipo de cómputo",
        "CONALEP VENUSTIANO CARRANZA II  Alimentos y bebidas",
        "CONALEP VENUSTIANO CARRANZA II  Hospitalidad turística",
        "CONALEP VENUSTIANO CARRANZA II  Soporte y mantenimiento de equipo de cómputo",
        "CONALEP XOCHIMILCO  Asistente directivo",
        "CONALEP XOCHIMILCO  Construcción",
        "CONALEP XOCHIMILCO  Mantenimiento de sistemas electrónicos",
        "CONALEP XOCHIMILCO  Química industrial",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 1 GABINO BARREDA ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 2 ERASMO CASTELLANOS QUINTO ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 3 JUSTO SIERRA ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 4 VIDAL CASTAÑEDA Y NÁJERA ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 5 JOSÉ VASCONCELOS ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 6 ANTONIO CASO ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 7 EZEQUIEL A. CHÁVEZ ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 8 MIGUEL E. SCHULZ ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 9 PEDRO DE ALBA ",
        "GRUPO ANEXO A LA PREPARATORIA OFICIAL NÚM. 54 ",
        "MÓDULO PRÓCERES DE LA EDUCACIÓN ADSCRITO A LA PREPARATORIA OFICIAL NÚM. 265 ",
        "PLANTEL 1, EL ROSARIO ",
        "PLANTEL 10, AEROPUERTO ",
        "PLANTEL 11, NUEVA ATZACOALCO ",
        "PLANTEL 12, NEZAHUALCÓYOTL ",
        "PLANTEL 13, XOCHIMILCO TEPEPAN QUIRINO MENDOZA Y CORTÉS ",
        "PLANTEL 14, MILPA ALTA FIDENCIO VILLANUEVA ROJAS ",
        "PLANTEL 15, CONTRERAS ",
        "PLANTEL 16, TLÁHUAC MANUEL CHAVARRÍA CHAVARRÍA ",
        "PLANTEL 17, HUAYAMILPAS PEDREGAL ",
        "PLANTEL 18, TLILHUACA AZCAPOTZALCO ",
        "PLANTEL 19, ECATEPEC ",
        "PLANTEL 2, CIEN METROS ELISA ACUÑA ROSSETTI ",
        "PLANTEL 20, DEL VALLE MATÍAS ROMERO ",
        "PLANTEL 3, IZTACALCO ",
        "PLANTEL 4, CULHUACÁN LÁZARO CÁRDENAS ",
        "PLANTEL 5, SATÉLITE ",
        "PLANTEL 6, VICENTE GUERRERO ",
        "PLANTEL 7, IZTAPALAPA ",
        "PLANTEL 8, CUAJIMALPA ",
        "PLANTEL 9, ARAGÓN ",
        "PLANTEL TEXCOCO DE LA ESCUELA PREPARATORIA ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE ATIZAPÁN ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE CHALCO ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE COACALCO ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE CUAUTITLÁN IZCALLI ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE ECATEPEC ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE LOS REYES ACAQUILPAN ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE NAUCALPAN ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE TEXCOCO ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE TLALNEPANTLA ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL NÚM. 1 DE NEZAHUALCÓYOTL ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL NÚM. 2 DE NEZAHUALCÓYOTL ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL NÚM. 3 DE NEZAHUALCÓYOTL ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL NÚM. 4 DE NEZAHUALCÓYOTL ",
        "PREPARATORIA OFICIAL NÚM. 100 ",
        "PREPARATORIA OFICIAL NÚM. 103 ",
        "PREPARATORIA OFICIAL NÚM. 105 ",
        "PREPARATORIA OFICIAL NÚM. 107 ",
        "PREPARATORIA OFICIAL NÚM. 11 ",
        "PREPARATORIA OFICIAL NÚM. 110 PROFR. ALFREDO RAMÍREZ SÁNCHEZ ",
        "PREPARATORIA OFICIAL NÚM. 113 ",
        "PREPARATORIA OFICIAL NÚM. 114 ",
        "PREPARATORIA OFICIAL NÚM. 115 ",
        "PREPARATORIA OFICIAL NÚM. 118 ",
        "PREPARATORIA OFICIAL NÚM. 12 ",
        "PREPARATORIA OFICIAL NÚM. 121 ",
        "PREPARATORIA OFICIAL NÚM. 122 ",
        "PREPARATORIA OFICIAL NÚM. 123 ",
        "PREPARATORIA OFICIAL NÚM. 124 ",
        "PREPARATORIA OFICIAL NÚM. 125 ",
        "PREPARATORIA OFICIAL NÚM. 126 DR. JOSÉ RICO PADILLA ",
        "PREPARATORIA OFICIAL NÚM. 127 ",
        "PREPARATORIA OFICIAL NÚM. 128 ",
        "PREPARATORIA OFICIAL NÚM. 135 ",
        "PREPARATORIA OFICIAL NÚM. 137 ",
        "PREPARATORIA OFICIAL NÚM. 141 ",
        "PREPARATORIA OFICIAL NÚM. 143 ",
        "PREPARATORIA OFICIAL NÚM. 148 ",
        "PREPARATORIA OFICIAL NÚM. 149 ",
        "PREPARATORIA OFICIAL NÚM. 15 ",
        "PREPARATORIA OFICIAL NÚM. 153 ",
        "PREPARATORIA OFICIAL NÚM. 158 ",
        "PREPARATORIA OFICIAL NÚM. 16 ",
        "PREPARATORIA OFICIAL NÚM. 161 ",
        "PREPARATORIA OFICIAL NÚM. 163 ",
        "PREPARATORIA OFICIAL NÚM. 164 ",
        "PREPARATORIA OFICIAL NÚM. 168 ",
        "PREPARATORIA OFICIAL NÚM. 170 ",
        "PREPARATORIA OFICIAL NÚM. 171 ",
        "PREPARATORIA OFICIAL NÚM. 179 ",
        "PREPARATORIA OFICIAL NÚM. 18 ",
        "PREPARATORIA OFICIAL NÚM. 181 ",
        "PREPARATORIA OFICIAL NÚM. 183 ",
        "PREPARATORIA OFICIAL NÚM. 184 ",
        "PREPARATORIA OFICIAL NÚM. 185 ",
        "PREPARATORIA OFICIAL NÚM. 187 ",
        "PREPARATORIA OFICIAL NÚM. 188 ",
        "PREPARATORIA OFICIAL NÚM. 198 ",
        "PREPARATORIA OFICIAL NÚM. 210 ",
        "PREPARATORIA OFICIAL NÚM. 211 ",
        "PREPARATORIA OFICIAL NÚM. 212 ",
        "PREPARATORIA OFICIAL NÚM. 213 ",
        "PREPARATORIA OFICIAL NÚM. 214 ",
        "PREPARATORIA OFICIAL NÚM. 216 ",
        "PREPARATORIA OFICIAL NÚM. 217 ",
        "PREPARATORIA OFICIAL NÚM. 22 ",
        "PREPARATORIA OFICIAL NÚM. 220 ",
        "PREPARATORIA OFICIAL NÚM. 221 ",
        "PREPARATORIA OFICIAL NÚM. 222 ",
        "PREPARATORIA OFICIAL NÚM. 223 ",
        "PREPARATORIA OFICIAL NÚM. 224 ",
        "PREPARATORIA OFICIAL NÚM. 225 ",
        "PREPARATORIA OFICIAL NÚM. 226 ",
        "PREPARATORIA OFICIAL NÚM. 227 ",
        "PREPARATORIA OFICIAL NÚM. 228 ",
        "PREPARATORIA OFICIAL NÚM. 229 ",
        "PREPARATORIA OFICIAL NÚM. 231 ",
        "PREPARATORIA OFICIAL NÚM. 232 ",
        "PREPARATORIA OFICIAL NÚM. 233 ",
        "PREPARATORIA OFICIAL NÚM. 234 ",
        "PREPARATORIA OFICIAL NÚM. 235 ",
        "PREPARATORIA OFICIAL NÚM. 236 ",
        "PREPARATORIA OFICIAL NÚM. 237 ",
        "PREPARATORIA OFICIAL NÚM. 238 ",
        "PREPARATORIA OFICIAL NÚM. 24 ",
        "PREPARATORIA OFICIAL NÚM. 240 ",
        "PREPARATORIA OFICIAL NÚM. 241 ",
        "PREPARATORIA OFICIAL NÚM. 243 ",
        "PREPARATORIA OFICIAL NÚM. 250 ",
        "PREPARATORIA OFICIAL NÚM. 257 ",
        "PREPARATORIA OFICIAL NÚM. 258 ",
        "PREPARATORIA OFICIAL NÚM. 259 ",
        "PREPARATORIA OFICIAL NÚM. 260 ",
        "PREPARATORIA OFICIAL NÚM. 262 ",
        "PREPARATORIA OFICIAL NÚM. 265 ",
        "PREPARATORIA OFICIAL NÚM. 266 ",
        "PREPARATORIA OFICIAL NÚM. 267 ",
        "PREPARATORIA OFICIAL NÚM. 269 ",
        "PREPARATORIA OFICIAL NÚM. 27 ",
        "PREPARATORIA OFICIAL NÚM. 272 ",
        "PREPARATORIA OFICIAL NÚM. 274 ",
        "PREPARATORIA OFICIAL NÚM. 277 ",
        "PREPARATORIA OFICIAL NÚM. 278 ",
        "PREPARATORIA OFICIAL NÚM. 279 ",
        "PREPARATORIA OFICIAL NÚM. 28 ",
        "PREPARATORIA OFICIAL NÚM. 280 ",
        "PREPARATORIA OFICIAL NÚM. 281 ",
        "PREPARATORIA OFICIAL NÚM. 282 ",
        "PREPARATORIA OFICIAL NÚM. 284 ",
        "PREPARATORIA OFICIAL NÚM. 288 ",
        "PREPARATORIA OFICIAL NÚM. 293 ",
        "PREPARATORIA OFICIAL NÚM. 295 ",
        "PREPARATORIA OFICIAL NÚM. 296 ",
        "PREPARATORIA OFICIAL NÚM. 299 ",
        "PREPARATORIA OFICIAL NÚM. 30 ",
        "PREPARATORIA OFICIAL NÚM. 300 ",
        "PREPARATORIA OFICIAL NÚM. 301 ",
        "PREPARATORIA OFICIAL NÚM. 306 ",
        "PREPARATORIA OFICIAL NÚM. 308 ",
        "PREPARATORIA OFICIAL NÚM. 31 ",
        "PREPARATORIA OFICIAL NÚM. 310 ",
        "PREPARATORIA OFICIAL NÚM. 312 ",
        "PREPARATORIA OFICIAL NÚM. 314 ",
        "PREPARATORIA OFICIAL NÚM. 320 ",
        "PREPARATORIA OFICIAL NÚM. 323 ",
        "PREPARATORIA OFICIAL NÚM. 324 ",
        "PREPARATORIA OFICIAL NÚM. 326 ",
        "PREPARATORIA OFICIAL NÚM. 327 ",
        "PREPARATORIA OFICIAL NÚM. 328 ",
        "PREPARATORIA OFICIAL NÚM. 330 ",
        "PREPARATORIA OFICIAL NÚM. 332 ",
        "PREPARATORIA OFICIAL NÚM. 333 ",
        "PREPARATORIA OFICIAL NÚM. 335 ",
        "PREPARATORIA OFICIAL NÚM. 336 ",
        "PREPARATORIA OFICIAL NÚM. 338 ",
        "PREPARATORIA OFICIAL NÚM. 339 ",
        "PREPARATORIA OFICIAL NÚM. 34 ",
        "PREPARATORIA OFICIAL NÚM. 340 ",
        "PREPARATORIA OFICIAL NÚM. 341 ",
        "PREPARATORIA OFICIAL NÚM. 342 ",
        "PREPARATORIA OFICIAL NÚM. 344 ",
        "PREPARATORIA OFICIAL NÚM. 345 ",
        "PREPARATORIA OFICIAL NÚM. 347 ",
        "PREPARATORIA OFICIAL NÚM. 37 ",
        "PREPARATORIA OFICIAL NÚM. 48 ",
        "PREPARATORIA OFICIAL NÚM. 49 ",
        "PREPARATORIA OFICIAL NÚM. 52 ",
        "PREPARATORIA OFICIAL NÚM. 54 ",
        "PREPARATORIA OFICIAL NÚM. 55 ",
        "PREPARATORIA OFICIAL NÚM. 62 ",
        "PREPARATORIA OFICIAL NÚM. 64 ",
        "PREPARATORIA OFICIAL NÚM. 67 ",
        "PREPARATORIA OFICIAL NÚM. 68 ",
        "PREPARATORIA OFICIAL NÚM. 69 ",
        "PREPARATORIA OFICIAL NÚM. 7 ",
        "PREPARATORIA OFICIAL NÚM. 70 ",
        "PREPARATORIA OFICIAL NÚM. 73 ",
        "PREPARATORIA OFICIAL NÚM. 74 ",
        "PREPARATORIA OFICIAL NÚM. 75 ",
        "PREPARATORIA OFICIAL NÚM. 79 ",
        "PREPARATORIA OFICIAL NÚM. 81 ",
        "PREPARATORIA OFICIAL NÚM. 82 ",
        "PREPARATORIA OFICIAL NÚM. 85 ",
        "PREPARATORIA OFICIAL NÚM. 86 ",
        "PREPARATORIA OFICIAL NÚM. 87 ",
        "PREPARATORIA OFICIAL NÚM. 88 ",
        "PREPARATORIA OFICIAL NÚM. 89 ",
        "PREPARATORIA OFICIAL NÚM. 92 ",
        "PREPARATORIA OFICIAL NÚM. 94 ",
        "PREPARATORIA OFICIAL NÚM. 95 ",
        "PREPARATORIA OFICIAL NÚM. 96 ",
        "PREPARATORIA OFICIAL NÚM. 97 ",
        "PREPARATORIA OFICIAL NÚM. 98 ",
        "PREPARATORIA OFICIAL NÚM. 99 ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 06, PIEDRA GRANDE ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 103, EL OLIVO ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 104, GENERAL IGNACIO ALLENDE ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 106, JORGE JIMÉNEZ CANTÚ ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 107, VALLE VERDE ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 108, TLAPACOYA ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 109, GRAL. ÁVILA CAMACHO ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 110, EL MOLINO ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 127, LOMAS DE SAN ISIDRO ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 144, COLINAS DE SAN MATEO ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 145, LAS HUERTAS ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 146, TRANSFIGURACIÓN ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 147, LLANO GRANDE ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 15, SAN MARCOS NEPANTLA ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 187, SANTO DOMINGO AJOLOAPAN ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 236, BARRIO LA LUZ ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 237, EX-HACIENDA LOS DOLORES ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 241, GUADALUPE AMANALCO ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 242, SAN DIEGUITO XOCHIMANCA ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 250, EL PUERTO ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 342, SAN AGUSTÍN ATLAPULCO ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 343, BARRIO HOJALATEROS ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 344, VILLA DE LAS FLORES ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 350, SANTA MARÍA GUADALUPE LAS TORRES 1 SECCIÓN ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 356, LA MAGDALENA CHICHICASPA ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 370, SAN JOSÉ LAS PALMAS ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 371, DR. JORGE JIMÉNEZ CANTÚ ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 381, SANTIAGO TEPATLAXCO ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 382, PUENTECILLAS ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 383, BARRÓN ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 384, BARRIO DE GUADALUPE ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 385, JORGE JIMÉNEZ CANTÚ ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 386, SAN FRANCISCO MAGÚ ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 469, HOGAR OBRERO ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 59, LOMAS LINDAS ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 67, UNIÓN DE GUADALUPE ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 73, SAN AGUSTÍN ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 74, REPÚBLICA MEXICANA ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 94, CORONEL JOSÉ ANTONIO TORRES ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 95, SAGITARIO V "
    ]
    
    var arrayEscuelasPuntaje:[String] = [
        "0",
        "55",
        "60",
        "44",
        "42",
        "48",
        "68",
        "55",
        "49",
        "71",
        "58",
        "43",
        "26",
        "48",
        "55",
        "41",
        "54",
        "43",
        "61",
        "50",
        "55",
        "54",
        "52",
        "49",
        "56",
        "58",
        "57",
        "51",
        "54",
        "39",
        "59",
        "50",
        "56",
        "37",
        "53",
        "66",
        "57",
        "34",
        "40",
        "41",
        "47",
        "37",
        "61",
        "75",
        "42",
        "62",
        "50",
        "34",
        "21",
        "49",
        "43",
        "55",
        "61",
        "42",
        "29",
        "25",
        "58",
        "55",
        "66",
        "57",
        "65",
        "61",
        "54",
        "47",
        "52",
        "61",
        "43",
        "55",
        "38",
        "47",
        "52",
        "55",
        "65",
        "60",
        "59",
        "48",
        "48",
        "41",
        "58",
        "42",
        "53",
        "37",
        "58",
        "63",
        "56",
        "37",
        "41",
        "38",
        "36",
        "57",
        "58",
        "57",
        "28",
        "59",
        "42",
        "57",
        "51",
        "49",
        "47",
        "44",
        "49",
        "40",
        "33",
        "26",
        "52",
        "24",
        "32",
        "28",
        "46",
        "53",
        "58",
        "46",
        "49",
        "89",
        "85",
        "85",
        "86",
        "94",
        "88",
        "91",
        "89",
        "95",
        "86",
        "91",
        "94",
        "92",
        "86",
        "106",
        "85",
        "79",
        "60",
        "44",
        "55",
        "25",
        "28",
        "52",
        "31",
        "85",
        "63",
        "64",
        "68",
        "61",
        "55",
        "38",
        "50",
        "48",
        "53",
        "61",
        "61",
        "44",
        "48",
        "45",
        "46",
        "41",
        "20",
        "58",
        "46",
        "23",
        "37",
        "38",
        "29",
        "50",
        "74",
        "36",
        "55",
        "49",
        "72",
        "60",
        "53",
        "37",
        "50",
        "46",
        "45",
        "40",
        "48",
        "24",
        "75",
        "73",
        "56",
        "58",
        "82",
        "20",
        "80",
        "53",
        "61",
        "58",
        "21",
        "60",
        "51",
        "54",
        "17",
        "71",
        "41",
        "42",
        "64",
        "71",
        "85",
        "51",
        "56",
        "69",
        "42",
        "63",
        "44",
        "61",
        "61",
        "35",
        "51",
        "51",
        "72",
        "53",
        "48",
        "69",
        "48",
        "44",
        "52",
        "47",
        "43",
        "44",
        "53",
        "45",
        "42",
        "56",
        "55",
        "42",
        "50",
        "51",
        "54",
        "57",
        "46",
        "46",
        "68",
        "38",
        "38",
        "46",
        "70",
        "46",
        "49",
        "40",
        "32",
        "40",
        "61",
        "42",
        "21",
        "54",
        "42",
        "43",
        "21",
        "21",
        "42",
        "23",
        "24",
        "18",
        "21",
        "25",
        "21",
        "25",
        "24",
        "21",
        "69",
        "28",
        "22",
        "21",
        "92",
        "87",
        "95",
        "97",
        "94",
        "32",
        "21",
        "25",
        "20",
        "25",
        "58",
        "54",
        "27",
        "50",
        "42",
        "44",
        "19",
        "40",
        "39",
        "45",
        "40",
        "49",
        "42",
        "32",
        "20",
        "28",
        "25",
        "24",
        "23",
        "23",
        "37",
        "39",
        "41",
        "35",
        "35",
        "33",
        "21",
        "27",
        "34",
        "11",
        "36",
        "34",
        "64",
        "25",
        "24",
        "24",
        "39",
        "23",
        "36",
        "28",
        "35",
        "48",
        "39",
        "37",
        "23",
        "78",
        "65",
        "65",
        "58",
        "51",
        "61",
        "50",
        "21",
        "26",
        "22",
        "26",
        "21",
        "26",
        "24",
        "28",
        "25",
        "26",
        "22",
        "26",
        "25",
        "36",
        "33",
        "39",
        "36",
        "27",
        "42",
        "32",
        "47",
        "41",
        "35",
        "41",
        "43",
        "23",
        "34",
        "25",
        "22",
        "39",
        "27",
        "43",
        "22",
        "20",
        "31",
        "20",
        "40",
        "32",
        "32",
        "31",
        "27",
        "35",
        "20",
        "22",
        "28",
        "26",
        "20",
        "32",
        "21",
        "22",
        "15",
        "28",
        "39",
        "43",
        "27",
        "20",
        "21",
        "33",
        "31",
        "33",
        "29",
        "58",
        "41",
        "53",
        "40",
        "41",
        "61",
        "56",
        "57",
        "47",
        "48",
        "44",
        "39",
        "37",
        "36",
        "62",
        "26",
        "22",
        "49",
        "24",
        "27",
        "24",
        "34",
        "39",
        "42",
        "36",
        "29",
        "52",
        "41",
        "39",
        "33",
        "22",
        "27",
        "28",
        "23",
        "24",
        "44",
        "47",
        "39",
        "31",
        "24",
        "38",
        "33",
        "44",
        "38",
        "36",
        "23",
        "28",
        "27",
        "60",
        "66",
        "62",
        "55",
        "51",
        "47",
        "24",
        "39",
        "26",
        "25",
        "27",
        "26",
        "26",
        "20",
        "23",
        "32",
        "21",
        "50",
        "32",
        "25",
        "49",
        "48",
        "51",
        "47",
        "103",
        "109",
        "104",
        "96",
        "106",
        "113",
        "99",
        "100",
        "108",
        "26",
        "23",
        "64",
        "53",
        "51",
        "20",
        "74",
        "65",
        "66",
        "62",
        "71",
        "58",
        "56",
        "70",
        "86",
        "65",
        "68",
        "64",
        "57",
        "55",
        "62",
        "58",
        "92",
        "80",
        "73",
        "85",
        "90",
        "87",
        "71",
        "79",
        "83",
        "69",
        "79",
        "76",
        "74",
        "68",
        "69",
        "57",
        "59",
        "24",
        "78",
        "22",
        "49",
        "40",
        "37",
        "21",
        "57",
        "21",
        "25",
        "23",
        "16",
        "28",
        "56",
        "19",
        "25",
        "29",
        "76",
        "23",
        "21",
        "56",
        "41",
        "24",
        "39",
        "26",
        "22",
        "45",
        "37",
        "22",
        "27",
        "50",
        "22",
        "24",
        "27",
        "39",
        "43",
        "27",
        "25",
        "42",
        "50",
        "21",
        "29",
        "23",
        "29",
        "35",
        "23",
        "46",
        "23",
        "46",
        "21",
        "23",
        "28",
        "48",
        "28",
        "18",
        "32",
        "23",
        "52",
        "45",
        "27",
        "26",
        "24",
        "35",
        "48",
        "28",
        "30",
        "28",
        "47",
        "19",
        "26",
        "20",
        "24",
        "52",
        "60",
        "37",
        "26",
        "44",
        "29",
        "25",
        "19",
        "47",
        "65",
        "37",
        "25",
        "31",
        "30",
        "30",
        "36",
        "23",
        "29",
        "42",
        "26",
        "25",
        "28",
        "27",
        "38",
        "24",
        "61",
        "33",
        "23",
        "50",
        "23",
        "40",
        "39",
        "25",
        "22",
        "28",
        "78",
        "66",
        "21",
        "22",
        "24",
        "19",
        "45",
        "26",
        "45",
        "27",
        "28",
        "25",
        "43",
        "26",
        "26",
        "37",
        "35",
        "25",
        "32",
        "49",
        "25",
        "42",
        "68",
        "41",
        "22",
        "24",
        "55",
        "69",
        "56",
        "20",
        "56",
        "20",
        "32",
        "60",
        "32",
        "42",
        "54",
        "33",
        "21",
        "47",
        "54",
        "24",
        "56",
        "22",
        "25",
        "22",
        "25",
        "35",
        "23",
        "92",
        "27",
        "24",
        "26",
        "27",
        "29",
        "44",
        "33",
        "25",
        "28",
        "61",
        "58",
        "28",
        "32",
        "28",
        "30",
        "27",
        "27",
        "29",
        "30",
        "38",
        "32",
        "28",
        "47",
        "24",
        "30",
        "27",
        "36",
        "53",
        "33",
        "37",
        "29",
        "26",
        "33",
        "23",
        "42",
        "28",
        "28",
        "46",
        "27",
        "34"
    ]
    
    var arrayImagenEscuela:[String] =  [
        "",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbta.png",
        "cbta.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cenbachtec.png",
        "cenbachtec.png",
        "cenbachtec.png",
        "cenbachtec.png",
        "cenbachtec.png",
        "cenbachtec.png",
        "cenbachtec.png",
        "cenbachtec.png",
        "ceesbach.png",
        "ceesbach.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "centromultimodal.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "grupoanexo.png",
        "grupoanexo.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "planteltexcoco.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png",
        "telebachillerato.png"
    ]*/
    
    var arrayEscuelas:[String] = [
        "Selecciona una escuela",
        "CBT ALBERT EINSTEIN, LA PAZ  Técnico en informática",
        "CBT GABRIEL V. ALCOCER, CUAUTITLAN  Técnico en administración",
        "CBT GABRIEL V. ALCOCER, CUAUTITLAN  Técnico en mecatrónica",
        "CBT MARÍA LUISA MARINA DE SUÁREZ, COACALCO  Técnico en administración",
        "CBT No. 1 DR. LEOPOLDO RÍO DE LA LOZA, IXTAPALUCA  Técnico laboratorista químico",
        "CBT No. 1 REFUGIO ESTÉVES REYES, NEZAHUALCOYOTL  Técnico en enfermería general",
        "CBT No. 1, CHICOLOAPAN  Técnico en gastronomía",
        "CBT No. 2 ÁNGEL MARÍA GARIBAY KINTANA, CHALCO  Técnico en enfermería general",
        "CBT No. 2 ING. GUILLERMO GONZÁLEZ CAMARENA, NAUCALPAN  Técnico en mecatrónica",
        "CBT No. 2 LIC. CARLOS PICHARDO, TECÁMAC  Técnico en contabilidad",
        "CBT No. 2 LIC. CARLOS PICHARDO, TECÁMAC  Técnico en informática",
        "CBT No. 2 LIC. CARLOS PICHARDO, TECÁMAC  Técnico en instrumentación dental",
        "CBT No. 2 OCTAVIO PAZ, ACOLMAN  Técnico en turismo",
        "CBT No. 2, ECATEPEC  Técnico en gastronomía",
        "CBT No. 2, ECATEPEC  Técnico en puericultura",
        "CBT No. 3, TECÁMAC  Técnico en informática",
        "CECyT NÚM. 1 GONZALO VÁZQUEZ VELA RAMA DE INGENIERÍA Y CIENCIAS FÍSICO-MATEMÁTICAS ",
        "CECyT NÚM. 10 CARLOS VALLEJO MÁRQUEZ RAMA DE INGENIERÍA Y CIENCIAS FÍSICO-MATEMÁTICAS ",
        "CECyT NÚM. 11 WILFRIDO MASSIEU PÉREZ RAMA DE INGENIERÍA Y CIENCIAS FÍSICO - MATEMÁTICAS ",
        "CECyT NÚM. 12 JOSÉ MA. MORELOS Y PAVÓN RAMA DE CIENCIAS SOCIALES Y ADMINISTRATIVAS ",
        "CECyT NÚM. 13 RICARDO FLORES MAGÓN RAMA DE CIENCIAS SOCIALES Y ADMINISTRATIVAS ",
        "CECyT NÚM. 14 LUIS ENRIQUE ERRO SOLER RAMA DE CIENCIAS SOCIALES Y ADMINISTRATIVAS ",
        "CECyT NÚM. 15 DIÓDORO ANTÚNEZ ECHEGARAY RAMA DE CIENCIAS MÉDICO-BIOLÓGICAS ",
        "CECyT NÚM. 2 MIGUEL BERNARD PERALES RAMA DE INGENIERÍA Y CIENCIAS FÍSICO - MATEMÁTICAS ",
        "CECyT NÚM. 3 ESTANISLAO RAMÍREZ RUIZ RAMA DE INGENIERÍA Y CIENCIAS FÍSICO-MATEMÁTICAS ",
        "CECyT NÚM. 4 LÁZARO CÁRDENAS DEL RÍO RAMA DE INGENIERÍA Y CIENCIAS FÍSICO- MATEMÁTICAS ",
        "CECyT NÚM. 5 BENITO JUÁREZ GARCÍA RAMA DE CIENCIAS SOCIALES Y ADMINISTRATIVAS ",
        "CECyT NÚM. 6 MIGUEL OTHÓN DE MENDIZÁBAL RAMA DE CIENCIAS MÉDICO - BIOLÓGICAS ",
        "CECyT NÚM. 7 CUAUHTÉMOC RAMA DE INGENIERÍA Y CIENCIAS FÍSICO-MATEMÁTICAS ",
        "CECyT NÚM. 8 NARCISO BASSOLS GARCÍA RAMA DE INGENIERÍA Y CIENCIAS FÍSICO - MATEMÁTICAS ",
        "CECyT NÚM. 9 JUAN DE DIOS BÁTIZ PAREDES RAMA DE INGENIERÍA Y CIENCIAS FÍSICO - MATEMÁTICAS ",
        "CECyTEM PLANTEL CHALCO  Diseño gráfico digital",
        "CECyTEM PLANTEL CHALCO  Técnico en mantenimiento a motores de combustión interna",
        "CECyTEM PLANTEL CHIMALHUACÁN II  Animación digital",
        "CECyTEM PLANTEL CHIMALHUACÁN II  Programación",
        "CECyTEM PLANTEL COACALCO  Desarrollo Organizacional",
        "CECyTEM PLANTEL COACALCO  Programación",
        "CECyTEM PLANTEL COACALCO  Soporte y mantenimiento de equipo de cómputo",
        "CECyTEM PLANTEL ECATEPEC  Programación",
        "CECyTEM PLANTEL ECATEPEC  Técnico en procesos de gestión administrativa",
        "CECyTEM PLANTEL NEZAHUALCÓYOTL II  Animación digital",
        "CECyTEM PLANTEL NICOLÁS ROMERO II  Mecatrónica",
        "CECyTEM PLANTEL NICOLÁS ROMERO II  Programación",
        "CECyTEM PLANTEL TULTEPEC  Diseño gráfico digital",
        "CECyTEM PLANTEL TULTEPEC  Programación",
        "CECyTEM PLANTEL VALLE DE CHALCO SOLIDARIDAD I  Animación Digital",
        "CECyTEM PLANTEL VALLE DE CHALCO SOLIDARIDAD I  Laboratorio clínico",
        "CECyTEM PLANTEL VALLE DE CHALCO SOLIDARIDAD II  Diseño gráfico digital",
        "CENTRO DE BACHILLERATO TECNOLÓGICO INDUSTRIAL Y DE SERVICIOS NÚM. 133 ",
        "CENTRO DE BACHILLERATO TECNOLÓGICO INDUSTRIAL Y DE SERVICIOS NÚM. 29 ",
        "CENTRO DE ESTUDIOS DE BACHILLERATO LIC. JESÚS REYES HEROLES ",
        "CENTRO DE ESTUDIOS DE BACHILLERATO MTRO. MOISÉS SÁENZ GARZA ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 1 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 119 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 152 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 154 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 165 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 29 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 31 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 6 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS INDUSTRIAL Y DE SERVICIOS NÚM. 8 ",
        "CENTRO DE ESTUDIOS TECNOLÓGICOS WALTER CROSS BUCHANAN RAMA DE INGENIERÍA Y CIENCIAS FÍSICO-MATEMÁT ",
        "COLEGIO DE BACHILLERES DEL ESTADO DE MÉXICO PLANTEL 37 NAUCALPAN ",
        "COLEGIO DE CIENCIAS Y HUMANIDADES, PLANTEL AZCAPOTZALCO ",
        "COLEGIO DE CIENCIAS Y HUMANIDADES, PLANTEL NAUCALPAN ",
        "COLEGIO DE CIENCIAS Y HUMANIDADES, PLANTEL ORIENTE ",
        "COLEGIO DE CIENCIAS Y HUMANIDADES, PLANTEL SUR ",
        "COLEGIO DE CIENCIAS Y HUMANIDADES, PLANTEL VALLEJO ",
        "CONALEP CIUDAD AZTECA  Electricidad industrial",
        "CONALEP CUAUTITLÁN  Asistente y protesista dental",
        "CONALEP CUAUTITLÁN  Enfermería general",
        "CONALEP CUAUTITLÁN  Hospitalidad turística",
        "CONALEP DEL SOL  Seguridad e higiene y Protección civil",
        "CONALEP MILPA ALTA  Enfermería general",
        "CONALEP NEZAHUALCÓYOTL I  Enfermería general",
        "CONALEP TLALNEPANTLA III  Enfermería general",
        "CONALEP TLALPAN I  Alimentos y bebidas",
        "CONALEP TLALPAN I  Informática",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 1 GABINO BARREDA ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 2 ERASMO CASTELLANOS QUINTO ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 3 JUSTO SIERRA ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 4 VIDAL CASTAÑEDA Y NÁJERA ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 5 JOSÉ VASCONCELOS ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 6 ANTONIO CASO ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 7 EZEQUIEL A. CHÁVEZ ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 8 MIGUEL E. SCHULZ ",
        "ESCUELA NACIONAL PREPARATORIA PLANTEL NÚM. 9 PEDRO DE ALBA ",
        "PLANTEL 1, EL ROSARIO ",
        "PLANTEL 13, XOCHIMILCO TEPEPAN QUIRINO MENDOZA Y CORTÉS ",
        "PLANTEL 14, MILPA ALTA FIDENCIO VILLANUEVA ROJAS ",
        "PLANTEL 15, CONTRERAS ",
        "PLANTEL 16, TLÁHUAC MANUEL CHAVARRÍA CHAVARRÍA ",
        "PLANTEL 17, HUAYAMILPAS PEDREGAL ",
        "PLANTEL 2, CIEN METROS ELISA ACUÑA ROSSETTI ",
        "PLANTEL 20, DEL VALLE MATÍAS ROMERO ",
        "PLANTEL 3, IZTACALCO ",
        "PLANTEL 4, CULHUACÁN LÁZARO CÁRDENAS ",
        "PLANTEL 5, SATÉLITE ",
        "PLANTEL 8, CUAJIMALPA ",
        "PLANTEL TEXCOCO DE LA ESCUELA PREPARATORIA ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE ATIZAPÁN ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE CHALCO ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE COACALCO ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE CUAUTITLÁN IZCALLI ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE ECATEPEC ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE LOS REYES ACAQUILPAN ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE NAUCALPAN ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE TEXCOCO ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL DE TLALNEPANTLA ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL NÚM. 1 DE NEZAHUALCÓYOTL ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL NÚM. 2 DE NEZAHUALCÓYOTL ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL NÚM. 3 DE NEZAHUALCÓYOTL ",
        "PREPARATORIA OFICIAL ANEXA A LA NORMAL NÚM. 4 DE NEZAHUALCÓYOTL ",
        "PREPARATORIA OFICIAL NÚM. 100 ",
        "PREPARATORIA OFICIAL NÚM. 11 ",
        "PREPARATORIA OFICIAL NÚM. 137 ",
        "PREPARATORIA OFICIAL NÚM. 258 ",
        "PREPARATORIA OFICIAL NÚM. 27 ",
        "PREPARATORIA OFICIAL NÚM. 30 ",
        "PREPARATORIA OFICIAL NÚM. 323 ",
        "PREPARATORIA OFICIAL NÚM. 324 ",
        "PREPARATORIA OFICIAL NÚM. 52 ",
        "PREPARATORIA OFICIAL NÚM. 67 ",
        "PREPARATORIA OFICIAL NÚM. 74 ",
        "PREPARATORIA OFICIAL NÚM. 99 ",
        "TELEBACHILLERATO COMUNITARIO NÚM. 144, COLINAS DE SAN MATEO "
    ]
    
    var arrayEscuelasPuntaje:[String] = [
        "0",
        "60",
        "68",
        "71",
        "61",
        "66",
        "61",
        "75",
        "62",
        "61",
        "66",
        "65",
        "61",
        "61",
        "65",
        "60",
        "63",
        "89",
        "85",
        "85",
        "86",
        "94",
        "88",
        "91",
        "89",
        "95",
        "86",
        "91",
        "94",
        "92",
        "86",
        "106",
        "79",
        "60",
        "85",
        "63",
        "64",
        "68",
        "61",
        "61",
        "61",
        "74",
        "72",
        "60",
        "75",
        "73",
        "82",
        "80",
        "61",
        "60",
        "71",
        "64",
        "71",
        "85",
        "69",
        "63",
        "61",
        "61",
        "72",
        "69",
        "68",
        "70",
        "61",
        "69",
        "92",
        "87",
        "95",
        "97",
        "94",
        "64",
        "78",
        "65",
        "65",
        "61",
        "61",
        "62",
        "60",
        "66",
        "62",
        "103",
        "109",
        "104",
        "96",
        "106",
        "113",
        "99",
        "100",
        "108",
        "64",
        "74",
        "65",
        "66",
        "62",
        "71",
        "70",
        "86",
        "65",
        "68",
        "64",
        "62",
        "92",
        "80",
        "73",
        "85",
        "90",
        "87",
        "71",
        "79",
        "83",
        "69",
        "79",
        "76",
        "74",
        "68",
        "69",
        "78",
        "76",
        "60",
        "65",
        "61",
        "78",
        "66",
        "68",
        "69",
        "60",
        "92",
        "61"
    ]
    
    var arrayImagenEscuela:[String] =  [
        "",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "cbt.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "ipn.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cecytem.png",
        "cenbachtec.png",
        "cenbachtec.png",
        "ceesbach.png",
        "ceesbach.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "dgti.png",
        "colbach.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "conalep.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "colbach.png",
        "planteltexcoco.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "preparatoriaoficial.png",
        "telebachillerato.png"
    ]
    
    //escuela uno
    var escuelaIUPicker:String = ""
    var imagenIUPicker:String = ""
    var puntajeIUPicker:String = ""
    
    //escuela dos
    var escuelaIUPickerDos:String = ""
    var imagenIUPickerDos:String = ""
    var puntajeIUPickerDos:String = ""
    
    //escuela tres
    var escuelaIUPickerTres:String = ""
    var imagenIUPickerTres:String = ""
    var puntajeIUPickerTres:String = ""
    
    var escuelaOpciones: [String] = []
    var puntajeOpciones: [String] = []
    
    @IBOutlet weak var escuelaUno: UIPickerView!
    
    
    @IBOutlet weak var escuelaDos: UIPickerView!
    
    
    @IBOutlet weak var escuelaTres: UIPickerView!
    
    var arrayDatos:[[String:String]] = []
    

    var arrayPreguntas:[[String:String]] = []
    var arrayDatosPreguntas:[[String:String]] = []
    
    @IBOutlet weak var botonLeyenda: UIButton!
    
    @IBAction func guardarEscuelas(_ sender: Any) {
        
        //inserta escuelas
        
        print("escuelaIUPicker \(escuelaIUPicker)")
        print("escuelaIUPickerDos \(escuelaIUPickerDos)")
        print("escuelaIUPickerTres \(escuelaIUPickerTres)")

        let objDaoIngresos = DataBase()
        
        //inserta ingreso
        
        if(!escuelaIUPicker.isEmpty && !escuelaIUPicker.elementsEqual("Selecciona una escuela")){
            
            if(!escuelaIUPickerDos.isEmpty && !escuelaIUPickerDos.elementsEqual("Selecciona una escuela")){
                
                if(!escuelaIUPickerTres.isEmpty && !escuelaIUPickerTres.elementsEqual("Selecciona una escuela")){
                    
                    if(!escuelaIUPicker.elementsEqual(escuelaIUPickerDos)  || !escuelaIUPicker.elementsEqual(escuelaIUPickerTres) || !escuelaIUPickerDos.elementsEqual(escuelaIUPickerTres)){
                        
                        
                        arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM opcionesescuelas") as! [[String : String]]
                        
                        print("arrayDatos \(arrayDatos)")
                        
                        
                        if(arrayDatos.count<=0){
                                
                                objDaoIngresos.ejecutarInsert("INSERT INTO opcionesescuelas (escuelalicenciatura, aciertos) VALUES ('\(escuelaIUPicker)', '\(puntajeIUPicker)')")
                                
                                objDaoIngresos.ejecutarInsert("INSERT INTO opcionesescuelas (escuelalicenciatura, aciertos) VALUES ('\(escuelaIUPickerDos)', '\(puntajeIUPickerDos)')")
                                
                                objDaoIngresos.ejecutarInsert("INSERT INTO opcionesescuelas (escuelalicenciatura, aciertos) VALUES ('\(escuelaIUPickerTres)', '\(puntajeIUPickerTres)')")
                            
                            self.btnComenzar.isHidden = false
                            
                            // create the alert
                            let alert = UIAlertController(title: "Atención", message: "¡Se guardó correctamente!", preferredStyle: UIAlertController.Style.alert)
                            
                            // add an action (button)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                            
                            // show the alert
                            self.present(alert, animated: true, completion: nil)
                            
                        }else{
                            
                                
                            objDaoIngresos.ejecutarUpdate("UPDATE opcionesescuelas SET escuelalicenciatura = '\(escuelaIUPicker)', aciertos = '\(puntajeIUPicker)' WHERE id = '\(1)'")
                            
                            objDaoIngresos.ejecutarUpdate("UPDATE opcionesescuelas SET escuelalicenciatura = '\(escuelaIUPickerDos)', aciertos = '\(puntajeIUPickerDos)' WHERE id = '\(2)'")
                            
                            objDaoIngresos.ejecutarUpdate("UPDATE opcionesescuelas SET escuelalicenciatura = '\(escuelaIUPickerTres)', aciertos = '\(puntajeIUPickerTres)' WHERE id = '\(3)'")


                            
                            // create the alert
                            let alert = UIAlertController(title: "Atención", message: "¡Se actualizo correctamente!", preferredStyle: UIAlertController.Style.alert)
                            
                            // add an action (button)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                            
                            // show the alert
                            self.present(alert, animated: true, completion: nil)
                        }
                        


                    }else{
                        
                        // create the alert
                        let alert = UIAlertController(title: "Atención", message: "¡Debes seleccionar 3 opciones diferentes!", preferredStyle: UIAlertController.Style.alert)
                        
                        // add an action (button)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                        
                        // show the alert
                        self.present(alert, animated: true, completion: nil)
                        
                    }
                    
                }else{
                    
                    // create the alert
                    let alert = UIAlertController(title: "Atención", message: "¡Selecciona una escuela!", preferredStyle: UIAlertController.Style.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                    
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                    
                }
                
                
            }else{
                
                // create the alert
                let alert = UIAlertController(title: "Atención", message: "¡Selecciona una escuela!", preferredStyle: UIAlertController.Style.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
                
            }
            
            
        }else{
            
            // create the alert
            let alert = UIAlertController(title: "Atención", message: "¡Selecciona una escuela!", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
    }
    
    
    @IBOutlet weak var btnComenzar: UIButton!
    
    
    func refresh(){

        escuelaUno.reloadAllComponents()
        escuelaDos.reloadAllComponents()
        escuelaTres.reloadAllComponents()
        //self.refreshControl.endRefreshing()
        
        let objDaoIngresos = DataBase()
        
        arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM opcionesescuelas") as! [[String : String]]
        
        print("arrayDatos \(arrayDatos)")

        if(arrayDatos.count>0){
            botonLeyenda.setTitle("Actualizar", for: .normal)
            self.btnComenzar.isHidden = false
            
            for k in 0 ..< arrayEscuelas.count{
                if(arrayEscuelas[k] == arrayDatos[0]["escuelalicenciatura"]){
                    escuelaUno.selectRow(k, inComponent: 0, animated: true)
                }
            }
            
            for k in 0 ..< arrayEscuelas.count{
                if(arrayEscuelas[k] == arrayDatos[1]["escuelalicenciatura"]){
                    escuelaDos.selectRow(k, inComponent: 0, animated: true)
                }
            }
            
            for k in 0 ..< arrayEscuelas.count{
                if(arrayEscuelas[k] == arrayDatos[2]["escuelalicenciatura"]){
                    escuelaTres.selectRow(k, inComponent: 0, animated: true)
                }
            }
        }else{
            self.btnComenzar.isHidden = true
        }
        
        
        
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
     /*   if (pickerView.tag == 0){
            return arrayEscuelas.count
        }
        if (pickerView.tag == 1){
            return arrayEscuelas.count
        }
        if (pickerView.tag == 2){
            return arrayEscuelas.count
        }  */
        return arrayEscuelas.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Test"
    }
    
   func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        
        if (pickerView.tag == 0){
            
            
            escuelaIUPicker = arrayEscuelas[row]
            imagenIUPicker = arrayImagenEscuela[row]
            puntajeIUPicker = arrayEscuelasPuntaje[row]
            
            escuelaOpciones.append(escuelaIUPicker)
            puntajeOpciones.append(puntajeIUPicker)
            
            
            //return myView
        }
        
        if (pickerView.tag == 1){
            
            
            //   let selectedValue = pickerView.selectedRow(inComponent: 0)
            
            escuelaIUPickerDos = arrayEscuelas[row]
            imagenIUPickerDos = arrayImagenEscuela[row]
            puntajeIUPickerDos = arrayEscuelasPuntaje[row]
            
            escuelaOpciones.append(escuelaIUPickerDos)
            puntajeOpciones.append(puntajeIUPickerDos)
            
            
            //return myView
        }
        
        if (pickerView.tag == 2){
            
            
            escuelaIUPickerTres = arrayEscuelas[row]
            imagenIUPickerTres = arrayImagenEscuela[row]
            puntajeIUPickerTres = arrayEscuelasPuntaje[row]
            
            escuelaOpciones.append(escuelaIUPickerTres)
            puntajeOpciones.append(puntajeIUPickerTres)
            
            
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
    
        let myView = UIView(frame: CGRect(x: 0, y: 20, width: pickerView.bounds.width - 30, height: 80))
        
        myView.backgroundColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)

        if (pickerView.tag == 0){

            
            let myImageView = UIImageView(frame: CGRect(x: 0, y: 25, width: 30, height: 30))
            
            var rowString = String()
            
            let myLabel = UILabel(frame: CGRect(x: 60, y: 0, width: pickerView.bounds.width - 90, height: 80 ))
            
            rowString = arrayEscuelas[row] 
            myImageView.image = UIImage(named:arrayImagenEscuela[row] )
            
            
         //   let selectedValue = pickerView.selectedRow(inComponent: 0)

                    escuelaIUPicker = arrayEscuelas[row]
                    imagenIUPicker = arrayImagenEscuela[row]
                    puntajeIUPicker = arrayEscuelasPuntaje[row]
            
            escuelaOpciones.append(escuelaIUPicker)
            puntajeOpciones.append(puntajeIUPicker)
            
            print("rowString_1 \(rowString)")
            
            myLabel.numberOfLines = 2
            myLabel.textAlignment = .justified
            myLabel.adjustsFontSizeToFitWidth = true
            myLabel.textColor = UIColor.white
            myLabel.text = rowString
            
            myView.addSubview(myLabel)
            myView.addSubview(myImageView)
            
            //return myView
        }
        
        if (pickerView.tag == 1){
            
            
            let myImageView = UIImageView(frame: CGRect(x: 0, y: 25, width: 30, height: 30))
            
            var rowString = String()
            
            let myLabel = UILabel(frame: CGRect(x: 60, y: 0, width: pickerView.bounds.width - 90, height: 80 ))
            
            rowString = arrayEscuelas[row]
            myImageView.image = UIImage(named:arrayImagenEscuela[row] )
            
            
         //   let selectedValue = pickerView.selectedRow(inComponent: 0)
            
            escuelaIUPickerDos = arrayEscuelas[row]
            imagenIUPickerDos = arrayImagenEscuela[row]
            puntajeIUPickerDos = arrayEscuelasPuntaje[row]
            
            escuelaOpciones.append(escuelaIUPickerDos)
            puntajeOpciones.append(puntajeIUPickerDos)

            
            
            print("rowString_2 \(rowString)")
            
            myLabel.numberOfLines = 2
            myLabel.textAlignment = .justified
            myLabel.adjustsFontSizeToFitWidth = true
            myLabel.textColor = UIColor.white
            myLabel.text = rowString
            
            myView.addSubview(myLabel)
            myView.addSubview(myImageView)
            
            //return myView
        }
        
        if (pickerView.tag == 2){
            
            
            let myImageView = UIImageView(frame: CGRect(x: 0, y: 25, width: 30, height: 30))
            
            var rowString = String()
            
            let myLabel = UILabel(frame: CGRect(x: 60, y: 0, width: pickerView.bounds.width - 90, height: 80 ))
            
            rowString = arrayEscuelas[row]
            myImageView.image = UIImage(named:arrayImagenEscuela[row] )
            
            
        //    let selectedValue = pickerView.selectedRow(inComponent: 0)
            
            escuelaIUPickerTres = arrayEscuelas[row]
            imagenIUPickerTres = arrayImagenEscuela[row]
            puntajeIUPickerTres = arrayEscuelasPuntaje[row]
            
            escuelaOpciones.append(escuelaIUPickerTres)
            puntajeOpciones.append(puntajeIUPickerTres)
            
            
            print("rowString_3 \(rowString)")
            
            myLabel.numberOfLines = 2
            myLabel.textAlignment = .justified
            myLabel.adjustsFontSizeToFitWidth = true
            myLabel.textColor = UIColor.white
            myLabel.text = rowString
            
            myView.addSubview(myLabel)
            myView.addSubview(myImageView)
            
            
        }
        
        return myView
    }
    
   /* func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.escuelaUno.reloadAllComponents();
        self.escuelaDos.reloadAllComponents();
        self.escuelaTres.reloadAllComponents();
    }*/
    
    //unwind
    @IBAction func volverVistaMoreViewController(unwindSegue: UIStoryboardSegue){
        refresh()
        print("Pintando vista escuelas")
    }
    
    // Create the Activity Indicator
    let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    var boxView = UIView()
    
    func addCuestions() {
        // You only need to adjust this frame to move it anywhere you want
        boxView = UIView(frame: CGRect(x: view.frame.midX - 90, y: view.frame.midY - 25, width: 180, height: 50))
        boxView.backgroundColor = UIColor.white
        boxView.alpha = 0.8
        boxView.layer.cornerRadius = 10
        
        //Here the spinnier is initialized
        let activityView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
        activityView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        activityView.startAnimating()
        
        let textLabel = UILabel(frame: CGRect(x: 60, y: 0, width: 200, height: 50))
        textLabel.textColor = UIColor.gray
        textLabel.text = "Cargando preguntas..."
        
        boxView.addSubview(activityView)
        boxView.addSubview(textLabel)
        
        view.addSubview(boxView)
    }

    
    func parsingWSAndSyncCategorias(){
        
        
        let objDaoIngresos = DataBase()
        
        
         //objDaoIngresos.ejecutarDelete("DELETE FROM tblpreguntasmodulo")
        
        self.arrayPreguntas = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
        
        if(arrayPreguntas.count<636){
            objDaoIngresos.ejecutarDelete("DELETE FROM tblpreguntasmodulo")
        }
        
        
        print("arrayPreguntas: \(self.arrayPreguntas.count)")
        
        if(self.arrayPreguntas.count<=0){
            
            addCuestions()
            
            OperationQueue().addOperation {
                
                //let rutaJson = "http://www.pypsolucionesintegrales.com/ventas/get_examen_free.php"
                
                let rutaJson = "http://www.pypsolucionesintegrales.com/ventas/get_modulos.php"
                
                let urlJson = URL(string: rutaJson)
                // variable metodo post inicia
                
                var request = URLRequest(url: urlJson!)
                request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                request.httpMethod = "POST"
                let idMateria = "1"
                
                let postString = "mail=\(idMateria)"
                request.httpBody = postString.data(using: .utf8)
                
                // fin variable metodo post
                
                let task = URLSession.shared.dataTask(with: request) { data, response, error in
                    guard let data = data, error == nil else {                                                 // check for fundamental networking error
                        print("error=\(error!)")
                        return
                    }
                    
                    if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
                        print("statusCode should be 200, but is \(httpStatus.statusCode)")
                        print("response = \(response!)")
                    }
                    
                    //let responseString = String(data: data, encoding: .utf8)
                    
                    do{
                        if NSString(data:data, encoding: String.Encoding.utf8.rawValue) != nil {
                            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! [String: AnyObject];
                            
                            for case let result in json["products"] as! [AnyObject] {
                                self.arrayDatosPreguntas.append(result as! [String : String])
                            }
                            
                            // print("arrayDatosPreguntas: \(self.arrayDatosPreguntas)")
                            
                            self.arrayPreguntas = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
                            
                            print("arrayDatosOLD: \(self.arrayPreguntas.count)")
                            
                            print("arrayDatosPreguntas: \(self.arrayDatosPreguntas.count)")
                            
                            if(self.arrayPreguntas.count<636){
                                for k in 0 ..< self.arrayDatosPreguntas.count{
                                    
                                    print("imaPREG: \(self.arrayDatosPreguntas[k]["imagenpregunta"]!)")
                                    
                                    print("k: \(k)")
                                    
                                    objDaoIngresos.ejecutarInsert("INSERT INTO tblpreguntasmodulo (idmodulo, pregunta, respuestauno, respuestados, respuestatres, respuestacuatro, imagenpregunta, correcta, tooltip, imagentooltip, audiopregunta, audiotooltip) VALUES ('\(self.arrayDatosPreguntas[k]["idmodulo"]!)', '\(self.arrayDatosPreguntas[k]["pregunta"]!)', '\(self.arrayDatosPreguntas[k]["respuestauno"]!)', '\(self.arrayDatosPreguntas[k]["respuestados"]!)', '\(self.arrayDatosPreguntas[k]["respuestatres"]!)', '\(self.arrayDatosPreguntas[k]["respuestacuatro"]!)', '\(self.arrayDatosPreguntas[k]["imagenpregunta"]!)', '\(self.arrayDatosPreguntas[k]["correcta"]!)', '\(self.arrayDatosPreguntas[k]["tooltip"]!)','\(self.arrayDatosPreguntas[k]["imagentooltip"]!)','\(self.arrayDatosPreguntas[k]["audioPregunta"]!)','\(self.arrayDatosPreguntas[k]["audioTooltip"]!)')")
                                    
                                    
                                }
                            }
                            
                            
                            
                            self.arrayPreguntas = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
                            
                            print("arrayDatosAFTER: \(self.arrayPreguntas.count)")
                            
                            OperationQueue.main.addOperation {
                                //self.activityIndicator.removeFromSuperview()
                                //self.activityIndicator.stopAnimating()
                                
                                self.boxView.removeFromSuperview()
                                //self.btnComenzar.isHidden = false
                            }
                            
                        }
                    }catch{
                        print("Parse JSON failed")
                    }
                    
                    
                    
                }
                
                
                task.resume()
                
                
            }
            
            
        }
        
        
    }
    
    
    @IBOutlet weak var leyendaSelecciona: UILabel!
    
    
    @IBOutlet weak var btnLeyendaGuardar: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leyendaSelecciona.textColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        btnLeyendaGuardar.backgroundColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        
        btnComenzar.backgroundColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        
        UINavigationBar.appearance().barTintColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)]
        
       /* self.escuelaUno.backgroundColor = UIColor.orange
        self.escuelaDos.backgroundColor = UIColor.red
        self.escuelaTres.backgroundColor = UIColor.black*/
        

        
      /*  escuelaUno.setValue(UIColor.white, forKeyPath: "textColor")
        escuelaDos.setValue(UIColor.white, forKeyPath: "textColor")
        escuelaTres.setValue(UIColor.white, forKeyPath: "textColor")
        
        escuelaUno.backgroundColor = UIColor.gray
        escuelaDos.backgroundColor = UIColor.gray
        escuelaTres.backgroundColor = UIColor.gray*/
        
        //instalar correctamente el sqlite
        DataBase.checkAndCreateDatabase()
        
        let objDaoIngresos = DataBase()
             
             self.arrayPreguntas = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
             
             print("arrayPreguntas_: \(self.arrayPreguntas.count)")
             
             if(arrayPreguntas.count<636){
                 self.btnComenzar.isHidden = true
                 parsingWSAndSyncCategorias()
             }
        
        refresh()
        //parsingWSAndSyncCategorias()
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
