inline.NumInlined: 377
inline.NumDeleted: 247
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.10 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.10 = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%"struct.std::__detail::_AllocNode" = type { ptr }
%"class.std::unordered_set" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%struct.aiVectorKey = type { double, %class.aiVector3t, i32 }
%class.aiVector3t = type { float, float, float }
%struct.aiQuatKey = type <{ double, %class.aiQuaterniont, i32, [4 x i8] }>
%class.aiQuaterniont = type { float, float, float, float }

$_ZN17DeadlyImportErrorC2EPKc = comdat any

$_ZN6aiMeshD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6Assimp11BaseProcessD2Ev = comdat any

$_ZN6Assimp22FindInvalidDataProcessD0Ev = comdat any

$_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZN10aiAnimMeshD2Ev = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_ = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_Z21ValidateArrayContentsI10aiVector3tIfEEPKcPKT_jRKSt6vectorIbSaIbEEbb = comdat any

$_ZN6Assimp6Logger5errorIJRA38_KcRPS2_RA3_S2_S6_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA3_KcRPS2_ES6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRPKcERA3_S2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyImportError = comdat any

@_ZTVN6Assimp22FindInvalidDataProcessE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp22FindInvalidDataProcessE, ptr @_ZN6Assimp11BaseProcessD2Ev, ptr @_ZN6Assimp22FindInvalidDataProcessD0Ev, ptr @_ZNK6Assimp22FindInvalidDataProcess8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp22FindInvalidDataProcess15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp22FindInvalidDataProcess7ExecuteEP7aiScene] }, align 8
@.str = private unnamed_addr constant [21 x i8] c"PP_FID_ANIM_ACCURACY\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PP_FID_IGNORE_TEXTURECOORDS\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Invalid mesh ref\00", align 1
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.3 = private unnamed_addr constant [29 x i8] c"FindInvalidDataProcess begin\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"No meshes remaining\00", align 1
@_ZTISt9exception = external constant ptr
@.str.5 = private unnamed_addr constant [50 x i8] c"FindInvalidDataProcess finished. Found issues ...\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"FindInvalidDataProcess finished. Everything seems to be OK.\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Invalid node anuimation instance detected.\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Simplified dummy tracks with just one key\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"positions\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"Deleting mesh: Unable to continue without vertex positions\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"uvcoords\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"normals\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"tangents\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"bitangents\00", align 1
@_ZTIN6Assimp22FindInvalidDataProcessE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp22FindInvalidDataProcessE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8
@_ZTSN6Assimp22FindInvalidDataProcessE = constant [34 x i8] c"N6Assimp22FindInvalidDataProcessE\00", align 1
@_ZTIN6Assimp11BaseProcessE = external constant ptr
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.18 = private unnamed_addr constant [38 x i8] c"FindInvalidDataProcess fails on mesh \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"INF/NAN was found in a vector component\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Found zero-length vector\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"All vectors are identical\00", align 1

@_ZN6Assimp22FindInvalidDataProcessC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6Assimp22FindInvalidDataProcessC2Ev

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Assimp22FindInvalidDataProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(29) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp22FindInvalidDataProcessE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 0.000000e+00, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.b, align 4
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK6Assimp22FindInvalidDataProcess8IsActiveEj(ptr nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = and i32 %1, 131072
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp22FindInvalidDataProcess15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(29) initializes((24, 29)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef float @_ZNK6Assimp8Importer16GetPropertyFloatEPKcf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, float noundef 0.000000e+00)
  %i.b = fcmp une float %i.a, 0.000000e+00
  %i.c = uitofp i1 %i.b to float
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.c, ptr %i.d, align 8
  %i.e = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i32 noundef 0)
  %i.f = icmp ne i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = zext i1 %i.f to i8
  store i8 %i.h, ptr %i.g, align 4
  ret void
}

declare noundef float @_ZNK6Assimp8Importer16GetPropertyFloatEPKcf(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_Z20UpdateMeshReferencesP6aiNodeRKSt6vectorIjSaIjEE(ptr noundef captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.l, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h
  store i32 %.1, ptr %i.a, align 8
  %i.e = icmp eq i32 %.1, 0
  br i1 %i.e, label %bb.i, label %bb.l

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.x, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.02534 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ] ; 3 uses
  %i.g = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %.not30 = icmp ugt i64 %i.p, %i.j
  br i1 %.not30, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull @.str.2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.q) #20
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not31 = icmp eq i32 %i.t, -1
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add i32 %.02534, 1
  %i.v = zext i32 %.02534 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.v
  store i32 %i.t, ptr %i.w, align 4
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = phi i32 [ %.pre, %bb.g ], [ %i.f, %bb.f ] ; 2 uses
  %.1 = phi i32 [ %i.u, %bb.g ], [ %.02534, %bb.f ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !3

bb.i:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6aiMeshD2Ev:bb.a
  %i.ej = phi i32 [ %i.ee, %.lr.ph58 ], [ %.pre78, %bb.bj ] ; 2 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = icmp samesign ult i64 %indvars.iv.next67, %i.ek
  br i1 %i.el, label %.lr.ph58, label %._crit_edge59, !llvm.loop !18

bb.bl:                                            ; preds = %._crit_edge59
  call void @_ZdaPv(ptr noundef nonnull %.pre79) #22
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge59, %bb.bl, %bb.bi, %bb.bh
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.en = load ptr, ptr %i.em, align 8            ; 4 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 -8 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %.idx = shl i64 %i.eq, 4                        ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bn
  %i.es = getelementptr inbounds i8, ptr %i.en, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN6aiFaceD2Ev.exit
  %i.et = phi ptr [ %i.eu, %_ZN6aiFaceD2Ev.exit ], [ %i.es, %.preheader.preheader ] ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -16 ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN6aiFaceD2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %.preheader
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #22
  br label %_ZN6aiFaceD2Ev.exit

_ZN6aiFaceD2Ev.exit:                              ; preds = %.preheader, %bb.bo
  %i.ey = icmp eq ptr %i.eu, %i.en
  br i1 %i.ey, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN6aiFaceD2Ev.exit, %bb.bn
  %i.ez = or disjoint i64 %.idx, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.ep, i64 noundef %i.ez) #22
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit, %bb.bm
  ret void

bb.bq:                                            ; preds = %bb.az
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #24
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp22FindInvalidDataProcess16ProcessAnimationEP11aiAnimation(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(29) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1048 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1056
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @_ZN6Assimp22FindInvalidDataProcess23ProcessAnimationChannelEP10aiNodeAnim(ptr noundef nonnull align 8 dereferenceable(29) %0, ptr noundef %i.f)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %i.a, align 8
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !7
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_Z14EpsilonCompareI11aiVectorKeyEbRKT_S3_f(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, float noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 8
  %i.e = fsub float %i.b, %i.d
  %i.f = tail call noundef float @llvm.fabs.f32(float %i.e)
  %i.g = fcmp ogt float %i.f, %2
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load float, ptr %i.j, align 4
  %i.l = fsub float %i.i, %i.k
  %i.m = tail call noundef float @llvm.fabs.f32(float %i.l)
  %i.n = fcmp ogt float %i.m, %2
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load float, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load float, ptr %i.q, align 8
  %i.s = fsub float %i.p, %i.r
  %i.t = tail call noundef float @llvm.fabs.f32(float %i.s)
  %i.u = fcmp ogt float %i.t, %2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.v = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.u, %bb.c ]
  ret i1 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_Z14EpsilonCompareI9aiQuatKeyEbRKT_S3_f(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, float noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load float, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load float, ptr %i.e, align 4
  %i.g = fsub float %i.c, %i.f
  %i.h = tail call noundef float @llvm.fabs.f32(float %i.g)
  %i.i = fcmp ogt float %i.h, %2
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load float, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load float, ptr %i.l, align 8
  %i.n = fsub float %i.k, %i.m
  %i.o = tail call noundef float @llvm.fabs.f32(float %i.n)
  %i.p = fcmp ogt float %i.o, %2
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load float, ptr %i.s, align 4
  %i.u = fsub float %i.r, %i.t
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.u)
  %i.w = fcmp ogt float %i.v, %2
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load float, ptr %i.a, align 8
  %i.y = load float, ptr %i.d, align 8
  %i.z = fsub float %i.x, %i.y
  %i.aa = tail call noundef float @llvm.fabs.f32(float %i.z)
  %i.ab = fcmp ogt float %i.aa, %2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ac = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.ab, %bb.d ]
  ret i1 %i.ac
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp22FindInvalidDataProcess23ProcessAnimationChannelEP10aiNodeAnim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(29) %0, ptr noundef captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %struct.aiVectorKey, align 8        ; 4 uses
  %3 = alloca %struct.aiQuatKey, align 8          ; 4 uses
  %4 = alloca %struct.aiVectorKey, align 8        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1028 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull @.str.7)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load float, ptr %i.l, align 8            ; 4 uses
  %i.n = fcmp ueq float %i.m, 0.000000e+00
  %i.o = add i32 %i.b, -1                         ; 2 uses
  %wide.trip.count38.i = zext i32 %i.o to i64     ; 2 uses
  %exitcond39.not.i93 = icmp eq i32 %i.o, 0       ; 2 uses
  br i1 %i.n, label %.preheader.i.preheader, label %.preheader29.i.preheader

.preheader29.i.preheader:                         ; preds = %bb.e
  br i1 %exitcond39.not.i93, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit, label %.lr.ph

.preheader.i.preheader:                           ; preds = %bb.e
  br i1 %exitcond39.not.i93, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit, label %.lr.ph95

.preheader29.i:                                   ; preds = %_Z14EpsilonCompareI11aiVectorKeyEbRKT_S3_f.exit.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count38.i
  br i1 %exitcond.not.i, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %.preheader29.i.preheader, %.preheader29.i
  %indvars.iv.i92 = phi i64 [ %indvars.iv.next.i, %.preheader29.i ], [ 0, %.preheader29.i.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i92 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i92, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.next.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load float, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load float, ptr %i.t, align 8
  %i.v = fsub float %i.s, %i.u
  %i.w = tail call noundef float @llvm.fabs.f32(float %i.v)
  %i.x = fcmp ogt float %i.w, %i.m
  br i1 %i.x, label %bb.f, label %.thread

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.z = load float, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = fsub float %i.z, %i.ab
  %i.ad = tail call noundef float @llvm.fabs.f32(float %i.ac)
  %i.ae = fcmp ogt float %i.ad, %i.m
  br i1 %i.ae, label %_Z14EpsilonCompareI11aiVectorKeyEbRKT_S3_f.exit.i, label %.thread

_Z14EpsilonCompareI11aiVectorKeyEbRKT_S3_f.exit.i: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ag = load float, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ai = load float, ptr %i.ah, align 8
  %i.aj = fsub float %i.ag, %i.ai
  %i.ak = tail call noundef float @llvm.fabs.f32(float %i.aj)
  %i.al = fcmp ogt float %i.ak, %i.m
  br i1 %i.al, label %.preheader29.i, label %.thread, !llvm.loop !19

.preheader.i:                                     ; preds = %_ZNK11aiVectorKeyneERKS_.exit.i
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit, label %.lr.ph95, !llvm.loop !20

.lr.ph95:                                         ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv35.i94 = phi i64 [ %indvars.iv.next36.i, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv35.i94 ; 3 uses
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i94, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.next36.i ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load float, ptr %i.ao, align 4
  %i.ar = load float, ptr %i.ap, align 4
  %i.as = fcmp une float %i.aq, %i.ar
  br i1 %i.as, label %.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph95
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.au = load float, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fcmp une float %i.au, %i.aw
  br i1 %i.ax, label %.thread, label %_ZNK11aiVectorKeyneERKS_.exit.i

_ZNK11aiVectorKeyneERKS_.exit.i:                  ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = fcmp une float %i.az, %i.bb
  br i1 %i.bc, label %.thread, label %.preheader.i, !llvm.loop !20

_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit:       ; preds = %.preheader29.i, %.preheader.i, %.preheader29.i.preheader, %.preheader.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  tail call void @_ZdaPv(ptr noundef %i.k) #22
  store i32 1, ptr %i.a, align 4
  %i.bd = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #23 ; 2 uses
  store ptr %i.bd, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread

.thread:                                          ; preds = %_Z14EpsilonCompareI11aiVectorKeyEbRKT_S3_f.exit.i, %bb.f, %.lr.ph, %_ZNK11aiVectorKeyneERKS_.exit.i, %bb.g, %.lr.ph95, %bb.a, %bb.b, %bb.c, %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit
  %.0 = phi i32 [ 1, %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %_ZNK11aiVectorKeyneERKS_.exit.i ], [ 0, %.lr.ph95 ], [ 0, %bb.g ], [ 0, %.lr.ph ], [ 0, %bb.f ], [ 0, %_Z14EpsilonCompareI11aiVectorKeyEbRKT_S3_f.exit.i ] ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ugt i32 %i.bf, 1
  br i1 %i.bg, label %bb.h, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread

bb.h:                                             ; preds = %.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1048 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load float, ptr %i.bj, align 8          ; 5 uses
  %i.bl = fcmp ueq float %i.bk, 0.000000e+00
  %i.bm = add i32 %i.bf, -1                       ; 2 uses
  %wide.trip.count38.i34 = zext i32 %i.bm to i64  ; 2 uses
  %exitcond39.not.i4299 = icmp eq i32 %i.bm, 0    ; 2 uses
  br i1 %i.bl, label %.preheader.i40.preheader, label %.preheader29.i35.preheader

.preheader29.i35.preheader:                       ; preds = %bb.h
  br i1 %exitcond39.not.i4299, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit, label %.lr.ph98

.preheader.i40.preheader:                         ; preds = %bb.h
  br i1 %exitcond39.not.i4299, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit, label %.lr.ph101

.preheader29.i35:                                 ; preds = %_Z14EpsilonCompareI9aiQuatKeyEbRKT_S3_f.exit.i
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i38, %wide.trip.count38.i34
  br i1 %exitcond.not.i37, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit, label %.lr.ph98, !llvm.loop !21

.lr.ph98:                                         ; preds = %.preheader29.i35.preheader, %.preheader29.i35
  %indvars.iv.i3697 = phi i64 [ %indvars.iv.next.i38, %.preheader29.i35 ], [ 0, %.preheader29.i35.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.i3697 ; 4 uses
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i3697, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.next.i38 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.br = load float, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bu = load float, ptr %i.bt, align 4
  %i.bv = fsub float %i.br, %i.bu
  %i.bw = tail call noundef float @llvm.fabs.f32(float %i.bv)
  %i.bx = fcmp ogt float %i.bw, %i.bk
  br i1 %i.bx, label %bb.i, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread

bb.i:                                             ; preds = %.lr.ph98
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bz = load float, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.cb = load float, ptr %i.ca, align 8
  %i.cc = fsub float %i.bz, %i.cb
  %i.cd = tail call noundef float @llvm.fabs.f32(float %i.cc)
  %i.ce = fcmp ogt float %i.cd, %i.bk
  br i1 %i.ce, label %bb.j, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.cg = load float, ptr %i.cf, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.ci = load float, ptr %i.ch, align 4
  %i.cj = fsub float %i.cg, %i.ci
  %i.ck = tail call noundef float @llvm.fabs.f32(float %i.cj)
  %i.cl = fcmp ogt float %i.ck, %i.bk
  br i1 %i.cl, label %_Z14EpsilonCompareI9aiQuatKeyEbRKT_S3_f.exit.i, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread

_Z14EpsilonCompareI9aiQuatKeyEbRKT_S3_f.exit.i:   ; preds = %bb.j
  %i.cm = load float, ptr %i.bp, align 8
  %i.cn = load float, ptr %i.bs, align 8
  %i.co = fsub float %i.cm, %i.cn
  %i.cp = tail call noundef float @llvm.fabs.f32(float %i.co)
  %i.cq = fcmp ogt float %i.cp, %i.bk
  br i1 %i.cq, label %.preheader29.i35, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread, !llvm.loop !21

.preheader.i40:                                   ; preds = %_ZNK9aiQuatKeyneERKS_.exit.i
  %exitcond39.not.i42 = icmp eq i64 %indvars.iv.next36.i43, %wide.trip.count38.i34
  br i1 %exitcond39.not.i42, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit, label %.lr.ph101, !llvm.loop !22

.lr.ph101:                                        ; preds = %.preheader.i40.preheader, %.preheader.i40
  %indvars.iv35.i41100 = phi i64 [ %indvars.iv.next36.i43, %.preheader.i40 ], [ 0, %.preheader.i40.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv35.i41100 ; 4 uses
  %indvars.iv.next36.i43 = add nuw nsw i64 %indvars.iv35.i41100, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.next36.i43 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = fcmp oeq float %i.cw, %i.cy
  br i1 %i.cz, label %bb.k, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread

bb.k:                                             ; preds = %.lr.ph101
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.db = load float, ptr %i.da, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = fcmp oeq float %i.db, %i.dd
  br i1 %i.de, label %bb.l, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.dg = load float, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = fcmp oeq float %i.dg, %i.di
  br i1 %i.dj, label %_ZNK9aiQuatKeyneERKS_.exit.i, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread

_ZNK9aiQuatKeyneERKS_.exit.i:                     ; preds = %bb.l
  %i.dk = load float, ptr %i.ct, align 4
  %i.dl = load float, ptr %i.cu, align 4
  %i.dm = fcmp une float %i.dk, %i.dl
  br i1 %i.dm, label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread, label %.preheader.i40, !llvm.loop !22

_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit:          ; preds = %.preheader29.i35, %.preheader.i40, %.preheader29.i35.preheader, %.preheader.i40.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false)
  tail call void @_ZdaPv(ptr noundef %i.bi) #22
  store i32 1, ptr %i.be, align 8
  %i.dn = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #23 ; 2 uses
  store ptr %i.dn, ptr %i.bh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dn, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread

_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread:   ; preds = %_Z14EpsilonCompareI9aiQuatKeyEbRKT_S3_f.exit.i, %bb.j, %bb.i, %.lr.ph98, %_ZNK9aiQuatKeyneERKS_.exit.i, %bb.l, %bb.k, %.lr.ph101, %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit, %.thread
  %.1 = phi i32 [ 1, %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit ], [ %.0, %.thread ], [ %.0, %_ZNK9aiQuatKeyneERKS_.exit.i ], [ %.0, %.lr.ph101 ], [ %.0, %bb.k ], [ %.0, %bb.l ], [ %.0, %.lr.ph98 ], [ %.0, %bb.i ], [ %.0, %bb.j ], [ %.0, %_Z14EpsilonCompareI9aiQuatKeyEbRKT_S3_f.exit.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 1056 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8            ; 2 uses
  %i.dq = icmp ugt i32 %i.dp, 1
  br i1 %i.dq, label %bb.m, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56.thread

bb.m:                                             ; preds = %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 1064 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8            ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.du = load float, ptr %i.dt, align 8          ; 4 uses
  %i.dv = fcmp ueq float %i.du, 0.000000e+00
  %i.dw = add i32 %i.dp, -1                       ; 2 uses
  %wide.trip.count38.i44 = zext i32 %i.dw to i64  ; 2 uses
  %exitcond39.not.i53105 = icmp eq i32 %i.dw, 0   ; 2 uses
  br i1 %i.dv, label %.preheader.i51.preheader, label %.preheader29.i45.preheader

.preheader29.i45.preheader:                       ; preds = %bb.m
  br i1 %exitcond39.not.i53105, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56, label %.lr.ph104

.preheader.i51.preheader:                         ; preds = %bb.m
  br i1 %exitcond39.not.i53105, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56, label %.lr.ph107

.preheader29.i45:                                 ; preds = %_Z14EpsilonCompareI11aiVectorKeyEbRKT_S3_f.exit.i50
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count38.i44
  br i1 %exitcond.not.i47, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56, label %.lr.ph104, !llvm.loop !19

.lr.ph104:                                        ; preds = %.preheader29.i45.preheader, %.preheader29.i45
  %indvars.iv.i46103 = phi i64 [ %indvars.iv.next.i48, %.preheader29.i45 ], [ 0, %.preheader29.i45.preheader ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %indvars.iv.i46103 ; 3 uses
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i46103, 1 ; 3 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %indvars.iv.next.i48 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load float, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ec = load float, ptr %i.eb, align 8
  %i.ed = fsub float %i.ea, %i.ec
  %i.ee = tail call noundef float @llvm.fabs.f32(float %i.ed)
  %i.ef = fcmp ogt float %i.ee, %i.du
  br i1 %i.ef, label %bb.n, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56.thread

bb.n:                                             ; preds = %.lr.ph104
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = fsub float %i.eh, %i.ej
  %i.el = tail call noundef float @llvm.fabs.f32(float %i.ek)
  %i.em = fcmp ogt float %i.el, %i.du
  br i1 %i.em, label %_Z14EpsilonCompareI11aiVectorKeyEbRKT_S3_f.exit.i50, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56.thread

_Z14EpsilonCompareI11aiVectorKeyEbRKT_S3_f.exit.i50: ; preds = %bb.n
  %i.en = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eo = load float, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eq = load float, ptr %i.ep, align 8
  %i.er = fsub float %i.eo, %i.eq
  %i.es = tail call noundef float @llvm.fabs.f32(float %i.er)
  %i.et = fcmp ogt float %i.es, %i.du
  br i1 %i.et, label %.preheader29.i45, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56.thread, !llvm.loop !19

.preheader.i51:                                   ; preds = %_ZNK11aiVectorKeyneERKS_.exit.i55
  %exitcond39.not.i53 = icmp eq i64 %indvars.iv.next36.i54, %wide.trip.count38.i44
  br i1 %exitcond39.not.i53, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56, label %.lr.ph107, !llvm.loop !20

.lr.ph107:                                        ; preds = %.preheader.i51.preheader, %.preheader.i51
  %indvars.iv35.i52106 = phi i64 [ %indvars.iv.next36.i54, %.preheader.i51 ], [ 0, %.preheader.i51.preheader ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %indvars.iv35.i52106 ; 3 uses
  %indvars.iv.next36.i54 = add nuw nsw i64 %indvars.iv35.i52106, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %indvars.iv.next36.i54 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ey = load float, ptr %i.ew, align 4
  %i.ez = load float, ptr %i.ex, align 4
  %i.fa = fcmp une float %i.ey, %i.ez
  br i1 %i.fa, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56.thread, label %bb.o

bb.o:                                             ; preds = %.lr.ph107
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.fc = load float, ptr %i.fb, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.fe = load float, ptr %i.fd, align 4
  %i.ff = fcmp une float %i.fc, %i.fe
  br i1 %i.ff, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56.thread, label %_ZNK11aiVectorKeyneERKS_.exit.i55

_ZNK11aiVectorKeyneERKS_.exit.i55:                ; preds = %bb.o
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fh = load float, ptr %i.fg, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fj = load float, ptr %i.fi, align 4
  %i.fk = fcmp une float %i.fh, %i.fj
  br i1 %i.fk, label %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56.thread, label %.preheader.i51, !llvm.loop !20

_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56:     ; preds = %.preheader29.i45, %.preheader.i51, %.preheader29.i45.preheader, %.preheader.i51.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false)
  tail call void @_ZdaPv(ptr noundef %i.ds) #22
  store i32 1, ptr %i.do, align 8
  %i.fl = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #23 ; 2 uses
  store ptr %i.fl, ptr %i.dr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.p

_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56.thread: ; preds = %_Z14EpsilonCompareI11aiVectorKeyEbRKT_S3_f.exit.i50, %bb.n, %.lr.ph104, %_ZNK11aiVectorKeyneERKS_.exit.i55, %bb.o, %.lr.ph107, %_Z12AllIdenticalI9aiQuatKeyEbPT_jf.exit.thread
  %i.fm = icmp eq i32 %.1, 1
  br i1 %i.fm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56, %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56.thread
  %i.fn = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fn, ptr noundef nonnull @.str.8)
  br label %bb.q

bb.q:                                             ; preds = %_Z12AllIdenticalI11aiVectorKeyEbPT_jf.exit56.thread, %bb.p, %bb.d
  ret void
}

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp22FindInvalidDataProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(29) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
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
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #20
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #20
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #20
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #20
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !32
  store i8 0, ptr %i.a, align 8, !alias.scope !32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !32 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !32 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !32 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !32 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
end_hunk_1
