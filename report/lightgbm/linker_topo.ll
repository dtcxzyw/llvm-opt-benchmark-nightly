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
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.bb, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19 ]
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19 ]
  %.0733 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19 ]
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
  %i.v = select i1 %i.t, i64 2305843009213693951, i64 %i.u ; 2 uses
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
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ad) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !20
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !18
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !17
  %.pre34 = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.c
  %i.af = phi ptr [ %.pre34, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.ag = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.ag, %i.af
  br i1 %.not.i.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 -1, ptr %i.ag, align 4, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !20  ; 4 uses
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775804
  br i1 %i.am, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc17.a unwind label %.loopexit.split-lp26

.noexc17.a:                                       ; preds = %bb.j
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11: ; preds = %bb.i
  %i.an = ashr exact i64 %i.al, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i12 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i.i12, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 2305843009213693951)
  %i.ar = select i1 %i.ap, i64 2305843009213693951, i64 %i.aq ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #11
          to label %.noexc18 unwind label %.loopexit25 ; 4 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.al ; 2 uses
  store i32 -1, ptr %i.au, align 4, !tbaa !19
  %i.av = icmp sgt i64 %i.al, 0
  br i1 %i.av, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

bb.k:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14: ; preds = %bb.k, %.noexc18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %.not.i17.i.i.i15 = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i.i15, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.az) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  store ptr %i.at, ptr %i.b, align 8, !tbaa !20
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar ; 2 uses
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19

_ZNSt6vectorIiSaIiEE9push_backEOi.exit19:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, %bb.h
  %i.bb = phi ptr [ %i.ba, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16 ], [ %i.af, %bb.h ]
  %i.bc = phi ptr [ %i.aw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16 ], [ %i.ah, %bb.h ]
  %i.bd = add nuw nsw i32 %.0733, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %1
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
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.m, %bb.n
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #12
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
  %.052 = phi i32 [ %i.q, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.13.051 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.10.050 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 3 uses
  %.sroa.0.049 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 7 uses
  %.not.i.i = icmp eq ptr %.sroa.10.050, %.sroa.13.051
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i32 %i.b, ptr %.sroa.10.050, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.c:                                             ; preds = %.lr.ph
  %i.c = ptrtoint ptr %.sroa.13.051 to i64
  %i.d = ptrtoint ptr %.sroa.0.049 to i64
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
  %i.k = select i1 %i.i, i64 2305843009213693951, i64 %i.j ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #11
          to label %.noexc27 unwind label %.loopexit ; 4 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.e ; 2 uses
  store i32 %i.b, ptr %i.n, align 4, !tbaa !19
  %i.o = icmp sgt i64 %i.e, 0
  br i1 %i.o, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %.noexc27
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %.sroa.0.049, i64 %i.e, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %.noexc27
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.049, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.049, i64 noundef %i.e) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.b
  %.sroa.0.1 = phi ptr [ %i.m, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0.049, %bb.b ] ; 2 uses
  %.pn38 = phi ptr [ %i.n, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.10.050, %bb.b ]
  %.sroa.13.1 = phi ptr [ %i.p, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.051, %bb.b ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn38, i64 4
  %i.q = add nuw nsw i32 %.052, 1                 ; 2 uses
  %i.r = shl nuw i32 2, %.052                     ; 2 uses
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
  %.sroa.0.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  invoke void @_ZN8LightGBM8BruckMapC1Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.0.lcssa)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %._crit_edge
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
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

bb.h:                                             ; preds = %.lr.ph56, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv ; 2 uses
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
  br i1 %exitcond.not, label %._crit_edge57.thread, label %bb.h, !llvm.loop !24

._crit_edge57:                                    ; preds = %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %._crit_edge57.thread

._crit_edge57.thread:                             ; preds = %bb.h, %._crit_edge57
  %i.ai = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.aj = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.ak) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge57, %._crit_edge57.thread
  ret void

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.sroa.0.047 = phi ptr [ %.sroa.0.0.lcssa, %bb.g ], [ %.sroa.0.049, %.loopexit ], [ %.sroa.0.049, %.loopexit.split-lp ] ; 3 uses
  %.sroa.13.043 = phi ptr [ %.sroa.13.0.lcssa, %bb.g ], [ %.sroa.13.051, %.loopexit ], [ %.sroa.13.051, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i28 = icmp eq ptr %.sroa.0.047, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = ptrtoint ptr %.sroa.13.043 to i64
  %i.am = ptrtoint ptr %.sroa.0.047 to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.047, i64 noundef %i.an) #12
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
  %.0898 = phi i32 [ 0, %.lr.ph ], [ %i.dz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50 ]
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
  %i.af = select i1 %i.ad, i64 2305843009213693951, i64 %i.ae ; 2 uses
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
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.an) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !20
  store ptr %i.ak, ptr %i.j, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ao, ptr %i.k, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.c
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !17  ; 4 uses
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !18
  %.not.i.i11 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 -1, ptr %i.ap, align 4, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store ptr %i.ar, ptr %i.l, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit20

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !20  ; 4 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 5 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775804
  br i1 %i.aw, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i12

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc18.a unwind label %.loopexit.split-lp70

.noexc18.a:                                       ; preds = %bb.j
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i12: ; preds = %bb.i
  %i.ax = ashr exact i64 %i.av, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i13 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i13, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 2305843009213693951)
  %i.bb = select i1 %i.az, i64 2305843009213693951, i64 %i.ba ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #11
          to label %.noexc19 unwind label %.loopexit69 ; 4 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i12
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 2 uses
  store i32 -1, ptr %i.be, align 4, !tbaa !19
  %i.bf = icmp sgt i64 %i.av, 0
  br i1 %i.bf, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i15

bb.k:                                             ; preds = %.noexc19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 4 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i15

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i15: ; preds = %bb.k, %.noexc19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.not.i17.i.i.i16 = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i.i16, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i17, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i15
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bj) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i17

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i17: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i15
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !20
  store ptr %i.bg, ptr %i.l, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bk, ptr %i.m, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit20

_ZNSt6vectorIiSaIiEE9push_backEOi.exit20:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i17, %bb.h
  %i.bl = load ptr, ptr %i.n, align 8, !tbaa !17  ; 4 uses
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !18
  %.not.i.i21 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit20
  store i32 -1, ptr %i.bl, align 4, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store ptr %i.bn, ptr %i.n, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit30

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit20
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 5 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775804
  br i1 %i.bs, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i22

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc28 unwind label %.loopexit.split-lp75

.noexc28:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i22: ; preds = %bb.n
  %i.bt = ashr exact i64 %i.br, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i23 = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i.i23, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 2305843009213693951)
  %i.bx = select i1 %i.bv, i64 2305843009213693951, i64 %i.bw ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 2
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #11
          to label %.noexc29 unwind label %.loopexit74 ; 4 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i22
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 2 uses
  store i32 -1, ptr %i.ca, align 4, !tbaa !19
  %i.cb = icmp sgt i64 %i.br, 0
  br i1 %i.cb, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i25

bb.p:                                             ; preds = %.noexc29
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr align 4 %i.bo, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i25

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i25: ; preds = %bb.p, %.noexc29
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %.not.i17.i.i.i26 = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i.i26, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i27, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i25
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cf) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i27

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i27: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i25
  store ptr %i.bz, ptr %i.d, align 8, !tbaa !20
  store ptr %i.cc, ptr %i.n, align 8, !tbaa !17
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cg, ptr %i.o, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit30

_ZNSt6vectorIiSaIiEE9push_backEOi.exit30:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i27, %bb.m
  %i.ch = load ptr, ptr %i.p, align 8, !tbaa !17  ; 4 uses
  %i.ci = load ptr, ptr %i.q, align 8, !tbaa !18
  %.not.i.i31 = icmp eq ptr %i.ch, %i.ci
  br i1 %.not.i.i31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit30
  store i32 -1, ptr %i.ch, align 4, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store ptr %i.cj, ptr %i.p, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit30
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !20  ; 4 uses
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cn = sub i64 %i.cl, %i.cm                    ; 5 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %bb.t, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i32

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc38 unwind label %.loopexit.split-lp80

.noexc38:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i32: ; preds = %bb.s
  %i.cp = ashr exact i64 %i.cn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i.i.i33, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 2305843009213693951)
  %i.ct = select i1 %i.cr, i64 2305843009213693951, i64 %i.cs ; 2 uses
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #11
          to label %.noexc39 unwind label %.loopexit79 ; 4 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i32
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.cn ; 2 uses
  store i32 -1, ptr %i.cw, align 4, !tbaa !19
  %i.cx = icmp sgt i64 %i.cn, 0
  br i1 %i.cx, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i35

bb.u:                                             ; preds = %.noexc39
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cv, ptr align 4 %i.ck, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i35

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i35: ; preds = %bb.u, %.noexc39
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %.not.i17.i.i.i36 = icmp eq ptr %i.ck, null
  br i1 %.not.i17.i.i.i36, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i37, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i35
  %i.cz = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.db) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i37

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i37: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i35
  store ptr %i.cv, ptr %i.e, align 8, !tbaa !20
  store ptr %i.cy, ptr %i.p, align 8, !tbaa !17
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ct
  store ptr %i.dc, ptr %i.q, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40

_ZNSt6vectorIiSaIiEE9push_backEOi.exit40:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i37, %bb.r
  %i.dd = load ptr, ptr %i.r, align 8, !tbaa !17  ; 4 uses
  %i.de = load ptr, ptr %i.s, align 8, !tbaa !18
  %.not.i.i41 = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i.i41, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40
  store i32 -1, ptr %i.dd, align 4, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store ptr %i.df, ptr %i.r, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !20  ; 4 uses
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 5 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775804
  br i1 %i.dk, label %bb.y, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc48 unwind label %.loopexit.split-lp85

.noexc48:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42: ; preds = %bb.x
  %i.dl = ashr exact i64 %i.dj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i43 = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i43, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = tail call i64 @llvm.umin.i64(i64 %i.dm, i64 2305843009213693951)
  %i.dp = select i1 %i.dn, i64 2305843009213693951, i64 %i.do ; 2 uses
  %i.dq = shl nuw nsw i64 %i.dp, 2
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #11
          to label %.noexc49 unwind label %.loopexit84 ; 4 uses

.noexc49:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.dj ; 2 uses
  store i32 -1, ptr %i.ds, align 4, !tbaa !19
  %i.dt = icmp sgt i64 %i.dj, 0
  br i1 %i.dt, label %bb.z, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45

bb.z:                                             ; preds = %.noexc49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dr, ptr align 4 %i.dg, i64 %i.dj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45: ; preds = %bb.z, %.noexc49
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %.not.i17.i.i.i46 = icmp eq ptr %i.dg, null
  br i1 %.not.i17.i.i.i46, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45
  %i.dv = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dx) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45
  store ptr %i.dr, ptr %i.f, align 8, !tbaa !20
  store ptr %i.du, ptr %i.r, align 8, !tbaa !17
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.dy, ptr %i.s, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50

_ZNSt6vectorIiSaIiEE9push_backEOi.exit50:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47, %bb.w
  %i.dz = add nuw nsw i32 %.0898, 1               ; 2 uses
  %i.ea = load i32, ptr %0, align 8, !tbaa !25
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.b, label %.loopexit, !llvm.loop !31

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
  %i.ec = load ptr, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ab, %bb.ac
  %i.eh = load ptr, ptr %i.e, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i51.a = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i51.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit52.a, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ei = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52.a

_ZNSt6vectorIiSaIiEED2Ev.exit52.a:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ad
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i53.a = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i53.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit54.a, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52.a
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit54.a

_ZNSt6vectorIiSaIiEED2Ev.exit54.a:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52.a, %bb.ae
  %i.er = load ptr, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIiSaIiEED2Ev.exit56, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54.a
  %i.es = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = sub i64 %i.et, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ev) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit56

_ZNSt6vectorIiSaIiEED2Ev.exit56:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54.a, %bb.af
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIiSaIiEED2Ev.exit58, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit56
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #12
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
  %.0131 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]  ; 5 uses
  %i.a = shl nuw i32 1, %.0131
  %.not = icmp sgt i32 %i.a, %2
  %i.b = add nuw nsw i32 %.0131, 1
  %indvars.iv.next = add nsw i32 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !32

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %.0131, -1                   ; 4 uses
  %i.d = icmp samesign ugt i32 %.0131, 1          ; 3 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.e = add nsw i32 %.0131, -2
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.c
  %.sroa.30.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.30.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.0250.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.0250.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 9 uses
  %i.f = shl nuw i32 1, %i.c                      ; 6 uses
  %i.g = icmp eq i32 %i.f, %2
  br i1 %i.g, label %bb.j, label %bb.m

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.0132302 = phi i32 [ 0, %.lr.ph ], [ %i.x, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.0250.0301 = phi ptr [ null, %.lr.ph ], [ %.sroa.0250.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.sroa.27.0300 = phi ptr [ null, %.lr.ph ], [ %.sroa.27.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 6 uses
  %.sroa.30.0299 = phi ptr [ null, %.lr.ph ], [ %.sroa.30.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.h = sub nsw i32 %i.e, %.0132302
  %i.i = shl nuw i32 1, %i.h                      ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.27.0300, %.sroa.30.0299
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %.sroa.27.0300, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.f:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %.sroa.27.0300 to i64
  %i.k = ptrtoint ptr %.sroa.0250.0301 to i64
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
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2305843009213693951)
  %i.r = select i1 %i.p, i64 2305843009213693951, i64 %i.q ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #11
          to label %.noexc155 unwind label %.loopexit283 ; 4 uses

.noexc155:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store i32 %i.i, ptr %i.u, align 4, !tbaa !19
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc155
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %.sroa.0250.0301, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %.noexc155
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0250.0301, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0301, i64 noundef %i.l) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.e
  %.sroa.30.1 = phi ptr [ %i.w, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.30.0299, %bb.e ] ; 2 uses
  %.pn281 = phi ptr [ %i.u, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.27.0300, %bb.e ]
  %.sroa.0250.1 = phi ptr [ %i.t, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0250.0301, %bb.e ] ; 2 uses
  %.sroa.27.1 = getelementptr inbounds nuw i8, ptr %.pn281, i64 4
  %i.x = add nuw nsw i32 %.0132302, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !33

.loopexit283:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

bb.j:                                             ; preds = %._crit_edge
  invoke void @_ZN8LightGBM19RecursiveHalvingMapC1EiNS_24RecursiveHalvingNodeTypeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %i.c, i32 noundef 0, i1 noundef zeroext true)
          to label %.preheader unwind label %bb.k

.preheader:                                       ; preds = %bb.j
  br i1 %i.d, label %.lr.ph333, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit

.lr.ph333:                                        ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %wide.trip.count379 = zext i32 %indvars.iv to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

bb.l:                                             ; preds = %.lr.ph333, %bb.l
  %indvars.iv375 = phi i64 [ 0, %.lr.ph333 ], [ %indvars.iv.next376, %bb.l ] ; 7 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0250.0.lcssa, i64 %indvars.iv375 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !19 ; 3 uses
  %i.al = sdiv i32 %1, %i.ak
  %i.am = and i32 %i.al, 1
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = sub nsw i32 0, %i.ak
  %i.ap = select i1 %i.an, i32 %i.ak, i32 %i.ao
  %.fr280 = freeze i32 %i.ap
  %i.aq = add i32 %.fr280, %1                     ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv375
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !19
  %i.as = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.at = srem i32 %1, %i.as
  %i.au = sub nsw i32 %1, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv375
  store i32 %i.au, ptr %i.av, align 4, !tbaa !19
  %i.aw = load i32, ptr %i.aj, align 4, !tbaa !19 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv375
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !19
  %i.ay = srem i32 %i.aq, %i.aw
  %i.az = sub nsw i32 %i.aq, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv375
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !19
  %i.bb = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv375
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !19
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count379
  br i1 %exitcond380.not, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread, label %bb.l, !llvm.loop !34

bb.m:                                             ; preds = %._crit_edge
  %i.bd = sub i32 %2, %i.f                        ; 3 uses
  %i.be = sext i32 %2 to i64                      ; 8 uses
  %i.bf = icmp slt i32 %2, 0
  br i1 %i.bf, label %bb.n, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
          to label %.noexc157.a unwind label %bb.p

.noexc157.a:                                      ; preds = %bb.n
  unreachable

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i156 = icmp eq i32 %2, 0            ; 2 uses
  br i1 %.not.i.i.i.i156, label %.preheader282, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.bg = shl nuw nsw i64 %i.be, 2
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #11
          to label %.noexc158 unwind label %bb.p  ; 5 uses

.noexc158:                                        ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.be
  store i32 0, ptr %i.bh, align 4, !tbaa !35
  %i.bj = add nsw i64 %i.be, -1                   ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph305.preheader, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc158
  %i.bl = getelementptr i8, ptr %i.bh, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bj, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !35
  br label %.lr.ph305.preheader

.lr.ph305.preheader:                              ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %.noexc158
  %i.bm = zext nneg i32 %2 to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bh, i8 0, i64 %i.bn, i1 false), !tbaa !35
  %i.bo = ptrtoint ptr %i.bi to i64
  br label %.preheader282

.preheader282:                                    ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.lr.ph305.preheader
  %.sroa.0237.0397 = phi ptr [ %i.bh, %.lr.ph305.preheader ], [ null, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 10 uses
  %.sroa.17.0395 = phi i64 [ %i.bo, %.lr.ph305.preheader ], [ 0, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %i.bp = icmp sgt i32 %i.bd, 0
  br i1 %i.bp, label %.lr.ph307.preheader, label %._crit_edge308

.lr.ph307.preheader:                              ; preds = %.preheader282
  %wide.trip.count = zext nneg i32 %i.bd to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bd, 4
  br i1 %min.iters.check, label %.lr.ph307.preheader451, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph307.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl nuw nsw i64 %index, 1
  %i.br = sub nsw i64 %i.be, %i.bq
  %i.bs = getelementptr [4 x i8], ptr %.sroa.0237.0397, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -16
  %i.bu = getelementptr i8, ptr %i.bs, i64 -32
  store <4 x i32> <i32 1, i32 2, i32 1, i32 2>, ptr %i.bt, align 4, !tbaa !35
  store <4 x i32> <i32 1, i32 2, i32 1, i32 2>, ptr %i.bu, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge308, label %.lr.ph307.preheader451

.lr.ph307.preheader451:                           ; preds = %.lr.ph307.preheader, %middle.block
  %indvars.iv344.ph = phi i64 [ 0, %.lr.ph307.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph307

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

._crit_edge308:                                   ; preds = %.lr.ph307, %middle.block, %.preheader282
  %i.bx = sext i32 %i.f to i64                    ; 2 uses
  %i.by = icmp eq i32 %i.c, 31
  br i1 %i.by, label %bb.q, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.q:                                             ; preds = %._crit_edge308
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
          to label %.noexc162.a unwind label %bb.s

.noexc162.a:                                      ; preds = %bb.q
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge308
  %i.bz = shl nuw nsw i64 %i.bx, 2                ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN8LightGBM19RecursiveHalvingMap9ConstructEii:bb.a
middle.block441:                                  ; preds = %vector.body434
  %bin.rdx442 = add <4 x i32> %i.gm, %i.gl
  %i.go = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx442) ; 2 uses
  %cmp.n443 = icmp eq i64 %n.vec433, %wide.trip.count362
  br i1 %cmp.n443, label %._crit_edge321, label %scalar.ph430.preheader

scalar.ph430.preheader:                           ; preds = %.lr.ph320, %middle.block441
  %indvars.iv359.ph = phi i64 [ 0, %.lr.ph320 ], [ %n.vec433, %middle.block441 ]
  %.0125317.ph = phi i32 [ 0, %.lr.ph320 ], [ %i.go, %middle.block441 ]
  br label %scalar.ph430

._crit_edge321:                                   ; preds = %scalar.ph430, %middle.block441, %bb.ae
  %.0125.lcssa = phi i32 [ 0, %bb.ae ], [ %i.go, %middle.block441 ], [ %i.hl, %scalar.ph430 ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv369
  store i32 %.0125.lcssa, ptr %i.gp, align 4, !tbaa !19
  %i.gq = load i32, ptr %i.fl, align 4, !tbaa !19 ; 3 uses
  %i.gr = mul nsw i32 %i.gq, %i.fq
  %i.gs = add nsw i32 %i.gr, %i.fa
  %i.gt = sdiv i32 %i.gs, %i.gq                   ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = sext i32 %i.gq to i64
  %i.gw = mul nsw i64 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !19
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv369
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !19
  %i.ha = load i32, ptr %i.fl, align 4, !tbaa !19 ; 4 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %._crit_edge321
  %i.hc = mul nsw i32 %i.ha, %i.gt
  %i.hd = sext i32 %i.hc to i64
  %wide.trip.count367 = zext nneg i32 %i.ha to i64 ; 3 uses
  %invariant.gep411 = getelementptr [4 x i8], ptr %i.cj, i64 %i.hd ; 2 uses
  %min.iters.check419 = icmp ult i32 %i.ha, 8
  br i1 %min.iters.check419, label %scalar.ph418.preheader, label %vector.ph420

vector.ph420:                                     ; preds = %.lr.ph326
  %n.vec421 = and i64 %wide.trip.count367, 2147483640 ; 3 uses
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next426, %vector.body422 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph420 ], [ %i.hg, %vector.body422 ]
  %vec.phi424 = phi <4 x i32> [ zeroinitializer, %vector.ph420 ], [ %i.hh, %vector.body422 ]
  %i.he = getelementptr [4 x i8], ptr %invariant.gep411, i64 %index423 ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 16
  %wide.load = load <4 x i32>, ptr %i.he, align 4, !tbaa !19
  %wide.load425 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !19
  %i.hg = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.hh = add <4 x i32> %wide.load425, %vec.phi424 ; 2 uses
  %index.next426 = add nuw i64 %index423, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next426, %n.vec421
  br i1 %i.hi, label %middle.block427, label %vector.body422, !llvm.loop !46

middle.block427:                                  ; preds = %vector.body422
  %bin.rdx = add <4 x i32> %i.hh, %i.hg
  %i.hj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n428 = icmp eq i64 %n.vec421, %wide.trip.count367
  br i1 %cmp.n428, label %._crit_edge327, label %scalar.ph418.preheader

scalar.ph418.preheader:                           ; preds = %.lr.ph326, %middle.block427
  %indvars.iv364.ph = phi i64 [ 0, %.lr.ph326 ], [ %n.vec421, %middle.block427 ]
  %.0123323.ph = phi i32 [ 0, %.lr.ph326 ], [ %i.hj, %middle.block427 ]
  br label %scalar.ph418

scalar.ph430:                                     ; preds = %scalar.ph430.preheader, %scalar.ph430
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %scalar.ph430 ], [ %indvars.iv359.ph, %scalar.ph430.preheader ] ; 2 uses
  %.0125317 = phi i32 [ %i.hl, %scalar.ph430 ], [ %.0125317.ph, %scalar.ph430.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv359
  %i.hk = load i32, ptr %gep, align 4, !tbaa !19
  %i.hl = add nsw i32 %i.hk, %.0125317            ; 2 uses
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count362
  br i1 %exitcond363.not, label %._crit_edge321, label %scalar.ph430, !llvm.loop !47

._crit_edge327:                                   ; preds = %scalar.ph418, %middle.block427, %._crit_edge321
  %.0123.lcssa = phi i32 [ 0, %._crit_edge321 ], [ %i.hj, %middle.block427 ], [ %i.ho, %scalar.ph418 ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv369
  store i32 %.0123.lcssa, ptr %i.hm, align 4, !tbaa !19
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count373
  br i1 %exitcond374.not, label %.loopexit, label %bb.ae, !llvm.loop !48

scalar.ph418:                                     ; preds = %scalar.ph418.preheader, %scalar.ph418
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %scalar.ph418 ], [ %indvars.iv364.ph, %scalar.ph418.preheader ] ; 2 uses
  %.0123323 = phi i32 [ %i.ho, %scalar.ph418 ], [ %.0123323.ph, %scalar.ph418.preheader ]
  %gep412 = getelementptr [4 x i8], ptr %invariant.gep411, i64 %indvars.iv364
  %i.hn = load i32, ptr %gep412, align 4, !tbaa !19
  %i.ho = add nsw i32 %i.hn, %.0123323            ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count367
  br i1 %exitcond368.not, label %._crit_edge327, label %scalar.ph418, !llvm.loop !49

.loopexit:                                        ; preds = %._crit_edge327, %bb.z
  %.not.i.i.i184 = icmp eq ptr %.sroa.0205.0401, null
  br i1 %.not.i.i.i184, label %_ZNSt6vectorIiSaIiEED2Ev.exit191, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.ad, %.loopexit
  %i.hp = ptrtoint ptr %.sroa.0205.0401 to i64
  %i.hq = sub i64 %.sroa.11.0403, %i.hp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.0401, i64 noundef %i.hq) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit191

_ZNSt6vectorIiSaIiEED2Ev.exit191:                 ; preds = %.loopexit, %.loopexit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.bz) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.bz) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.bz) #12
  %.not.i.i.i192 = icmp eq ptr %.sroa.0237.0397, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit191
  %i.hr = ptrtoint ptr %.sroa.0237.0397 to i64
  %i.hs = sub i64 %.sroa.17.0395, %i.hr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.0397, i64 noundef %i.hs) #12
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit194:                 ; preds = %bb.ab, %bb.aa, %bb.v
  %.pn = phi { ptr, i32 } [ %i.da, %bb.v ], [ %i.eu, %bb.aa ], [ %i.eu, %bb.ab ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.bz) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

_ZNSt6vectorIiSaIiEED2Ev.exit196:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit194, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit194 ], [ %i.cz, %bb.u ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.bz) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit198

_ZNSt6vectorIiSaIiEED2Ev.exit198:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit196, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit196 ], [ %i.cy, %bb.t ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.bz) #12
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit198, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit198 ], [ %i.cx, %bb.s ] ; 2 uses
  %.not.i.i.i199 = icmp eq ptr %.sroa.0237.0397, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ht = ptrtoint ptr %.sroa.0237.0397 to i64
  %i.hu = sub i64 %.sroa.17.0395, %i.ht
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.0397, i64 noundef %i.hu) #12
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit: ; preds = %.preheader, %bb.af, %_ZNSt6vectorIiSaIiEED2Ev.exit191
  %.not.i.i.i201 = icmp eq ptr %.sroa.0250.0.lcssa, null
  br i1 %.not.i.i.i201, label %_ZNSt6vectorIiSaIiEED2Ev.exit202, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread: ; preds = %bb.l, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit
  %i.hv = ptrtoint ptr %.sroa.30.0.lcssa to i64
  %i.hw = ptrtoint ptr %.sroa.0250.0.lcssa to i64
  %i.hx = sub i64 %i.hv, %i.hw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0.lcssa, i64 noundef %i.hx) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit202

_ZNSt6vectorIiSaIiEED2Ev.exit202:                 ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread
  ret void

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200: ; preds = %.loopexit283, %.loopexit.split-lp, %bb.p, %bb.ag, %bb.ah, %bb.k
  %.sroa.30.0294 = phi ptr [ %.sroa.30.0.lcssa, %bb.ah ], [ %.sroa.30.0.lcssa, %bb.k ], [ %.sroa.30.0.lcssa, %bb.p ], [ %.sroa.30.0.lcssa, %bb.ag ], [ %.sroa.27.0300, %.loopexit283 ], [ %.sroa.27.0300, %.loopexit.split-lp ]
  %.sroa.0250.0287 = phi ptr [ %.sroa.0250.0.lcssa, %bb.ah ], [ %.sroa.0250.0.lcssa, %bb.k ], [ %.sroa.0250.0.lcssa, %bb.p ], [ %.sroa.0250.0.lcssa, %bb.ag ], [ %.sroa.0250.0301, %.loopexit283 ], [ %.sroa.0250.0301, %.loopexit.split-lp ] ; 3 uses
  %.pn153 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ah ], [ %i.ai, %bb.k ], [ %i.bw, %bb.p ], [ %.pn.pn.pn.pn, %bb.ag ], [ %lpad.loopexit, %.loopexit283 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i203 = icmp eq ptr %.sroa.0250.0287, null
  br i1 %.not.i.i.i203, label %_ZNSt6vectorIiSaIiEED2Ev.exit204, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200
  %i.hy = ptrtoint ptr %.sroa.30.0294 to i64
  %i.hz = ptrtoint ptr %.sroa.0250.0287 to i64
  %i.ia = sub i64 %i.hy, %i.hz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0287, i64 noundef %i.ia) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit204

_ZNSt6vectorIiSaIiEED2Ev.exit204:                 ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200, %bb.ai
  resume { ptr, i32 } %.pn153
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #6 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"_ZTSN8LightGBM8BruckMapE", !6, i64 0, !11, i64 8, !11, i64 32}
!11 = !{!"_ZTSSt6vectorIiSaIiEE", !12, i64 0}
!12 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 int", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!14, !15, i64 8}
!18 = !{!14, !15, i64 16}
!19 = !{!6, !6, i64 0}
!20 = !{!14, !15, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = !{!26, !6, i64 0}
!26 = !{!"_ZTSN8LightGBM19RecursiveHalvingMapE", !6, i64 0, !27, i64 4, !28, i64 8, !6, i64 12, !11, i64 16, !11, i64 40, !11, i64 64, !11, i64 88, !11, i64 112}
!27 = !{!"_ZTSN8LightGBM24RecursiveHalvingNodeTypeE", !7, i64 0}
!28 = !{!"bool", !7, i64 0}
!29 = !{!26, !27, i64 4}
!30 = !{!26, !28, i64 8}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = !{!27, !27, i64 0}
!36 = distinct !{!36, !22, !37, !38}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !22, !38, !37}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !22}
!44 = !{!26, !6, i64 12}
!45 = distinct !{!45, !22, !37, !38}
!46 = distinct !{!46, !22, !37, !38}
!47 = distinct !{!47, !22, !38, !37}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22, !38, !37}
end_hunk_1
