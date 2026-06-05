inline.NumInlined: 839
inline.NumDeleted: 378
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::chrono::time_point" = type { %"class.std::chrono::duration" }
%"class.std::chrono::duration" = type { i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<facebook::velox::date::ttinfo, std::allocator<facebook::velox::date::ttinfo>>::_Vector_impl" }
%"struct.std::_Vector_base<facebook::velox::date::ttinfo, std::allocator<facebook::velox::date::ttinfo>>::_Vector_impl" = type { %"struct.std::_Vector_base<facebook::velox::date::ttinfo, std::allocator<facebook::velox::date::ttinfo>>::_Vector_impl_data" }
%"struct.std::_Vector_base<facebook::velox::date::ttinfo, std::allocator<facebook::velox::date::ttinfo>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.facebook::velox::date::ttinfo" = type { i32, i8, i8, [2 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<facebook::velox::date::transition, std::allocator<facebook::velox::date::transition>>::_Vector_impl" }
%"struct.std::_Vector_base<facebook::velox::date::transition, std::allocator<facebook::velox::date::transition>>::_Vector_impl" = type { %"struct.std::_Vector_base<facebook::velox::date::transition, std::allocator<facebook::velox::date::transition>>::_Vector_impl_data" }
%"struct.std::_Vector_base<facebook::velox::date::transition, std::allocator<facebook::velox::date::transition>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.facebook::velox::date::expanded_ttinfo" = type <{ %"class.std::chrono::duration", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>

$_ZN8facebook5velox4date16load_transitionsIiEESt6vectorINS1_10transitionESaIS4_EERSii = comdat any

$_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE7reserveEm = comdat any

$_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE14_M_emplace_auxIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEN9__gnu_cxx17__normal_iteratorIPS3_S5_EENSJ_IPKS3_S5_EEDpOT_ = comdat any

$_ZN8facebook5velox4date16load_transitionsIlEESt6vectorINS1_10transitionESaIS4_EERSii = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZN8facebook5velox4dateL11min_secondsE = internal constant %"class.std::chrono::time_point" { %"class.std::chrono::duration" { i64 -9223372017043200 } }, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4date11load_headerERSi(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  %i.b = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  %i.c = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  %i.d = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZN8facebook5velox4date12load_versionERSi(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.b = trunc i32 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4date12skip_reserveERSi(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi6ignoreEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 15) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi6ignoreEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4date11load_countsERSiRiS3_S3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i64 noundef 4) ; 0 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !3
  %i.c = tail call noundef i32 @llvm.bswap.i32(i32 %i.b)
  store i32 %i.c, ptr %1, align 4, !tbaa !3
  %i.d = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, i64 noundef 4) ; 0 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  %i.f = tail call noundef i32 @llvm.bswap.i32(i32 %i.e)
  store i32 %i.f, ptr %2, align 4, !tbaa !3
  %i.g = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, i64 noundef 4) ; 0 uses
  %i.h = load i32, ptr %3, align 4, !tbaa !3
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.h)
  store i32 %i.i, ptr %3, align 4, !tbaa !3
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, i64 noundef 4) ; 0 uses
  %i.k = load i32, ptr %4, align 4, !tbaa !3
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %i.l, ptr %4, align 4, !tbaa !3
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, i64 noundef 4) ; 0 uses
  %i.n = load i32, ptr %5, align 4, !tbaa !3
  %i.o = tail call noundef i32 @llvm.bswap.i32(i32 %i.n)
  store i32 %i.o, ptr %5, align 4, !tbaa !3
  %i.p = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, i64 noundef 4) ; 0 uses
  %i.q = load i32, ptr %6, align 4, !tbaa !3
  %i.r = tail call noundef i32 @llvm.bswap.i32(i32 %i.q)
  store i32 %i.r, ptr %6, align 4, !tbaa !3
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4date12load_indicesERSii(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #12 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !7
  store ptr %i.d, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c ; 3 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !12
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit ] ; 4 uses
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit ]
  %i.j = phi ptr [ %i.f, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit ] ; 5 uses
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.c unwind label %.loopexit  ; 0 uses

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 1, !tbaa !13
  store i8 %i.m, ptr %i.i, align 1, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !11
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = sub i64 %i.o, %i.p                       ; 8 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775807
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.k, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.s = add i64 %.sroa.speculated.i.i.i, %i.q    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807)
  %i.v = select i1 %i.t, i64 9223372036854775807, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i, label %3

3:                                                ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %4 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #12
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i unwind label %.loopexit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %3, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %5 = phi ptr [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i ], [ %4, %3 ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 %i.q ; 2 uses
  %i.x = load i8, ptr %i.a, align 1, !tbaa !13
  store i8 %i.x, ptr %i.w, align 1, !tbaa !13
  %i.y = icmp sgt i64 %i.q, 0
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %i.k, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.q) #15
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.z, ptr %i.h, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 %i.v
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit

_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.d
  %i.ab = phi ptr [ %i.z, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.n, %bb.d ]
  %i.ac = phi ptr [ %5, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.ad = phi ptr [ %i.aa, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.j, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ae = add nuw nsw i32 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !14

.loopexit:                                        ; preds = %bb.b, %3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.k, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit, %bb.a, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %.lcssa16 = phi ptr [ %i.d, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i ], [ null, %bb.a ], [ %i.ac, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit ]
  %.lcssa = phi ptr [ %i.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i ], [ null, %bb.a ], [ %i.ad, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit ]
  store ptr %.lcssa, ptr %i.b, align 8
  store ptr %.lcssa16, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not.i.i.i12 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = ptrtoint ptr %i.j to i64
  %i.ag = ptrtoint ptr %i.k to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ah) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4date11load_ttinfoERSii(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.0") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.facebook::velox::date::ttinfo", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseIN8facebook5velox4date6ttinfoESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8facebook5velox4date6ttinfoESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #12 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.b ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !20
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4date6ttinfoESaIS3_EE11_M_allocateEm.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 4 uses
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ]
  %i.j = phi ptr [ %i.f, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 5 uses
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i64 noundef 6)
          to label %bb.c unwind label %.loopexit  ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %3, align 8, !tbaa !3
  %i.n = call noundef i32 @llvm.bswap.i32(i32 %i.m)
  store i32 %i.n, ptr %3, align 8, !tbaa !3
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %3, align 8
  store i64 %i.o, ptr %i.i, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.h, align 8, !tbaa !19
  br label %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr %i.a, align 8
  store ptr %i.k, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #12
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  %i.ac = load i64, ptr %3, align 8
  store i64 %i.ac, ptr %i.ab, align 4
  %i.ad = icmp sgt i64 %i.s, 0
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.g:                                             ; preds = %.noexc11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.k, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.g, %.noexc11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.s) #15
  br label %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  br label %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.d
  %i.ag = phi ptr [ %i.ae, %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.p, %bb.d ]
  %i.ah = phi ptr [ %i.aa, %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.ai = phi ptr [ %i.af, %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.j, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.aj = add nuw nsw i32 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.aj, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !21

.loopexit:                                        ; preds = %bb.b, %_ZNKSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.a, align 8
  store ptr %i.k, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit, %bb.a, %_ZNSt12_Vector_baseIN8facebook5velox4date6ttinfoESaIS3_EE11_M_allocateEm.exit.i
  %.lcssa16 = phi ptr [ %i.d, %_ZNSt12_Vector_baseIN8facebook5velox4date6ttinfoESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.a ], [ %i.ah, %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ]
  %.lcssa = phi ptr [ %i.f, %_ZNSt12_Vector_baseIN8facebook5velox4date6ttinfoESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.a ], [ %i.ai, %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ]
  store ptr %.lcssa, ptr %i.a, align 8
  store ptr %.lcssa16, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.not.i.i.i12 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = ptrtoint ptr %i.j to i64
  %i.al = ptrtoint ptr %i.k to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.am) #15
  br label %_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox4date6ttinfoESaIS3_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4date18load_abbreviationsB5cxx11ERSii(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !24
  store i8 0, ptr %i.a, align 8, !tbaa !13
  %i.c = zext i32 %2 to i64                       ; 4 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp ugt i32 %2, 15
  br i1 %.not.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.c, i64 30) ; 2 uses
  %i.d = add nuw nsw i64 %spec.select, 1
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #12
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread unwind label %bb.c ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  store ptr %i.e, ptr %0, align 8, !tbaa !27
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !13
  br label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %cond.i.i.i = icmp eq i32 %2, 1
  br i1 %cond.i.i.i, label %.sink.split.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  %i.f = phi ptr [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.f, i8 0, i64 %i.c, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i ]
  store i64 %i.c, ptr %i.b, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  store i8 0, ptr %i.h, align 1, !tbaa !13
  %.pre = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %.sink.split.i, %bb.a
  %i.i = phi ptr [ %.pre, %.sink.split.i ], [ %i.a, %bb.a ]
  %i.j = sext i32 %2 to i64
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.i, i64 noundef %i.j)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
end_hunk_0
