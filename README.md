# ALCE
Audio Live-Coding Environment for Linux Shell

Questa serie di script hanno lo scopo di scaricare, organizzare ed installare i pacchetti di sistema, i sorgenti software e le dipendenze necessarie a configurare l'ambiente di sviluppo audio interattivo 'ALCE' per shell unix che utilizza software open source quali: Jackd come demone audio, l'editor a linea di comando Jed, gli ambienti di sviluppo integrati sonic-pi e supercollider per la sintesi audio, Rust e Ruby per il controllo dei dati.

### INSTALLAZIONE:

1. Clonare il repositorio da github

$   git clone https://github.com/coinstable/alce.git 

2. Attivare i premessi di esecuzione allo script principale

$   sudo chmod +x $HOME/alce/build-ubuntu-18

3. Eseguire lo script principale

$   ./$HOME/alce/build-ubuntu-18

### AVVIO:

1. Eseguire il Boot del server audio

$   ./start-alce

### COMANDI AMBIENTE:



#### DIPENDENZE SOFTWARE:

##### mc 
File system manager a riga di comando.

##### red, ed & jed
Editors di testo da terminale.

##### byobu
Funzioni shell avanzate.

##### pulseaudio -- jackd
Server audio.

##### sonic-pi
Ruby IDE per il synth di SuperCollider.

##### supercollider 
Linguaggio di programmazione in tempo reale.

##### sc3-plugins 
Plug-in per SuperCollider.

##### aubio & osmid
Altri plug-in per SuperCollider.

##### Pacchetti GNU-Linux 
g++ ruby ruby-dev pkg-config git build-essential libjack-jackd2-dev libsndfile1-dev libasound2-dev libavahi-client-dev libicu-dev libreadline6-dev libfftw3-dev libxt-dev libudev-dev cmake libboost-dev libqwt-qt5-dev libqt5scintilla2-dev libqt5svg5-dev qt5-qmake qt5-default qttools5-dev qttools5-dev-tools qtdeclarative5-dev libqt5webkit5-dev qtpositioning5-dev libqt5sensors5-dev qtmultimedia5-dev libffi-dev curl python erlang-base


#### Questo file è parte del progetto ALCE di Nestore Locarno.
##### Distribuito con Licenza GNU/GPL-3.0.
## Donazioni Bitcoin: 3NWbGmuLo7uoA8tiZG329X3i2W4d65oUUK

