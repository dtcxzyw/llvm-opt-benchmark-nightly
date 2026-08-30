Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linker_topo?download=true
inline.NumInlined: 226
inline.NumDeleted: 85
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::locale::id" = type { i64 }
%"class.LightGBM::BruckMap" = type { i32, %"class.std::vector", %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.LightGBM::RecursiveHalvingMap" = type { i32, i32, i8, i32, %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector" }

$_ZN3fmt3v1112format_facetISt6localeE2idE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1112format_facetISt6localeE2idE), align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1112format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1112format_facetISt6localeE2idE], section "llvm.metadata"

@_ZN8LightGBM8BruckMapC1Ev = unnamed_addr alias void (ptr), ptr @_ZN8LightGBM8BruckMapC2Ev
@_ZN8LightGBM8BruckMapC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN8LightGBM8BruckMapC2Ei
@_ZN8LightGBM19RecursiveHalvingMapC1Ev = unnamed_addr alias void (ptr), ptr @_ZN8LightGBM19RecursiveHalvingMapC2Ev
@_ZN8LightGBM19RecursiveHalvingMapC1EiNS_24RecursiveHalvingNodeTypeEb = unnamed_addr alias void (ptr, i32, i32, i1), ptr @_ZN8LightGBM19RecursiveHalvingMapC2EiNS_24RecursiveHalvingNodeTypeEb

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN8LightGBM8BruckMapC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 4), (8, 56)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %0, align 8, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM8BruckMapC2Ei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 4), (8, 56)) %0, i32 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i32 %1, ptr %0, align 8, !tbaa !9
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.av, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19 ]
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19 ]
  %.0733 = phi i32 [ 0, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19 ]
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.j, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.l, ptr %i.d, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !20   ; 4 uses
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775804
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 2305843009213693951)
  %i.v = select i1 %i.t, i64 2305843009213693951, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #11
          to label %.noexc9 unwind label %.loopexit ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  store i32 -1, ptr %i.y, align 4, !tbaa !19
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %.noexc9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %2 = load ptr, ptr %i.e, align 8, !tbaa !18
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %4) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !20
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !18
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !17
  %.pre34 = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.c
  %i.ac = phi ptr [ %.pre34, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.ad = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 -1, ptr %i.ad, align 4, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !20  ; 4 uses
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 5 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775804
  br i1 %i.aj, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc17 unwind label %.loopexit.split-lp26

.noexc17:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11: ; preds = %bb.i
  %i.ak = ashr exact i64 %i.ai, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i12 = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i12, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 2305843009213693951)
  %i.ao = select i1 %i.am, i64 2305843009213693951, i64 %i.an ; 3 uses
  %.not.i.i.i.i13 = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i13)
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #11
          to label %.noexc18 unwind label %.loopexit25 ; 4 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  store i32 -1, ptr %i.ar, align 4, !tbaa !19
  %i.as = icmp sgt i64 %i.ai, 0
  br i1 %i.as, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

bb.k:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %i.af, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14: ; preds = %bb.k, %.noexc18
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %.not.i17.i.i.i15 = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i.i15, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  %5 = load ptr, ptr %i.g, align 8, !tbaa !18
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %6, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %7) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !20
  store ptr %i.at, ptr %i.f, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ao ; 2 uses
  store ptr %i.au, ptr %i.g, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19

_ZNSt6vectorIiSaIiEE9push_backEOi.exit19:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, %bb.h
  %i.av = phi ptr [ %i.au, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16 ], [ %i.ac, %bb.h ]
  %i.aw = phi ptr [ %i.at, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16 ], [ %i.ae, %bb.h ]
  %i.ax = add nuw nsw i32 %.0733, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !21

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit25:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11
  %lpad.loopexit27 = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp26:                             ; preds = %bb.j
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit25, %.loopexit.split-lp26, %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit27, %.loopexit25 ], [ %lpad.loopexit.split-lp28, %.loopexit.split-lp26 ]
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.m, %bb.n
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit21

_ZNSt6vectorIiSaIiEED2Ev.exit21:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.o
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM8BruckMap9ConstructEii(ptr dead_on_unwind noalias writable sret(%"class.LightGBM::BruckMap") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %2, 1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.b = phi i32 [ %i.r, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 1, %bb.a ] ; 2 uses
  %.051 = phi i32 [ %i.q, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.050 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.13.049 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 3 uses
  %.sroa.10.048 = phi ptr [ %.pn37, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 7 uses
  %.not.i.i = icmp eq ptr %.sroa.13.049, %.sroa.0.050
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i32 %i.b, ptr %.sroa.13.049, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.c:                                             ; preds = %.lr.ph
  %i.c = ptrtoint ptr %.sroa.0.050 to i64
  %i.d = ptrtoint ptr %.sroa.10.048 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 6 uses
  %i.f = icmp eq i64 %i.e, 9223372036854775804
  br i1 %i.f, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.g = ashr exact i64 %i.e, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  %i.h = add nsw i64 %.sroa.speculated.i.i.i.i, %i.g ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.g
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.h, i64 2305843009213693951)
  %i.k = select i1 %i.i, i64 2305843009213693951, i64 %i.j ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #11
          to label %.noexc27 unwind label %.loopexit ; 4 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.e ; 2 uses
  store i32 %i.b, ptr %i.n, align 4, !tbaa !19
  %i.o = icmp sgt i64 %i.e, 0
  br i1 %i.o, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %.noexc27
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %.sroa.10.048, i64 %i.e, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %.noexc27
  %.not.i17.i.i.i = icmp eq ptr %.sroa.10.048, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.10.048, i64 noundef %i.e) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.b
  %.pn37 = phi ptr [ %i.m, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.10.048, %bb.b ] ; 2 uses
  %.sroa.13.1.a = phi ptr [ %i.n, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.049, %bb.b ]
  %.sroa.0.1 = phi ptr [ %i.p, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0.050, %bb.b ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.a, i64 4
  %i.q = add nuw nsw i32 %.051, 1                 ; 2 uses
  %i.r = shl nuw i32 2, %.051                     ; 2 uses
  %i.s = icmp slt i32 %i.r, %2
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !23

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.a
  %.sroa.13.0.lcssa.a = phi ptr [ null, %bb.a ], [ %.pn37, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.0.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  invoke void @_ZN8LightGBM8BruckMapC1Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.0.lcssa)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %._crit_edge
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = add i32 %2, %1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  %wide.trip.count = zext i32 %.0.lcssa to i64
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph55, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0.lcssa.a, i64 %indvars.iv ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !19
  %i.ab = add nsw i32 %i.aa, %1
  %i.ac = srem i32 %i.ab, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !19
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !19
  %i.af = sub i32 %i.v, %i.ae
  %i.ag = srem i32 %i.af, %2
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge56.thread, label %bb.h, !llvm.loop !24

._crit_edge56:                                    ; preds = %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.13.0.lcssa.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %._crit_edge56.thread

._crit_edge56.thread:                             ; preds = %bb.h, %._crit_edge56
  %i.ai = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.aj = ptrtoint ptr %.sroa.13.0.lcssa.a to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.13.0.lcssa.a, i64 noundef %i.ak) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge56, %._crit_edge56.thread
  ret void

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.sroa.13.046 = phi ptr [ %.sroa.13.0.lcssa.a, %bb.g ], [ %.sroa.10.048, %.loopexit ], [ %.sroa.10.048, %.loopexit.split-lp ] ; 3 uses
  %.sroa.0.042 = phi ptr [ %.sroa.0.0.lcssa, %bb.g ], [ %.sroa.0.050, %.loopexit ], [ %.sroa.0.050, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i28 = icmp eq ptr %.sroa.13.046, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = ptrtoint ptr %.sroa.0.042 to i64
  %i.am = ptrtoint ptr %.sroa.13.046 to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.13.046, i64 noundef %i.an) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN8LightGBM19RecursiveHalvingMapC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) initializes((0, 4), (16, 136)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %0, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19RecursiveHalvingMapC2EiNS_24RecursiveHalvingNodeTypeEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) initializes((0, 9), (16, 136)) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, i8 0, i64 120, i1 false)
  store i32 %2, ptr %i.g, align 4, !tbaa !29
  store i32 %1, ptr %0, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.h, align 8, !tbaa !30
  %.not = icmp ne i32 %2, 2
  %i.i = icmp sgt i32 %1, 0
  %or.cond = and i1 %.not, %i.i
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50
  %.0898 = phi i32 [ 0, %.lr.ph ], [ %i.dk, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50 ]
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !17   ; 4 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.t, align 4, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.v, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !20   ; 4 uses
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 5 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775804
  br i1 %i.aa, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ab = ashr exact i64 %i.z, 2                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 2305843009213693951)
  %i.af = select i1 %i.ad, i64 2305843009213693951, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #11
          to label %.noexc10 unwind label %.loopexit68 ; 4 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store i32 -1, ptr %i.ai, align 4, !tbaa !19
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %.noexc10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %4 = load ptr, ptr %i.k, align 8, !tbaa !18
  %5 = ptrtoint ptr %4 to i64
  %6 = sub i64 %5, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %6) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !20
  store ptr %i.ak, ptr %i.j, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.al, ptr %i.k, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.c
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !17  ; 4 uses
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !18
  %.not.i.i11 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 -1, ptr %i.am, align 4, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.ao, ptr %i.l, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit20

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !20  ; 4 uses
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775804
  br i1 %i.at, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i12

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc18 unwind label %.loopexit.split-lp70

.noexc18:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i12: ; preds = %bb.i
  %i.au = ashr exact i64 %i.as, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i13 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i13, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 2305843009213693951)
  %i.ay = select i1 %i.aw, i64 2305843009213693951, i64 %i.ax ; 3 uses
  %.not.i.i.i.i14 = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i14)
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #11
          to label %.noexc19 unwind label %.loopexit69 ; 4 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i12
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store i32 -1, ptr %i.bb, align 4, !tbaa !19
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i15

bb.k:                                             ; preds = %.noexc19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i15

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i15: ; preds = %bb.k, %.noexc19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.not.i17.i.i.i16 = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i16, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i17, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i15
  %7 = load ptr, ptr %i.m, align 8, !tbaa !18
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %8, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %9) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i17

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i17: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i15
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !20
  store ptr %i.bd, ptr %i.l, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr %i.m, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit20

_ZNSt6vectorIiSaIiEE9push_backEOi.exit20:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i17, %bb.h
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !17  ; 4 uses
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !18
  %.not.i.i21 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit20
  store i32 -1, ptr %i.bf, align 4, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store ptr %i.bh, ptr %i.n, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit30

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit20
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 5 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775804
  br i1 %i.bm, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i22

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc28 unwind label %.loopexit.split-lp75

.noexc28:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i22: ; preds = %bb.n
  %i.bn = ashr exact i64 %i.bl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i23 = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i23, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 2305843009213693951)
  %i.br = select i1 %i.bp, i64 2305843009213693951, i64 %i.bq ; 3 uses
  %.not.i.i.i.i24 = icmp ne i64 %i.br, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i24)
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #11
          to label %.noexc29 unwind label %.loopexit74 ; 4 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i22
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bl ; 2 uses
  store i32 -1, ptr %i.bu, align 4, !tbaa !19
  %i.bv = icmp sgt i64 %i.bl, 0
  br i1 %i.bv, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i25

bb.p:                                             ; preds = %.noexc29
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr align 4 %i.bi, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i25

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i25: ; preds = %bb.p, %.noexc29
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.not.i17.i.i.i26 = icmp eq ptr %i.bi, null
  br i1 %.not.i17.i.i.i26, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i27, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i25
  %10 = load ptr, ptr %i.o, align 8, !tbaa !18
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %11, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %12) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i27

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i27: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i25
  store ptr %i.bt, ptr %i.d, align 8, !tbaa !20
  store ptr %i.bw, ptr %i.n, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.br
  store ptr %i.bx, ptr %i.o, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit30

_ZNSt6vectorIiSaIiEE9push_backEOi.exit30:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i27, %bb.m
  %i.by = load ptr, ptr %i.p, align 8, !tbaa !17  ; 4 uses
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !18
  %.not.i.i31 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit30
  store i32 -1, ptr %i.by, align 4, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store ptr %i.ca, ptr %i.p, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit30
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !20  ; 4 uses
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 5 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775804
  br i1 %i.cf, label %bb.t, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i32

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc38 unwind label %.loopexit.split-lp80

.noexc38:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i32: ; preds = %bb.s
  %i.cg = ashr exact i64 %i.ce, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i33, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 2305843009213693951)
  %i.ck = select i1 %i.ci, i64 2305843009213693951, i64 %i.cj ; 3 uses
  %.not.i.i.i.i34 = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i34)
  %i.cl = shl nuw nsw i64 %i.ck, 2
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #11
          to label %.noexc39 unwind label %.loopexit79 ; 4 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i32
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store i32 -1, ptr %i.cn, align 4, !tbaa !19
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i35

bb.u:                                             ; preds = %.noexc39
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr align 4 %i.cb, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i35

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i35: ; preds = %bb.u, %.noexc39
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %.not.i17.i.i.i36 = icmp eq ptr %i.cb, null
  br i1 %.not.i17.i.i.i36, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i37, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i35
  %13 = load ptr, ptr %i.q, align 8, !tbaa !18
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %15) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i37

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i37: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i35
  store ptr %i.cm, ptr %i.e, align 8, !tbaa !20
  store ptr %i.cp, ptr %i.p, align 8, !tbaa !17
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.cq, ptr %i.q, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40

_ZNSt6vectorIiSaIiEE9push_backEOi.exit40:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i37, %bb.r
  %i.cr = load ptr, ptr %i.r, align 8, !tbaa !17  ; 4 uses
  %i.cs = load ptr, ptr %i.s, align 8, !tbaa !18
  %.not.i.i41 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i.i41, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40
  store i32 -1, ptr %i.cr, align 4, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store ptr %i.ct, ptr %i.r, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40
  %i.cu = load ptr, ptr %i.f, align 8, !tbaa !20  ; 4 uses
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 5 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775804
  br i1 %i.cy, label %bb.y, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc48 unwind label %.loopexit.split-lp85

.noexc48:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42: ; preds = %bb.x
  %i.cz = ashr exact i64 %i.cx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i43 = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i.i43, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 2305843009213693951)
  %i.dd = select i1 %i.db, i64 2305843009213693951, i64 %i.dc ; 3 uses
  %.not.i.i.i.i44 = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i44)
  %i.de = shl nuw nsw i64 %i.dd, 2
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #11
          to label %.noexc49 unwind label %.loopexit84 ; 4 uses

.noexc49:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cx ; 2 uses
  store i32 -1, ptr %i.dg, align 4, !tbaa !19
  %i.dh = icmp sgt i64 %i.cx, 0
  br i1 %i.dh, label %bb.z, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45

bb.z:                                             ; preds = %.noexc49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.df, ptr align 4 %i.cu, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45: ; preds = %bb.z, %.noexc49
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %.not.i17.i.i.i46 = icmp eq ptr %i.cu, null
  br i1 %.not.i17.i.i.i46, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45
  %16 = load ptr, ptr %i.s, align 8, !tbaa !18
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %i.cw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %18) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45
  store ptr %i.df, ptr %i.f, align 8, !tbaa !20
  store ptr %i.di, ptr %i.r, align 8, !tbaa !17
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dd
  store ptr %i.dj, ptr %i.s, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50

_ZNSt6vectorIiSaIiEE9push_backEOi.exit50:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47, %bb.w
  %i.dk = add nuw nsw i32 %.0898, 1               ; 2 uses
  %i.dl = load i32, ptr %0, align 8, !tbaa !25
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.b, label %.loopexit, !llvm.loop !31

.loopexit68:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit69:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i12
  %lpad.loopexit71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp70:                             ; preds = %bb.j
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit74:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i22
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp75:                             ; preds = %bb.o
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit79:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i32
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp80:                             ; preds = %bb.t
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit84:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42
  %lpad.loopexit86 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp85:                             ; preds = %bb.y
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit84, %.loopexit.split-lp85, %.loopexit79, %.loopexit.split-lp80, %.loopexit74, %.loopexit.split-lp75, %.loopexit69, %.loopexit.split-lp70, %.loopexit68, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp82, %.loopexit.split-lp80 ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp75 ], [ %lpad.loopexit.split-lp72, %.loopexit.split-lp70 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit68 ], [ %lpad.loopexit71, %.loopexit69 ], [ %lpad.loopexit76, %.loopexit74 ], [ %lpad.loopexit81, %.loopexit79 ], [ %lpad.loopexit86, %.loopexit84 ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp85 ]
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dr) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ab, %bb.ac
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIiSaIiEED2Ev.exit52, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dt = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52

_ZNSt6vectorIiSaIiEED2Ev.exit52:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ad
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIiSaIiEED2Ev.exit54, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit54

_ZNSt6vectorIiSaIiEED2Ev.exit54:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52, %bb.ae
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIiSaIiEED2Ev.exit56, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54
  %i.ed = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit56

_ZNSt6vectorIiSaIiEED2Ev.exit56:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54, %bb.af
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIiSaIiEED2Ev.exit58, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit56
  %i.ei = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit58

_ZNSt6vectorIiSaIiEED2Ev.exit58:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit56, %bb.ag
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19RecursiveHalvingMap9ConstructEii(ptr dead_on_unwind noalias writable sret(%"class.LightGBM::RecursiveHalvingMap") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.b ], [ -1, %bb.a ] ; 4 uses
  %.0124 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]  ; 5 uses
  %i.a = shl nuw i32 1, %.0124
  %.not = icmp sgt i32 %i.a, %2
  %i.b = add nuw nsw i32 %.0124, 1
  %indvars.iv.next = add nsw i32 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !32

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %.0124, -1                   ; 4 uses
  %i.d = icmp samesign ugt i32 %.0124, 1          ; 3 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.e = add nsw i32 %.0124, -2
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.c
  %.sroa.30.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.30.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.0250.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.0250.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 9 uses
  %i.f = shl nuw i32 1, %i.c                      ; 6 uses
  %i.g = icmp eq i32 %i.f, %2
  br i1 %i.g, label %bb.j, label %bb.m

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.0127301 = phi i32 [ 0, %.lr.ph ], [ %i.x, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.0250.0300 = phi ptr [ null, %.lr.ph ], [ %.sroa.0250.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.sroa.27.0299 = phi ptr [ null, %.lr.ph ], [ %.sroa.27.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 6 uses
  %.sroa.30.0298 = phi ptr [ null, %.lr.ph ], [ %.sroa.30.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.h = sub nsw i32 %i.e, %.0127301
  %i.i = shl nuw i32 1, %i.h                      ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.27.0299, %.sroa.30.0298
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %.sroa.27.0299, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.f:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %.sroa.27.0299 to i64
  %i.k = ptrtoint ptr %.sroa.0250.0300 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775804
  br i1 %i.m, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.n = ashr exact i64 %i.l, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
end_hunk_0
