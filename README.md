# Mixer4x
A simple 4-channel stereo mixer.
The main goal is to use it as a submixer on a 4 channel track, but you can use it everywhere you need a small 4 channel stereo mixer.

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



__Usage:__
While recording acoustic instruments with more than 2 microphones/inputs, a project with a lot of tracks becomes very complex, especially while using monotracks and sub busses. That the main reason I wrote Mixer4x. 

How to use it (e.g. with Ardour):
1. Create a 4 channel track
2. Add Mixer4x
3. Delete the 2 spare output tracks ("Pinout")
4. So you can record 4 microphone channels into one track and mix this as you like with Mixer4x
5. You get a really ordered DAW with only one region/track per take, which is much better to work with than tons of tracks and sub busses!

What you can do:
1. You can listen to one microphone only and decide which one to use
2. You can invert the phase of mics if you need to
3. You can mute mics, ajust levels an the panorama position of each mic




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


![screenshot](https://raw.githubusercontent.com/sonejostudios/Mixer4x/master/4chmix.png "Mixer4x (Ardour)")

