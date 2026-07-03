inline.NumInlined: 355
inline.NumDeleted: 176
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::SkipEmpty, std::basic_string_view<char>>::ConvertToContainer" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.absl::lts_20250512::strings_internal::Splitter" = type <{ %"class.std::basic_string_view", %"class.absl::lts_20250512::ByChar", [7 x i8] }>
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20250512::ByChar" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::array" = type { [16 x %struct.raw_view] }
%struct.raw_view = type { ptr, i64 }
%"class.absl::lts_20250512::strings_internal::SplitIterator" = type <{ i64, i32, [4 x i8], %"class.std::basic_string_view", ptr, %"class.absl::lts_20250512::ByChar", [7 x i8] }>

$__clang_call_terminate = comdat any

$_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_ = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2025051216strings_internal8SplitterINS8_6ByCharENS8_9SkipEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRSt17basic_string_viewIcS4_ERA1_KcEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRSt17basic_string_viewIcS3_ERA1_KcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEntclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb0EEEOSF_OSG_ = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJSt17basic_string_viewIcS4_ESC_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ISt17basic_string_viewIcS3_ES9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEntclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb0EEEOSB_OSC_ = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"google/protobuf/cpp_features.proto\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"google/protobuf/java_features.proto\00", align 1
@_ZN6google8protobuf8internal15is_oss_was_readE = dso_local local_unnamed_addr global i8 0, align 1
@_ZN6google8protobuf8internal6is_ossE = dso_local local_unnamed_addr global i8 1, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler23ParseGeneratorParameterESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorISt4pairINSt7__cxx1112basic_stringIcS4_SaIcEEESB_ESaISC_EE(i64 %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::SkipEmpty, std::basic_string_view<char>>::ConvertToContainer", align 1 ; 3 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 6 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 7 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i64 %0, ptr %5, align 8, !tbaa !8, !alias.scope !10
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !13, !alias.scope !10
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 44, ptr %i.a, align 8, !tbaa !16, !alias.scope !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !17
  call void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(18) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.b = load ptr, ptr %4, align 8, !tbaa !20     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not38 = icmp eq ptr %i.b, %i.d
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRSt17basic_string_viewIcS4_ERA1_KcEEERS7_DpOT_.exit
  %.pre = load ptr, ptr %4, align 8, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #17
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRSt17basic_string_viewIcS4_ERA1_KcEEERS7_DpOT_.exit
  %.sroa.027.039 = phi ptr [ %i.b, %.lr.ph ], [ %i.ag, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRSt17basic_string_viewIcS4_ERA1_KcEEERS7_DpOT_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.039, i64 16, i1 false), !tbaa.struct !25
  %i.p = load i64, ptr %6, align 8, !tbaa !26     ; 6 uses
  %.not32 = icmp eq i64 %i.p, 0
  br i1 %.not32, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c
  %9 = load ptr, ptr %i.e, align 8, !tbaa !28     ; 4 uses
  %10 = call ptr @memchr(ptr noundef %9, i32 noundef 61, i64 noundef %i.p) #16 ; 2 uses
  %.not.i.i = icmp eq ptr %10, null
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.q = ptrtoint ptr %10 to i64
  %i.r = ptrtoint ptr %9 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.g

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRSt17basic_string_viewIcS3_ERA1_KcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEntclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb0EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(1) @.str)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr %i.x, ptr %i.h, align 8, !tbaa !29
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRSt17basic_string_viewIcS4_ERA1_KcEEERS7_DpOT_.exit

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRSt17basic_string_viewIcS4_ERA1_KcEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(1) @.str)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRSt17basic_string_viewIcS4_ERA1_KcEEERS7_DpOT_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.s)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  store ptr %9, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.z = add nuw i64 %i.s, 1                      ; 3 uses
  %.not33 = icmp ult i64 %i.s, %i.p
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i64 noundef %i.z, i64 noundef %i.p) #18
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = sub nuw i64 %i.p, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 %i.z
  store i64 %i.aa, ptr %8, align 8
  store ptr %i.ab, ptr %i.g, align 8
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !29  ; 3 uses
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !32
  %.not.i21 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ISt17basic_string_viewIcS3_ES9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEntclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb0EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc23 unwind label %.loopexit

.noexc23:                                         ; preds = %bb.j
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr %i.af, ptr %i.h, align 8, !tbaa !29
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJSt17basic_string_viewIcS4_ESC_EEERS7_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJSt17basic_string_viewIcS4_ESC_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJSt17basic_string_viewIcS4_ESC_EEERS7_DpOT_.exit unwind label %.loopexit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJSt17basic_string_viewIcS4_ESC_EEERS7_DpOT_.exit: ; preds = %bb.k, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRSt17basic_string_viewIcS4_ERA1_KcEEERS7_DpOT_.exit

.loopexit:                                        ; preds = %bb.j, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.m

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRSt17basic_string_viewIcS4_ERA1_KcEEERS7_DpOT_.exit: ; preds = %bb.e, %.noexc, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJSt17basic_string_viewIcS4_ESC_EEERS7_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.027.039, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

bb.m:                                             ; preds = %bb.l, %bb.f
  %.pn14 = phi { ptr, i32 } [ %i.y, %bb.f ], [ %lpad.phi, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ah = load ptr, ptr %4, align 8, !tbaa !22    ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit26, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #17
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit26

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit26: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler10StripProtoB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = freeze i64 %1                            ; 10 uses
  %i.d = icmp ult i64 %i.c, 11
  br i1 %i.d, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -11      ; 2 uses
  %i.g = load i64, ptr %i.f, align 1
  %i.h = xor i64 %i.g, 7306087041378447406
  %i.i = getelementptr i8, ptr %i.f, i64 3
  %i.j = load i64, ptr %i.i, align 1
  %i.k = xor i64 %i.j, 7810779306592793711
  %i.l = or i64 %i.h, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38.thread

bb.b:                                             ; preds = %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  %i.p = add i64 %i.c, -11                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 1
  %i.s = xor i64 %i.r, 7306087041378447406
  %i.t = getelementptr i8, ptr %i.q, i64 3
  %i.u = load i64, ptr %i.t, align 1
  %i.v = xor i64 %i.u, 7810779306592793711
  %i.w = or i64 %i.s, %i.v
  %i.x = icmp ne i64 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  %spec.select.i = select i1 %i.z, i64 %i.p, i64 %i.c ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !8
  %i.ab = icmp ugt i64 %spec.select.i, 15
  br i1 %i.ab, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !35
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !8
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.ae = phi ptr [ %i.ac, %.noexc.i.i.i ], [ %i.aa, %bb.b ] ; 2 uses
  switch i64 %spec.select.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = load i8, ptr %2, align 1, !tbaa !16
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %2, i64 %spec.select.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !37
  %i.ai = load ptr, ptr %0, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.i

end_hunk_0
