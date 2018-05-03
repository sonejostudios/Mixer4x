# Mixer4x
A simple 4-channel stereo mixer


![screenshot](https://raw.githubusercontent.com/sonejostudios/Mixer4x/master/Mixer4x.png "Mixer4x (Ardour)")



__Features:__
* 4 Mono Channels
* Phase invert
* Volume Slider (channels and stereo output)
* dB Meter (channels and stereo output)
* Panning
* Mute (channels and stereo output)
* Listen (Solo Isolate) to a specific channel or to all channels


__Inputs/Outputs:__
* 4x Mono Inputs 
* Audio Master Stereo Output (L,R)


__Build/Install:__
* Use the Faust Online Compiler to compile it as Standalone Jack Application or Audio Plugin (LV2, VST, etc): http://faust.grame.fr/compiler
* This software was tested only with Linux JackQT Faust Compiler and as LV2 on a Linux machine.

* To compile a JackQt Standalone application simply with (you'll need to install the Faust Compiler): 
  * $ faust2jaqt Mixer4x.dsp
* To Start:
  * $ ./Mixer4x


__LV2:__
* An LV2 Build with presets can be found under releases: https://github.com/sonejostudios/Mixer4x/releases
* Unpack LV2 build in your LV2 folder, e.g ~/.lv2
