inline.NumInlined: 322
inline.NumDeleted: 201
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.aiImporterDesc = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Tuple_impl.0", %"struct.std::_Head_base.1" }
%"struct.std::_Tuple_impl.0" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { %class.anon }
%class.anon = type { ptr }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<const Assimp::FBX::Token *, std::allocator<const Assimp::FBX::Token *>>::_Vector_impl" }
%"struct.std::_Vector_base<const Assimp::FBX::Token *, std::allocator<const Assimp::FBX::Token *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const Assimp::FBX::Token *, std::allocator<const Assimp::FBX::Token *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const Assimp::FBX::Token *, std::allocator<const Assimp::FBX::Token *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.Assimp::StackAllocator" = type { i64, i64, %"class.std::vector.12" }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<unsigned char *, std::allocator<unsigned char *>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char *, std::allocator<unsigned char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char *, std::allocator<unsigned char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char *, std::allocator<unsigned char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.Assimp::FBX::Parser" = type <{ ptr, ptr, ptr, ptr, %"class.__gnu_cxx::__normal_iterator.17", ptr, i8, [7 x i8] }>
%"class.__gnu_cxx::__normal_iterator.17" = type { ptr }
%"class.Assimp::FBX::Document" = type { ptr, %"class.std::unordered_map", ptr, %"class.std::unordered_map.23", %"class.std::unordered_multimap", %"class.std::unordered_multimap", i32, %"class.std::__cxx11::basic_string", [7 x i32], %"class.std::vector.56", %"class.std::vector.61", %"class.std::unique_ptr.66" }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.std::unordered_map.23" = type { %"class.std::_Hashtable.24" }
%"class.std::_Hashtable.24" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.std::unordered_multimap" = type { %"class.std::_Hashtable.43" }
%"class.std::_Hashtable.43" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.std::vector.56" = type { %"struct.std::_Vector_base.57" }
%"struct.std::_Vector_base.57" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.61" = type { %"struct.std::_Vector_base.62" }
%"struct.std::_Vector_base.62" = type { %"struct.std::_Vector_base<const Assimp::FBX::AnimationStack *, std::allocator<const Assimp::FBX::AnimationStack *>>::_Vector_impl" }
%"struct.std::_Vector_base<const Assimp::FBX::AnimationStack *, std::allocator<const Assimp::FBX::AnimationStack *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const Assimp::FBX::AnimationStack *, std::allocator<const Assimp::FBX::AnimationStack *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const Assimp::FBX::AnimationStack *, std::allocator<const Assimp::FBX::AnimationStack *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.66" = type { %"struct.std::__uniq_ptr_data.67" }
%"struct.std::__uniq_ptr_data.67" = type { %"class.std::__uniq_ptr_impl.68" }
%"class.std::__uniq_ptr_impl.68" = type { %"class.std::tuple.69" }
%"class.std::tuple.69" = type { %"struct.std::_Tuple_impl.70" }
%"struct.std::_Tuple_impl.70" = type { %"struct.std::_Head_base.73" }
%"struct.std::_Head_base.73" = type { ptr }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZNK6Assimp3FBX18FileGlobalSettings15UnitScaleFactorEv = comdat any

$__clang_call_terminate = comdat any

$_ZN6Assimp14StackAllocatorD2Ev = comdat any

$_ZN6Assimp12BaseImporterD2Ev = comdat any

$_ZN6Assimp11FBXImporterD0Ev = comdat any

$_ZN17DeadlyImportErrorC2IJPKcRA32_S1_EEEDpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRA32_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZN15DeadlyErrorBaseC2IJERA32_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN17DeadlyImportErrorC2IJPKcRA37_S1_EEEDpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRA37_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJERA37_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZTIN6Assimp12LogFunctionsINS_11FBXImporterEEE = comdat any

$_ZTSN6Assimp12LogFunctionsINS_11FBXImporterEEE = comdat any

$_ZTIN6Assimp3FBX8PropertyE = comdat any

$_ZTSN6Assimp3FBX8PropertyE = comdat any

$_ZTIN6Assimp3FBX13TypedPropertyIfEE = comdat any

$_ZTSN6Assimp3FBX13TypedPropertyIfEE = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyImportError = comdat any

@.str = private unnamed_addr constant [6 x i8] c"FBX: \00", align 1
@_ZZNK6Assimp11FBXImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEbE6tokens = internal global [1 x ptr] [ptr @.str.1], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" \0A\0D\0A \00", align 1
@_ZN12_GLOBAL__N_14descE = internal constant %struct.aiImporterDesc { ptr @.str.23, ptr @.str.24, ptr @.str.24, ptr @.str.24, i32 1, i32 0, i32 0, i32 0, i32 0, ptr @.str.25 }, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"IMPORT_FBX_READ_ALL_GEOMETRY_LAYERS\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"IMPORT_FBX_READ_ALL_MATERIALS\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"IMPORT_FBX_READ_MATERIALS\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"IMPORT_FBX_READ_TEXTURES\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"IMPORT_FBX_READ_CAMERAS\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"IMPORT_FBX_READ_LIGHTS\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"IMPORT_FBX_READ_ANIMATIONS\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"IMPORT_FBX_READ_WEIGHTS\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"IMPORT_FBX_STRICT_MODE\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"IMPORT_FBX_PRESERVE_PIVOTS\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"IMPORT_FBX_OPTIMIZE_EMPTY_ANIMATION_CURVES\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"AI_CONFIG_IMPORT_FBX_EMBEDDED_TEXTURES_LEGACY_NAMING\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"AI_CONFIG_IMPORT_REMOVE_EMPTY_BONES\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"AI_CONFIG_FBX_CONVERT_TO_M\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"AI_CONFIG_IMPORT_FBX_IGNORE_UP_DIRECTION\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"AI_CONFIG_FBX_USE_SKELETON_BONE_CONTAINER\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Could not open file for reading\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Reading FBX file\00", align 1
@_ZTISt9exception = external constant ptr
@.str.21 = private unnamed_addr constant [19 x i8] c"Kaydara FBX Binary\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"The UnitScaleFactor must be non-zero\00", align 1
@_ZTVN6Assimp11FBXImporterE = hidden unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp11FBXImporterE, ptr @_ZN6Assimp12BaseImporterD2Ev, ptr @_ZN6Assimp11FBXImporterD0Ev, ptr @_ZNK6Assimp11FBXImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEb, ptr @_ZN6Assimp11FBXImporter15SetupPropertiesEPKNS_8ImporterE, ptr @_ZNK6Assimp11FBXImporter7GetInfoEv, ptr @_ZN6Assimp11FBXImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE] }, align 8
@_ZTIN6Assimp11FBXImporterE = hidden constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6Assimp11FBXImporterE, i32 0, i32 2, ptr @_ZTIN6Assimp12BaseImporterE, i64 2, ptr @_ZTIN6Assimp12LogFunctionsINS_11FBXImporterEEE, i64 2 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp11FBXImporterE = hidden constant [23 x i8] c"N6Assimp11FBXImporterE\00", align 1
@_ZTIN6Assimp12BaseImporterE = external constant ptr
@_ZTIN6Assimp12LogFunctionsINS_11FBXImporterEEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6Assimp12LogFunctionsINS_11FBXImporterEEE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp12LogFunctionsINS_11FBXImporterEEE = linkonce_odr hidden constant [43 x i8] c"N6Assimp12LogFunctionsINS_11FBXImporterEEE\00", comdat, align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Autodesk FBX Importer\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"fbx\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"UnitScaleFactor\00", align 1
@_ZTIN6Assimp3FBX8PropertyE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX8PropertyE = linkonce_odr hidden constant [23 x i8] c"N6Assimp3FBX8PropertyE\00", comdat, align 1
@_ZTIN6Assimp3FBX13TypedPropertyIfEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX13TypedPropertyIfEE, ptr @_ZTIN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp3FBX13TypedPropertyIfEE = linkonce_odr hidden constant [32 x i8] c"N6Assimp3FBX13TypedPropertyIfEE\00", comdat, align 1
@_ZTVN6Assimp12BaseImporterE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.30 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp11FBXImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEb(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i1 zeroext %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6Assimp12BaseImporter24SearchFileHeaderForTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPKcmjbb(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZZNK6Assimp11FBXImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEbE6tokens, i64 noundef 1, i32 noundef 200, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN6Assimp12BaseImporter24SearchFileHeaderForTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPKcmjbb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZNK6Assimp11FBXImporter7GetInfoEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZN12_GLOBAL__N_14descE
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXImporter15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(88) initializes((72, 88)) %0, ptr noundef nonnull %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i32 noundef 1)
  %i.b = icmp ne i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.e = zext i1 %i.b to i8
  store i8 %i.e, ptr %i.d, align 1
  %i.f = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i32 noundef 0)
  %i.g = icmp ne i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.i = zext i1 %i.g to i8
  store i8 %i.i, ptr %i.h, align 2
  %i.j = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i32 noundef 1)
  %i.k = icmp ne i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 75
  %i.m = zext i1 %i.k to i8
  store i8 %i.m, ptr %i.l, align 1
  %i.n = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i32 noundef 1)
  %i.o = icmp ne i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.q = zext i1 %i.o to i8
  store i8 %i.q, ptr %i.p, align 4
  %i.r = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i32 noundef 1)
  %i.s = icmp ne i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.u = zext i1 %i.s to i8
  store i8 %i.u, ptr %i.t, align 1
  %i.v = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i32 noundef 1)
  %i.w = icmp ne i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.y = zext i1 %i.w to i8
  store i8 %i.y, ptr %i.x, align 2
  %i.z = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i32 noundef 1)
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 79
  %i.ac = zext i1 %i.aa to i8
  store i8 %i.ac, ptr %i.ab, align 1
  %i.ad = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9, i32 noundef 1)
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = zext i1 %i.ae to i8
  store i8 %i.ag, ptr %i.af, align 8
  %i.ah = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10, i32 noundef 0)
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i8
  store i8 %i.aj, ptr %i.c, align 8
  %i.ak = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i32 noundef 1)
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.an = zext i1 %i.al to i8
  store i8 %i.an, ptr %i.am, align 2
  %i.ao = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.12, i32 noundef 1)
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 83
  %i.ar = zext i1 %i.ap to i8
  store i8 %i.ar, ptr %i.aq, align 1
  %i.as = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13, i32 noundef 0)
  %i.at = icmp ne i32 %i.as, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.av = zext i1 %i.at to i8
  store i8 %i.av, ptr %i.au, align 4
  %i.aw = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, i32 noundef 1)
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 85
  %i.az = zext i1 %i.ax to i8
  store i8 %i.az, ptr %i.ay, align 1
  %i.ba = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.15, i32 noundef 0)
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.bd = zext i1 %i.bb to i8
  store i8 %i.bd, ptr %i.bc, align 2
  %i.be = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16, i32 noundef 0)
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 87
  %i.bh = zext i1 %i.bf to i8
  store i8 %i.bh, ptr %i.bg, align 1
  %i.bi = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.17, i32 noundef 0)
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.bl = zext i1 %i.bj to i8
  store i8 %i.bl, ptr %i.bk, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::vector.7", align 8     ; 11 uses
  %7 = alloca %"class.Assimp::StackAllocator", align 8 ; 13 uses
  %8 = alloca %"class.Assimp::FBX::Parser", align 8 ; 7 uses
  %9 = alloca %"class.Assimp::FBX::Document", align 8 ; 8 uses
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.d, ptr %5, align 8
  store i16 25202, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.f, align 2
  %i.g = load ptr, ptr %1, align 8
  %i.h = load ptr, ptr %3, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.g, ptr noundef nonnull %i.d)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.d, !inline_history !3 ; 7 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.l = ptrtoint ptr %i.c to i64
  store i64 %i.l, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = load ptr, ptr %5, align 8                ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.d
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.p = load i64, ptr %i.d, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.not80 = icmp eq ptr %i.k, null
  br i1 %.not80, label %bb.a, label %bb.f

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr @.str, ptr %i.b, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA32_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(32) @.str.19)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %.noexc38 unwind label %bb.e

.noexc38:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @__cxa_free_exception(ptr nonnull %i.r) #18
  br label %.body

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %5, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.d
  %i.w = load i64, ptr %i.d, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.as

bb.e:                                             ; preds = %bb.b, %bb.g, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.z, ptr noundef nonnull @.str.20)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.k, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.i unwind label %bb.aq      ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = add i64 %i.ad, 1                        ; 4 uses
  %.not81 = icmp eq i64 %i.ae, 0
  br i1 %.not81, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %10

10:                                               ; preds = %bb.i
  %11 = icmp slt i64 %i.ae, 0
  br i1 %11, label %bb.j, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %10
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #20
          to label %.noexc42 unwind label %bb.aq

.noexc42:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %10
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc43 unwind label %bb.aq  ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  store i8 0, ptr %i.af, align 1
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ah, i8 0, i64 %i.ad, i1 false)
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i: ; preds = %bb.k, %.noexc43
  %12 = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  %13 = ptrtoint ptr %12 to i64
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i, %bb.i
  %.sroa.21.1 = phi i64 [ %13, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ], [ 0, %bb.i ]
  %.sroa.054.1 = phi ptr [ %i.af, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ], [ null, %bb.i ] ; 8 uses
  %14 = ptrtoint ptr %.sroa.054.1 to i64
  %15 = sub i64 %.sroa.21.1, %14                  ; 4 uses
  %16 = add i64 %15, -1                           ; 2 uses
  %i.ai = load ptr, ptr %i.k, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %.sroa.054.1, i64 noundef 1, i64 noundef %16)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.054.1, i64 %16
  store i8 0, ptr %i.am, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i64 16384, ptr %7, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 67108864, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.ap = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.sroa.054.1, ptr noundef nonnull dereferenceable(19) @.str.21, i64 noundef 18) #22
  %.not = icmp eq i32 %i.ap, 0                    ; 2 uses
  br i1 %.not, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6Assimp3FBX14TokenizeBinaryERSt6vectorIPKNS0_5TokenESaIS4_EEPKcmRNS_14StackAllocatorE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %.sroa.054.1, i64 noundef %15, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.q unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.o:                                             ; preds = %bb.p, %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.al

bb.p:                                             ; preds = %bb.l
  invoke void @_ZN6Assimp3FBX8TokenizeERSt6vectorIPKNS0_5TokenESaIS4_EEPKcRNS_14StackAllocatorE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %.sroa.054.1, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZN6Assimp3FBX6ParserC1ERKSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorEb(ptr noundef nonnull align 8 dereferenceable(49) %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, i1 noundef zeroext %.not)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZN6Assimp3FBX8DocumentC1ERNS0_6ParserERKNS0_14ImportSettingsE(ptr noundef nonnull align 8 dereferenceable(368) %9, ptr noundef nonnull align 8 dereferenceable(49) %8, ptr noundef nonnull align 1 dereferenceable(16) %i.as)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 85
  %i.au = load i8, ptr %i.at, align 1, !range !4, !noundef !5
  %i.av = trunc nuw i8 %i.au to i1
  invoke void @_ZN6Assimp3FBX20ConvertToAssimpSceneEP7aiSceneRKNS0_8DocumentEb(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(368) %9, i1 noundef zeroext %i.av)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 360
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef float @_ZNK6Assimp3FBX18FileGlobalSettings15UnitScaleFactorEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.u unwind label %bb.ab      ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.az = fcmp oeq float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.ba = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA37_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(37) @.str.22)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %.noexc44 unwind label %bb.ab

.noexc44:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @__cxa_free_exception(ptr nonnull %i.ba) #18
  br label %.body45

bb.y:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ak

bb.z:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.aj

bb.aa:                                            ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body45

bb.ab:                                            ; preds = %bb.w, %bb.t
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body45

bb.ac:                                            ; preds = %bb.u
  %i.bg = fmul float %i.ay, f0x3C23D70A
  %i.bh = fpext float %i.bg to double
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bh, ptr %i.bi, align 8
  call void @_ZN6Assimp3FBX8DocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN6Assimp3FBX6ParserD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %.not.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i, label %._crit_edge.i.i47, label %.lr.ph.i.i

._crit_edge.i.i47:                                ; preds = %bb.ae, %bb.ac
  %.lcssa6.i.i = phi ptr [ %i.bl, %bb.ac ], [ %i.bu, %bb.ae ] ; 2 uses
  %.lcssa.i.i = phi i64 [ %i.bm, %bb.ac ], [ %i.by, %bb.ae ]
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  store i64 16384, ptr %7, align 8
  store i64 67108864, ptr %i.an, align 8
  %.not.i.i.i.i.i = icmp eq ptr %.lcssa6.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN6Assimp14StackAllocatorD2Ev.exit, label %_ZN6Assimp14StackAllocator7FreeAllEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %bb.ae
  %i.bp = phi ptr [ %i.bu, %bb.ae ], [ %i.bl, %bb.ac ] ; 2 uses
  %i.bq = phi ptr [ %i.bv, %bb.ae ], [ %i.bk, %bb.ac ]
  %.09.i.i = phi i64 [ %i.bw, %bb.ae ], [ 0, %bb.ac ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.09.i.i
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #19
  %.pre.i.i = load ptr, ptr %i.bj, align 8
  %.pre13.i.i = load ptr, ptr %i.ao, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i.i
  %i.bu = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %.pre13.i.i, %bb.ad ] ; 3 uses
  %i.bv = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.pre.i.i, %bb.ad ] ; 2 uses
  %i.bw = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 3
  %i.cb = icmp ult i64 %i.bw, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i, label %._crit_edge.i.i47, !llvm.loop !6

_ZN6Assimp14StackAllocator7FreeAllEv.exit.i:      ; preds = %._crit_edge.i.i47
  %i.cc = ptrtoint ptr %i.bo to i64
  %i.cd = sub i64 %i.cc, %.lcssa.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa6.i.i, i64 noundef %i.cd) #19
  %.pr.i = load ptr, ptr %i.ao, align 8           ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp14StackAllocatorD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp14StackAllocator7FreeAllEv.exit.i
  %i.ce = load ptr, ptr %i.bn, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %.pr.i to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.ch) #19
  br label %_ZN6Assimp14StackAllocatorD2Ev.exit

_ZN6Assimp14StackAllocatorD2Ev.exit:              ; preds = %._crit_edge.i.i47, %_ZN6Assimp14StackAllocator7FreeAllEv.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ci = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN6Assimp14StackAllocatorD2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN6Assimp14StackAllocatorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.054.1, i64 noundef %15) #19
  %.val.i = load ptr, ptr %4, align 8
  %.val.val.i = load ptr, ptr %.val.i, align 8    ; 2 uses
  %i.co = load ptr, ptr %.val.val.i, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %.val.val.i, ptr noundef nonnull %i.k)
          to label %"_ZNSt10unique_ptrIN6Assimp8IOStreamEZNS0_11FBXImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS0_8IOSystemEE3$_0ED2Ev.exit" unwind label %bb.ai, !inline_history !8

bb.ai:                                            ; preds = %bb.ah
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #23
  unreachable

"_ZNSt10unique_ptrIN6Assimp8IOStreamEZNS0_11FBXImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS0_8IOSystemEE3$_0ED2Ev.exit": ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

.body45:                                          ; preds = %bb.ab, %bb.x, %bb.aa
  %.pn26 = phi { ptr, i32 } [ %i.be, %bb.aa ], [ %i.bf, %bb.ab ], [ %i.bb, %bb.x ]
  call void @_ZN6Assimp3FBX8DocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %9) #18
  br label %bb.aj

bb.aj:                                            ; preds = %.body45, %bb.z
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %.body45 ], [ %i.bd, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN6Assimp3FBX6ParserD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %8) #18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.y
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.aj ], [ %i.bc, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.o
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.ak ], [ %i.ar, %bb.o ] ; 3 uses
  %.419 = extractvalue { ptr, i32 } %.pn26.pn.pn.pn, 1
  %i.ct = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.cu = icmp eq i32 %.419, %i.ct
  br i1 %i.cu, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %.4 = extractvalue { ptr, i32 } %.pn26.pn.pn.pn, 0
  %i.cv = call ptr @__cxa_begin_catch(ptr %.4) #18 ; 0 uses
  invoke void @__cxa_rethrow() #20
          to label %bb.au unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.merged33 = phi { ptr, i32 } [ %.pn26.pn.pn.pn, %bb.al ], [ %i.cw, %bb.an ]
  call void @_ZN6Assimp14StackAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.cx = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EED2Ev.exit50, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #19
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EED2Ev.exit50

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EED2Ev.exit50: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ar

bb.aq:                                            ; preds = %bb.h, %bb.j, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EED2Ev.exit50, %bb.n
  %.merged32.ph = phi { ptr, i32 } [ %i.aq, %bb.n ], [ %.merged33, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EED2Ev.exit50 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.054.1, i64 noundef %15) #19
  br label %.body

.body:                                            ; preds = %bb.ar, %bb.aq, %bb.e, %bb.c
  %.merged31 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.y, %bb.e ], [ %i.dd, %bb.aq ], [ %.merged32.ph, %bb.ar ]
  call fastcc void @"_ZNSt10unique_ptrIN6Assimp8IOStreamEZNS0_11FBXImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS0_8IOSystemEE3$_0ED2Ev"(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  br label %bb.as

bb.as:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.merged = phi { ptr, i32 } [ %.merged31, %.body ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.an
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #23
  unreachable

bb.au:                                            ; preds = %bb.am
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #2

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare void @_ZN6Assimp3FBX14TokenizeBinaryERSt6vectorIPKNS0_5TokenESaIS4_EEPKcmRNS_14StackAllocatorE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN6Assimp3FBX8TokenizeERSt6vectorIPKNS0_5TokenESaIS4_EEPKcRNS_14StackAllocatorE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN6Assimp3FBX6ParserC1ERKSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorEb(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) unnamed_addr #2

declare void @_ZN6Assimp3FBX8DocumentC1ERNS0_6ParserERKNS0_14ImportSettingsE(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 1 dereferenceable(16)) unnamed_addr #2

declare void @_ZN6Assimp3FBX20ConvertToAssimpSceneEP7aiSceneRKNS0_8DocumentEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(368), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK6Assimp3FBX18FileGlobalSettings15UnitScaleFactorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, ptr noundef nonnull align 1 dereferenceable(15) @.str.26, i64 15, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 15, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float 1.000000e+00, ptr %i.a, align 4
  %i.f = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc4 unwind label %bb.c    ; 2 uses

.noexc4:                                          ; preds = %._crit_edge.i.i
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc4
  %i.h = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.f, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #18 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %spec.select.i = select i1 %i.i, ptr %i.a, ptr %i.j
  %.1.i.pre = load float, ptr %spec.select.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc4
  %.1.i = phi float [ 1.000000e+00, %.noexc4 ], [ %.1.i.pre, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.c, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret float %.1.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.o
}

; Function Attrs: nounwind
declare void @_ZN6Assimp3FBX8DocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6Assimp3FBX6ParserD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49)) unnamed_addr #5

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp14StackAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  %.lcssa6.i = phi ptr [ %i.d, %bb.a ], [ %i.n, %bb.c ] ; 2 uses
  %.lcssa.i = phi i64 [ %i.e, %bb.a ], [ %i.r, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i64 16384, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 67108864, ptr %i.h, align 8
  %.not.i.i.i.i = icmp eq ptr %.lcssa6.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPhSaIS0_EED2Ev.exit, label %_ZN6Assimp14StackAllocator7FreeAllEv.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.i = phi ptr [ %i.n, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ]
  %.09.i = phi i64 [ %i.p, %bb.c ], [ 0, %bb.a ]  ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.09.i
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #19
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre13.i = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.n = phi ptr [ %i.i, %.lr.ph.i ], [ %.pre13.i, %bb.b ] ; 3 uses
  %i.o = phi ptr [ %i.j, %.lr.ph.i ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.p = add nuw i64 %.09.i, 1                    ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ult i64 %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !6

_ZN6Assimp14StackAllocator7FreeAllEv.exit:        ; preds = %._crit_edge.i
  %i.v = ptrtoint ptr %i.g to i64
  %i.w = sub i64 %i.v, %.lcssa.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa6.i, i64 noundef %i.w) #19
  %.pr = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPhSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp14StackAllocator7FreeAllEv.exit
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %.pr to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.aa) #19
  br label %_ZNSt6vectorIPhSaIS0_EED2Ev.exit

_ZNSt6vectorIPhSaIS0_EED2Ev.exit:                 ; preds = %._crit_edge.i, %_ZN6Assimp14StackAllocator7FreeAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt10unique_ptrIN6Assimp8IOStreamEZNS0_11FBXImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS0_8IOSystemEE3$_0ED2Ev"(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %"_ZZN6Assimp11FBXImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEENK3$_0clEPNS_8IOStreamE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8
  %.val.val = load ptr, ptr %.val, align 8        ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %.val.val, ptr noundef nonnull %i.b)
          to label %"_ZZN6Assimp11FBXImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEENK3$_0clEPNS_8IOStreamE.exit" unwind label %bb.c, !inline_history !8

"_ZZN6Assimp11FBXImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEENK3$_0clEPNS_8IOStreamE.exit": ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp12BaseImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp11FBXImporterD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN6Assimp12BaseImporterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #19
  br label %_ZN6Assimp12BaseImporterD2Ev.exit

_ZN6Assimp12BaseImporterD2Ev.exit:                ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #19
  ret void
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJPKcRA32_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA32_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #18
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #18
  resume { ptr, i32 } %i.o
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA32_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(32) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA32_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %4, align 8
end_hunk_0
