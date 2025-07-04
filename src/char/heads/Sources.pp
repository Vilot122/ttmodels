#define DIR_TYPE models
#define INSTALL_TO models/char
#define DATABASE heads_cvs
#define animals \
   cat duck horse mouse rabbit monkey bear pig

// new heads are from maya
#begin maya_egg
  #define SOURCES $[wildcard *?0*.mb]
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -a model
#end maya_egg

// Get the animal eyelashes
#begin lashes
  #define CHAR_NAME lashes

  // dog lashes
  #begin maya_char_egg
    #define MAYA_PREFIX dog-
    #define EGG_PREFIX dog-
    #define MODEL lashes
    #define POLY_MODEL lashes
  #end maya_char_egg

  // cat lashes
  #begin maya_char_egg
    #define MAYA_PREFIX cat-
    #define EGG_PREFIX cat-
    #define MODEL lashes
    #define POLY_MODEL lashes
  #end maya_char_egg

  // rabbit lashes
  #begin maya_char_egg
    #define MAYA_PREFIX rabbit-
    #define EGG_PREFIX rabbit-
    #define MODEL lashes
    #define POLY_MODEL lashes
  #end maya_char_egg

  // horse lashes
  #begin maya_char_egg
    #define MAYA_PREFIX horse-
    #define EGG_PREFIX horse-
    #define MODEL lashes
    #define POLY_MODEL lashes
  #end maya_char_egg

  // mouse lashes
  #begin maya_char_egg
    #define MAYA_PREFIX mouse-
    #define EGG_PREFIX mouse-
    #define MODEL lashes
    #define POLY_MODEL lashes
  #end maya_char_egg

  // duck lashes
  #begin maya_char_egg
    #define MAYA_PREFIX duck-
    #define EGG_PREFIX duck-
    #define MODEL lashes
    #define POLY_MODEL lashes
  #end maya_char_egg

  // bear lashes
  #begin maya_char_egg
    #define MAYA_PREFIX bear-
    #define EGG_PREFIX bear-
    #define MODEL lashes
    #define POLY_MODEL lashes
  #end maya_char_egg

  // monkey lashes
  #begin maya_char_egg
    #define MAYA_PREFIX monkey-
    #define EGG_PREFIX monkey-
    #define MODEL lashes
    #define POLY_MODEL lashes
  #end maya_char_egg

  // pig lashes
  #begin maya_char_egg
    #define MAYA_PREFIX pig-
    #define EGG_PREFIX pig-
    #define MODEL lashes
    #define POLY_MODEL lashes
  #end maya_char_egg
#end lashes

#define flag_heads \
    -flag eyes?long=eyes-long \
    -flag eyes?short=eyes-short \
    -flag eyesL=eyes \
    -flag eyesR=eyes \
	-flag head?long=head-long \
	-flag head?short=head-short \
	-flag head?front?long=head-front-long \
	-flag head?front?short=head-front-short \
    -flag muzzle?short=muzzle-short-neutral \
	-flag muzzle?short?surprise=muzzle-short-surprise \
	-flag muzzle?short?angry=muzzle-short-angry \
	-flag muzzle?short?sad=muzzle-short-sad \
	-flag muzzle?short?laugh=muzzle-short-laugh \
	-flag muzzle?short?smile=muzzle-short-smile \
    -flag muzzle?long=muzzle-long-neutral \
    -flag muzzle?long?surprise=muzzle-long-surprise \
    -flag muzzle?long?angry=muzzle-long-angry \
    -flag muzzle?long?sad=muzzle-long-sad \
    -flag muzzle?long?laugh=muzzle-long-laugh \
    -flag muzzle?long?smile=muzzle-long-smile \
	-flag earL?short=ears-short \
    -flag earR?short=ears-short \
	-flag earL?short?back=ears-short \
    -flag earR?short?back=ears-short \
	-flag earL?long=ears-long \
    -flag earR?long=ears-long \
	-flag earL?long?back=ears-long \
    -flag earR?long?back=ears-long \
    -flag joint?pupilL=joint_pupilL \
    -flag joint?pupilR=joint_pupilR \
    -flag joint?pupilL?long=joint_pupilL_long \
    -flag joint?pupilR?long=joint_pupilR_long \
    -flag joint?pupilL?short=joint_pupilL_short \
    -flag joint?pupilR?short=joint_pupilR_short

#define flag_lashes \
        -flag open_short_eyelashL=open-short \
        -flag open_short_eyelashR=open-short \
        -flag open_long_eyelashL=open-long \
        -flag open_long_eyelashR=open-long \
	-flag closed_short_eyelashL=closed-short \
	-flag closed_short_eyelashR=closed-short \
        -flag closed_long_eyelashL=closed-long \
        -flag closed_long_eyelashR=closed-long

// Note that dog_head_transform is also defined in the three dog?? files.
#define dog_head_transform -TT 0,-14.74,0.2 -TS 0.271425 -TR 0,180,0
#define cat_head_transform -TS 1.1250
#define duck_head_transform -TS 1.345,1.3292,1.1298
#define horse_head_transform
#define mouse_head_transform -TS 1.3078,1.1274,1.1274 -TR 0,180,0
#define rabbit_head_transform
#define monkey_head_transform -TT 0,-1.0,0.25 -TS 0.275 -TR 0,180,0
#define bear_head_transform -TS 25 -TT 0,-0.1,-0.25
#define pig_head_transform -TS 6 -TR 0,180,0 -TT 0,-0.2,-0.1

// Transform the dog lashes.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    dog-lashes.egg
  #define OPTCHAR_OPTS \
    -no $[dog_head_transform] \
    $[flag_lashes]
#end optchar_egg

// Transform the other various heads and eyelashes.

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    cat-lashes.egg
  #define OPTCHAR_OPTS \
    -no $[cat_head_transform] \
    $[flag_lashes]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    duck-lashes.egg
  #define OPTCHAR_OPTS \
    -no $[duck_head_transform] \
    $[flag_lashes]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    mouse-lashes.egg
  #define OPTCHAR_OPTS \
    -no $[mouse_head_transform] \
    $[flag_lashes]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    rabbit-lashes.egg
  #define OPTCHAR_OPTS \
    -no $[rabbit_head_transform] \
    $[flag_lashes]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    monkey-lashes.egg
  #define OPTCHAR_OPTS \
    -no $[monkey_head_transform] \
    $[flag_lashes]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    bear-lashes.egg
  #define OPTCHAR_OPTS \
    -no $[bear_head_transform] \
    $[flag_lashes]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    horse-lashes.egg
  #define OPTCHAR_OPTS \
    -no $[horse_head_transform] \
    $[flag_lashes]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    pig-lashes.egg
  #define OPTCHAR_OPTS \
    -no $[pig_head_transform] \
    $[flag_lashes]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix monkey-heads-,1000 500 250,.egg]
  #define OPTCHAR_OPTS \
    -no $[monkey_head_transform] \
    -expose joint_pupilL_short,joint_pupilR_short \
    -expose joint_pupilL_long,joint_pupilR_long \
    $[flag_heads]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix bear-heads-,1000 500 250,.egg]
  #define OPTCHAR_OPTS \
    -no $[bear_head_transform] \
    -expose joint_pupilL_short,joint_pupilR_short \
    -expose joint_pupilL_long,joint_pupilR_long \
    $[flag_heads]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix horse-heads-,1000 500 250,.egg]
  #define OPTCHAR_OPTS \
    -no $[horse_head_transform] \
    -expose joint_pupilL_short,joint_pupilR_short \
    -expose joint_pupilL_long,joint_pupilR_long \
    $[flag_heads]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix cat-heads-,1000 500 250,.egg]
  #define OPTCHAR_OPTS \
    -no $[cat_head_transform] \
    -expose joint_pupilL_short,joint_pupilR_short \
    -expose joint_pupilL_long,joint_pupilR_long \
    $[flag_heads]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix rabbit-heads-,1000 500 250,.egg]
  #define OPTCHAR_OPTS \
    -no $[rabbit_head_transform] \
    -expose joint_pupilL_short,joint_pupilR_short \
    -expose joint_pupilL_long,joint_pupilR_long \
    $[flag_heads]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix duck-heads-,1000 500 250,.egg]
  #define OPTCHAR_OPTS \
    -no $[duck_head_transform] \
    -expose joint_pupilL_short,joint_pupilR_short \
    -expose joint_pupilL_long,joint_pupilR_long \
    $[flag_heads]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix mouse-heads-,1000 500 250,.egg]
  #define OPTCHAR_OPTS \
    -no $[mouse_head_transform] \
    -expose joint_pupilL_short,joint_pupilR_short \
    -expose joint_pupilL_long,joint_pupilR_long \
    $[flag_heads]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix pig-heads-,1000 500 250,.egg]
  #define OPTCHAR_OPTS \
    -no $[pig_head_transform] \
    -expose joint_pupilL_short,joint_pupilR_short \
    -expose joint_pupilL_long,joint_pupilR_long \
    $[flag_heads]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix dogMM_Shorts-headMuzzles-,1000 500,.egg]
  #define OPTCHAR_OPTS \
    $[flag_heads]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix dogMM_Skirt-headMuzzles-,1000 500,.egg]
  #define OPTCHAR_OPTS \
    $[flag_heads]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix dogSS_Shorts-headMuzzles-,1000 500,.egg]
  #define OPTCHAR_OPTS \
    $[flag_heads]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix dogLL_Shorts-headMuzzles-,1000 500,.egg]
  #define OPTCHAR_OPTS \
    $[flag_heads]
#end optchar_egg

// Finally, install everything that should be installed.
#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    $[matrix $[animals],-heads-,1000 500 250,.egg] \
    $[matrix $[animals] dog,-lashes,.egg]
  #define PHASE 3
#end install_egg

#define dogFiles dogMM_Shorts dogMM_Skirt dogSS_Shorts dogLL_Shorts
// Also, install the dog muzzles
#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    $[matrix $[dogFiles],-headMuzzles-,1000 500,.egg]
  #define PHASE 3
#end install_egg
