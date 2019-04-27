#------------------------------------------------|
#                                                |
# ALCE                                           |
# Audio Live-Coding Environment!                 |
#                                                |
# Thanks to James McCartney's SuperCollider,     |
# Sam Aaron's Sonic-Pi,                          |
# Louis Pilfold's Sonic-Pi-Tool,                 |
# Nick Johnstone's Sonic-Pi-Cli,                 |
#                                                |
# Coded by Nestore Locarno                       |
# https://github.com/coinstable/alce             |
#                                                |
#------------------------------------------------|         

live_loop :buffer do

##| Comandi IDE:
  # M-f-s  =  salva buffer
  # M-f-o  =  carica buffer
  # M-y-h  =  apri shell window
  # M-y-s  =  inserisci comando sh
  # M-i-t  =  cambia contenuto finestra
  # M-i-d  =  elimina finestra
  # M-i-o  =  seleziona finestra successiva
##| Comandi Editor:
  # M-e-b  =  inizia/interrompi selezione testo
  # M-e-c  =  taglia selezione testo
  # M-e-o  =  copia selezione testo
  # M-e-p  =  incolla selezione
  # M-e-g-c  =  commenta selezione testo
  # M-e-g-n  =  decommenta selezione testo
##| Comandi Shell:
  # ./alce-log  =  attiva la finestra di log
  # ./P  =  esegui buffer
  # ./S  =  ferma esecuzione
  
end
































