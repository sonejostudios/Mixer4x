declare name        "Mixer4x";
declare version     "1.0";
declare author      "Vincent Rateau";
declare license     "GPL v3";
declare reference   "www.sonejo.net";
declare description	"Simple Stereo Mixer, 4 Channels";


import("stdfaust.lib");

channels = 4 ;

process = solo : hgroup("", par(i, channels, mixerstrip(i+1)) :> master ) ;

s = si.smooth(0.999) ;

mixerstrip(i) = vgroup("%i", phaseinvert(i) : mute(i) :  hgroup("[3]", volume(i) : vu) <: pan(i)) ;


// mixer stip
phaseinvert(i, a) = select2(checkbox("[1]phase invert %i"),a,-a) ;
mute(i) = _ * (1-checkbox("[5]mute %i"):s) ;
volume(i) = _ * (vslider("[3]vol %i",1,0,1.5,0.01):s) ;
pan(i, a, b) = (a*(1-panner(i):sqrt)), (a*(panner(i):sqrt))
with{
      panner(i) = hslider("[4]pan %i [style: knob]",0.5,0,1,0.01):s;
    };


//master
master = vgroup("[3]", _*mastervol, _*mastervol : mute_all, mute_all ) : vu, vu ;
mastervol = vslider("[3]master",1,0,1.5,0.01):s ;

mute_all = _ * (1-checkbox("[5]mute"):s) ;


// dB meter
vu = _ <: _, vumeter : attach
with{
      vumeter =  an.amp_follower(0.5) : ba.linear2db : vbargraph("[4]dB[unit:dB]",-70,10);
    };


//listen
solo = par(i, channels, _) <: solo_ch, solo_all :> par(i, channels, _)
with{
      solo_ch(a,b,c,d) = a*((sol==0):s), b*((sol==1):s), c*((sol==2):s), d*((sol==3):s) ;
      solo_all(a,b,c,d) = a*((sol==4):s), b*((sol==4):s), c*((sol==4):s), d*((sol==4):s) ;
      sol = hslider("listen[style:radio{'1':0 ; '2':1 ; '3':2 ; '4':3 ; 'all':4 }]",4,0,4,1) ;
    };