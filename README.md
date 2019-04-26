# ALCE
Audio Live-Coding Environment for Linux Shell

Questo script serve a scaricare ed installare i pacchetti di sistema, i sorgenti software e le dipendenze necessarie al sistema per configurare l'ambiente di sviluppo audio interattivo 'ALCE' per shell/bash che utilizza software open source quali: Jackd come demone audio, l'editor a linea di comando Jed, gli ambienti di sviluppo integrati sonic-pi e supercollider per la sintesi audio, Rust e Ruby per il controllo dei dati.
Nestore Locarno GNU/GPL-3.0. 
Donazioni Bitcoin: 3NWbGmuLo7uoA8tiZG329X3i2W4d65oUUK
Lista mirror Alce:
#@> Ghostbin.com idx: 98z4d
#@> Pastebin.com idx: DAUgW8xx
#@> PasteFs.com idx: pid/114820
#@> Paste.Ubuntu.com idx: p/h8cZxYTjy7
#@> CodePad.org idx: Ly9gYWKC 
#@> TagMyCode.com idx: snippet/12170/alce
#@> Cacher.io idx: snippet/fd7af875c04233183321
#@> Paste4BTC.com idx: FDJECUaW

#DIPENDENZE
 
##| Debian packages:
 
# supercollider - La versione del supercollider nei repository debian stretch (3.7.0) non funziona con Sonic Pi 3.1 in quanto manca l'argomento -B che imposta l'indirizzo ip (credo). L'ultima versione, 3.9.1, sembra funzionare.
 
# sc3-plugins - La versione 3.9.0 sembra essere una buona scelta, dato che è vicina alla versione del supercollider e sembra funzionare bene. (Sonic Pi sembrava aprirsi e funzionare bene con la versione nei repository Debian, 3.7.0, ma potrebbe entrare in conflitto con le versioni più recenti del supercollider, quindi se vuoi essere più sicuro che funzioni, prova la versione 3.9.0 ) (Si potrebbe provare con la v3.9.1, ma è attualmente in pre-release in base alla sua pagina di release su GitHub, e ho avuto meno successo nell'installare quella versione).
 
# aubio & osmid - Le ultime versioni di questi sembrano funzionare bene.
 
# Tutti gli altri pacchetti richiesti possono essere installati dai repository Debian:
 
sudo apt update; sudo apt full-update
sudo apt install mc git gem jed curl
sudo apt install -y g++ ruby ruby-dev pkg-config git build-essential libjack-jackd2-dev libsndfile1-dev libasound2-dev libavahi-client-dev libicu-dev libreadline6-dev libfftw3-dev libxt-dev libudev-dev cmake libboost-dev libqwt-qt5-dev libqt5scintilla2-dev libqt5svg5-dev qt5-qmake qt5-default qttools5-dev qttools5-dev-tools qtdeclarative5-dev libqt5webkit5-dev qtpositioning5-dev libqt5sensors5-dev qtmultimedia5-dev libffi-dev curl python erlang-base
 
# Ruby Server Extensions:
 
# rugged - Per me, lo script di estensioni di compilazione non sembra installare correttamente rugged. Se hai problemi con il rugged, prova a installarlo tramite 'gem install rugged' e copia la cartella nella posizione appropriata in sonic pi usando cd / sonic-pi-folder / app / gui / qt & cp -a "/var/lib/gems/2.3.0/gems/ robusto-0.26.0 /." "../../server/ruby/vendor/rugged-0.26.0/" (sostituisci sonic-pi-folder con il percorso della cartella sonic pi source).
 
# Tutte le altre estensioni sembrano essere installate bene da compile-extensions.rb
 
# 'libqwt-qt5-dev' è disponibile, ma solo da stretch. È possibile che tu possa aver bisogno di "libboost1.58-dev" da stretch. Se 'libboost-dev' non funziona per te, faccelo sapere.
 
# Plugin SuperCollider SC3:
 
# Dopo aver installato 'SuperCollider', dovrai anche compilare e installare i 'Plugin UGen SuperCollider SC3' dal sorgente, se la tua distribuzione non fornisce un pacchetto binario di essi.
 
# Avrai bisogno del pacchetto "supercollider-dev" della tua distribuzione per questo passaggio.
 
git clone https://github.com/supercollider/sc3-plugins.git
cd sc3-plugins
git submodule init
git submodule update
git checkout efba3baaea873f4e4d44aec3bb7468dd0938b4a6
cp -r external_libraries/nova-simd/* source/VBAPUGens
rm -rf source/NCAnalysisUGens # these plugins don't work with Jessie's supercollider
sed -i "/# NCAnalysisUGens/,/^#/d" source/CMakeLists.txt
sed -i s/JoshUGens// source/CMakeLists.txt
sed -i s/TagSystemUGens// source/CMakeLists.txt
sed -i s/NCAnalysisUGens// source/CMakeLists.txt
mkdir build
cd build
 
# Estensioni server:
 
# Compilare le estensioni del server inserendo nella directory
cd ~HOME/sonic-pi/app/server/ruby/bin
# ed eseguendo lo script
./compile-extensions.rb
# Questo richiederà del tempo.
 
# Qt GUI
 
# È necessario compilare le estensioni del server prima di questo passaggio.
 
cd ~HOME/sonic-pi/app/gui/qt/
# ed esegui lo script
./rp-build-app
# Questo richiederà anche del tempo.
 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
 
##| Ubuntu 18.04 LTS Packages:
 
## Su sistemi ubuntu 18.04 LTS è sufficiente decommentare i seguenti comandi e commentare tutti i precedenti:
 
#sudo apt install mc git gem jed curl sonic-pi
#curl https://sh.rustup.rs -sSf | sh
#cargo install --git https://github.com/lpil/sonic-pi-tool/ --force
#sudo gem install sonic-pi-cli
#sudo gem install rugged
#sudo git clone https://github.com/samaaron/sonic-pi
#cd ~HOME/sonic-pi/app/gui/qt/
#sudo chmod +777 build-ubuntu-18-04
#./build-ubuntu-18-04
#cd
