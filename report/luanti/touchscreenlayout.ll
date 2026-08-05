inline.NumInlined: 874
inline.NumDeleted: 409
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
%"union.Json::Value::ValueHolder" = type { i64 }
%struct.anon = type { i16, [2 x i8] }
%"class.Json::Value::Comments" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.65" }
%"struct.std::_Head_base.65" = type { ptr }
%"class.std::allocator.18" = type { i8 }
%"class.Json::ValueIterator" = type { %"class.Json::ValueIteratorBase.base", [7 x i8] }
%"class.Json::ValueIteratorBase.base" = type <{ %"struct.std::_Rb_tree_iterator", i8 }>
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"struct.std::_Hashtable<touch_gui_button_id, std::pair<const touch_gui_button_id, irr_ptr<video::ITexture>>, std::allocator<std::pair<const touch_gui_button_id, irr_ptr<video::ITexture>>>, std::__detail::_Select1st, std::equal_to<touch_gui_button_id>, std::hash<touch_gui_button_id>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node" = type { ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<touch_gui_button_id, std::allocator<touch_gui_button_id>>::_Vector_impl" }
%"struct.std::_Vector_base<touch_gui_button_id, std::allocator<touch_gui_button_id>>::_Vector_impl" = type { %"struct.std::_Vector_base<touch_gui_button_id, std::allocator<touch_gui_button_id>>::_Vector_impl_data" }
%"struct.std::_Vector_base<touch_gui_button_id, std::allocator<touch_gui_button_id>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"class.core::vector2d" = type { i32, i32 }
%"class.core::rect" = type { %"class.core::vector2d", %"class.core::vector2d" }
%"class.std::__cxx11::basic_string.69" = type { %"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider", i64, %union.anon.73 }
%"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider" = type { ptr }
%union.anon.73 = type { i64, [8 x i8] }
%"struct.std::hash.26" = type { i8 }
%"struct.std::equal_to.29" = type { i8 }
%"class.std::allocator.41" = type { i8 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt13unordered_mapI19touch_gui_button_id10ButtonMetaSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S1_EEED2Ev = comdat any

$_ZN12ButtonLayoutD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt13unordered_mapI19touch_gui_button_id7irr_ptrIN5video8ITextureEESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S4_EEED2Ev = comdat any

$_Z11wstrgettextB5cxx11PKc = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_10ButtonMetaESaIS4_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_10ButtonMetaESaIS4_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv = comdat any

$_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_ = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_10ButtonMetaESaIS4_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSH_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEEvOT_RKT0_ = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_10ButtonMetaESaIS4_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEEC2IPKS4_EET_SL_mRKSB_RKS9_RKS5_St17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_10ButtonMetaESaIS4_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_insert_uniqueIRS2_RKS4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEES1_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbEOT_OT0_RKT1_ = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_10ButtonMetaESaIS4_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_10ButtonMetaESaIS4_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_10ButtonMetaESaIS4_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS2_RKS3_EEES1_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_7irr_ptrIN5video8ITextureEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_7irr_ptrIN5video8ITextureEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_7irr_ptrIN5video8ITextureEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_10ButtonMetaESaIS4_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS0_RS3_EEES1_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableI19touch_gui_button_idSt4pairIKS0_10ButtonMetaESaIS4_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS0_RKS3_EEES1_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZTIN4Json12RuntimeErrorE = comdat any

$_ZTSN4Json12RuntimeErrorE = comdat any

@.str = private unnamed_addr constant [4 x i8] c"tap\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"tap_crosshair\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"buttons_crosshair\00", align 1
@es_TouchInteractionStyle = dso_local constant [4 x %struct.EnumString] [%struct.EnumString { i32 0, ptr @.str }, %struct.EnumString { i32 1, ptr @.str.1 }, %struct.EnumString { i32 2, ptr @.str.2 }, %struct.EnumString zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"dig\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"place\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"jump\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"sneak\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"aux1\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"chat\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"inventory\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"fly\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"noclip\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"minimap\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"toggle_chat\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"joystick_off\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"joystick_bg\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"joystick_center\00", align 1
@button_names = dso_local local_unnamed_addr global [22 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 16
@.str.25 = private unnamed_addr constant [14 x i8] c"Dig/punch/use\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Place/use\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"Jump\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Sneak\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"Zoom\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Aux1\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Overflow menu\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Chat\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"Inventory\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Drop\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"Exit\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"Toggle fly\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Toggle fast\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"Toggle noclip\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Toggle debug\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"Change camera\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"Range select\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"Toggle minimap\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"Toggle chat log\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Joystick\00", align 1
@button_titles = dso_local local_unnamed_addr global [22 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.44, ptr @.str.44], align 16
@.str.45 = private unnamed_addr constant [12 x i8] c"dig_btn.png\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"place_btn.png\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"jump_btn.png\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"down.png\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"zoom.png\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"aux1_btn.png\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"overflow_btn.png\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"chat_btn.png\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"inventory_btn.png\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"drop_btn.png\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"exit_btn.png\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"fly_btn.png\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"fast_btn.png\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"noclip_btn.png\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"debug_btn.png\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"camera_btn.png\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"rangeview_btn.png\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"minimap_btn.png\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"chat_hide_btn.png\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"joystick_off.png\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"joystick_bg.png\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"joystick_center.png\00", align 1
@button_image_names = dso_local local_unnamed_addr global [22 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], align 16
@_ZL17buttons_crosshair = internal unnamed_addr global ptr null, align 8
@g_settings = external local_unnamed_addr global ptr, align 8
@.str.67 = private unnamed_addr constant [24 x i8] c"touch_interaction_style\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"virtual_joystick_triggers_aux1\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"hud_scaling\00", align 1
@_ZN12ButtonLayout12default_dataE = dso_local global %"class.std::unordered_map.21" zeroinitializer, align 8
@constinit = private unnamed_addr constant [7 x %"struct.std::pair"] [%"struct.std::pair" { i8 0, %struct.ButtonMeta { %"class.core::vector2d.1" { float 1.000000e+00, float 1.000000e+00 }, %"class.core::vector2d.1" { float -2.000000e+00, float -2.750000e+00 } } }, %"struct.std::pair" { i8 1, %struct.ButtonMeta { %"class.core::vector2d.1" { float 1.000000e+00, float 1.000000e+00 }, %"class.core::vector2d.1" { float -2.000000e+00, float -4.250000e+00 } } }, %"struct.std::pair" { i8 2, %struct.ButtonMeta { %"class.core::vector2d.1" { float 1.000000e+00, float 1.000000e+00 }, %"class.core::vector2d.1" { float -1.000000e+00, float -5.000000e-01 } } }, %"struct.std::pair" { i8 3, %struct.ButtonMeta { %"class.core::vector2d.1" { float 1.000000e+00, float 1.000000e+00 }, %"class.core::vector2d.1" { float -2.500000e+00, float -5.000000e-01 } } }, %"struct.std::pair" { i8 4, %struct.ButtonMeta { %"class.core::vector2d.1" { float 1.000000e+00, float 1.000000e+00 }, %"class.core::vector2d.1" { float -7.500000e-01, float -3.500000e+00 } } }, %"struct.std::pair" { i8 5, %struct.ButtonMeta { %"class.core::vector2d.1" { float 1.000000e+00, float 1.000000e+00 }, %"class.core::vector2d.1" { float -7.500000e-01, float -2.000000e+00 } } }, %"struct.std::pair" { i8 6, %struct.ButtonMeta { %"class.core::vector2d.1" { float 1.000000e+00, float 1.000000e+00 }, %"class.core::vector2d.1" { float -7.500000e-01, float -5.000000e+00 } } }], align 4
@__dso_handle = external hidden global i8
@.str.71 = private unnamed_addr constant [13 x i8] c"touch_layout\00", align 1
@_ZTIN4Json9ExceptionE = external constant ptr
@warningstream = external thread_local global %class.LogStream, align 8
@.str.72 = private unnamed_addr constant [37 x i8] c"Could not parse touchscreen layout: \00", align 1
@_ZN12ButtonLayout13texture_cacheE = dso_local global %"class.std::unordered_map.46" zeroinitializer, align 8
@_ZN7porting10path_shareB5cxx11E = external local_unnamed_addr global %"class.std::__cxx11::basic_string", align 8
@.str.74 = private unnamed_addr constant [21 x i8] c"/textures/base/pack/\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"position_x\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"position_y\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"offset_x\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"offset_y\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"invalid type for layout\00", align 1
@_ZTIN4Json12RuntimeErrorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4Json12RuntimeErrorE, ptr @_ZTIN4Json9ExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4Json12RuntimeErrorE = linkonce_odr dso_local constant [22 x i8] c"N4Json12RuntimeErrorE\00", comdat, align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"invalid button name\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"invalid type for button metadata\00", align 1
@.str.84 = private unnamed_addr constant [61 x i8] c"invalid type for position_x or position_y in button metadata\00", align 1
@.str.85 = private unnamed_addr constant [57 x i8] c"invalid type for offset_x or offset_y in button metadata\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.88 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"unordered_map::at\00", align 1
@.str.91 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_touchscreenlayout.cpp, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @_ZNK10ButtonMeta6getPosEN4core8vector2dIjEEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = sitofp nsz i32 %2 to float
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.c = load <2 x float>, ptr %0, align 4, !tbaa !9
  %i.d = uitofp nsz i32 %.sroa.2.0.extract.trunc to float
  %i.e = uitofp nsz i32 %.sroa.0.0.extract.trunc to float
  %i.f = load <2 x float>, ptr %i.a, align 4, !tbaa !9
  %i.g = insertelement <2 x float> poison, float %i.b, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul nsz <2 x float> %i.f, %i.h
  %i.j = insertelement <2 x float> poison, float %i.e, i64 0
  %i.k = insertelement <2 x float> %i.j, float %i.d, i64 1
  %i.l = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> %i.k, <2 x float> %i.i)
  %3 = fptosi <2 x float> %i.l to <2 x i32>
  %.sroa.0.0.insert.insert = bitcast <2 x i32> %3 to i64
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN10ButtonMeta6setPosEN4core8vector2dIiEENS1_IjEEi(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.4.0.extract.shift = lshr i64 %1, 32
  %.sroa.3.0.extract.shift = lshr i64 %2, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 2 uses
  %.sroa.04.0.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32  ; 2 uses
  %i.a = udiv i32 %.sroa.0.0.extract.trunc, 3     ; 2 uses
  %i.b = udiv i32 %.sroa.3.0.extract.trunc, 3     ; 2 uses
  %i.c = icmp sgt i32 %i.a, %.sroa.04.0.extract.trunc
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i32 %i.a, 1
  %i.e = icmp samesign ugt i32 %i.d, %.sroa.04.0.extract.trunc
  %. = select i1 %i.e, float 5.000000e-01, float 1.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi float [ %., %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  store float %.sink, ptr %0, align 4, !tbaa !11
  %i.f = icmp sgt i32 %i.b, %.sroa.4.0.extract.trunc
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !14
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = shl nuw nsw i32 %i.b, 1
  %i.i = icmp samesign ugt i32 %i.h, %.sroa.4.0.extract.trunc
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float 5.000000e-01, ptr %i.j, align 4, !tbaa !14
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.k = phi float [ 5.000000e-01, %bb.f ], [ 1.000000e+00, %bb.g ], [ 0.000000e+00, %bb.d ]
  %i.l = bitcast i64 %1 to <2 x i32>
  %i.m = sitofp <2 x i32> %i.l to <2 x float>
  %i.n = uitofp nsz i32 %.sroa.0.0.extract.trunc to float
  %i.o = insertelement <2 x float> poison, float %.sink, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.k, i64 1
  %i.q = fneg nsz <2 x float> %i.p
  %i.r = sitofp nsz i32 %3 to float
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = uitofp nsz i32 %.sroa.3.0.extract.trunc to float
  %i.u = insertelement <2 x float> poison, float %i.n, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.v, <2 x float> %i.m)
  %i.x = insertelement <2 x float> poison, float %i.r, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fdiv nsz <2 x float> %i.w, %i.y
  store <2 x float> %i.z, ptr %i.s, align 4, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN12ButtonLayout13isButtonValidE19touch_gui_button_id(i8 noundef zeroext %0) local_unnamed_addr #3 align 2 {
bb.a:
  %spec.select = icmp ult i8 %0, 19
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12ButtonLayout15isButtonAllowedE19touch_gui_button_id(i8 noundef zeroext %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %or.cond = icmp ult i8 %0, 2
  br i1 %or.cond, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr @g_settings, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 23, ptr %i.b, align 8, !tbaa !21
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %1, align 8, !tbaa !23
  %i.f = load i64, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.e, ptr noundef nonnull align 1 dereferenceable(23) @.str.67, i64 23, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !26
  %i.h = load ptr, ptr %1, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8Settings3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %.noexc
  %i.k = load ptr, ptr @_ZL17buttons_crosshair, align 8, !tbaa !27 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26   ; 3 uses
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #27
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !23
  %bcmp.i = call i32 @bcmp(ptr %i.q, ptr nonnull %i.k, i64 %i.m)
  %i.r = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.s = phi i1 [ false, %bb.b ], [ %i.r, %bb.d ], [ true, %bb.c ]
  %i.t = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.v = load i64, ptr %i.d, align 8, !tbaa !25
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.k

bb.e:                                             ; preds = %.noexc.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.f:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.d
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.f
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !25
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.e
  %.pn13 = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ad = icmp eq i8 %0, 5
  br i1 %i.ad, label %.noexc.i20, label %bb.k

.noexc.i20:                                       ; preds = %bb.g
  %i.ae = load ptr, ptr @g_settings, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 30, ptr %i.a, align 8, !tbaa !21
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc21 unwind label %bb.i   ; 2 uses

.noexc21:                                         ; preds = %.noexc.i20
  store ptr %i.ag, ptr %2, align 8, !tbaa !23
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.ag, ptr noundef nonnull align 1 dereferenceable(30) @.str.68, i64 30, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !26
  %i.aj = load ptr, ptr %2, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.al = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.j
end_hunk_0
