inline.NumInlined: 873
inline.NumDeleted: 360
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::vector.85" = type { %"struct.std::_Vector_base.86" }
%"struct.std::_Vector_base.86" = type { %"struct.std::_Vector_base<const Assimp::FBX::Connection *, std::allocator<const Assimp::FBX::Connection *>>::_Vector_impl" }
%"struct.std::_Vector_base<const Assimp::FBX::Connection *, std::allocator<const Assimp::FBX::Connection *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const Assimp::FBX::Connection *, std::allocator<const Assimp::FBX::Connection *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const Assimp::FBX::Connection *, std::allocator<const Assimp::FBX::Connection *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, const Assimp::FBX::LayeredTexture *>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, const Assimp::FBX::LayeredTexture *>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }
%"class.std::tuple.137" = type { %"struct.std::_Tuple_impl.138" }
%"struct.std::_Tuple_impl.138" = type { %"struct.std::_Head_base.139" }
%"struct.std::_Head_base.139" = type { ptr }
%"class.std::tuple.140" = type { i8 }
%"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, const Assimp::FBX::Texture *>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, const Assimp::FBX::Texture *>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev = comdat any

$_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev = comdat any

$_ZN6Assimp6Logger12verboseDebugIJRA78_KcPS2_EEEvDpOT_ = comdat any

$__clang_call_terminate = comdat any

$_ZN6Assimp3FBX8MaterialD2Ev = comdat any

$_ZN6Assimp3FBX8MaterialD0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN6Assimp3FBX6ObjectD2Ev = comdat any

$_ZN6Assimp3FBX6ObjectD0Ev = comdat any

$_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_ = comdat any

$_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSF_10_Hash_nodeISD_Lb1EEEm = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESN_IJEEEEEPSG_DpOT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_ = comdat any

$_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX7TextureEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSF_10_Hash_nodeISD_Lb1EEEm = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESN_IJEEEEEPSG_DpOT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZTVN6Assimp3FBX8MaterialE = comdat any

$_ZTIN6Assimp3FBX6ObjectE = comdat any

$_ZTSN6Assimp3FBX6ObjectE = comdat any

$_ZTIN6Assimp3FBX8MaterialE = comdat any

$_ZTSN6Assimp3FBX8MaterialE = comdat any

$_ZTVN6Assimp3FBX6ObjectE = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTIN6Assimp3FBX8PropertyE = comdat any

$_ZTSN6Assimp3FBX8PropertyE = comdat any

$_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE = comdat any

$_ZTSN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE = comdat any

@_ZTVN6Assimp3FBX8MaterialE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6Assimp3FBX8MaterialE, ptr @_ZN6Assimp3FBX8MaterialD2Ev, ptr @_ZN6Assimp3FBX8MaterialD0Ev] }, comdat, align 8
@.str = private unnamed_addr constant [13 x i8] c"ShadingModel\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"MultiLayer\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"shading mode not specified, assuming phong\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"phong\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Material.FbxSurfacePhong\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Material.FbxSurfaceLambert\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"shading mode not recognized: \00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"failed to read source object for texture link, ignoring\00", align 1
@_ZTVN6Assimp3FBX7TextureE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6Assimp3FBX7TextureE, ptr @_ZN6Assimp3FBX7TextureD2Ev, ptr @_ZN6Assimp3FBX7TextureD0Ev] }, align 8
@_ZTVN6Assimp3FBX14LayeredTextureE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6Assimp3FBX14LayeredTextureE, ptr @_ZN6Assimp3FBX14LayeredTextureD2Ev, ptr @_ZN6Assimp3FBX14LayeredTextureD0Ev] }, align 8
@.str.9 = private unnamed_addr constant [77 x i8] c"source object for texture link is not a texture or layered texture, ignoring\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"duplicate layered texture link: \00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"duplicate texture link: \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"RelativeFilename\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"ModelUVTranslation\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"ModelUVScaling\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Texture_Alpha_Source\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Texture.FbxFileTexture\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Translation\00", align 1
@_ZTVN6Assimp3FBX5VideoE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6Assimp3FBX5VideoE, ptr @_ZN6Assimp3FBX5VideoD2Ev, ptr @_ZN6Assimp3FBX5VideoD0Ev] }, align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"BlendModes\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Alphas\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Content\00", align 1
@_ZTISt13runtime_error = external constant ptr
@.str.26 = private unnamed_addr constant [54 x i8] c"embedded content is not surrounded by quotation marks\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Corrupted embedded content found\00", align 1
@.str.28 = private unnamed_addr constant [89 x i8] c"binary data array is too short, need five (5) bytes for type signature and element count\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"video content is not raw binary data, ignoring\00", align 1
@.str.30 = private unnamed_addr constant [78 x i8] c"Caught exception in FBXMaterial (likely because content was already loaded): \00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Video.FbxVideo\00", align 1
@_ZTIN6Assimp3FBX7TextureE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX7TextureE, ptr @_ZTIN6Assimp3FBX6ObjectE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp3FBX7TextureE = hidden constant [22 x i8] c"N6Assimp3FBX7TextureE\00", align 1
@_ZTIN6Assimp3FBX6ObjectE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX6ObjectE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp3FBX6ObjectE = linkonce_odr hidden constant [21 x i8] c"N6Assimp3FBX6ObjectE\00", comdat, align 1
@_ZTIN6Assimp3FBX14LayeredTextureE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX14LayeredTextureE, ptr @_ZTIN6Assimp3FBX6ObjectE }, align 8
@_ZTSN6Assimp3FBX14LayeredTextureE = hidden constant [30 x i8] c"N6Assimp3FBX14LayeredTextureE\00", align 1
@_ZTIN6Assimp3FBX5VideoE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX5VideoE, ptr @_ZTIN6Assimp3FBX6ObjectE }, align 8
@_ZTSN6Assimp3FBX5VideoE = hidden constant [20 x i8] c"N6Assimp3FBX5VideoE\00", align 1
@_ZTIN6Assimp3FBX8MaterialE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX8MaterialE, ptr @_ZTIN6Assimp3FBX6ObjectE }, comdat, align 8
@_ZTSN6Assimp3FBX8MaterialE = linkonce_odr hidden constant [23 x i8] c"N6Assimp3FBX8MaterialE\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN6Assimp3FBX6ObjectE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6Assimp3FBX6ObjectE, ptr @_ZN6Assimp3FBX6ObjectD2Ev, ptr @_ZN6Assimp3FBX6ObjectD0Ev] }, comdat, align 8
@.str.32 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTIN6Assimp3FBX8PropertyE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX8PropertyE = linkonce_odr hidden constant [23 x i8] c"N6Assimp3FBX8PropertyE\00", comdat, align 1
@_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, ptr @_ZTIN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE = linkonce_odr hidden constant [46 x i8] c"N6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE\00", comdat, align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8

@_ZN6Assimp3FBX8MaterialC1EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = hidden unnamed_addr alias void (ptr, i64, ptr, ptr, ptr), ptr @_ZN6Assimp3FBX8MaterialC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN6Assimp3FBX7TextureC1EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = hidden unnamed_addr alias void (ptr, i64, ptr, ptr, ptr), ptr @_ZN6Assimp3FBX7TextureC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN6Assimp3FBX7TextureD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp3FBX7TextureD2Ev
@_ZN6Assimp3FBX14LayeredTextureC1EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = hidden unnamed_addr alias void (ptr, i64, ptr, ptr, ptr), ptr @_ZN6Assimp3FBX14LayeredTextureC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN6Assimp3FBX14LayeredTextureD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp3FBX14LayeredTextureD2Ev
@_ZN6Assimp3FBX5VideoC1EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = hidden unnamed_addr alias void (ptr, i64, ptr, ptr, ptr), ptr @_ZN6Assimp3FBX5VideoC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN6Assimp3FBX5VideoD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp3FBX5VideoD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX8MaterialC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(368) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %12 = alloca %"class.std::vector.85", align 8   ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  tail call void @_ZN6Assimp3FBX6ObjectC2EmRKNS0_7ElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX8MaterialE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  store i64 0, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.o, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %._crit_edge.i.i unwind label %bb.h ; 3 uses

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.u, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 12, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not10.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %.lr.ph.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.y, %._crit_edge.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.z, %._crit_edge.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 12)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call i32 @memcmp(ptr noundef %i.ae, ptr noundef nonnull %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ag = add i64 %i.ab, -12
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.ah, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ah, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i, %i.z
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ak, i64 12)
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call i32 @memcmp(ptr noundef nonnull %i.u, ptr noundef %i.an, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.ap = sub i64 12, %i.ak
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ap, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ao, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aq = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.as = load ptr, ptr %i.ar, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.at = phi ptr [ %i.as, %bb.c ], [ null, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i ], [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.au, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.au, ptr noundef nonnull align 1 dereferenceable(10) @.str.1, i64 10, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 10, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i8 0, ptr %i.aw, align 2
  br label %.lr.ph.i.i.i.i113

.lr.ph.i.i.i.i113:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i119
  %.012.i.i.i.i114 = phi ptr [ %.1.i.i.i.i124, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i119 ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.0811.i.i.i.i115 = phi ptr [ %.19.i.i.i.i121, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i119 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i114, i64 40
  %i.ay = load i64, ptr %i.ax, align 8            ; 3 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i136, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i117

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i117: ; preds = %.lr.ph.i.i.i.i113
  %.sroa.speculated.i.i.i.i.i.i.i116 = call i64 @llvm.umin.i64(i64 %i.ay, i64 10)
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i114, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call i32 @memcmp(ptr noundef %i.bb, ptr noundef nonnull %i.au, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i116) #23 ; 2 uses
  %.not.i.i.i.i.i.i.i118 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.i118, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i136, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i119

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i136: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i117, %.lr.ph.i.i.i.i113
  %i.bd = add i64 %i.ay, -10
  %spec.select7.i.i.i.i.i.i.i.i137 = call i64 @llvm.smax.i64(i64 %i.bd, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i138 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i137, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i139 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i138 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i119

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i119: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i136, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i117
  %.0.i.i.i.i.i.i.i120 = phi i32 [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i117 ], [ %.0.i6.i.i.i.i.i.i.i139, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i136 ]
  %i.be = icmp slt i32 %.0.i.i.i.i.i.i.i120, 0    ; 2 uses
  %.19.i.i.i.i121 = select i1 %i.be, ptr %.0811.i.i.i.i115, ptr %.012.i.i.i.i114 ; 5 uses
  %.1.in.v.i.i.i.i122 = select i1 %i.be, i64 24, i64 16
  %.1.in.i.i.i.i123 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i114, i64 %.1.in.v.i.i.i.i122
  %.1.i.i.i.i124 = load ptr, ptr %.1.in.i.i.i.i123, align 8 ; 2 uses
  %.not.i.i.i.i125 = icmp eq ptr %.1.i.i.i.i124, null
  br i1 %.not.i.i.i.i125, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i126, label %.lr.ph.i.i.i.i113, !llvm.loop !3

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i126: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i119
  %i.bf = icmp eq ptr %.19.i.i.i.i121, %i.z
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i126
  %i.bg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i121, i64 40
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i132, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i128

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i128: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i127 = call i64 @llvm.umin.i64(i64 %i.bh, i64 10)
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i121, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call i32 @memcmp(ptr noundef nonnull %i.au, ptr noundef %i.bk, i64 noundef %.sroa.speculated.i.i.i.i.i.i127) #23 ; 2 uses
  %.not.i.i.i.i.i.i129 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i129, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i132, label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i130

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i132: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i128, %bb.d
  %i.bm = sub i64 10, %i.bh
  %spec.select7.i.i.i.i.i.i.i133 = call i64 @llvm.smax.i64(i64 %i.bm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i134 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i133, i64 2147483647)
  %.0.i6.i.i.i.i.i.i135 = trunc nsw i64 %.08.i.i.i.i.i.i.i134 to i32
  br label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i130

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i130: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i132, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i128
  %.0.i.i.i.i.i.i131 = phi i32 [ %i.bl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i128 ], [ %.0.i6.i.i.i.i.i.i135, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i132 ]
  %i.bn = icmp slt i32 %.0.i.i.i.i.i.i131, 0
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread: ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i130, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.ph = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.at, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i126 ], [ %i.at, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX8MaterialC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.not.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 4 uses
  %i.gy = load atomic i64, ptr %i.gx acquire, align 8 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 4294967297
  %i.ha = trunc i64 %i.gy to i32                  ; 2 uses
  br i1 %i.gz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.gx, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  store i32 0, ptr %i.hb, align 4
  %i.hc = load ptr, ptr %i.gw, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #23, !inline_history !14
  %i.hf = load ptr, ptr %i.gw, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #23, !inline_history !14
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.hi = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.hi, 0
  br i1 %.not.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hj = add nsw i32 %i.ha, -1
  store i32 %i.hj, ptr %i.gx, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.hk = atomicrmw volatile add ptr %i.gx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i = phi i32 [ %i.ha, %bb.am ], [ %i.hk, %bb.an ]
  %i.hl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hl, label %bb.ao, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #23
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hn = load i64, ptr %i.hm, align 8
  invoke void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.85") align 8 %12, ptr noundef nonnull align 8 dereferenceable(368) %3, i64 noundef %i.hn)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ho = load ptr, ptr %12, align 8              ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8            ; 2 uses
  %.not262291 = icmp eq ptr %i.ho, %i.hq
  br i1 %.not262291, label %._crit_edge295, label %.lr.ph294

.lr.ph294:                                        ; preds = %bb.ap
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.at

._crit_edge295.loopexit:                          ; preds = %bb.bx
  %.pre298 = load ptr, ptr %12, align 8
  br label %._crit_edge295

._crit_edge295:                                   ; preds = %._crit_edge295.loopexit, %bb.ap
  %i.hz = phi ptr [ %.pre298, %._crit_edge295.loopexit ], [ %i.ho, %bb.ap ] ; 3 uses
  %.not.i.i.i178 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge295
  %i.ia = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.hz to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ie) #24
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit: ; preds = %._crit_edge295, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.if = load ptr, ptr %9, align 8               ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.gc
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit
  %i.ih = load i64, ptr %i.gc, align 8
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit165
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ca

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.at:                                            ; preds = %.lr.ph294, %bb.bx
  %.sroa.0254.0292 = phi ptr [ %i.ho, %.lr.ph294 ], [ %i.lu, %bb.bx ] ; 2 uses
  %i.il = load ptr, ptr %.sroa.0254.0292, align 8 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 6 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 3 uses
  %i.io = load i64, ptr %i.in, align 8
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %bb.bx, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iq = invoke noundef ptr @_ZNK6Assimp3FBX10Connection12SourceObjectEv(ptr noundef nonnull align 8 dereferenceable(64) %i.il)
          to label %bb.av unwind label %bb.ax     ; 5 uses

bb.av:                                            ; preds = %bb.au
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %.noexc.i183, label %bb.ba

.noexc.i183:                                      ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr %i.hx, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 55, ptr %i.b, align 8
  %i.is = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc184 unwind label %bb.ay ; 3 uses

.noexc184:                                        ; preds = %.noexc.i183
  store ptr %i.is, ptr %13, align 8
  %i.it = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.it, ptr %i.hx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.is, ptr noundef nonnull align 1 dereferenceable(55) @.str.8, i64 55, i1 false)
  store i64 %i.it, ptr %i.hy, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.it
  store i8 0, ptr %i.iu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %2)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %.noexc184
  %i.iv = load ptr, ptr %13, align 8              ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.hx
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.aw
  %i.ix = load i64, ptr %i.hx, align 8
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.bx

bb.ax:                                            ; preds = %bb.au
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ay:                                            ; preds = %.noexc.i183
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

bb.az:                                            ; preds = %.noexc184
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jc = load ptr, ptr %13, align 8              ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.hx
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.az
  %i.je = load i64, ptr %i.hx, align 8
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189, %bb.ay
  %.pn99 = phi { ptr, i32 } [ %i.ja, %bb.ay ], [ %i.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ], [ %i.jb, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.by

bb.ba:                                            ; preds = %bb.av
  %i.jg = load ptr, ptr %i.iq, align 8            ; 2 uses
  %.not263 = icmp eq ptr %i.jg, getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX7TextureE, i32 0, i32 0, i32 2)
  br i1 %.not263, label %bb.bo, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not266 = icmp eq ptr %i.jg, getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX14LayeredTextureE, i32 0, i32 0, i32 2)
  br i1 %.not266, label %bb.bf, label %.noexc.i193

.noexc.i193:                                      ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %i.hr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 76, ptr %i.a, align 8
  %i.jh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc194 unwind label %bb.bd ; 3 uses

.noexc194:                                        ; preds = %.noexc.i193
  store ptr %i.jh, ptr %14, align 8
  %i.ji = load i64, ptr %i.a, align 8             ; 3 uses
  store i64 %i.ji, ptr %i.hr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %i.jh, ptr noundef nonnull align 1 dereferenceable(76) @.str.9, i64 76, i1 false)
  store i64 %i.ji, ptr %i.hs, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.ji
  store i8 0, ptr %i.jj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %2)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %.noexc194
  %i.jk = load ptr, ptr %14, align 8              ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.hr
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.bc
  %i.jm = load i64, ptr %i.hr, align 8
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bx

bb.bd:                                            ; preds = %.noexc.i193
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

bb.be:                                            ; preds = %.noexc194
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = load ptr, ptr %14, align 8              ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.hr
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.be
  %i.js = load i64, ptr %i.hr, align 8
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199, %bb.bd
  %.pn91 = phi { ptr, i32 } [ %i.jo, %bb.bd ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199 ], [ %i.jp, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.by

bb.bf:                                            ; preds = %bb.bb
  %i.ju = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.im)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit unwind label %bb.bl

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit: ; preds = %bb.bf
  %.not267 = icmp eq ptr %i.ju, null
  br i1 %.not267, label %bb.bn, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.jv = load ptr, ptr %i.im, align 8, !noalias !15
  %i.jw = load i64, ptr %i.in, align 8, !noalias !15 ; 3 uses
  store ptr %i.ht, ptr %15, align 8, !alias.scope !18
  store i64 0, ptr %i.hu, align 8, !alias.scope !18
  store i8 0, ptr %i.ht, align 8, !alias.scope !18
  %i.jx = add i64 %i.jw, 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.jx)
          to label %bb.bh unwind label %.loopexit

bb.bh:                                            ; preds = %bb.bg
  %i.jy = load i64, ptr %i.hu, align 8, !alias.scope !18
  %i.jz = and i64 %i.jy, -32
  %i.ka = icmp eq i64 %i.jz, 4611686018427387872
  br i1 %i.ka, label %.invoke.i.i209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i206: ; preds = %bb.bh
  %i.kb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.10, i64 noundef 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i207 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i207: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i206
  %i.kc = load i64, ptr %i.hu, align 8, !alias.scope !18
  %i.kd = sub i64 4611686018427387903, %i.kc
  %i.ke = icmp ult i64 %i.kd, %i.jw
  br i1 %i.ke, label %.invoke.i.i209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i208

.invoke.i.i209:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i207, %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #26
          to label %.cont.i.i210 unwind label %.loopexit.split-lp

.cont.i.i210:                                     ; preds = %.invoke.i.i209
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i207
  %i.kf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.jv, i64 noundef %i.jw)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit213 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i208
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp:                               ; preds = %.invoke.i.i209
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.kg = load ptr, ptr %15, align 8, !alias.scope !18 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.ht
  br i1 %i.kh, label %.body211, label %.body211.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit213: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i208
  invoke void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull %2)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit213
  %i.ki = load ptr, ptr %15, align 8              ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.ht
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %bb.bj
  %i.kk = load i64, ptr %i.ht, align 8
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bn, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bl:                                            ; preds = %bb.bf
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bm:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit213
  %i.ko = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kp = load ptr, ptr %15, align 8              ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.ht
  br i1 %i.kq, label %.body211, label %.body211.sink.split

.body211.sink.split:                              ; preds = %bb.bm, %bb.bi
  %.sink374 = phi ptr [ %i.kg, %bb.bi ], [ %i.kp, %bb.bm ]
  %.pn93.ph = phi { ptr, i32 } [ %lpad.phi, %bb.bi ], [ %i.ko, %bb.bm ]
  %i.kr = load i64, ptr %i.ht, align 8
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %.sink374, i64 noundef %i.ks) #24
  br label %.body211

.body211:                                         ; preds = %.body211.sink.split, %bb.bm, %bb.bi
  %.pn93 = phi { ptr, i32 } [ %lpad.phi, %bb.bi ], [ %i.ko, %bb.bm ], [ %.pn93.ph, %.body211.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.by

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit
  %i.kt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.im)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit unwind label %bb.bk

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit: ; preds = %bb.bn
  store ptr %i.iq, ptr %i.kt, align 8
  invoke void @_ZN6Assimp3FBX14LayeredTexture11fillTextureERKNS0_8DocumentE(ptr noundef nonnull align 8 dereferenceable(88) %i.iq, ptr noundef nonnull align 8 dereferenceable(368) %3)
          to label %bb.bx unwind label %bb.bk

bb.bo:                                            ; preds = %bb.ba
  %i.ku = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.im)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit unwind label %bb.bu

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit: ; preds = %bb.bo
  %.not264 = icmp eq ptr %i.ku, null
  br i1 %.not264, label %bb.bw, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.kv = load ptr, ptr %i.im, align 8, !noalias !21
  %i.kw = load i64, ptr %i.in, align 8, !noalias !21 ; 3 uses
  store ptr %i.hv, ptr %16, align 8, !alias.scope !24
  store i64 0, ptr %i.hw, align 8, !alias.scope !24
  store i8 0, ptr %i.hv, align 8, !alias.scope !24
  %i.kx = add i64 %i.kw, 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.kx)
          to label %bb.bq unwind label %.loopexit268

bb.bq:                                            ; preds = %bb.bp
  %i.ky = load i64, ptr %i.hw, align 8, !alias.scope !24
  %i.kz = add i64 %i.ky, -4611686018427387880
  %i.la = icmp ult i64 %i.kz, 24
  br i1 %i.la, label %.invoke.i.i228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i225: ; preds = %bb.bq
  %i.lb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.11, i64 noundef 24)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i226 unwind label %.loopexit268 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i226: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i225
  %i.lc = load i64, ptr %i.hw, align 8, !alias.scope !24
  %i.ld = sub i64 4611686018427387903, %i.lc
  %i.le = icmp ult i64 %i.ld, %i.kw
  br i1 %i.le, label %.invoke.i.i228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i227

.invoke.i.i228:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i226, %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #26
          to label %.cont.i.i229 unwind label %.loopexit.split-lp269

.cont.i.i229:                                     ; preds = %.invoke.i.i228
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i226
  %i.lf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.kv, i64 noundef %i.kw)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit232 unwind label %.loopexit268 ; 0 uses

.loopexit268:                                     ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i227
  %lpad.loopexit270 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp269:                            ; preds = %.invoke.i.i228
  %lpad.loopexit.split-lp271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %.loopexit.split-lp269, %.loopexit268
  %lpad.phi272 = phi { ptr, i32 } [ %lpad.loopexit270, %.loopexit268 ], [ %lpad.loopexit.split-lp271, %.loopexit.split-lp269 ] ; 2 uses
  %i.lg = load ptr, ptr %16, align 8, !alias.scope !24 ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.hv
  br i1 %i.lh, label %.body230, label %.body230.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit232: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i227
  invoke void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull %2)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit232
  %i.li = load ptr, ptr %16, align 8              ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.hv
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.bs
  %i.lk = load i64, ptr %i.hv, align 8
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bw
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bu:                                            ; preds = %bb.bo
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bv:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit232
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lp = load ptr, ptr %16, align 8              ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.hv
  br i1 %i.lq, label %.body230, label %.body230.sink.split

.body230.sink.split:                              ; preds = %bb.bv, %bb.br
  %.sink377 = phi ptr [ %i.lg, %bb.br ], [ %i.lp, %bb.bv ]
  %.pn86.ph = phi { ptr, i32 } [ %lpad.phi272, %bb.br ], [ %i.lo, %bb.bv ]
  %i.lr = load i64, ptr %i.hv, align 8
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %.sink377, i64 noundef %i.ls) #24
  br label %.body230

.body230:                                         ; preds = %.body230.sink.split, %bb.bv, %bb.br
  %.pn86 = phi { ptr, i32 } [ %lpad.phi272, %bb.br ], [ %i.lo, %bb.bv ], [ %.pn86.ph, %.body230.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.by

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit
  %i.lt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX7TextureEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.im)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit unwind label %bb.bt

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit: ; preds = %bb.bw
  store ptr %i.iq, ptr %i.lt, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit, %bb.at
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0254.0292, i64 8 ; 2 uses
  %.not262 = icmp eq ptr %i.lu, %i.hq
  br i1 %.not262, label %._crit_edge295.loopexit, label %bb.at

bb.by:                                            ; preds = %bb.bk, %bb.bl, %.body211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %.body230, %bb.bu, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %bb.ax
  %.pn99.pn = phi { ptr, i32 } [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %i.iz, %bb.ax ], [ %i.kn, %bb.bl ], [ %.pn91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ], [ %i.km, %bb.bk ], [ %.pn93, %.body211 ], [ %i.lm, %bb.bt ], [ %.pn86, %.body230 ], [ %i.ln, %bb.bu ]
  %i.lv = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i240 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.i240, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit241, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = ptrtoint ptr %i.lv to i64
  %i.ma = sub i64 %i.ly, %i.lz
  call void @_ZdlPvm(ptr noundef nonnull %i.lv, i64 noundef %i.ma) #24
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit241

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit241: ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ca

bb.ca:                                            ; preds = %bb.as, %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit241, %bb.ar, %.body, %bb.x
  %i.mb = phi ptr [ %i.fd, %.body ], [ %i.gc, %bb.ar ], [ %i.ds, %bb.x ], [ %i.gc, %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit241 ], [ %i.gc, %bb.as ] ; 2 uses
  %.pn99.pn.pn.pn = phi { ptr, i32 } [ %.pn84, %.body ], [ %i.ij, %bb.ar ], [ %i.ep, %bb.x ], [ %.pn99.pn, %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit241 ], [ %i.ik, %bb.as ]
  %i.mc = load ptr, ptr %9, align 8               ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.mb
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.ca
  %i.me = load i64, ptr %i.mb, align 8
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %bb.t, %bb.i, %bb.h
  %.pn99.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.h ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %.pn99.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %i.cx, %bb.t ], [ %i.bw, %bb.i ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.n) #23
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.h) #23
  call void @_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23
  %i.mg = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.e
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.cb
  %i.mi = load i64, ptr %i.e, align 8
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX6ObjectE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8            ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZN6Assimp3FBX6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.mo = load i64, ptr %i.mm, align 8
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mp) #24, !inline_history !27
  br label %_ZN6Assimp3FBX6ObjectD2Ev.exit

_ZN6Assimp3FBX6ObjectD2Ev.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %.pn99.pn.pn.pn.pn.pn.pn
}

declare void @_ZN6Assimp3FBX6ObjectC2EmRKNS0_7ElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.32) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef i32 @_ZN6Assimp3FBX15ParseTokenAsIntERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN6Assimp3FBX16GetRequiredTokenERKNS0_7ElementEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #1

declare void @_ZN6Assimp3FBX18ParseTokenAsStringB5cxx11ERKNS0_5TokenE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #3

declare void @_ZN6Assimp3FBX4Util16GetPropertyTableERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ElementERKNS0_5ScopeEb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEm(ptr dead_on_unwind writable sret(%"class.std::vector.85") align 8, ptr noundef nonnull align 8 dereferenceable(368), i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6Assimp3FBX10Connection12SourceObjectEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX14LayeredTexture11fillTextureERKNS0_8DocumentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(368) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::vector.85", align 8    ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8
  call void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.85") align 8 %2, ptr noundef nonnull align 8 dereferenceable(368) %1, i64 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %2, align 8                ; 4 uses
  %i.g = ptrtoint ptr %i.f to i64
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit, %bb.a
  %.lcssa34 = phi ptr [ %i.f, %bb.a ], [ %i.bk, %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %.lcssa = phi i64 [ %i.g, %bb.a ], [ %i.bm, %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit ]
  %.not.i.i.i = icmp eq ptr %.lcssa34, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %.lcssa
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa34, i64 noundef %i.q) #24
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit
  %i.r = phi ptr [ %i.f, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit ]
  %.043 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.043
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef ptr @_ZNK6Assimp3FBX10Connection12SourceObjectEv(ptr noundef nonnull align 8 dereferenceable(64) %i.t)
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.noexc.i, label %bb.i

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.k, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 55, ptr %i.a, align 8
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc19 unwind label %bb.g   ; 3 uses

.noexc19:                                         ; preds = %.noexc.i
  store ptr %i.w, ptr %3, align 8
  %i.x = load i64, ptr %i.a, align 8              ; 3 uses
  store i64 %i.x, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.w, ptr noundef nonnull align 1 dereferenceable(55) @.str.8, i64 55, i1 false)
  store i64 %i.x, ptr %i.l, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  store i8 0, ptr %i.y, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.z = load ptr, ptr %i.m, align 8, !nonnull !28, !align !29
  invoke void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.z)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %.noexc19
  %i.aa = load ptr, ptr %3, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.k
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.k, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit

bb.f:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %.noexc.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.h:                                             ; preds = %.noexc19
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.k
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.h
  %i.aj = load i64, ptr %i.k, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.ag, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.o

bb.i:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.u, align 8
  %i.am = icmp eq ptr %i.al, getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX7TextureE, i32 0, i32 0, i32 2)
  %i.an = select i1 %i.am, ptr %i.u, ptr null     ; 2 uses
  %i.ao = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.ap = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.an, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %i.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.i, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit

bb.k:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 6 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.l, label %_ZNKSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i23 = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i23)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #27
          to label %.noexc25 unwind label %.loopexit ; 4 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 2 uses
  store ptr %i.an, ptr %i.be, align 8
  %i.bf = icmp sgt i64 %i.av, 0
  br i1 %i.bf, label %bb.m, label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.m:                                             ; preds = %.noexc25
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.m, %.noexc25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.not.i17.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #24
  br label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.bd, ptr %i.h, align 8
  store ptr %i.bg, ptr %i.i, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bh, ptr %i.j, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.j, %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = add nuw i64 %.043, 1                    ; 2 uses
  %i.bj = load ptr, ptr %i.d, align 8
  %i.bk = load ptr, ptr %2, align 8               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3
  %i.bp = icmp ult i64 %i.bi, %i.bo
  br i1 %i.bp, label %bb.c, label %._crit_edge, !llvm.loop !30

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bq = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit27, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #24
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit27

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit27: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 56) #24
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !31

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 56) #24
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !32

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX7TextureC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(248) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(368) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %16 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::vector.85", align 8   ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  tail call void @_ZN6Assimp3FBX6ObjectC2EmRKNS0_7ElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX7TextureE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store float 0.000000e+00, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  store ptr %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  store ptr %i.o, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  store ptr %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store i64 0, ptr %i.s, align 8
  store i8 0, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  store ptr %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  store i64 0, ptr %i.v, align 8
  store i8 0, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store ptr null, ptr %i.x, align 8
  %i.y = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %._crit_edge.i.i unwind label %bb.ab ; 3 uses

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.z, ptr %5, align 8
  store i32 1701869908, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 4, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i8 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 14 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %.lr.ph.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.ad, %._crit_edge.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.ae, %._crit_edge.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 4)
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i32 @memcmp(ptr noundef %i.aj, ptr noundef nonnull %i.z, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.al = add i64 %i.ag, -4
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.am = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.am, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.am, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.an = icmp eq ptr %.19.i.i.i.i, %i.ae
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ap, i64 4)
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call i32 @memcmp(ptr noundef nonnull %i.z, ptr noundef %i.as, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.au = sub i64 4, %i.ap
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.au, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.at, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.av = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.ay = phi ptr [ %i.ax, %bb.c ], [ null, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i ], [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.az, ptr %6, align 8
  store i64 7308604759629130054, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.bb, align 8
  br label %.lr.ph.i.i.i.i146

.lr.ph.i.i.i.i146:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i152
  %.012.i.i.i.i147 = phi ptr [ %.1.i.i.i.i157, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i152 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.0811.i.i.i.i148 = phi ptr [ %.19.i.i.i.i154, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i152 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i147, i64 40
  %i.bd = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i169, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i150

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i150: ; preds = %.lr.ph.i.i.i.i146
  %.sroa.speculated.i.i.i.i.i.i.i149 = call i64 @llvm.umin.i64(i64 %i.bd, i64 8)
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i147, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i32 @memcmp(ptr noundef %i.bg, ptr noundef nonnull %i.az, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i149) #23 ; 2 uses
  %.not.i.i.i.i.i.i.i151 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i.i151, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i169, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i152

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i169: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i150, %.lr.ph.i.i.i.i146
  %i.bi = add i64 %i.bd, -8
  %spec.select7.i.i.i.i.i.i.i.i170 = call i64 @llvm.smax.i64(i64 %i.bi, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i171 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i170, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i172 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i171 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i152

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i152: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i169, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i150
  %.0.i.i.i.i.i.i.i153 = phi i32 [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i150 ], [ %.0.i6.i.i.i.i.i.i.i172, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i169 ]
  %i.bj = icmp slt i32 %.0.i.i.i.i.i.i.i153, 0    ; 2 uses
  %.19.i.i.i.i154 = select i1 %i.bj, ptr %.0811.i.i.i.i148, ptr %.012.i.i.i.i147 ; 5 uses
  %.1.in.v.i.i.i.i155 = select i1 %i.bj, i64 24, i64 16
  %.1.in.i.i.i.i156 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i147, i64 %.1.in.v.i.i.i.i155
  %.1.i.i.i.i157 = load ptr, ptr %.1.in.i.i.i.i156, align 8 ; 2 uses
  %.not.i.i.i.i158 = icmp eq ptr %.1.i.i.i.i157, null
  br i1 %.not.i.i.i.i158, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i159, label %.lr.ph.i.i.i.i146, !llvm.loop !3

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i159: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i152
  %i.bk = icmp eq ptr %.19.i.i.i.i154, %i.ae
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i159
  %i.bl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i154, i64 40
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i165, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i161

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i161: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i160 = call i64 @llvm.umin.i64(i64 %i.bm, i64 8)
  %i.bo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i154, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call i32 @memcmp(ptr noundef nonnull %i.az, ptr noundef %i.bp, i64 noundef %.sroa.speculated.i.i.i.i.i.i160) #23 ; 2 uses
  %.not.i.i.i.i.i.i162 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i162, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i165, label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i163

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i165: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i161, %bb.d
  %i.br = sub i64 8, %i.bm
  %spec.select7.i.i.i.i.i.i.i166 = call i64 @llvm.smax.i64(i64 %i.br, i64 -2147483648)
  %.08.i.i.i.i.i.i.i167 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i166, i64 2147483647)
  %.0.i6.i.i.i.i.i.i168 = trunc nsw i64 %.08.i.i.i.i.i.i.i167 to i32
  br label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i163

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i163: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i165, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i161
  %.0.i.i.i.i.i.i164 = phi i32 [ %i.bq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i161 ], [ %.0.i6.i.i.i.i.i.i168, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i165 ]
  %i.bs = icmp slt i32 %.0.i.i.i.i.i.i164, 0
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX7TextureC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.ei

._crit_edge.i.i459:                               ; preds = %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  %i.pt = load ptr, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.pu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.pu, ptr %20, align 8
  store i64 7957695015159099218, ptr %i.pu, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 8, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i8 0, ptr %i.pw, align 8
  %i.px = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.pt, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %.noexc470 unwind label %bb.dq ; 2 uses

.noexc470:                                        ; preds = %._crit_edge.i.i459
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %.noexc470
  %i.pz = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.px, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #23 ; 2 uses
  %i.qa = icmp eq ptr %i.pz, null
  br i1 %i.qa, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.sroa.10.0..sroa_idx.i464 = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %.sroa.10.0.copyload.i465 = load float, ptr %.sroa.10.0..sroa_idx.i464, align 4
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %.noexc470, %bb.dm
  %.2 = phi i1 [ true, %bb.dn ], [ false, %.noexc470 ], [ false, %bb.dm ]
  %.sroa.10.0.i466 = phi float [ %.sroa.10.0.copyload.i465, %bb.dn ], [ 0.000000e+00, %.noexc470 ], [ 0.000000e+00, %bb.dm ]
  %i.qb = load ptr, ptr %20, align 8              ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.pu
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472: ; preds = %bb.do
  %i.qd = load i64, ptr %i.pu, align 8
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qe) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br i1 %.2, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474
  store float %.sroa.10.0.i466, ptr %i.j, align 8
  br label %bb.dr

bb.dq:                                            ; preds = %._crit_edge.i.i459
  %i.qf = landingpad { ptr, i32 }
          cleanup
  %i.qg = load ptr, ptr %20, align 8              ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.pu
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %bb.dq
  %i.qi = load i64, ptr %i.pu, align 8
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.ei

bb.dr:                                            ; preds = %bb.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474
  %i.qk = load ptr, ptr %3, align 8, !nonnull !28
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.qm = load i8, ptr %i.ql, align 1, !range !33, !noundef !28
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %bb.ds, label %bb.eh

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qp = load i64, ptr %i.qo, align 8
  invoke void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.85") align 8 %21, ptr noundef nonnull align 8 dereferenceable(368) %3, i64 noundef %i.qp)
          to label %bb.dt unwind label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.qq = load ptr, ptr %21, align 8              ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8            ; 2 uses
  %.not525530 = icmp eq ptr %i.qq, %i.qs
  br i1 %.not525530, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dt
  %i.qt = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %bb.dw

._crit_edge.loopexit:                             ; preds = %bb.ee
  %.pre536 = load ptr, ptr %21, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.dt
  %i.qv = phi ptr [ %.pre536, %._crit_edge.loopexit ], [ %i.qq, %bb.dt ] ; 3 uses
  %.not.i.i.i478 = icmp eq ptr %i.qv, null
  br i1 %.not.i.i.i478, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit, label %bb.du

bb.du:                                            ; preds = %._crit_edge
  %i.qw = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8
  %i.qy = ptrtoint ptr %i.qx to i64
  %i.qz = ptrtoint ptr %i.qv to i64
  %i.ra = sub i64 %i.qy, %i.qz
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.ra) #24
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.eh

bb.dv:                                            ; preds = %bb.ds
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.dw:                                            ; preds = %.lr.ph, %bb.ee
  %.sroa.0504.0531 = phi ptr [ %i.qq, %.lr.ph ], [ %i.ru, %bb.ee ] ; 2 uses
  %i.rc = load ptr, ptr %.sroa.0504.0531, align 8
  %i.rd = invoke noundef ptr @_ZNK6Assimp3FBX10Connection12SourceObjectEv(ptr noundef nonnull align 8 dereferenceable(64) %i.rc)
          to label %bb.dx unwind label %bb.dz     ; 3 uses

bb.dx:                                            ; preds = %bb.dw
  %i.re = icmp eq ptr %i.rd, null
  br i1 %i.re, label %.noexc.i480, label %bb.ec

.noexc.i480:                                      ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store ptr %i.qt, ptr %22, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 55, ptr %i.a, align 8
  %i.rf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc481 unwind label %bb.ea ; 3 uses

.noexc481:                                        ; preds = %.noexc.i480
  store ptr %i.rf, ptr %22, align 8
  %i.rg = load i64, ptr %i.a, align 8             ; 3 uses
  store i64 %i.rg, ptr %i.qt, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.rf, ptr noundef nonnull align 1 dereferenceable(55) @.str.8, i64 55, i1 false)
  store i64 %i.rg, ptr %i.qu, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rg
  store i8 0, ptr %i.rh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull %2)
          to label %bb.dy unwind label %bb.eb

bb.dy:                                            ; preds = %.noexc481
  %i.ri = load ptr, ptr %22, align 8              ; 2 uses
  %i.rj = icmp eq ptr %i.ri, %i.qt
  br i1 %i.rj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483: ; preds = %bb.dy
  %i.rk = load i64, ptr %i.qt, align 8
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485: ; preds = %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.ee

bb.dz:                                            ; preds = %bb.dw
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ea:                                            ; preds = %.noexc.i480
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488

bb.eb:                                            ; preds = %.noexc481
  %i.ro = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rp = load ptr, ptr %22, align 8              ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.qt
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486: ; preds = %bb.eb
  %i.rr = load i64, ptr %i.qt, align 8
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486, %bb.ea
  %.pn126 = phi { ptr, i32 } [ %i.rn, %bb.ea ], [ %i.ro, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486 ], [ %i.ro, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.ef

bb.ec:                                            ; preds = %bb.dx
  %i.rt = load ptr, ptr %i.rd, align 8
  %.not527 = icmp eq ptr %i.rt, getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX5VideoE, i32 0, i32 0, i32 2)
  br i1 %.not527, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  store ptr %i.rd, ptr %i.x, align 8
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ec, %bb.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.0504.0531, i64 8 ; 2 uses
  %.not525 = icmp eq ptr %i.ru, %i.qs
  br i1 %.not525, label %._crit_edge.loopexit, label %bb.dw

bb.ef:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488, %bb.dz
  %.pn126.pn = phi { ptr, i32 } [ %.pn126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488 ], [ %i.rm, %bb.dz ]
  %i.rv = load ptr, ptr %21, align 8              ; 3 uses
  %.not.i.i.i489 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i.i489, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit490, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.rw = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = ptrtoint ptr %i.rx to i64
  %i.rz = ptrtoint ptr %i.rv to i64
  %i.sa = sub i64 %i.ry, %i.rz
  call void @_ZdlPvm(ptr noundef nonnull %i.rv, i64 noundef %i.sa) #24
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit490

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit490: ; preds = %bb.ef, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.ei

bb.eh:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit, %bb.dr
  ret void

bb.ei:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477, %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit490, %bb.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, %bb.ac, %bb.af, %bb.aq, %bb.bb, %bb.bi, %bb.bp, %bb.ca, %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, %bb.ae, %bb.ad, %bb.ab
  %.pn126.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ih, %bb.ab ], [ %i.rb, %bb.dv ], [ %.pn126.pn, %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit490 ], [ %i.ii, %bb.ac ], [ %i.ij, %bb.ad ], [ %i.qf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477 ], [ %i.ik, %bb.ae ], [ %i.po, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458 ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436 ], [ %i.mj, %bb.cm ], [ %i.li, %bb.ca ], [ %i.kv, %bb.bp ], [ %i.kq, %bb.bi ], [ %i.kl, %bb.bb ], [ %i.jl, %bb.aq ], [ %i.il, %bb.af ], [ %i.ow, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439 ]
  call void @_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #23
  %i.sb = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.u
  br i1 %i.sc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491: ; preds = %bb.ei
  %i.sd = load i64, ptr %i.u, align 8
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.se) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491
  %i.sf = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.r
  br i1 %i.sg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493
  %i.sh = load i64, ptr %i.r, align 8
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.si) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494
  %i.sj = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.sk = icmp eq ptr %i.sj, %i.o
  br i1 %i.sk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496
  %i.sl = load i64, ptr %i.o, align 8
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497
  %i.sn = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.so = icmp eq ptr %i.sn, %i.l
  br i1 %i.so, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499
  %i.sp = load i64, ptr %i.l, align 8
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX6ObjectE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8            ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.su = icmp eq ptr %i.ss, %i.st
  br i1 %i.su, label %_ZN6Assimp3FBX6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502
  %i.sv = load i64, ptr %i.st, align 8
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sw) #24, !inline_history !27
  br label %_ZN6Assimp3FBX6ObjectD2Ev.exit

_ZN6Assimp3FBX6ObjectD2Ev.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %.pn126.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp3FBX7TextureD2Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(248) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !14
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !14
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX6ObjectE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN6Assimp3FBX6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #24, !inline_history !27
  br label %_ZN6Assimp3FBX6ObjectD2Ev.exit

_ZN6Assimp3FBX6ObjectD2Ev.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp3FBX7TextureD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN6Assimp3FBX7TextureD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 248) #24
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX14LayeredTextureC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  tail call void @_ZN6Assimp3FBX6ObjectC2EmRKNS0_7ElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX14LayeredTextureE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store float 1.000000e+00, ptr %i.c, align 4
  %i.d = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %._crit_edge.i.i unwind label %bb.i ; 2 uses

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.e, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.e, ptr noundef nonnull align 1 dereferenceable(10) @.str.23, i64 10, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 10, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 0, ptr %i.g, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i

.thread:                                          ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.o

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.i, %._crit_edge.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.j, %._crit_edge.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.l, i64 10)
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call i32 @memcmp(ptr noundef %i.o, ptr noundef nonnull %i.e, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.q = add i64 %i.l, -10
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.r = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i.i = select i1 %i.r, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.r, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.s = icmp eq ptr %.19.i.i.i.i, %i.j
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.u, i64 10)
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call i32 @memcmp(ptr noundef nonnull %i.e, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.z = sub i64 10, %i.u
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.z, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aa = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ null, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i ], [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ae, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ae, ptr noundef nonnull align 1 dereferenceable(6) @.str.24, i64 6, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.ag, align 2
  br label %.lr.ph.i.i.i.i32

.lr.ph.i.i.i.i32:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i38
  %.012.i.i.i.i33 = phi ptr [ %.1.i.i.i.i43, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i38 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.0811.i.i.i.i34 = phi ptr [ %.19.i.i.i.i40, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i38 ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 40
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i55, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i36

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i32
  %.sroa.speculated.i.i.i.i.i.i.i35 = call i64 @llvm.umin.i64(i64 %i.ai, i64 6)
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call i32 @memcmp(ptr noundef %i.al, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i35) #23 ; 2 uses
  %.not.i.i.i.i.i.i.i37 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i37, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i55, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i38

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i55: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i36, %.lr.ph.i.i.i.i32
  %i.an = add i64 %i.ai, -6
  %spec.select7.i.i.i.i.i.i.i.i56 = call i64 @llvm.smax.i64(i64 %i.an, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i57 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i56, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i58 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i57 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i38

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i38: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i55, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i36
  %.0.i.i.i.i.i.i.i39 = phi i32 [ %i.am, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i36 ], [ %.0.i6.i.i.i.i.i.i.i58, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i55 ]
  %i.ao = icmp slt i32 %.0.i.i.i.i.i.i.i39, 0     ; 2 uses
  %.19.i.i.i.i40 = select i1 %i.ao, ptr %.0811.i.i.i.i34, ptr %.012.i.i.i.i33 ; 5 uses
  %.1.in.v.i.i.i.i41 = select i1 %i.ao, i64 24, i64 16
  %.1.in.i.i.i.i42 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 %.1.in.v.i.i.i.i41
  %.1.i.i.i.i43 = load ptr, ptr %.1.in.i.i.i.i42, align 8 ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %.1.i.i.i.i43, null
  br i1 %.not.i.i.i.i44, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i45, label %.lr.ph.i.i.i.i32, !llvm.loop !3

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i45: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i38
  %i.ap = icmp eq ptr %.19.i.i.i.i40, %i.j
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i45
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i40, i64 40
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i51, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i47

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i47: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i46 = call i64 @llvm.umin.i64(i64 %i.ar, i64 6)
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i40, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i32 @memcmp(ptr noundef nonnull %i.ae, ptr noundef %i.au, i64 noundef %.sroa.speculated.i.i.i.i.i.i46) #23 ; 2 uses
  %.not.i.i.i.i.i.i48 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i51, label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i49

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i51: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i47, %bb.d
  %i.aw = sub i64 6, %i.ar
  %spec.select7.i.i.i.i.i.i.i52 = call i64 @llvm.smax.i64(i64 %i.aw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i53 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i52, i64 2147483647)
  %.0.i6.i.i.i.i.i.i54 = trunc nsw i64 %.08.i.i.i.i.i.i.i53 to i32
  br label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i49

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i49: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i47
  %.0.i.i.i.i.i.i50 = phi i32 [ %i.av, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i47 ], [ %.0.i6.i.i.i.i.i.i54, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i51 ]
  %i.ax = icmp slt i32 %.0.i.i.i.i.i.i50, 0
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i49
  %i.ay = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i40, i64 64
  %i.az = load ptr, ptr %i.ay, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.e, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i49, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i45
  %i.ba = phi ptr [ %i.az, %bb.e ], [ null, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i49 ], [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i45 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.bb = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN6Assimp3FBX16GetRequiredTokenERKNS0_7ElementEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i32 noundef 0)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bc = invoke noundef i32 @_ZN6Assimp3FBX15ParseTokenAsIntERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.bb)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store i32 %i.bc, ptr %i.b, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.j:                                             ; preds = %bb.m, %bb.l, %bb.g, %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %.not22 = icmp eq ptr %i.ba, null
  br i1 %.not22, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN6Assimp3FBX16GetRequiredTokenERKNS0_7ElementEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i32 noundef 0)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.bg = invoke noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.bf)
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %bb.m
  store float %i.bg, ptr %i.c, align 4
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n, %bb.k
  ret void

bb.p:                                             ; preds = %bb.j, %bb.i
  %.pn23.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.i ], [ %i.be, %bb.j ]
  %i.bh = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #24
  br label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit: ; preds = %bb.p, %bb.q
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX6ObjectE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN6Assimp3FBX6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit
  %i.br = load i64, ptr %i.bp, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #24, !inline_history !27
  br label %_ZN6Assimp3FBX6ObjectD2Ev.exit

_ZN6Assimp3FBX6ObjectD2Ev.exit:                   ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp3FBX14LayeredTextureD2Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(88) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX6ObjectE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp3FBX6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24, !inline_history !27
  br label %_ZN6Assimp3FBX6ObjectD2Ev.exit

_ZN6Assimp3FBX6ObjectD2Ev.exit:                   ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp3FBX14LayeredTextureD0Ev(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX6ObjectE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp3FBX14LayeredTextureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24, !inline_history !27
  br label %_ZN6Assimp3FBX14LayeredTextureD2Ev.exit

_ZN6Assimp3FBX14LayeredTextureD2Ev.exit:          ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX5VideoC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(368) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %23 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN6Assimp3FBX6ObjectC2EmRKNS0_7ElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX5VideoE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store i64 0, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store i64 0, ptr %i.l, align 8
  store i8 0, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.p = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %._crit_edge.i.i unwind label %bb.t ; 4 uses

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.q, ptr %5, align 8
  store i32 1701869908, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 4, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i8 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 8 uses
  %.not10.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not10.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.u, %._crit_edge.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.v, %._crit_edge.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 4)
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call i32 @memcmp(ptr noundef %i.aa, ptr noundef nonnull %i.q, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ac = add i64 %i.x, -4
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ac, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ad = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.ad, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ad, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.ae = icmp eq ptr %.19.i.i.i.i, %i.v
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 4)
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i32 @memcmp(ptr noundef nonnull %i.q, ptr noundef %i.aj, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.al = sub i64 4, %i.ag
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.am = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.ao = load ptr, ptr %i.an, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %._crit_edge.i.i
  %i.ap = phi ptr [ %i.ao, %bb.c ], [ null, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i ], [ null, %._crit_edge.i.i ], [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.aq, ptr %6, align 8
  store i64 7308604759629130054, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.as, align 8
  %.not911.i = icmp eq ptr %.pre, %i.v
  br i1 %.not911.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.sroa.05.012.i = phi ptr [ %i.ay, %bb.e ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i32 @strncasecmp(ptr noundef %i.au, ptr noundef nonnull %i.aq, i64 noundef 1024) #25
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

bb.e:                                             ; preds = %.lr.ph.i
  %i.ay = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.05.012.i) #25 ; 2 uses
  %.not9.i = icmp eq ptr %i.ay, %i.v
  br i1 %.not9.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %.lr.ph.i, !llvm.loop !34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.e, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %spec.select.i = phi ptr [ %i.ax, %bb.d ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.az, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 16, ptr %i.b, align 8
  %i.ba = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc163 unwind label %bb.u  ; 2 uses

.noexc163:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  store ptr %i.ba, ptr %7, align 8
  %i.bb = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.bb, ptr %i.az, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ba, ptr noundef nonnull align 1 dereferenceable(16) @.str.14, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %7, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.bf = load ptr, ptr %i.t, align 8             ; 3 uses
  %.not10.i.i.i.i165 = icmp eq ptr %i.bf, null
  %.pre343 = load ptr, ptr %7, align 8            ; 4 uses
  br i1 %.not10.i.i.i.i165, label %_ZNK6Assimp3FBX5ScopeixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit193, label %.lr.ph.i.i.i.i166

.lr.ph.i.i.i.i166:                                ; preds = %.noexc163
  %i.bg = load i64, ptr %i.bc, align 8            ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i172, %.lr.ph.i.i.i.i166
  %.012.i.i.i.i167 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i166 ], [ %.1.i.i.i.i177, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i172 ] ; 4 uses
  %.0811.i.i.i.i168 = phi ptr [ %i.v, %.lr.ph.i.i.i.i166 ], [ %.19.i.i.i.i174, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i172 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i167, i64 40
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i169 = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bi) ; 2 uses
  %i.bj = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i169, 0
  br i1 %i.bj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i189, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i170

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i170: ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i167, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call i32 @memcmp(ptr noundef %i.bl, ptr noundef %.pre343, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i169) #23 ; 2 uses
  %.not.i.i.i.i.i.i.i171 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i171, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i189, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i172

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i189: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i170, %bb.f
  %i.bn = sub i64 %i.bi, %i.bg
  %spec.select7.i.i.i.i.i.i.i.i190 = call i64 @llvm.smax.i64(i64 %i.bn, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i191 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i190, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i192 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i191 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i172

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i172: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i189, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i170
  %.0.i.i.i.i.i.i.i173 = phi i32 [ %i.bm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i170 ], [ %.0.i6.i.i.i.i.i.i.i192, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i189 ]
  %i.bo = icmp slt i32 %.0.i.i.i.i.i.i.i173, 0    ; 2 uses
  %.19.i.i.i.i174 = select i1 %i.bo, ptr %.0811.i.i.i.i168, ptr %.012.i.i.i.i167 ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp3FBX5VideoC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cv
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cz:                                            ; preds = %bb.cx, %bb.cw
  %.pn144 = phi { ptr, i32 } [ %i.le, %bb.cx ], [ %i.ld, %bb.cw ]
  invoke void @__cxa_end_catch()
          to label %bb.do unwind label %bb.dp

._crit_edge.i.i298:                               ; preds = %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %bb.cq, %._crit_edge337, %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  %i.lg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.lg, ptr %24, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.lg, ptr noundef nonnull align 1 dereferenceable(14) @.str.31, i64 14, i1 false)
  %i.lh = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 14, ptr %i.lh, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %24, i64 30
  store i8 0, ptr %i.li, align 2
  invoke void @_ZN6Assimp3FBX4Util16GetPropertyTableERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ElementERKNS0_5ScopeEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %23, ptr noundef nonnull align 8 dereferenceable(368) %3, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i1 noundef zeroext false)
          to label %bb.da unwind label %bb.dn

bb.da:                                            ; preds = %._crit_edge.i.i298
  %i.lj = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ll = load <2 x ptr>, ptr %23, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %i.lm = load ptr, ptr %i.lk, align 8            ; 8 uses
  store <2 x ptr> %i.ll, ptr %i.m, align 8
  %.not.i.i.i.i302 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i.i302, label %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8 ; 4 uses
  %i.lo = load atomic i64, ptr %i.ln acquire, align 8 ; 2 uses
  %i.lp = icmp eq i64 %i.lo, 4294967297
  %i.lq = trunc i64 %i.lo to i32                  ; 2 uses
  br i1 %i.lp, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.ln, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lm, i64 12
  store i32 0, ptr %i.lr, align 4
  %i.ls = load ptr, ptr %i.lm, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(16) %i.lm) #23, !inline_history !13
  %i.lv = load ptr, ptr %i.lm, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8
  call void %i.lx(ptr noundef nonnull align 8 dereferenceable(16) %i.lm) #23, !inline_history !13
  br label %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit

bb.dd:                                            ; preds = %bb.db
  %i.ly = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.ly, 0
  br i1 %.not.i.i.i.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lz = add nsw i32 %i.lq, -1
  store i32 %i.lz, ptr %i.ln, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.df:                                            ; preds = %bb.dd
  %i.ma = atomicrmw volatile add ptr %i.ln, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.df, %bb.de
  %.0.i.i.i.i.i.i303 = phi i32 [ %i.lq, %bb.de ], [ %i.ma, %bb.df ]
  %i.mb = icmp eq i32 %.0.i.i.i.i.i.i303, 1
  br i1 %i.mb, label %bb.dg, label %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit, !prof !5

bb.dg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lm) #23
  br label %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit

_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit: ; preds = %bb.da, %bb.dc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.dg
  %i.mc = load ptr, ptr %i.lj, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.mc, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 4 uses
  %i.me = load atomic i64, ptr %i.md acquire, align 8 ; 2 uses
  %i.mf = icmp eq i64 %i.me, 4294967297
  %i.mg = trunc i64 %i.me to i32                  ; 2 uses
  br i1 %i.mf, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.md, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 12
  store i32 0, ptr %i.mh, align 4
  %i.mi = load ptr, ptr %i.mc, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8
  call void %i.mk(ptr noundef nonnull align 8 dereferenceable(16) %i.mc) #23, !inline_history !14
  %i.ml = load ptr, ptr %i.mc, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8
  call void %i.mn(ptr noundef nonnull align 8 dereferenceable(16) %i.mc) #23, !inline_history !14
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dj:                                            ; preds = %bb.dh
  %i.mo = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.mo, 0
  br i1 %.not.i.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.mp = add nsw i32 %i.mg, -1
  store i32 %i.mp, ptr %i.md, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.mq = atomicrmw volatile add ptr %i.md, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i = phi i32 [ %i.mg, %bb.dk ], [ %i.mq, %bb.dl ]
  %i.mr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.mr, label %bb.dm, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.dm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mc) #23
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit, %bb.di, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.dm
  %i.ms = load ptr, ptr %24, align 8              ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.lg
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.mu = load i64, ptr %i.lg, align 8
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  ret void

bb.dn:                                            ; preds = %._crit_edge.i.i298
  %i.mw = landingpad { ptr, i32 }
          cleanup
  %i.mx = load ptr, ptr %24, align 8              ; 2 uses
  %i.my = icmp eq ptr %i.mx, %i.lg
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %bb.dn
  %i.mz = load i64, ptr %i.lg, align 8
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mx, i64 noundef %i.na) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.do

bb.do:                                            ; preds = %bb.u, %bb.cy, %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, %bb.cs, %bb.ar, %bb.ag, %bb.v, %bb.t
  %.merged = phi { ptr, i32 } [ %i.eb, %bb.t ], [ %.pn144, %bb.cz ], [ %i.lf, %bb.cy ], [ %i.ec, %bb.u ], [ %i.mw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309 ], [ %i.ed, %bb.v ], [ %.pn140.pn.pn, %bb.cs ], [ %i.gd, %bb.ar ], [ %i.fd, %bb.ag ]
  call void @_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #23
  %i.nb = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.k
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %bb.do
  %i.nd = load i64, ptr %i.k, align 8
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.ne) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310
  %i.nf = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.h
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312
  %i.nh = load i64, ptr %i.h, align 8
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  %i.nj = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.e
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315
  %i.nl = load i64, ptr %i.e, align 8
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX6ObjectE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.no = load ptr, ptr %i.nn, align 8            ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.nq = icmp eq ptr %i.no, %i.np
  br i1 %i.nq, label %_ZN6Assimp3FBX6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  %i.nr = load i64, ptr %i.np, align 8
  %i.ns = add i64 %i.nr, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.ns) #24, !inline_history !27
  br label %_ZN6Assimp3FBX6ObjectD2Ev.exit

_ZN6Assimp3FBX6ObjectD2Ev.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %.merged

bb.dp:                                            ; preds = %bb.cz
  %i.nt = landingpad { ptr, i32 }
          catch ptr null
  %i.nu = extractvalue { ptr, i32 } %i.nt, 0
  call void @__clang_call_terminate(ptr %i.nu) #28
  unreachable
}

; Function Attrs: noreturn
declare void @_ZN6Assimp3FBX4Util8DOMErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #8

declare noundef i64 @_ZN6Assimp3FBX4Util24ComputeDecodedSizeBase64EPKcm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

declare noundef i64 @_ZN6Assimp3FBX4Util12DecodeBase64EPKcmPhm(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #10

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger12verboseDebugIJRA78_KcPS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(78) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(78) %1) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(78) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA78_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #23
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA78_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA78_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #23
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA78_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp3FBX5VideoD2Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(184) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4
  %i.m = load ptr, ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23, !inline_history !14
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23, !inline_history !14
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.s = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.h ], [ %i.u, %bb.i ]
  %i.v = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.v, label %bb.j, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX6ObjectE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN6Assimp3FBX6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #24, !inline_history !27
  br label %_ZN6Assimp3FBX6ObjectD2Ev.exit

_ZN6Assimp3FBX6ObjectD2Ev.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp3FBX5VideoD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN6Assimp3FBX5VideoD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX8MaterialD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 56) #24
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, %bb.a
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.r = load i64, ptr %i.l, align 8
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #24
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i
  %.06.i.i.i.i3 = phi ptr [ %i.w, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i ], [ %i.v, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit ] ; 4 uses
  %i.w = load ptr, ptr %.06.i.i.i.i3, align 8     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 24 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i.i2
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3, i64 noundef 56) #24
  %.not.i.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i5, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !32

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX14LayeredTextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit
  %i.ad = load ptr, ptr %i.t, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = shl i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ag, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ak = load i64, ptr %i.ae, align 8
  %i.al = shl i64 %i.ak, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #24
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.an = load ptr, ptr %i.am, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.ao, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.an, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #23, !inline_history !14
  %i.aw = load ptr, ptr %i.an, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #23, !inline_history !14
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.az = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.ar, %bb.g ], [ %i.bb, %bb.h ]
  %i.bc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bc, label %bb.i, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #23
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bh = load i64, ptr %i.bf, align 8
  %i.bi = add i64 %i.bh, 1
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX6ObjectE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZN6Assimp3FBX6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bn = load i64, ptr %i.bl, align 8
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #24, !inline_history !27
  br label %_ZN6Assimp3FBX6ObjectD2Ev.exit

_ZN6Assimp3FBX6ObjectD2Ev.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX8MaterialD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN6Assimp3FBX8MaterialD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !37
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX6ObjectE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX6ObjectD0Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6Assimp3FBX6ObjectE, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6Assimp3FBX6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24, !inline_history !27
  br label %_ZN6Assimp3FBX6ObjectD2Ev.exit

_ZN6Assimp3FBX6ObjectD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !38
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !38
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8     ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !39

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !39

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #28
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN6Assimp3FBX14LayeredTextureEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8       ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

end_hunk_3
begin_hunk_4_@_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESN_IJEEEEEPSG_DpOT_:bb.a
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #28
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7TextureEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 48
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.031, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.031, ptr %i.s, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #24
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

declare noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !alias.scope !57
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !alias.scope !57
  store i8 0, ptr %i.k, align 8, !alias.scope !57
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !noalias !57 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !57 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !noalias !57 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %0, align 8, !alias.scope !57 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.k, align 8, !alias.scope !57
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #24
  br label %.body

bb.f:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %bb.d
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %4, align 8
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %4, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aq) #23
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #23
  resume { ptr, i32 } %i.x
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !67
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !67
  store i8 0, ptr %i.a, align 8, !alias.scope !67
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !67 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !67 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !67 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !67 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!8 = distinct !{!8, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!9 = distinct !{!9, !4}
!10 = !{!11, !7}
!11 = distinct !{!11, !12, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!12 = distinct !{!12, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!13 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14 = distinct !{ptr @_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!17 = distinct !{!17, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!18 = !{!19, !16}
!19 = distinct !{!19, !20, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!20 = distinct !{!20, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!23 = distinct !{!23, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!24 = !{!25, !22}
!25 = distinct !{!25, !26, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!26 = distinct !{!26, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!27 = !{ptr @_ZN6Assimp3FBX6ObjectD2Ev}
!28 = !{}
!29 = !{i64 8}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !4}
end_hunk_4
