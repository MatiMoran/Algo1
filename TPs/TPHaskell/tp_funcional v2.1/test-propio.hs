import Test.HUnit
import Solucion

main = runTestTT tests

tests = test [
    
    " nombresDeUsuarios 0" ~: (nombresDeUsuarios red0) ~?= [],
    " nombresDeUsuarios 1" ~: (nombresDeUsuarios redA) ~?= ["A","B","C","D"],
    " nombresDeUsuarios 2" ~: (nombresDeUsuarios redB) ~?= ["A","B","C","E"],
    " nombresDeUsuarios 3" ~: (nombresDeUsuarios redC) ~?= ["A","B","C","D","E","F","G","H","I","J","K"],
    " nombresDeUsuarios 4" ~: (nombresDeUsuarios redD) ~?= ["A","B","C","D","E","F","G","H","I","J","K"],
    " nombresDeUsuarios 5" ~: (nombresDeUsuarios redE) ~?= ["A","B","C","D","E","F","G","H","I","J","K"],

    " amigosDe 1" ~: (amigosDe redA usuario1) ~?= [usuario2, usuario4],
    " amigosDe 2" ~: (amigosDe redA usuario2) ~?= [usuario1, usuario3, usuario4],
    " amigosDe 3" ~: (amigosDe redA usuario3) ~?= [usuario2, usuario4],
    " amigosDe 4" ~: (amigosDe redA usuario4) ~?= [usuario1, usuario2, usuario3],
    " amigosDe 5" ~: (amigosDe redB usuario1) ~?= [usuario2],
    " amigosDe 6" ~: (amigosDe redB usuario2) ~?= [usuario1, usuario3],
    " amigosDe 7" ~: (amigosDe redB usuario3) ~?= [usuario2],
    " amigosDe 8" ~: (amigosDe redB usuario5) ~?= [],
    " amigosDe 9" ~: (amigosDe redC usuario1) ~?= [usuario2,usuario3,usuario4,usuario5,usuario6],
    " amigosDe 10" ~: (amigosDe redC usuario2) ~?= [usuario1,usuario3,usuario4],
    " amigosDe 11" ~: (amigosDe redC usuario3) ~?= [usuario1,usuario2,usuario4],
    " amigosDe 12" ~: (amigosDe redC usuario4) ~?= [usuario1,usuario2,usuario3],
    " amigosDe 13" ~: (amigosDe redC usuario5) ~?= [usuario1],
    " amigosDe 14" ~: (amigosDe redC usuario6) ~?= [usuario1],
    " amigosDe 15" ~: (amigosDe redC usuario7) ~?= [usuario8],
    " amigosDe 16" ~: (amigosDe redC usuario8) ~?= [usuario7,usuario9],
    " amigosDe 17" ~: (amigosDe redC usuario9) ~?= [usuario8],
    " amigosDe 18" ~: (amigosDe redC usuario10) ~?= [],
    " amigosDe 19" ~: (amigosDe redC usuario11) ~?= [],
    " amigosDe 20" ~: (amigosDe redD usuario1) ~?= [],
    " amigosDe 21" ~: (amigosDe redD usuario2) ~?= [],
    " amigosDe 22" ~: (amigosDe redD usuario3) ~?= [],
    " amigosDe 23" ~: (amigosDe redD usuario4) ~?= [],
    " amigosDe 24" ~: (amigosDe redD usuario5) ~?= [],
    " amigosDe 25" ~: (amigosDe redD usuario6) ~?= [],
    " amigosDe 26" ~: (amigosDe redD usuario7) ~?= [],
    " amigosDe 27" ~: (amigosDe redD usuario8) ~?= [],
    " amigosDe 28" ~: (amigosDe redD usuario9) ~?= [],
    " amigosDe 29" ~: (amigosDe redD usuario10) ~?= [],
    " amigosDe 30" ~: (amigosDe redD usuario11) ~?= [],

    " cantidadDeAmigos 1" ~: (cantidadDeAmigos redA usuario1) ~?= 2,
    " cantidadDeAmigos 2" ~: (cantidadDeAmigos redA usuario2) ~?= 3,
    " cantidadDeAmigos 3" ~: (cantidadDeAmigos redA usuario3) ~?= 2,
    " cantidadDeAmigos 4" ~: (cantidadDeAmigos redA usuario4) ~?= 3,
    " cantidadDeAmigos 5" ~: (cantidadDeAmigos redB usuario1) ~?= 1,
    " cantidadDeAmigos 6" ~: (cantidadDeAmigos redB usuario2) ~?= 2,
    " cantidadDeAmigos 7" ~: (cantidadDeAmigos redB usuario3) ~?= 1,
    " cantidadDeAmigos 8" ~: (cantidadDeAmigos redB usuario5) ~?= 0,
    " cantidadDeAmigos 9" ~: (cantidadDeAmigos redC usuario1) ~?= 5,
    " cantidadDeAmigos 10" ~: (cantidadDeAmigos redC usuario2) ~?= 3,
    " cantidadDeAmigos 11" ~: (cantidadDeAmigos redC usuario3) ~?= 3,
    " cantidadDeAmigos 12" ~: (cantidadDeAmigos redC usuario4) ~?= 3,
    " cantidadDeAmigos 13" ~: (cantidadDeAmigos redC usuario5) ~?= 1,
    " cantidadDeAmigos 14" ~: (cantidadDeAmigos redC usuario6) ~?= 1,
    " cantidadDeAmigos 15" ~: (cantidadDeAmigos redC usuario7) ~?= 1,
    " cantidadDeAmigos 16" ~: (cantidadDeAmigos redC usuario8) ~?= 2,
    " cantidadDeAmigos 17" ~: (cantidadDeAmigos redC usuario9) ~?= 1,
    " cantidadDeAmigos 18" ~: (cantidadDeAmigos redC usuario10) ~?= 0,
    " cantidadDeAmigos 19" ~: (cantidadDeAmigos redC usuario11) ~?= 0,
    " cantidadDeAmigos 20" ~: (cantidadDeAmigos redD usuario1) ~?= 0,
    " cantidadDeAmigos 21" ~: (cantidadDeAmigos redD usuario2) ~?= 0,
    " cantidadDeAmigos 22" ~: (cantidadDeAmigos redD usuario3) ~?= 0,
    " cantidadDeAmigos 23" ~: (cantidadDeAmigos redD usuario4) ~?= 0,
    " cantidadDeAmigos 24" ~: (cantidadDeAmigos redD usuario5) ~?= 0,
    " cantidadDeAmigos 25" ~: (cantidadDeAmigos redD usuario6) ~?= 0,
    " cantidadDeAmigos 26" ~: (cantidadDeAmigos redD usuario7) ~?= 0,
    " cantidadDeAmigos 27" ~: (cantidadDeAmigos redD usuario8) ~?= 0,
    " cantidadDeAmigos 28" ~: (cantidadDeAmigos redD usuario9) ~?= 0,
    " cantidadDeAmigos 29" ~: (cantidadDeAmigos redD usuario10) ~?= 0,
    " cantidadDeAmigos 30" ~: (cantidadDeAmigos redD usuario11) ~?= 0,

    " usuarioConMasAmigos 1" ~: expectAny (usuarioConMasAmigos redA) [usuario2, usuario4],
    " usuarioConMasAmigos 2" ~: expectAny (usuarioConMasAmigos redB) [usuario2],
    " usuarioConMasAmigos 3" ~: expectAny (usuarioConMasAmigos redC) [usuario1],
    " usuarioConMasAmigos 4" ~: expectAny (usuarioConMasAmigos redD) [usuario1,usuario2,usuario3,usuario4,usuario5,usuario6,usuario7,usuario8,usuario9,usuario10,usuario11],
 
    " existeUsuarioConMasDeNAmigos 0" ~: (existeUsuarioConMasDeNAmigos red0 (usuarios red0) 0) ~?= False,
    " existeUsuarioConMasDeNAmigos 1" ~: (existeUsuarioConMasDeNAmigos redA (usuarios redA) 0) ~?= True,
    " existeUsuarioConMasDeNAmigos 2" ~: (existeUsuarioConMasDeNAmigos redA (usuarios redA) 1) ~?= True,
    " existeUsuarioConMasDeNAmigos 3" ~: (existeUsuarioConMasDeNAmigos redA (usuarios redA) 2) ~?= True,
    " existeUsuarioConMasDeNAmigos 4" ~: (existeUsuarioConMasDeNAmigos redA (usuarios redA) 3) ~?= False,
    " existeUsuarioConMasDeNAmigos 5" ~: (existeUsuarioConMasDeNAmigos redB (usuarios redB) 0) ~?= True,
    " existeUsuarioConMasDeNAmigos 6" ~: (existeUsuarioConMasDeNAmigos redB (usuarios redB) 1) ~?= True,
    " existeUsuarioConMasDeNAmigos 7" ~: (existeUsuarioConMasDeNAmigos redB (usuarios redB) 2) ~?= False,
    " existeUsuarioConMasDeNAmigos 8" ~: (existeUsuarioConMasDeNAmigos redC (usuarios redC) 0) ~?= True,
    " existeUsuarioConMasDeNAmigos 9" ~: (existeUsuarioConMasDeNAmigos redC (usuarios redC) 1) ~?= True,
    " existeUsuarioConMasDeNAmigos 10" ~: (existeUsuarioConMasDeNAmigos redC (usuarios redC) 2) ~?= True,
    " existeUsuarioConMasDeNAmigos 11" ~: (existeUsuarioConMasDeNAmigos redC (usuarios redC) 3) ~?= True,
    " existeUsuarioConMasDeNAmigos 12" ~: (existeUsuarioConMasDeNAmigos redC (usuarios redC) 4) ~?= True,
    " existeUsuarioConMasDeNAmigos 13" ~: (existeUsuarioConMasDeNAmigos redC (usuarios redC) 5) ~?= False,
    " existeUsuarioConMasDeNAmigos 14" ~: (existeUsuarioConMasDeNAmigos redD (usuarios redD) 0) ~?= False,
 
    " estaRobertoCarlos 0" ~: (estaRobertoCarlos red0) ~?= False,   
    " estaRobertoCarlos 1" ~: (estaRobertoCarlos redA) ~?= False,
    " estaRobertoCarlos 2" ~: (estaRobertoCarlos redB) ~?= False,
    " estaRobertoCarlos 3" ~: (estaRobertoCarlos redC) ~?= False,
    " estaRobertoCarlos 4" ~: (estaRobertoCarlos redD) ~?= False,

    " publicacionesDe 1" ~: (publicacionesDe redA usuario1) ~?= [publicacion1_1, publicacion1_2],
    " publicacionesDe 2" ~: (publicacionesDe redA usuario2) ~?= [publicacion2_1, publicacion2_2],
    " publicacionesDe 3" ~: (publicacionesDe redA usuario3) ~?= [publicacion3_1, publicacion3_2],
    " publicacionesDe 4" ~: (publicacionesDe redA usuario4) ~?= [publicacion4_1, publicacion4_2],
    " publicacionesDe 5" ~: (publicacionesDe redB usuario1) ~?= [publicacion1_3, publicacion1_4, publicacion1_5],
    " publicacionesDe 6" ~: (publicacionesDe redB usuario2) ~?= [],
    " publicacionesDe 7" ~: (publicacionesDe redB usuario3) ~?= [publicacion3_1, publicacion3_2, publicacion3_3],
    " publicacionesDe 8" ~: (publicacionesDe redB usuario5) ~?= [],
    " publicacionesDe 9" ~: (publicacionesDe redC usuario1) ~?= [publicacion1_1,publicacion1_2,publicacion1_3,publicacion1_4,publicacion1_5],
    " publicacionesDe 10" ~: (publicacionesDe redC usuario2) ~?= [publicacion2_1,publicacion2_2],
    " publicacionesDe 11" ~: (publicacionesDe redC usuario3) ~?= [publicacion3_1,publicacion3_2,publicacion3_3],
    " publicacionesDe 12" ~: (publicacionesDe redC usuario4) ~?= [publicacion4_1,publicacion4_2,publicacion4_3],
    " publicacionesDe 13" ~: (publicacionesDe redC usuario5) ~?= [publicacion5_1],
    " publicacionesDe 14" ~: (publicacionesDe redC usuario6) ~?= [publicacion6_1],
    " publicacionesDe 15" ~: (publicacionesDe redC usuario7) ~?= [publicacion7_1],
    " publicacionesDe 16" ~: (publicacionesDe redC usuario8) ~?= [publicacion8_1],
    " publicacionesDe 17" ~: (publicacionesDe redC usuario9) ~?= [publicacion9_1],
    " publicacionesDe 18" ~: (publicacionesDe redC usuario10) ~?= [],
    " publicacionesDe 19" ~: (publicacionesDe redC usuario11) ~?= [],
    " publicacionesDe 20" ~: (publicacionesDe redE usuario1) ~?= [],
    " publicacionesDe 21" ~: (publicacionesDe redE usuario2) ~?= [],
    " publicacionesDe 22" ~: (publicacionesDe redE usuario3) ~?= [],
    " publicacionesDe 23" ~: (publicacionesDe redE usuario4) ~?= [],
    " publicacionesDe 24" ~: (publicacionesDe redE usuario5) ~?= [],
    " publicacionesDe 25" ~: (publicacionesDe redE usuario6) ~?= [],
    " publicacionesDe 26" ~: (publicacionesDe redE usuario7) ~?= [],
    " publicacionesDe 27" ~: (publicacionesDe redE usuario8) ~?= [],
    " publicacionesDe 28" ~: (publicacionesDe redE usuario9) ~?= [],
    " publicacionesDe 29" ~: (publicacionesDe redE usuario10) ~?= [],
    " publicacionesDe 30" ~: (publicacionesDe redE usuario11) ~?= [],

    " publicacionesQueLeGustanA 1" ~: (publicacionesQueLeGustanA redA usuario1) ~?= [publicacion2_2, publicacion3_2, publicacion4_1],
    " publicacionesQueLeGustanA 2" ~: (publicacionesQueLeGustanA redA usuario2) ~?= [publicacion1_1, publicacion3_2, publicacion4_1],
    " publicacionesQueLeGustanA 3" ~: (publicacionesQueLeGustanA redA usuario3) ~?= [publicacion3_2],
    " publicacionesQueLeGustanA 4" ~: (publicacionesQueLeGustanA redA usuario4) ~?= [publicacion1_1, publicacion1_2, publicacion2_1, publicacion2_2],
    " publicacionesQueLeGustanA 5" ~: (publicacionesQueLeGustanA redB usuario1) ~?= [publicacion1_4,publicacion3_2],
    " publicacionesQueLeGustanA 6" ~: (publicacionesQueLeGustanA redB usuario2) ~?= [publicacion1_3, publicacion3_2, publicacion3_3],
    " publicacionesQueLeGustanA 7" ~: (publicacionesQueLeGustanA redB usuario3) ~?= [publicacion1_4,publicacion3_2],
    " publicacionesQueLeGustanA 8" ~: (publicacionesQueLeGustanA redB usuario5) ~?= [publicacion1_3,publicacion1_5,publicacion3_3],
    " publicacionesQueLeGustanA 9" ~: (publicacionesQueLeGustanA redC usuario1) ~?= [publicacion1_4,publicacion2_2,publicacion3_2,publicacion4_1,publicacion4_3],
    " publicacionesQueLeGustanA 10" ~: (publicacionesQueLeGustanA redC usuario2) ~?= [publicacion1_1,publicacion1_3,publicacion3_2,publicacion3_3,publicacion4_1],
    " publicacionesQueLeGustanA 11" ~: (publicacionesQueLeGustanA redC usuario3) ~?= [publicacion1_4,publicacion3_2,publicacion4_3],
    " publicacionesQueLeGustanA 12" ~: (publicacionesQueLeGustanA redC usuario4) ~?= [publicacion1_1,publicacion1_2,publicacion2_1,publicacion2_2],
    " publicacionesQueLeGustanA 13" ~: (publicacionesQueLeGustanA redC usuario5) ~?= [publicacion1_3,publicacion1_5,publicacion3_3,publicacion6_1],
    " publicacionesQueLeGustanA 14" ~: (publicacionesQueLeGustanA redC usuario6) ~?= [publicacion5_1],
    " publicacionesQueLeGustanA 15" ~: (publicacionesQueLeGustanA redC usuario7) ~?= [publicacion7_1,publicacion8_1],
    " publicacionesQueLeGustanA 16" ~: (publicacionesQueLeGustanA redC usuario8) ~?= [publicacion7_1,publicacion8_1],
    " publicacionesQueLeGustanA 17" ~: (publicacionesQueLeGustanA redC usuario9) ~?= [publicacion9_1],
    " publicacionesQueLeGustanA 18" ~: (publicacionesQueLeGustanA redC usuario10) ~?= [],
    " publicacionesQueLeGustanA 19" ~: (publicacionesQueLeGustanA redC usuario11) ~?= [],
    " publicacionesQueLeGustanA 20" ~: (publicacionesQueLeGustanA redE usuario1) ~?= [],
    " publicacionesQueLeGustanA 21" ~: (publicacionesQueLeGustanA redE usuario2) ~?= [],
    " publicacionesQueLeGustanA 22" ~: (publicacionesQueLeGustanA redE usuario3) ~?= [],
    " publicacionesQueLeGustanA 23" ~: (publicacionesQueLeGustanA redE usuario4) ~?= [],
    " publicacionesQueLeGustanA 24" ~: (publicacionesQueLeGustanA redE usuario5) ~?= [],
    " publicacionesQueLeGustanA 25" ~: (publicacionesQueLeGustanA redE usuario6) ~?= [],
    " publicacionesQueLeGustanA 26" ~: (publicacionesQueLeGustanA redE usuario7) ~?= [],
    " publicacionesQueLeGustanA 27" ~: (publicacionesQueLeGustanA redE usuario8) ~?= [],
    " publicacionesQueLeGustanA 28" ~: (publicacionesQueLeGustanA redE usuario9) ~?= [],
    " publicacionesQueLeGustanA 29" ~: (publicacionesQueLeGustanA redE usuario10) ~?= [],
    " publicacionesQueLeGustanA 30" ~: (publicacionesQueLeGustanA redE usuario11) ~?= [],

    " lesGustanLasMismasPublicaciones 1" ~: (lesGustanLasMismasPublicaciones redA usuario1 usuario2) ~?= False,
    " lesGustanLasMismasPublicaciones 2" ~: (lesGustanLasMismasPublicaciones redA usuario2 usuario1) ~?= False,
    " lesGustanLasMismasPublicaciones 3" ~: (lesGustanLasMismasPublicaciones redA usuario1 usuario3) ~?= False,
    " lesGustanLasMismasPublicaciones 4" ~: (lesGustanLasMismasPublicaciones redA usuario3 usuario1) ~?= False,
    " lesGustanLasMismasPublicaciones 5" ~: (lesGustanLasMismasPublicaciones redA usuario1 usuario4) ~?= False,
    " lesGustanLasMismasPublicaciones 6" ~: (lesGustanLasMismasPublicaciones redA usuario4 usuario1) ~?= False,
    " lesGustanLasMismasPublicaciones 7" ~: (lesGustanLasMismasPublicaciones redA usuario2 usuario3) ~?= False,
    " lesGustanLasMismasPublicaciones 8" ~: (lesGustanLasMismasPublicaciones redA usuario3 usuario2) ~?= False,
    " lesGustanLasMismasPublicaciones 9" ~: (lesGustanLasMismasPublicaciones redA usuario2 usuario4) ~?= False,
    " lesGustanLasMismasPublicaciones 10" ~: (lesGustanLasMismasPublicaciones redA usuario4 usuario2) ~?= False,
    " lesGustanLasMismasPublicaciones 11" ~: (lesGustanLasMismasPublicaciones redA usuario3 usuario4) ~?= False,
    " lesGustanLasMismasPublicaciones 12" ~: (lesGustanLasMismasPublicaciones redA usuario4 usuario3) ~?= False,
    " lesGustanLasMismasPublicaciones 13" ~: (lesGustanLasMismasPublicaciones redB usuario1 usuario2) ~?= False,
    " lesGustanLasMismasPublicaciones 14" ~: (lesGustanLasMismasPublicaciones redB usuario2 usuario1) ~?= False,
    " lesGustanLasMismasPublicaciones 15" ~: (lesGustanLasMismasPublicaciones redB usuario1 usuario3) ~?= True,
    " lesGustanLasMismasPublicaciones 16" ~: (lesGustanLasMismasPublicaciones redB usuario3 usuario1) ~?= True,
    " lesGustanLasMismasPublicaciones 17" ~: (lesGustanLasMismasPublicaciones redB usuario1 usuario5) ~?= False,
    " lesGustanLasMismasPublicaciones 18" ~: (lesGustanLasMismasPublicaciones redB usuario5 usuario1) ~?= False,
    " lesGustanLasMismasPublicaciones 19" ~: (lesGustanLasMismasPublicaciones redB usuario2 usuario3) ~?= False,
    " lesGustanLasMismasPublicaciones 20" ~: (lesGustanLasMismasPublicaciones redB usuario3 usuario2) ~?= False,
    " lesGustanLasMismasPublicaciones 21" ~: (lesGustanLasMismasPublicaciones redB usuario2 usuario5) ~?= False,
    " lesGustanLasMismasPublicaciones 22" ~: (lesGustanLasMismasPublicaciones redB usuario5 usuario2) ~?= False,
    " lesGustanLasMismasPublicaciones 23" ~: (lesGustanLasMismasPublicaciones redB usuario3 usuario5) ~?= False,
    " lesGustanLasMismasPublicaciones 24" ~: (lesGustanLasMismasPublicaciones redB usuario5 usuario3) ~?= False,
    " lesGustanLasMismasPublicaciones 25" ~: (lesGustanLasMismasPublicaciones redC usuario1 usuario2) ~?= False,
    " lesGustanLasMismasPublicaciones 26" ~: (lesGustanLasMismasPublicaciones redC usuario2 usuario1) ~?= False,
    " lesGustanLasMismasPublicaciones 27" ~: (lesGustanLasMismasPublicaciones redC usuario1 usuario3) ~?= False,
    " lesGustanLasMismasPublicaciones 28" ~: (lesGustanLasMismasPublicaciones redC usuario3 usuario1) ~?= False,
    " lesGustanLasMismasPublicaciones 29" ~: (lesGustanLasMismasPublicaciones redC usuario2 usuario6) ~?= False,
    " lesGustanLasMismasPublicaciones 30" ~: (lesGustanLasMismasPublicaciones redC usuario6 usuario2) ~?= False,
    " lesGustanLasMismasPublicaciones 31" ~: (lesGustanLasMismasPublicaciones redC usuario5 usuario6) ~?= False,
    " lesGustanLasMismasPublicaciones 32" ~: (lesGustanLasMismasPublicaciones redC usuario6 usuario5) ~?= False,
    " lesGustanLasMismasPublicaciones 33" ~: (lesGustanLasMismasPublicaciones redC usuario7 usuario8) ~?= True,
    " lesGustanLasMismasPublicaciones 34" ~: (lesGustanLasMismasPublicaciones redC usuario8 usuario7) ~?= True,
    " lesGustanLasMismasPublicaciones 35" ~: (lesGustanLasMismasPublicaciones redC usuario9 usuario10) ~?= False,
    " lesGustanLasMismasPublicaciones 36" ~: (lesGustanLasMismasPublicaciones redC usuario10 usuario9) ~?= False,
    " lesGustanLasMismasPublicaciones 37" ~: (lesGustanLasMismasPublicaciones redC usuario10 usuario11) ~?= True,
    " lesGustanLasMismasPublicaciones 38" ~: (lesGustanLasMismasPublicaciones redC usuario11 usuario10) ~?= True,
    " lesGustanLasMismasPublicaciones 39" ~: (lesGustanLasMismasPublicaciones redE usuario1 usuario2) ~?= True,
    " lesGustanLasMismasPublicaciones 40" ~: (lesGustanLasMismasPublicaciones redE usuario2 usuario5) ~?= True,
    " lesGustanLasMismasPublicaciones 41" ~: (lesGustanLasMismasPublicaciones redE usuario5 usuario11) ~?= True,

    " tieneUnSeguidorFiel 1" ~: (tieneUnSeguidorFiel redA usuario1) ~?= True,
    " tieneUnSeguidorFiel 2" ~: (tieneUnSeguidorFiel redA usuario2) ~?= True,
    " tieneUnSeguidorFiel 3" ~: (tieneUnSeguidorFiel redA usuario3) ~?= False,
    " tieneUnSeguidorFiel 4" ~: (tieneUnSeguidorFiel redA usuario4) ~?= False,
    " tieneUnSeguidorFiel 5" ~: (tieneUnSeguidorFiel redB usuario1) ~?= False,
    " tieneUnSeguidorFiel 6" ~: (tieneUnSeguidorFiel redB usuario2) ~?= False,
    " tieneUnSeguidorFiel 7" ~: (tieneUnSeguidorFiel redB usuario3) ~?= False,
    " tieneUnSeguidorFiel 8" ~: (tieneUnSeguidorFiel redB usuario5) ~?= False,
    " tieneUnSeguidorFiel 9" ~: (tieneUnSeguidorFiel redC usuario1) ~?= False,
    " tieneUnSeguidorFiel 10" ~: (tieneUnSeguidorFiel redC usuario2) ~?= True,
    " tieneUnSeguidorFiel 11" ~: (tieneUnSeguidorFiel redC usuario3) ~?= False,
    " tieneUnSeguidorFiel 12" ~: (tieneUnSeguidorFiel redC usuario4) ~?= False,
    " tieneUnSeguidorFiel 13" ~: (tieneUnSeguidorFiel redC usuario5) ~?= True,
    " tieneUnSeguidorFiel 14" ~: (tieneUnSeguidorFiel redC usuario6) ~?= True,
    " tieneUnSeguidorFiel 15" ~: (tieneUnSeguidorFiel redC usuario7) ~?= True,
    " tieneUnSeguidorFiel 16" ~: (tieneUnSeguidorFiel redC usuario8) ~?= True,
    " tieneUnSeguidorFiel 17" ~: (tieneUnSeguidorFiel redC usuario9) ~?= False,
    " tieneUnSeguidorFiel 18" ~: (tieneUnSeguidorFiel redC usuario10) ~?= False,
    " tieneUnSeguidorFiel 19" ~: (tieneUnSeguidorFiel redC usuario11) ~?= False,
    " tieneUnSeguidorFiel 20" ~: (tieneUnSeguidorFiel redE usuario1) ~?= False,
    " tieneUnSeguidorFiel 21" ~: (tieneUnSeguidorFiel redE usuario5) ~?= False,
    " tieneUnSeguidorFiel 22" ~: (tieneUnSeguidorFiel redE usuario8) ~?= False,
    " tieneUnSeguidorFiel 23" ~: (tieneUnSeguidorFiel redE usuario11) ~?= False,

    " existeSecuenciaDeAmigos 1" ~: (existeSecuenciaDeAmigos redA usuario1 usuario2) ~?= True,
    " existeSecuenciaDeAmigos 2" ~: (existeSecuenciaDeAmigos redA usuario2 usuario1) ~?= True,
    " existeSecuenciaDeAmigos 3" ~: (existeSecuenciaDeAmigos redA usuario1 usuario3) ~?= True,
    " existeSecuenciaDeAmigos 4" ~: (existeSecuenciaDeAmigos redA usuario3 usuario1) ~?= True,
    " existeSecuenciaDeAmigos 5" ~: (existeSecuenciaDeAmigos redA usuario1 usuario4) ~?= True,
    " existeSecuenciaDeAmigos 6" ~: (existeSecuenciaDeAmigos redA usuario4 usuario1) ~?= True,
    " existeSecuenciaDeAmigos 7" ~: (existeSecuenciaDeAmigos redA usuario2 usuario3) ~?= True,
    " existeSecuenciaDeAmigos 8" ~: (existeSecuenciaDeAmigos redA usuario3 usuario2) ~?= True,
    " existeSecuenciaDeAmigos 9" ~: (existeSecuenciaDeAmigos redA usuario2 usuario4) ~?= True,
    " existeSecuenciaDeAmigos 10" ~: (existeSecuenciaDeAmigos redA usuario4 usuario2) ~?= True,
    " existeSecuenciaDeAmigos 11" ~: (existeSecuenciaDeAmigos redA usuario3 usuario4) ~?= True,
    " existeSecuenciaDeAmigos 12" ~: (existeSecuenciaDeAmigos redA usuario4 usuario3) ~?= True,
    " existeSecuenciaDeAmigos 13" ~: (existeSecuenciaDeAmigos redB usuario1 usuario2) ~?= True,
    " existeSecuenciaDeAmigos 14" ~: (existeSecuenciaDeAmigos redB usuario2 usuario1) ~?= True,
    " existeSecuenciaDeAmigos 15" ~: (existeSecuenciaDeAmigos redB usuario1 usuario3) ~?= True,
    " existeSecuenciaDeAmigos 16" ~: (existeSecuenciaDeAmigos redB usuario3 usuario1) ~?= True,
    " existeSecuenciaDeAmigos 17" ~: (existeSecuenciaDeAmigos redB usuario1 usuario5) ~?= False,
    " existeSecuenciaDeAmigos 18" ~: (existeSecuenciaDeAmigos redB usuario5 usuario1) ~?= False,
    " existeSecuenciaDeAmigos 19" ~: (existeSecuenciaDeAmigos redB usuario2 usuario3) ~?= True,
    " existeSecuenciaDeAmigos 20" ~: (existeSecuenciaDeAmigos redB usuario3 usuario2) ~?= True,
    " existeSecuenciaDeAmigos 21" ~: (existeSecuenciaDeAmigos redB usuario2 usuario5) ~?= False,
    " existeSecuenciaDeAmigos 22" ~: (existeSecuenciaDeAmigos redB usuario5 usuario2) ~?= False,
    " existeSecuenciaDeAmigos 23" ~: (existeSecuenciaDeAmigos redB usuario3 usuario5) ~?= False,
    " existeSecuenciaDeAmigos 24" ~: (existeSecuenciaDeAmigos redB usuario5 usuario3) ~?= False,
    " existeSecuenciaDeAmigos 25" ~: (existeSecuenciaDeAmigos redC usuario1 usuario2) ~?= True,
    " existeSecuenciaDeAmigos 26" ~: (existeSecuenciaDeAmigos redC usuario1 usuario3) ~?= True,
    " existeSecuenciaDeAmigos 27" ~: (existeSecuenciaDeAmigos redC usuario1 usuario4) ~?= True,
    " existeSecuenciaDeAmigos 28" ~: (existeSecuenciaDeAmigos redC usuario1 usuario5) ~?= True,
    " existeSecuenciaDeAmigos 29" ~: (existeSecuenciaDeAmigos redC usuario1 usuario6) ~?= True,
    " existeSecuenciaDeAmigos 30" ~: (existeSecuenciaDeAmigos redC usuario1 usuario7) ~?= False,
    " existeSecuenciaDeAmigos 31" ~: (existeSecuenciaDeAmigos redC usuario1 usuario8) ~?= False,
    " existeSecuenciaDeAmigos 32" ~: (existeSecuenciaDeAmigos redC usuario1 usuario9) ~?= False,
    " existeSecuenciaDeAmigos 33" ~: (existeSecuenciaDeAmigos redC usuario1 usuario10) ~?= False,
    " existeSecuenciaDeAmigos 34" ~: (existeSecuenciaDeAmigos redC usuario1 usuario11) ~?= False,
    " existeSecuenciaDeAmigos 35" ~: (existeSecuenciaDeAmigos redC usuario2 usuario6) ~?= True,
    " existeSecuenciaDeAmigos 36" ~: (existeSecuenciaDeAmigos redC usuario3 usuario6) ~?= True,
    " existeSecuenciaDeAmigos 37" ~: (existeSecuenciaDeAmigos redC usuario4 usuario6) ~?= True,
    " existeSecuenciaDeAmigos 38" ~: (existeSecuenciaDeAmigos redC usuario5 usuario6) ~?= True,
    " existeSecuenciaDeAmigos 39" ~: (existeSecuenciaDeAmigos redC usuario3 usuario5) ~?= True,
    " existeSecuenciaDeAmigos 40" ~: (existeSecuenciaDeAmigos redC usuario6 usuario7) ~?= False,
    " existeSecuenciaDeAmigos 41" ~: (existeSecuenciaDeAmigos redC usuario3 usuario7) ~?= False,
    " existeSecuenciaDeAmigos 42" ~: (existeSecuenciaDeAmigos redC usuario6 usuario8) ~?= False,
    " existeSecuenciaDeAmigos 43" ~: (existeSecuenciaDeAmigos redC usuario8 usuario6) ~?= False,
    " existeSecuenciaDeAmigos 44" ~: (existeSecuenciaDeAmigos redC usuario6 usuario9) ~?= False,
    " existeSecuenciaDeAmigos 45" ~: (existeSecuenciaDeAmigos redC usuario7 usuario8) ~?= True,
    " existeSecuenciaDeAmigos 46" ~: (existeSecuenciaDeAmigos redC usuario8 usuario9) ~?= True,
    " existeSecuenciaDeAmigos 47" ~: (existeSecuenciaDeAmigos redC usuario7 usuario9) ~?= True,
    " existeSecuenciaDeAmigos 48" ~: (existeSecuenciaDeAmigos redC usuario6 usuario10) ~?= False,
    " existeSecuenciaDeAmigos 49" ~: (existeSecuenciaDeAmigos redC usuario7 usuario10) ~?= False,
    " existeSecuenciaDeAmigos 50" ~: (existeSecuenciaDeAmigos redC usuario10 usuario11) ~?= False,
    " existeSecuenciaDeAmigos 51" ~: (existeSecuenciaDeAmigos redC usuario11 usuario10) ~?= False,
    " existeSecuenciaDeAmigos 52" ~: (existeSecuenciaDeAmigos redD usuario1 usuario2) ~?= False,
    " existeSecuenciaDeAmigos 53" ~: (existeSecuenciaDeAmigos redD usuario1 usuario6) ~?= False,
    " existeSecuenciaDeAmigos 54" ~: (existeSecuenciaDeAmigos redD usuario2 usuario6) ~?= False,
    " existeSecuenciaDeAmigos 55" ~: (existeSecuenciaDeAmigos redD usuario7 usuario9) ~?= False,
    " existeSecuenciaDeAmigos 56" ~: (existeSecuenciaDeAmigos redD usuario1 usuario7) ~?= False,
    " existeSecuenciaDeAmigos 57" ~: (existeSecuenciaDeAmigos redD usuario1 usuario11) ~?= False

 ]

expectAny actual expected = elem actual expected ~? ("expected any of: " ++ show expected ++ "\n but got: " ++ show actual)

-- Ejemplos

usuario1 = (1, "A")
usuario2 = (2, "B")
usuario3 = (3, "C")
usuario4 = (4, "D")
usuario5 = (5, "E")
usuario6 = (6, "F")
usuario7 = (7, "G")
usuario8 = (8, "H")
usuario9 = (9, "I")
usuario10 = (10, "J")
usuario11 = (11, "K")

relacion1_2 = (usuario1, usuario2)
relacion1_3 = (usuario1, usuario3)
relacion1_4 = (usuario4, usuario1) -- Notar que el orden en el que aparecen los usuarios es indistinto
relacion1_5 = (usuario1, usuario5)
relacion1_6 = (usuario6, usuario1)
relacion2_3 = (usuario3, usuario2)
relacion2_4 = (usuario2, usuario4)
relacion3_4 = (usuario4, usuario3)
relacion7_8 = (usuario7, usuario8)
relacion8_9 = (usuario9, usuario8)

publicacion1_1 = (usuario1, "Este es mi primer post", [usuario2, usuario4])
publicacion1_2 = (usuario1, "Este es mi segundo post", [usuario4])
publicacion1_3 = (usuario1, "Este es mi tercer post", [usuario2, usuario5])
publicacion1_4 = (usuario1, "Este es mi cuarto post", [usuario1,usuario3])
publicacion1_5 = (usuario1, "Este es como mi quinto post", [usuario5])

publicacion2_1 = (usuario2, "Hello World", [usuario4])
publicacion2_2 = (usuario2, "Good Bye World", [usuario1, usuario4])

publicacion3_1 = (usuario3, "Lorem Ipsum", [])
publicacion3_2 = (usuario3, "dolor sit amet", [usuario2,usuario1,usuario3])
publicacion3_3 = (usuario3, "consectetur adipiscing elit", [usuario2, usuario5])

publicacion4_1 = (usuario4, "I am Alice. Not", [usuario1, usuario2])
publicacion4_2 = (usuario4, "I am Bob", [])
publicacion4_3 = (usuario4, "Just kidding, i am Mariela", [usuario1, usuario3])

publicacion5_1 = (usuario5, "5_1", [usuario6])

publicacion6_1 = (usuario6, "6_1", [usuario5])

publicacion7_1 = (usuario7, "7_1", [usuario7, usuario8])

publicacion8_1 = (usuario8, "8_1", [usuario7, usuario8])

publicacion9_1 = (usuario9, "9_1", [usuario9])


red0 = ([],[],[])

usuariosA = [usuario1, usuario2, usuario3, usuario4]
relacionesA = [relacion1_2, relacion1_4, relacion2_3, relacion2_4, relacion3_4]
publicacionesA = [publicacion1_1, publicacion1_2, publicacion2_1, publicacion2_2, publicacion3_1, publicacion3_2, publicacion4_1, publicacion4_2]
redA = (usuariosA, relacionesA, publicacionesA)

usuariosB = [usuario1, usuario2, usuario3, usuario5]
relacionesB = [relacion1_2, relacion2_3]
publicacionesB = [publicacion1_3, publicacion1_4, publicacion1_5, publicacion3_1, publicacion3_2, publicacion3_3]
redB = (usuariosB, relacionesB, publicacionesB)

usuariosC = [usuario1, usuario2, usuario3, usuario4, usuario5, usuario6, usuario7, usuario8, usuario9, usuario10,usuario11]
relacionesC = [relacion1_2,relacion1_3,relacion1_4,relacion1_5,relacion1_6,relacion2_3,relacion2_4,relacion3_4,relacion7_8,relacion8_9]
publicacionesC = [publicacion1_1,publicacion1_2,publicacion1_3,publicacion1_4,publicacion1_5,publicacion2_1,publicacion2_2,publicacion3_1,publicacion3_2,publicacion3_3,publicacion4_1,publicacion4_2,publicacion4_3,publicacion5_1,publicacion6_1,publicacion7_1,publicacion8_1,publicacion9_1]
redC = (usuariosC, relacionesC, publicacionesC)

usuariosD = [usuario1, usuario2, usuario3, usuario4, usuario5, usuario6, usuario7, usuario8, usuario9, usuario10,usuario11]
relacionesD = []
publicacionesD = [publicacion1_1,publicacion1_2,publicacion1_3,publicacion1_4,publicacion1_5,publicacion2_1,publicacion2_2,publicacion3_1,publicacion3_2,publicacion3_3,publicacion4_1,publicacion4_2,publicacion4_3,publicacion5_1,publicacion6_1,publicacion7_1,publicacion8_1,publicacion9_1]
redD = (usuariosD, relacionesD, publicacionesD)

usuariosE = [usuario1, usuario2, usuario3, usuario4, usuario5, usuario6, usuario7, usuario8, usuario9, usuario10,usuario11]
relacionesE = [relacion1_2,relacion1_3,relacion1_4,relacion1_5,relacion1_6,relacion2_3,relacion2_4,relacion3_4,relacion7_8,relacion8_9]
publicacionesE = []
redE = (usuariosE, relacionesE, publicacionesE)