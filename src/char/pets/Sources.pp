#define DIR_TYPE models
#define INSTALL_TO models/char

#define EGG2BAM_OPTS $[EGG2BAM_OPTS]

// These can be seen in pet panels
#define phase_4_anims \
  neutral neutral_sad neutralHappy

// These can be seen in battle
#define phase_5_anims \
  jump beg intoBeg begOut backflip deadend playdead dig intoDig \
  digToNeutral disappear reappear rollover speak heal

// These can be seen in the estates
#define phase_5.5_anims \
  walk toBall sadwalk eat swallow walkHappy run petin \
  petloop petend swim laugh

#define pet_anims \
    $[phase_4_anims] $[phase_5_anims] $[phase_5.5_anims]

#begin maya_char_egg
  #define MAYA_PREFIX TT_pets-
  #defer EGG_PREFIX TT_pets-
  #define MODEL zero
  #define POLY_MODEL mod
  #define ANIMS $[pet_anims]
  #define CHAR_NAME TT_pets
#end maya_char_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    TT_pets-mod.egg TT_pets-neutral.egg TT_pets-walk.egg TT_pets-toBall.egg TT_pets-jump.egg \
    TT_pets-sadwalk.egg TT_pets-run.egg TT_pets-beg.egg TT_pets-intoBeg.egg TT_pets-begOut.egg \
    TT_pets-walkHappy.egg TT_pets-neutral_sad.egg TT_pets-swallow.egg TT_pets-eat.egg \
    TT_pets-neutralHappy.egg TT_pets-petin.egg TT_pets-petloop.egg TT_pets-petend.egg \
    TT_pets-heal.egg TT_pets-backflip.egg TT_pets-playdead.egg TT_pets-deadend.egg \
    TT_pets-dig.egg TT_pets-digToNeutral.egg TT_pets-disappear.egg TT_pets-reappear.egg \
    TT_pets-intoDig.egg TT_pets-rollover.egg TT_pets-speak.egg TT_pets-swim.egg TT_pets-laugh.egg
  #define OPTCHAR_OPTS \
    -TR 0,180,0 -TS 0.25 \
    // eyes
    -flag TheBeanEyes=eyeWhites \
    -flag TheRightPupil=rightPupil \
    -flag TheLeftPupil=leftPupil \
    -flag TheRightHiLite=rightHighlight \
    -flag TheLeftHiLite=leftHighlight \
    -flag TheRightEyebrow=rightBrow \
    -flag TheLeftEyebrow=leftBrow \
    // head parts
    -flag TheBirdHeadFeathers=feathers \
    -flag TheLHorn=horns \
    -flag TheRHorn=horns \
    // ears
    -flag TheLAntenna=antennae \
    -flag TheRAntenna=antennae \
    -flag TheLDogEar=dogEars \
    -flag TheRDogEar=dogEars \
    -flag TheLCatEar=catEars \
    -flag TheRCatEar=catEars \
    -flag TheLRabbitEar=rabbitEars \
    -flag TheRRabbitEar=rabbitEars \
    // noses
    -flag TheClownNose=clownNose \
    -flag TheDogNose=dogNose \
    -flag TheOvalNose=ovalNose \
    -flag ThePigNose=pigNose \
    // tails
    -flag TheCatTail=catTail \
    -flag TheLongTail=longTail \
    -flag birdFeatherTail=birdTail \
    -flag BunnyTail=bunnyTail \
    // feet
    -flag TheLeftFoot=leftFoot \
    -flag TheRightFoot=rightFoot \
    // body
    -flag TheBeanBody=body \
    -p joint_Hips, -p toLHip,joint_Hips -p joint_scaleLLeg,toLHip \
    -p joint_LHip,joint_scaleLLeg -p joint_LThigh,joint_LHip \
    -p joint_LCalf,joint_LThigh -p joint_LAnkle,joint_LCalf \
    -p joint_toLLeg,joint_scaleLLeg -p joint_toLBall,joint_toLLeg \
    -p toRHip,joint_Hips -p joint_scaleRLeg,toRHip \
    -p joint_RHip,joint_scaleRLeg -p joint_RThigh,joint_RHip \
    -p joint_RCalf,joint_RThigh -p joint_RAnkle,joint_RCalf \
    -p joint_toRLeg,joint_scaleRLeg -p joint_toRBall,joint_toRLeg \
    -p joint_LEyebrow, -p joint_LPupil, -p joint_REyebrow, \
    -p joint_RPupil, -p joint_attachAntenna, \
    -p joint_LAntennaBase,joint_attachAntenna \
    -p joint_LAntenna1,joint_LAntennaBase \
    -p joint_LAntennaTip,joint_LAntenna1 \
    -p joint_RAntennaBase,joint_attachAntenna \
    -p joint_RAntenna1,joint_RAntennaBase \
    -p joint_RAntennaTip,joint_RAntenna1 -p joint_attachDogEars, \
    -p joint_LDgoEarBase,joint_attachDogEars \
    -p joint_LDogEar1,joint_LDgoEarBase \
    -p joint_LDogEar2,joint_LDogEar1 \
    -p joint_RDogEarBase,joint_attachDogEars \
    -p joint_RDogEar1,joint_RDogEarBase \
    -p joint_RDogEar2,joint_RDogEar1 -p joint_attachLongTail, \
    -p joint_LongTail1,joint_attachLongTail \
    -p joint_LongTail2,joint_LongTail1 \
    -p joint_LongTail3,joint_LongTail2 \
    -p joint_LongTail4,joint_LongTail3 -p joint_attachLongTail1, \
    -p joint_LongTail5,joint_attachLongTail1 \
    -p joint_LongTail6,joint_LongTail5 \
    -p joint_LongTail7,joint_LongTail6 \
    -p joint_LongTail8,joint_LongTail7 -p joint_attachRabEars, \
    -p joint_LRabbitEarBase,joint_attachRabEars \
    -p joint_LRabbitEar1,joint_LRabbitEarBase \
    -p joint_LRabbitEar2,joint_LRabbitEar1 \
    -p joint_LRabbitEarTip,joint_LRabbitEar2 \
    -p joint_RRabbitEarBase,joint_attachRabEars \
    -p joint_RRabbitEar1,joint_RRabbitEarBase \
    -p joint_RRabbitEar2,joint_RRabbitEar1 \
    -p joint_RRabbitEarTip,joint_RRabbitEar2 -p joint_scale_MAIN, \
    -p joint_Backspine1,joint_scale_MAIN \
    -p joint_Backspine2,joint_Backspine1 \
    -p joint_neck,joint_Backspine2 -p joint_attachEars,joint_neck \
    -p joint_jawbone,joint_neck -p joint_smile,joint_neck \
    -p joint_Lsmile,joint_smile -p joint_Rsmile,joint_smile \
    -p joint_Tailspine1,joint_scale_MAIN \
    -p joint_Tailspine2,joint_Tailspine1 \
    -p joint_Tailspine3,joint_Tailspine2 \
    -p joint_attachTail,joint_Tailspine3 \
    -p joint_scale_pelvis,joint_scale_MAIN -p joint_tongueBase, \
    -p joint_tongue1,joint_tongueBase -p joint_tongue2,joint_tongue1 \
    -p joint_tongueTip,joint_tongue2 \
    // need as target for feeding the pet
    -expose joint_tongueBase \
    // shadow and nametag nulls
    -expose attachShadow \
    -expose attachNametag \
    -suppress joint_LEyebrow,joint_LPupil,joint_REyebrow,joint_RPupil \
    -suppress joint_neck,joint_Tailspine3,joint_tongueBase
 #end optchar_egg

// Phase 4: phase 4 models and anims - pet panels
#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    TT_pets-mod.egg
  #define UNPAL_SOURCES_NC \
    $[matrix TT_pets-,$[phase_4_anims],.egg]
  #define PHASE 4
#end install_egg

// Phase 5: phase 5 models - battle
#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES_NC \
    $[matrix TT_pets-,$[phase_5_anims],.egg]
  #define PHASE 5
#end install_egg

// Phase 5.5: phase 5.5 models - estate
#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES_NC \
    $[matrix TT_pets-,$[phase_5.5_anims],.egg]
  #define PHASE 5.5
#end install_egg

#begin install_egg
  #define SOURCES \
    petTextures.egg petEmotes.egg
  #define PHASE 4
#end install_egg
