#define DIR_TYPE models
#define INSTALL_TO models/estate

#define phone_sizes LL LM LS ML MM MS SL SM SS
#define phone_anim_names phoneBack phoneNeutral phoneOut takePhone
#define phone_anims $[matrix $[phone_sizes],_,$[phone_anim_names]]


#begin flt_egg
  #define SOURCES $[wildcard *.flt]
#end flt_egg

#define most_maya_files \
    terrainHouse.mb chairA.mb terrain.mb FireplaceGirlee.mb \
    FireplaceRound.mb FireplaceSq.mb girly_bed.mb regular_bed.mb \
    house.mb houseB.mb bathtub_bed.mb Organ.mb tt_m_ara_int_estateHouseA.mb \
    Piano.mb closetBoy.mb closetGirl.mb Garden1.mb \
    terrain_fence.mb houseA.mb rugA.mb rugB.mb cabinetYwood.mb \
    tt_m_ara_est_house_tiki.mb tt_m_ara_est_house_cupcake.mb \
    tt_m_ara_est_house_castle.mb tt_m_ara_est_house_tepee.mb \
    cabinetRwood.mb GardenA.mb GardenB.mb lampA.mb \
    test_houseA.mb mailboxHouse.mb \
    RADIO_A.mb RADIO_B.mb radio_c.mb table_radio.mb vaseA_tall.mb \
    vaseA_short.mb vaseB_tall.mb vaseB_short.mb vaseC_short.mb \
    vaseD_short.mb popcornCart.mb coffeetableSq.mb coffeetableSq_BW.mb \
    cezanne_toon.mb flowers.mb modernistMickey.mb rembrandt_toon.mb \
    westernView.mb underwaterView.mb tropicView.mb \
    spaceView.mb cityView.mb jellybeanJar.mb \
    deskChair.mb switchboard.mb \
    BugRoomDesk.mb bugRoomLadyBug.mb \
    bugRoomLeafMat.mb BugRoomRedMushroomPot.mb bugRoomTV.mb BugRoomYellowMushroomPot.mb \
    bugRoomFireplace.mb bugRoomDaisyLamp2.mb \
    bugRoomDaisyLamp1.mb BugRoomChair.mb bugRoomBed.mb landscape.mb \
    degasHorseStar.mb MagPie.mb rover-lisa.mb whistler-horse.mb \
    UWskullBowl.mb UWlizardBowl.mb UWtable.mb UWcoralVase.mb \
    UWlamp_jellyfish.mb UWhammerhead.mb UWswordFish.mb UWlamps_jellyfishB.mb \
    UWfountain.mb UWshellVase.mb UWlobsterChair.mb UWcoralClothRack.mb \
    UWlifeSaverChair.mb UWOceanDryer.mb \
    FarmView.mb PoolView.mb SnowView.mb UWBoatBed.mb \
    west_barrelStand.mb West_cactusHammoc.mb \
    West_hangingHorns.mb West_fancySombrero.mb West_fatCactus.mb West_HayCouch.mb \
    West_saddleStool2.mb West_Sombrero.mb West_cowboyLamp.mb \
    West_CoyotePawdecor.mb West_Horseshoe.mb West_nativeChair.mb West_bisonPortrait.mb \
    West_Tepee.mb WesternMainStreetView.mb IndianView.mb SaddleStool2_final.mb \
    GardenB2.mb cakeSlide.mb BanannaSplitShower.mb candySwingSet.mb CarmelAppleFireplace.mb \
    cookieTableA.mb cupcakeChair.mb icecreamBed.mb icecreamChest.mb twinkieCouch.mb \
    couch_1personDesat.mb regular_bed_desat.mb chairAdesat.mb lampADesat.mb \
    rugADesat.mb TABLE_Bedroom_Desat.mb table_radioDesat.mb \
    bumper_cloud.mb target.mb \
    rose.mb  daisy.mb carnation.mb lily.mb narcissi.mb pansy.mb petunia.mb \
    tulip.mb dirt_mound.mb planterA.mb seedling.mb \
    shovels.mb watering_cans.mb \
    garden_donald.mb garden_mickey_flute.mb garden_minnie.mb garden_mickey_shovel.mb \
    gag_tree_stages.mb planterB.mb  wheelbarrel.mb garden_sign.mb \
    trophyA.mb trophyB.mb trophyC.mb trophyD.mb \
    planterC.mb sack.mb sand_mound.mb garden_slab.mb planterD.mb \
    garden_pedestal.mb pumpkin_tall.mb pumpkin_short.mb \
    gag_fan.mb trolley_bed.mb fireplace_coral.mb  \
    tt_m_prp_ext_snowman.mb tt_m_prp_ext_snowman_icon.mb \
	gag_fan.mb trolley_bed.mb fireplace_coral.mb \
	tt_m_prp_int_fireplace_round.mb tt_m_prp_int_fireplace_square.mb \
    tt_m_prp_int_fireplace_coral.mb tt_m_prp_int_fireplace_girlee.mb \
    tt_m_prp_int_fireplace_caramelApple.mb tt_m_prp_int_fireplace_bugRoom.mb \
    tt_m_prp_int_winter_wreath.mb tt_m_prp_int_winter_tree.mb \
    tt_m_prp_int_painting_valentine.mb tt_m_prp_int_roseWatercan_valentine.mb \
    tt_m_prp_int_roseVase_valentine.mb tt_m_ara_int_candlestick.mb \
    tt_m_ara_int_candlestickLit.mb tt_m_ara_int_presents.mb tt_m_ara_int_sled.mb \
	tt_m_prp_ext_snowDoodle.mb tt_m_prp_ext_snowDoodle_icon.mb \
	tt_m_ara_est_accessoryTrunkBoy.mb tt_m_ara_est_accessoryTrunkGirl.mb

#begin maya_egg
  #define SOURCES $[most_maya_files]
//  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -ui ft
#end maya_egg

#begin maya_char_egg
  #define MAYA_PREFIX prop-
  #define MODEL jellybeanJar
  #defer EGG_PREFIX prop-
  #define POLY_MODEL jellybeanJar
  #define CHAR_NAME jellybeanJar
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX prop_phone-
  #define MODEL wallPhone
  #define EGG_PREFIX prop_phone-
  #define POLY_MODEL mod
  #define ANIMS $[phone_anims]
  #define CHAR_NAME prop_phone
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX estate-
  #define MODEL phoneMount
  #define EGG_PREFIX phoneMount-
  #define POLY_MODEL mod
  #define CHAR_NAME estate-
#end maya_char_egg

#define OPTCHAR_OPTS \
   -no -TR 0,180,0 -TS 0.25

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix prop_phone-,mod $[phone_anims],.egg]

  // Move the phone back so that it scales along its wall origin.
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] -TT 0,0,4.5 \
    -expose joint_receiver \
    -expose joint_curveNode1,joint_curveNode2,joint_curveNode3,joint_curveNode4,joint_curveNode5,joint_curveNode6,CurveNode7 \
    -p CurveNode7,root -p joint_curveNode6,root -p joint_curveNode5,root -p joint_curveNode4,root -p joint_curveNode3,root -p joint_curveNode2,root -p joint_curveNode1,root

#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    phoneMount-mod.egg

  // Move the phone back so that it scales along its wall origin.
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] -TT 0,0,4.5
#end optchar_egg

// these are now used for toon heads in a halloween event - moved to phase_4
#begin install_egg
  #define SOURCES \
    pumpkin_tall.egg pumpkin_short.egg
  #define PHASE 4
#end install_egg

// Begin Estate
#begin install_egg
  #define SOURCES \
    terrainHouse.egg chairA.egg terrain.egg FireplaceGirlee.egg \
    FireplaceRound.egg FireplaceSq.egg girly_bed.egg regular_bed.egg \
    house.egg houseB.egg bathtub_bed.egg Organ.egg tt_m_ara_int_estateHouseA.egg \
    Piano.egg closetBoy.egg closetGirl.egg Garden1.egg \
    terrain_fence.egg houseA.egg rugA.egg rugB.egg cabinetYwood.egg \
    tt_m_ara_est_house_tiki.egg tt_m_ara_est_house_cupcake.egg \
    tt_m_ara_est_house_castle.egg tt_m_ara_est_house_tepee.egg \
    cabinetRwood.egg GardenA.egg GardenB.egg lampA.egg \
    test_houseA.egg mailboxHouse.egg \
    RADIO_A.egg RADIO_B.egg radio_c.egg table_radio.egg vaseA_tall.egg \
    vaseA_short.egg vaseB_tall.egg vaseB_short.egg vaseC_short.egg \
    vaseD_short.egg popcornCart.egg coffeetableSq.egg coffeetableSq_BW.egg \
    cezanne_toon.egg flowers.egg modernistMickey.egg rembrandt_toon.egg \
    westernView.egg underwaterView.egg tropicView.egg \
    spaceView.egg cityView.egg jellybeanJar.egg \
    deskChair.egg switchboard.egg toon_wallpaper.egg wallpaper_sample.egg \
    prop-jellybeanJar.egg toon_flooring.egg halloween-wallpaper.egg \
    winterWallpaper.egg winterFloor.egg \
    cattlelog2_floor.egg cattlelog2_wallpaper.egg BugRoomDesk.egg bugRoomLadyBug.egg \
    bugRoomLeafMat.egg BugRoomRedMushroomPot.egg bugRoomTV.egg BugRoomYellowMushroomPot.egg \
    bugRoomFireplace.egg bugRoomDaisyLamp2.egg \
    bugRoomDaisyLamp1.egg BugRoomChair.egg bugRoomBed.egg landscape.egg \
    degasHorseStar.egg MagPie.egg rover-lisa.egg whistler-horse.egg \
    valentine-wallpaper.egg UWskullBowl.egg UWlizardBowl.egg UWtable.egg UWcoralVase.egg \
    UWlamp_jellyfish.egg UWhammerhead.egg UWswordFish.egg UWlamps_jellyfishB.egg \
    UWfountain.egg UWshellVase.egg UWlobsterChair.egg UWcoralClothRack.egg \
    UWlifeSaverChair.egg underwaterWallpaper.egg underwaterFloors.egg UWOceanDryer.egg \
    FarmView.egg PoolView.egg SnowView.egg UWBoatBed.egg \
    stPat-wallpaper.egg stPat-floor.egg west_barrelStand.egg West_cactusHammoc.egg \
    West_hangingHorns.egg West_fancySombrero.egg West_fatCactus.egg West_HayCouch.egg \
    West_saddleStool2.egg West_Sombrero.egg western-wallpaper.egg West_cowboyLamp.egg \
    West_CoyotePawdecor.egg West_Horseshoe.egg West_nativeChair.egg West_bisonPortrait.egg \
    West_Tepee.egg WesternMainStreetView.egg IndianView.egg SaddleStool2_final.egg \
    GardenB2.egg cakeSlide.egg BanannaSplitShower.egg candySwingSet.egg CarmelAppleFireplace.egg \
    cookieTableA.egg cupcakeChair.egg icecreamBed.egg icecreamChest.egg twinkieCouch.egg \
    couch_1personDesat.egg regular_bed_desat.egg chairAdesat.egg lampADesat.egg \
    rugADesat.egg TABLE_Bedroom_Desat.egg table_radioDesat.egg couch_2personDesat.egg \
    bumper_cloud.egg target.egg \
    rose.egg  daisy.egg carnation.egg lily.egg narcissi.egg pansy.egg petunia.egg \
    tulip.egg dirt_mound.egg planterA.egg seedling.egg \
    shovels.egg watering_cans.egg \
    garden_donald.egg garden_mickey_flute.egg garden_minnie.egg garden_mickey_shovel.egg \
    gag_tree_stages.egg planterB.egg  wheelbarrel.egg garden_sign.egg \
    trophyA.egg trophyB.egg trophyC.egg trophyD.egg flowerBasket.egg jellyBean.egg \
    planterC.egg sack.egg sand_mound.egg garden_slab.egg planterD.egg \
    gardenTutorialPages.egg garden_pedestal.egg toonStatueStoneTex.egg \
    gag_fan.egg trolley_bed.egg fireplace_coral.egg \
    tt_m_prp_ext_snowman_icon.egg tt_m_prp_ext_snowman.egg \
	gag_fan.egg trolley_bed.egg fireplace_coral.egg \
    tt_m_prp_int_fireplace_coral.egg tt_m_prp_int_fireplace_girlee.egg \
    tt_m_prp_int_fireplace_round.egg tt_m_prp_int_fireplace_square.egg \
    tt_m_prp_int_fireplace_caramelApple.egg tt_m_prp_int_fireplace_bugRoom.egg\
    tt_m_prp_int_winter_wreath.egg tt_m_prp_int_winter_tree.egg \
	tt_t_ara_int_stringLightsMoulding.egg tt_t_ara_int_valentineMoulding.egg \
	tt_m_prp_int_painting_valentine.egg tt_m_prp_int_roseWatercan_valentine.egg \
	tt_m_prp_int_roseVase_valentine.egg tt_m_ara_int_candlestick.egg \
    tt_m_ara_int_candlestickLit.egg tt_m_ara_int_presents.egg tt_m_ara_int_sled.egg \
	tt_m_prp_ext_snowDoodle.egg tt_m_prp_ext_snowDoodle_icon.egg \
	tt_m_ara_est_accessoryTrunkBoy.egg tt_m_ara_est_accessoryTrunkGirl.egg

  #define PHASE 5.5
#end install_egg

// Begin Estate
#begin install_egg
  #define SOURCES \
    tt_m_prp_ext_snowman.egg
  #define PHASE 13
#end install_egg

#begin install_egg
  // Animated models are installed from the optchar dir.
  #define SOURCE_DIR optchar
  #define SOURCES \
    prop_phone-mod.egg  phoneMount-mod.egg

  // Animations don't go through egg-palettize.
  #define UNPAL_SOURCES_NC \
    $[matrix prop_phone-,$[phone_anims],.egg]

  #define PHASE 5.5
#end install_egg

