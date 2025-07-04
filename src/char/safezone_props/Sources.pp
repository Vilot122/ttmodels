#define DIR_TYPE models
#define INSTALL_TO models/props
// masad: make sure the neutral frame is set to -1 to get default orientation
#define MAYA2EGG_OPTS -fri 24 -uo ft -nf -1

// These are the various animation files generated within this directory

// Daisy's garden flower
#begin maya_char_egg
  #define MODEL flower
  #define MAYA_PREFIX DG_
  #define EGG_PREFIX
  #define POLY_MODEL DG_flower-mod
  #define CHAR_NAME flower
#end maya_char_egg

// horizontal splash (on water surface not a spray)
#begin maya_char_egg
  #define MODEL splashdown
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX SZ_
  #define POLY_MODEL splashdown-mod
  #define CHAN_SUFFIX -chan
  #define ANIMS splashdown
  #define CHAR_NAME splashdown
#end maya_char_egg

// HQ telescope
#begin maya_char_egg
  #define MODEL telescope
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX HQ_
  #define POLY_MODEL telescope-mod
  #define CHAN_SUFFIX -chan
  #define ANIMS telescope
  #define CHAR_NAME telescope
#end maya_char_egg

// HQ periscope base (interior)
#begin maya_char_egg
  #define MODEL periscope-base
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX HQ_
  #define POLY_MODEL periscope-base-mod
  #define CHAN_SUFFIX -chan
  #define ANIMS periscope-base
  #define CHAR_NAME periscope-base
#end maya_char_egg

// HQ periscope (exterior)
#begin maya_char_egg
  #define MODEL periscope
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX HQ_
  #define POLY_MODEL periscope-mod
  #define CHAN_SUFFIX -chan
  #define ANIMS periscope
  #define CHAR_NAME periscope
#end maya_char_egg

// Safezone airplane
#begin maya_char_egg
  #define MODEL airplane
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX SZ_
  #define POLY_MODEL airplane-mod
  #define ANIMS airplane-wave
  #define CHAR_NAME airplane
#end maya_char_egg

// Safezone butterfly
#begin maya_char_egg
  #define MODEL butterfly
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX SZ_
  #define POLY_MODEL butterfly-mod
  #define ANIMS butterfly-flutter butterfly-glide butterfly-land
  #define CHAR_NAME flutterby
#end maya_char_egg

// Safezone fish
#begin maya_char_egg
  #define MODEL fish
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX SZ_
  #define POLY_MODEL fish-mod
  #define ANIMS fish-swim fish-jump
  #define CHAR_NAME fish
#end maya_char_egg

//fish in PetShop tank
#begin maya_char_egg
  #define MAYA_PREFIX interiorfish-
  #define EGG_PREFIX interiorfish-
  #define POLY_MODEL zero
  #define ANIMS swim
  #define swim_frames 1 160
  #define CHAR_NAME interiorfish
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX exteriorfish-
  #define EGG_PREFIX exteriorfish-
  #define POLY_MODEL zero
  #define ANIMS swim
  #define swim_frames 1 160
  #define CHAR_NAME exteriorfish
#end maya_char_egg

//
// TRANSFORM
//

// Transform the various non-characters.
#begin filter_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    DG_flower-mod.egg
  #defer COMMAND \
    egg-trans -TS 0.25 \
    -o $[target] $[source]
#end filter_egg

//
// OPTCHAR
//

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    SZ_splashdown-mod.egg SZ_splashdown-chan.egg
  #define OPTCHAR_OPTS \
    -TS 0.25
#end optchar_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    HQ_telescope-mod.egg HQ_telescope-chan.egg
  #define OPTCHAR_OPTS \
    -TS 0.25
#end optchar_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    HQ_periscope-base-mod.egg HQ_periscope-base-chan.egg
  #define OPTCHAR_OPTS \
    -TS 0.25
#end optchar_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    HQ_periscope-mod.egg HQ_periscope-chan.egg
  #define OPTCHAR_OPTS \
    -TS 7.5
#end optchar_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    SZ_airplane-mod.egg SZ_airplane-wave.egg
  #define OPTCHAR_OPTS \
    -TS 0.25
#end optchar_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    SZ_butterfly-mod.egg \
    SZ_butterfly-land.egg SZ_butterfly-flutter.egg SZ_butterfly-glide.egg
  #define OPTCHAR_OPTS \
    -TS 0.25 \
    -flag wingL=wings_1 \
    -flag wingR=wings_1 \
    -flag wingL1=wings_2 \
    -flag wingR1=wings_2 \
    -flag wingL2=wings_3 \
    -flag wingR2=wings_3 \
    -flag wingL3=wings_4 \
    -flag wingR3=wings_4 \
    -flag wingL4=wings_5 \
    -flag wingR4=wings_5 \
    -flag wingL5=wings_6 \
    -flag wingR5=wings_6
#end optchar_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    SZ_fish-mod.egg \
    SZ_fish-swim.egg SZ_fish-jump.egg
  #define OPTCHAR_OPTS \
    -TS 0.25
#end optchar_egg

// OPTCHAR Fishtank fish

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   interiorfish-zero.egg \
   $[matrix interiorfish-swim.egg]
//  #define OPTCHAR_OPTS \
//    -flag eye?=transparent
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   exteriorfish-zero.egg \
   $[matrix exteriorfish-swim.egg]
//  #define OPTCHAR_OPTS \
//    -flag eye?=transparent
#end optchar_egg


//
// INSTALL
//

// Finally, install everything that should be installed.
#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    HQ_telescope-mod.egg HQ_periscope-mod.egg HQ_periscope-base-mod.egg
  #define UNPAL_SOURCES_NC \
    HQ_telescope-chan.egg HQ_periscope-chan.egg HQ_periscope-base-chan.egg
  #define PHASE 3.5
#end install_egg


#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    SZ_butterfly-mod.egg SZ_fish-mod.egg SZ_airplane-mod.egg \
    SZ_splashdown-mod.egg interiorfish-zero.egg exteriorfish-zero.egg
  #define UNPAL_SOURCES_NC \
    SZ_butterfly-flutter.egg SZ_butterfly-glide.egg \
    SZ_butterfly-land.egg SZ_fish-swim.egg \
    SZ_fish-jump.egg SZ_airplane-wave.egg  SZ_splashdown-chan.egg \
    interiorfish-swim.egg exteriorfish-swim.egg
  #define PHASE 4
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    DG_flower-mod.egg
  #define PHASE 8
#end install_egg

