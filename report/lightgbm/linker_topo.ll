Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linker_topo?download=true
inline.NumInlined: 226
inline.NumDeleted: 85
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
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
  store i32 0, ptr %0, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM8BruckMapC2Ei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 4), (8, 56)) %0, i32 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i32 %1, ptr %0, align 8, !tbaa !16
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
  %.0727 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19 ]
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
  br i1 %i.q, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

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
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #10
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  store i32 -1, ptr %i.y, align 4, !tbaa !19
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %.noexc9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ad) #11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !20
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !18
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !17
  %.pre28 = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.c
  %i.af = phi ptr [ %.pre28, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.ag = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.ag, %i.af
  br i1 %.not.i.i10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 -1, ptr %i.ag, align 4, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !20  ; 4 uses
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775804
  br i1 %i.am, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11

.invoke:                                          ; preds = %bb.h, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11: ; preds = %bb.h
  %i.an = ashr exact i64 %i.al, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i12 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i.i12, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 2305843009213693951)
  %i.ar = select i1 %i.ap, i64 2305843009213693951, i64 %i.aq ; 3 uses
  %.not.i.i.i.i13 = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i13)
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #10
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.al ; 2 uses
  store i32 -1, ptr %i.au, align 4, !tbaa !19
  %i.av = icmp sgt i64 %i.al, 0
  br i1 %i.av, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

bb.i:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14: ; preds = %bb.i, %.noexc18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %.not.i17.i.i.i15 = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i.i15, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.az) #11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  store ptr %i.at, ptr %i.b, align 8, !tbaa !20
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar ; 2 uses
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19

_ZNSt6vectorIiSaIiEE9push_backEOi.exit19:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, %bb.g
  %i.bb = phi ptr [ %i.ba, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16 ], [ %i.af, %bb.g ]
  %i.bc = phi ptr [ %i.aw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16 ], [ %i.ah, %bb.g ]
  %i.bd = add nuw nsw i32 %.0727, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !28

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit21, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit21

_ZNSt6vectorIiSaIiEED2Ev.exit21:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.l
  resume { ptr, i32 } %lpad.loopexit.split-lp
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
  %.sroa.13.050 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.10.049 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 3 uses
  %.sroa.0.048 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 7 uses
  %.not.i.i = icmp eq ptr %.sroa.10.049, %.sroa.13.050
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i32 %i.b, ptr %.sroa.10.049, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.c:                                             ; preds = %.lr.ph
  %i.c = ptrtoint ptr %.sroa.13.050 to i64
  %i.d = ptrtoint ptr %.sroa.0.048 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 6 uses
  %i.f = icmp eq i64 %i.e, 9223372036854775804
  br i1 %i.f, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
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
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #10
          to label %.noexc27 unwind label %.loopexit ; 4 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.e ; 2 uses
  store i32 %i.b, ptr %i.n, align 4, !tbaa !19
  %i.o = icmp sgt i64 %i.e, 0
  br i1 %i.o, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %.noexc27
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %.sroa.0.048, i64 %i.e, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %.noexc27
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.048, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.048, i64 noundef %i.e) #11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.b
  %.sroa.0.1 = phi ptr [ %i.m, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0.048, %bb.b ] ; 2 uses
  %.pn = phi ptr [ %i.n, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.10.049, %bb.b ]
  %.sroa.13.1 = phi ptr [ %i.p, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.050, %bb.b ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.q = add nuw nsw i32 %.051, 1                 ; 2 uses
  %i.r = shl nuw i32 2, %.051                     ; 2 uses
  %i.s = icmp slt i32 %i.r, %2
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 11 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  invoke void @_ZN8LightGBM8BruckMapC1Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.0.lcssa)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %._crit_edge
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 7 uses
  %i.v = add i32 %2, %1                           ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20   ; 7 uses
  %wide.trip.count = zext i32 %.0.lcssa to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %.0.lcssa, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph55
  %i.y = shl nuw nsw i64 %wide.trip.count, 2      ; 3 uses
  %i.z = getelementptr i8, ptr %i.u, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.y    ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 %i.y ; 2 uses
  %bound0 = icmp ult ptr %i.u, %i.aa
  %bound1 = icmp ult ptr %i.x, %i.z
  %found.conflict = and i1 %bound0, %bound1
  %bound082 = icmp ult ptr %i.u, %i.ab
  %bound183 = icmp ult ptr %.sroa.0.0.lcssa, %i.z
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx = or i1 %found.conflict, %found.conflict84
  %bound085 = icmp ult ptr %i.x, %i.ab
  %bound186 = icmp ult ptr %.sroa.0.0.lcssa, %i.aa
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx, %found.conflict87
  br i1 %conflict.rdx88, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert89 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat90 = shufflevector <4 x i32> %broadcast.splatinsert89, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat92 = shufflevector <4 x i32> %broadcast.splatinsert91, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %index
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !19, !alias.scope !36 ; 2 uses
  %i.ad = add nsw <4 x i32> %wide.load, %broadcast.splat90
  %i.ae = srem <4 x i32> %i.ad, %broadcast.splat92
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index
  store <4 x i32> %i.ae, ptr %i.af, align 4, !tbaa !19, !alias.scope !37, !noalias !38
  %i.ag = sub <4 x i32> %broadcast.splat, %wide.load
  %i.ah = srem <4 x i32> %i.ag, %broadcast.splat92
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index
  store <4 x i32> %i.ah, ptr %i.ai, align 4, !tbaa !19, !alias.scope !39, !noalias !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge56.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph55, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph55 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.ph ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.am = add nsw i32 %i.al, %1
  %i.an = srem i32 %i.am, %2
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.ph
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !19
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.aq = sub i32 %i.v, %i.ap
  %i.ar = srem i32 %i.aq, %2
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.ph
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !19
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.at = add nsw i64 %wide.trip.count, -1
  %i.au = icmp eq i64 %indvars.iv.ph, %i.at
  br i1 %i.au, label %._crit_edge56.thread, label %scalar.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.d
  %.sroa.0.047 = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %.sroa.0.048, %bb.d ]
  %.sroa.13.043 = phi ptr [ %.sroa.13.0.lcssa, %._crit_edge ], [ %.sroa.13.050, %bb.d ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.046 = phi ptr [ %.sroa.0.048, %.loopexit ], [ %.sroa.0.047, %.loopexit.split-lp ] ; 3 uses
  %.sroa.13.042 = phi ptr [ %.sroa.13.050, %.loopexit ], [ %.sroa.13.043, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i28 = icmp eq ptr %.sroa.0.046, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !19
  %i.ax = add nsw i32 %i.aw, %1
  %i.ay = srem i32 %i.ax, %2
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !19
  %i.ba = load i32, ptr %i.av, align 4, !tbaa !19
  %i.bb = sub i32 %i.v, %i.ba
  %i.bc = srem i32 %i.bb, %2
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.next ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !19
  %i.bg = add nsw i32 %i.bf, %1
  %i.bh = srem i32 %i.bg, %2
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !19
  %i.bj = load i32, ptr %i.be, align 4, !tbaa !19
  %i.bk = sub i32 %i.v, %i.bj
  %i.bl = srem i32 %i.bk, %2
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge56.thread, label %scalar.ph, !llvm.loop !35

._crit_edge56:                                    ; preds = %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %._crit_edge56.thread

._crit_edge56.thread:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge56
  %i.bn = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.bo = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.bp) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge56, %._crit_edge56.thread
  ret void

bb.h:                                             ; preds = %bb.g
  %i.bq = ptrtoint ptr %.sroa.13.042 to i64
  %i.br = ptrtoint ptr %.sroa.0.046 to i64
  %i.bs = sub i64 %i.bq, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.046, i64 noundef %i.bs) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN8LightGBM19RecursiveHalvingMapC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) initializes((0, 4), (16, 136)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %0, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19RecursiveHalvingMapC2EiNS_24RecursiveHalvingNodeTypeEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) initializes((0, 9), (16, 136)) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8LightGBM19RecursiveHalvingMapC2EiNS_24RecursiveHalvingNodeTypeEb:bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %.not.i17.i.i.i36 = icmp eq ptr %i.ck, null
  br i1 %.not.i17.i.i.i36, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i37, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i35
  %i.cz = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.db) #11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i37

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i37: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i35
  store ptr %i.cv, ptr %i.e, align 8, !tbaa !20
  store ptr %i.cy, ptr %i.p, align 8, !tbaa !17
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ct
  store ptr %i.dc, ptr %i.q, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40

_ZNSt6vectorIiSaIiEE9push_backEOi.exit40:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i37, %bb.o
  %i.dd = load ptr, ptr %i.r, align 8, !tbaa !17  ; 4 uses
  %i.de = load ptr, ptr %i.s, align 8, !tbaa !18
  %.not.i.i41 = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i.i41, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40
  store i32 -1, ptr %i.dd, align 4, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store ptr %i.df, ptr %i.r, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !20  ; 4 uses
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 5 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775804
  br i1 %i.dk, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42

.invoke:                                          ; preds = %bb.t, %bb.p, %bb.l, %bb.h, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42: ; preds = %bb.t
  %i.dl = ashr exact i64 %i.dj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i43 = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i43, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = tail call i64 @llvm.umin.i64(i64 %i.dm, i64 2305843009213693951)
  %i.dp = select i1 %i.dn, i64 2305843009213693951, i64 %i.do ; 3 uses
  %.not.i.i.i.i44 = icmp ne i64 %i.dp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i44)
  %i.dq = shl nuw nsw i64 %i.dp, 2
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #10
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc49:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.dj ; 2 uses
  store i32 -1, ptr %i.ds, align 4, !tbaa !19
  %i.dt = icmp sgt i64 %i.dj, 0
  br i1 %i.dt, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45

bb.u:                                             ; preds = %.noexc49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dr, ptr align 4 %i.dg, i64 %i.dj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45: ; preds = %bb.u, %.noexc49
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %.not.i17.i.i.i46 = icmp eq ptr %i.dg, null
  br i1 %.not.i17.i.i.i46, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45
  %i.dv = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dx) #11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45
  store ptr %i.dr, ptr %i.f, align 8, !tbaa !20
  store ptr %i.du, ptr %i.r, align 8, !tbaa !17
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.dy, ptr %i.s, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50

_ZNSt6vectorIiSaIiEE9push_backEOi.exit50:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47, %bb.s
  %i.dz = add nuw nsw i32 %.0874, 1               ; 2 uses
  %i.ea = load i32, ptr %0, align 8, !tbaa !27
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.b, label %.loopexit, !llvm.loop !40

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i32, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i22, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i12, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ed = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %i.eh = load ptr, ptr %i.e, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIiSaIiEED2Ev.exit52, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ei = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52

_ZNSt6vectorIiSaIiEED2Ev.exit52:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.x
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIiSaIiEED2Ev.exit54, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit54

_ZNSt6vectorIiSaIiEED2Ev.exit54:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52, %bb.y
  %i.er = load ptr, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIiSaIiEED2Ev.exit56, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54
  %i.es = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = sub i64 %i.et, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ev) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit56

_ZNSt6vectorIiSaIiEED2Ev.exit56:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54, %bb.z
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIiSaIiEED2Ev.exit58, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit56
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit58

_ZNSt6vectorIiSaIiEED2Ev.exit58:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit56, %bb.aa
  resume { ptr, i32 } %lpad.loopexit.split-lp

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19RecursiveHalvingMap9ConstructEii(ptr dead_on_unwind noalias writable sret(%"class.LightGBM::RecursiveHalvingMap") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.b ], [ -1, %bb.a ] ; 5 uses
  %.0131 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]  ; 5 uses
  %i.a = shl nuw i32 1, %.0131
  %.not = icmp sgt i32 %i.a, %2
  %i.b = add nuw nsw i32 %.0131, 1
  %indvars.iv.next = add nsw i32 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !43

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %.0131, -1                   ; 4 uses
  %i.d = icmp samesign ugt i32 %.0131, 1          ; 3 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.e = add nsw i32 %.0131, -2
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.c
  %.sroa.30.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.30.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 6 uses
  %.sroa.0250.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.0250.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 17 uses
  %i.f = shl nuw i32 1, %i.c                      ; 6 uses
  %i.g = icmp eq i32 %i.f, %2
  br i1 %i.g, label %bb.j, label %bb.k

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.0132304 = phi i32 [ 0, %.lr.ph ], [ %i.x, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.0250.0303 = phi ptr [ null, %.lr.ph ], [ %.sroa.0250.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.sroa.27.0302 = phi ptr [ null, %.lr.ph ], [ %.sroa.27.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 6 uses
  %.sroa.30.0301 = phi ptr [ null, %.lr.ph ], [ %.sroa.30.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.h = sub nsw i32 %i.e, %.0132304
  %i.i = shl nuw i32 1, %i.h                      ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.27.0302, %.sroa.30.0301
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %.sroa.27.0302, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.f:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %.sroa.27.0302 to i64
  %i.k = ptrtoint ptr %.sroa.0250.0303 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775804
  br i1 %i.m, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.n = ashr exact i64 %i.l, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2305843009213693951)
  %i.r = select i1 %i.p, i64 2305843009213693951, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #10
          to label %.noexc155 unwind label %.loopexit283 ; 4 uses

.noexc155:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store i32 %i.i, ptr %i.u, align 4, !tbaa !19
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc155
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %.sroa.0250.0303, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %.noexc155
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0250.0303, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0303, i64 noundef %i.l) #11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.e
  %.sroa.30.1 = phi ptr [ %i.w, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.30.0301, %bb.e ] ; 2 uses
  %.pn281 = phi ptr [ %i.u, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.27.0302, %bb.e ]
  %.sroa.0250.1 = phi ptr [ %i.t, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0250.0303, %bb.e ] ; 2 uses
  %.sroa.27.1 = getelementptr inbounds nuw i8, ptr %.pn281, i64 4
  %i.x = add nuw nsw i32 %.0132304, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !44

bb.j:                                             ; preds = %._crit_edge
  invoke void @_ZN8LightGBM19RecursiveHalvingMapC1EiNS_24RecursiveHalvingNodeTypeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %i.c, i32 noundef 0, i1 noundef zeroext true)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.j
  br i1 %i.d, label %.lr.ph335, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit

.lr.ph335:                                        ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 8 uses
  %wide.trip.count380 = zext i32 %indvars.iv to i64 ; 4 uses
  %min.iters.check508 = icmp ult i32 %indvars.iv, 8
  br i1 %min.iters.check508, label %scalar.ph507.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph335
  %i.ai = shl nuw nsw i64 %wide.trip.count380, 2  ; 6 uses
  %i.aj = getelementptr i8, ptr %i.z, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ab, i64 %i.ai
  %i.al = getelementptr i8, ptr %i.ad, i64 %i.ai  ; 5 uses
  %i.am = getelementptr i8, ptr %i.af, i64 %i.ai  ; 5 uses
  %i.an = getelementptr i8, ptr %i.ah, i64 %i.ai  ; 5 uses
  %i.ao = getelementptr i8, ptr %.sroa.0250.0.lcssa, i64 %i.ai ; 5 uses
  %i.ap = insertelement <4 x ptr> poison, ptr %i.z, i64 0
  %i.aq = shufflevector <4 x ptr> %i.ap, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ar = insertelement <4 x ptr> poison, ptr %i.ak, i64 0 ; 2 uses
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.al, i64 1
  %i.at = insertelement <4 x ptr> %i.as, ptr %i.am, i64 2
  %i.au = insertelement <4 x ptr> %i.at, ptr %i.an, i64 3
  %i.av = icmp ult <4 x ptr> %i.aq, %i.au
  %i.aw = insertelement <4 x ptr> poison, ptr %i.ab, i64 0 ; 2 uses
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %i.ad, i64 1
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %i.af, i64 2
  %i.az = insertelement <4 x ptr> %i.ay, ptr %i.ah, i64 3
  %i.ba = insertelement <4 x ptr> poison, ptr %i.aj, i64 0
  %i.bb = shufflevector <4 x ptr> %i.ba, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bc = icmp ult <4 x ptr> %i.az, %i.bb
  %i.bd = and <4 x i1> %i.av, %i.bc
  %bound0520 = icmp ult ptr %i.z, %i.ao
  %bound1521 = icmp ult ptr %.sroa.0250.0.lcssa, %i.aj
  %found.conflict522 = and i1 %bound0520, %bound1521
  %i.be = shufflevector <4 x ptr> %i.aw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bf = insertelement <4 x ptr> poison, ptr %i.al, i64 0
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %i.am, i64 1
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %i.an, i64 2
  %i.bi = insertelement <4 x ptr> %i.bh, ptr %i.ao, i64 3
  %i.bj = icmp ult <4 x ptr> %i.be, %i.bi
  %i.bk = insertelement <4 x ptr> poison, ptr %i.ad, i64 0
  %i.bl = insertelement <4 x ptr> %i.bk, ptr %i.af, i64 1
  %i.bm = insertelement <4 x ptr> %i.bl, ptr %i.ah, i64 2
  %i.bn = insertelement <4 x ptr> %i.bm, ptr %.sroa.0250.0.lcssa, i64 3
  %i.bo = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bp = icmp ult <4 x ptr> %i.bn, %i.bo
  %i.bq = and <4 x i1> %i.bj, %i.bp
  %bound0540 = icmp ult ptr %i.ad, %i.am
  %bound1541 = icmp ult ptr %i.af, %i.al
  %found.conflict542 = and i1 %bound0540, %bound1541
  %bound0544 = icmp ult ptr %i.ad, %i.an
  %bound1545 = icmp ult ptr %i.ah, %i.al
  %found.conflict546 = and i1 %bound0544, %bound1545
  %bound0548 = icmp ult ptr %i.ad, %i.ao
  %bound1549 = icmp ult ptr %.sroa.0250.0.lcssa, %i.al
  %found.conflict550 = and i1 %bound0548, %bound1549
  %bound0552 = icmp ult ptr %i.af, %i.an
  %bound1553 = icmp ult ptr %i.ah, %i.am
  %found.conflict554 = and i1 %bound0552, %bound1553
  %bound0556 = icmp ult ptr %i.af, %i.ao
  %bound1557 = icmp ult ptr %.sroa.0250.0.lcssa, %i.am
  %found.conflict558 = and i1 %bound0556, %bound1557
  %bound0560 = icmp ult ptr %i.ah, %i.ao
  %bound1561 = icmp ult ptr %.sroa.0250.0.lcssa, %i.an
  %found.conflict562 = and i1 %bound0560, %bound1561
  %rdx.op = or <4 x i1> %i.bd, %i.bq
  %i.br = bitcast <4 x i1> %rdx.op to i4
  %i.bs = icmp ne i4 %i.br, 0
  %op.rdx = or i1 %i.bs, %found.conflict522
  %op.rdx576 = or i1 %found.conflict542, %found.conflict546
  %op.rdx577 = or i1 %found.conflict550, %found.conflict554
  %op.rdx578 = or i1 %found.conflict558, %found.conflict562
  %op.rdx579 = or i1 %op.rdx, %op.rdx576
  %op.rdx580 = or i1 %op.rdx577, %op.rdx578
  %op.rdx581 = or i1 %op.rdx579, %op.rdx580
  br i1 %op.rdx581, label %scalar.ph507.preheader, label %vector.ph564

vector.ph564:                                     ; preds = %vector.memcheck
  %n.vec565 = and i64 %wide.trip.count380, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body566

vector.body566:                                   ; preds = %vector.body566, %vector.ph564
  %index567 = phi i64 [ 0, %vector.ph564 ], [ %index.next572, %vector.body566 ] ; 7 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0250.0.lcssa, i64 %index567 ; 3 uses
  %wide.load568 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !19, !alias.scope !64 ; 3 uses
  %i.bu = sdiv <4 x i32> %broadcast.splat, %wide.load568
  %i.bv = and <4 x i32> %i.bu, splat (i32 1)
  %i.bw = icmp eq <4 x i32> %i.bv, zeroinitializer
  %i.bx = sub nsw <4 x i32> zeroinitializer, %wide.load568
  %i.by = select <4 x i1> %i.bw, <4 x i32> %wide.load568, <4 x i32> %i.bx
  %i.bz = freeze <4 x i32> %i.by
  %i.ca = add <4 x i32> %i.bz, %broadcast.splat   ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index567
  store <4 x i32> %i.ca, ptr %i.cb, align 4, !tbaa !19, !alias.scope !65, !noalias !66
  %wide.load569 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !19, !alias.scope !64 ; 3 uses
  %i.cc = srem <4 x i32> %broadcast.splat, %wide.load569
  %i.cd = sub nsw <4 x i32> %broadcast.splat, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index567
  store <4 x i32> %i.cd, ptr %i.ce, align 4, !tbaa !19, !alias.scope !67, !noalias !68
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index567
  store <4 x i32> %wide.load569, ptr %i.cf, align 4, !tbaa !19, !alias.scope !69, !noalias !70
  %i.cg = srem <4 x i32> %i.ca, %wide.load569
  %i.ch = sub nsw <4 x i32> %i.ca, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index567
  store <4 x i32> %i.ch, ptr %i.ci, align 4, !tbaa !19, !alias.scope !71, !noalias !72
  %wide.load571 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !19, !alias.scope !64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index567
  store <4 x i32> %wide.load571, ptr %i.cj, align 4, !tbaa !19, !alias.scope !73, !noalias !64
  %index.next572 = add nuw i64 %index567, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next572, %n.vec565
  br i1 %i.ck, label %middle.block573, label %vector.body566, !llvm.loop !52

middle.block573:                                  ; preds = %vector.body566
  %cmp.n574 = icmp eq i64 %n.vec565, %wide.trip.count380
  br i1 %cmp.n574, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread, label %scalar.ph507.preheader

scalar.ph507.preheader:                           ; preds = %vector.memcheck, %.lr.ph335, %middle.block573
  %indvars.iv376.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph335 ], [ %n.vec565, %middle.block573 ]
  br label %scalar.ph507

scalar.ph507:                                     ; preds = %scalar.ph507.preheader, %scalar.ph507
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %scalar.ph507 ], [ %indvars.iv376.ph, %scalar.ph507.preheader ] ; 7 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0250.0.lcssa, i64 %indvars.iv376 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !19 ; 3 uses
  %i.cn = sdiv i32 %1, %i.cm
  %i.co = and i32 %i.cn, 1
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = sub nsw i32 0, %i.cm
  %i.cr = select i1 %i.cp, i32 %i.cm, i32 %i.cq
  %.fr280 = freeze i32 %i.cr
  %i.cs = add i32 %.fr280, %1                     ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv376
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !19
  %i.cu = load i32, ptr %i.cl, align 4, !tbaa !19
  %i.cv = srem i32 %1, %i.cu
  %i.cw = sub nsw i32 %1, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv376
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !19
  %i.cy = load i32, ptr %i.cl, align 4, !tbaa !19 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv376
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !19
  %i.da = srem i32 %i.cs, %i.cy
  %i.db = sub nsw i32 %i.cs, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv376
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !19
  %i.dd = load i32, ptr %i.cl, align 4, !tbaa !19
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv376
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !19
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond381.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count380
  br i1 %exitcond381.not, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread, label %scalar.ph507, !llvm.loop !53

bb.k:                                             ; preds = %._crit_edge
  %i.df = sub i32 %2, %i.f                        ; 3 uses
  %i.dg = sext i32 %2 to i64                      ; 8 uses
  %i.dh = icmp slt i32 %2, 0
  br i1 %i.dh, label %bb.l, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc157 unwind label %.loopexit.split-lp

.noexc157:                                        ; preds = %bb.l
  unreachable

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.k
  %.not.i.i.i.i156 = icmp eq i32 %2, 0            ; 2 uses
  br i1 %.not.i.i.i.i156, label %.preheader282, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.di = shl nuw nsw i64 %i.dg, 2
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #10
          to label %.noexc158 unwind label %.loopexit.split-lp ; 5 uses

.noexc158:                                        ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dg
  store i32 0, ptr %i.dj, align 4, !tbaa !74
  %i.dl = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %.lr.ph307.preheader, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc158
  %i.dn = getelementptr i8, ptr %i.dj, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dn, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !74
  br label %.lr.ph307.preheader

.lr.ph307.preheader:                              ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %.noexc158
  %i.do = zext nneg i32 %2 to i64
  %i.dp = shl nuw nsw i64 %i.do, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dj, i8 0, i64 %i.dp, i1 false), !tbaa !74
  %i.dq = ptrtoint ptr %i.dk to i64
  br label %.preheader282

.preheader282:                                    ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.lr.ph307.preheader
  %.sroa.0237.0398 = phi ptr [ %i.dj, %.lr.ph307.preheader ], [ null, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 10 uses
  %.sroa.17.0396 = phi i64 [ %i.dq, %.lr.ph307.preheader ], [ 0, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %i.dr = icmp sgt i32 %i.df, 0
  br i1 %i.dr, label %.lr.ph309.preheader, label %._crit_edge310

.lr.ph309.preheader:                              ; preds = %.preheader282
  %wide.trip.count = zext nneg i32 %i.df to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.df, 4
  br i1 %min.iters.check, label %.lr.ph309.preheader587, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph309.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = shl nuw nsw i64 %index, 1
  %i.dt = sub nsw i64 %i.dg, %i.ds
  %i.du = getelementptr [4 x i8], ptr %.sroa.0237.0398, i64 %i.dt ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 -16
  %i.dw = getelementptr i8, ptr %i.du, i64 -32
  store <4 x i32> <i32 1, i32 2, i32 1, i32 2>, ptr %i.dv, align 4, !tbaa !74
  store <4 x i32> <i32 1, i32 2, i32 1, i32 2>, ptr %i.dw, align 4, !tbaa !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge310, label %.lr.ph309.preheader587

.lr.ph309.preheader587:                           ; preds = %.lr.ph309.preheader, %middle.block
  %indvars.iv346.ph = phi i64 [ 0, %.lr.ph309.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph309

.loopexit283:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

.loopexit.split-lp:                               ; preds = %bb.l, %bb.m, %bb.g, %bb.j
  %.sroa.30.0297 = phi ptr [ %.sroa.30.0.lcssa, %bb.l ], [ %.sroa.30.0.lcssa, %bb.m ], [ %.sroa.27.0302, %bb.g ], [ %.sroa.30.0.lcssa, %bb.j ]
  %.sroa.0250.0289 = phi ptr [ %.sroa.0250.0.lcssa, %bb.l ], [ %.sroa.0250.0.lcssa, %bb.m ], [ %.sroa.0250.0303, %bb.g ], [ %.sroa.0250.0.lcssa, %bb.j ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

._crit_edge310:                                   ; preds = %.lr.ph309, %middle.block, %.preheader282
  %i.dy = sext i32 %i.f to i64                    ; 2 uses
  %i.dz = icmp eq i32 %i.c, 31
  br i1 %i.dz, label %bb.n, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %._crit_edge310
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc162 unwind label %bb.p

.noexc162:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge310
  %i.ea = shl nuw nsw i64 %i.dy, 2                ; 10 uses
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #10
          to label %.noexc163 unwind label %bb.p  ; 12 uses

.noexc163:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  store i32 0, ptr %i.eb, align 4, !tbaa !19
  %i.ec = add nsw i64 %i.dy, -1                   ; 3 uses
  %i.ed = icmp eq i64 %i.ec, 0                    ; 2 uses
  br i1 %i.ed, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc163
  %i.ee = getelementptr i8, ptr %i.eb, i64 4
  %.idx.i.i.i.i.i.i.i160 = shl nuw nsw i64 %i.ec, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ee, i8 0, i64 %.idx.i.i.i.i.i.i.i160, i1 false), !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164

.lr.ph309:                                        ; preds = %.lr.ph309.preheader587, %.lr.ph309
  %indvars.iv346 = phi i64 [ %indvars.iv.next347, %.lr.ph309 ], [ %indvars.iv346.ph, %.lr.ph309.preheader587 ] ; 2 uses
  %i.ef = shl nuw nsw i64 %indvars.iv346, 1
  %i.eg = sub nsw i64 %i.dg, %i.ef
  %i.eh = getelementptr [4 x i8], ptr %.sroa.0237.0398, i64 %i.eg ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -8
  store i32 1, ptr %i.ei, align 4, !tbaa !74
  %i.ej = getelementptr i8, ptr %i.eh, i64 -4
  store i32 2, ptr %i.ej, align 4, !tbaa !74
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond349.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count
  br i1 %exitcond349.not, label %._crit_edge310, label %.lr.ph309, !llvm.loop !55

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164: ; preds = %.noexc163, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #10
          to label %.noexc167 unwind label %bb.q  ; 11 uses

.noexc167:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ek, i8 0, i64 %i.ea, i1 false), !tbaa !19
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #10
          to label %.noexc174 unwind label %bb.r  ; 6 uses

.noexc174:                                        ; preds = %.noexc167
  store i32 0, ptr %i.el, align 4, !tbaa !19
  br i1 %i.ed, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i170

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i170: ; preds = %.noexc174
  %i.em = getelementptr i8, ptr %i.el, i64 4
  %.idx.i.i.i.i.i.i.i171 = shl nuw nsw i64 %i.ec, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.em, i8 0, i64 %.idx.i.i.i.i.i.i.i171, i1 false), !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176: ; preds = %.noexc174, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i170
  br i1 %.not.i.i.i.i156, label %._crit_edge314, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176
  %i.en = shl nuw nsw i64 %i.dg, 2
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #10
          to label %.noexc182 unwind label %bb.s  ; 5 uses

.noexc182:                                        ; preds = %bb.o
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.dg
  store i32 0, ptr %i.eo, align 4, !tbaa !19
  %i.eq = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %.lr.ph313.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i178

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i178: ; preds = %.noexc182
  %i.es = getelementptr i8, ptr %i.eo, i64 4
  %.idx.i.i.i.i.i.i.i179 = shl nuw nsw i64 %i.eq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.es, i8 0, i64 %.idx.i.i.i.i.i.i.i179, i1 false), !tbaa !19
  br label %.lr.ph313.preheader

.lr.ph313.preheader:                              ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i178, %.noexc182
  %wide.trip.count353 = zext nneg i32 %2 to i64
  br label %.lr.ph313

._crit_edge314.loopexit:                          ; preds = %bb.u
  %i.et = ptrtoint ptr %i.ep to i64
  br label %._crit_edge314

._crit_edge314:                                   ; preds = %._crit_edge314.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176
  %.sroa.11.0404 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176 ], [ %i.et, %._crit_edge314.loopexit ] ; 2 uses
  %.sroa.0205.0402 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176 ], [ %i.eo, %._crit_edge314.loopexit ] ; 7 uses
  store i32 0, ptr %i.eb, align 4, !tbaa !19
  %i.eu = icmp sgt i32 %i.f, 1
  br i1 %i.eu, label %.lr.ph317.preheader, label %._crit_edge318

.lr.ph317.preheader:                              ; preds = %._crit_edge314
  %wide.trip.count358 = zext nneg i32 %i.f to i64
  %i.ev = add nsw i64 %wide.trip.count358, -1     ; 2 uses
  %xtraiter = and i64 %i.ev, 3                    ; 3 uses
  %i.ew = add nsw i32 %i.f, -2
  %i.ex = icmp ult i32 %i.ew, 3
  br i1 %i.ex, label %.lr.ph317.epil.preheader, label %.lr.ph317.preheader.new

.lr.ph317.preheader.new:                          ; preds = %.lr.ph317.preheader
  %unroll_iter = and i64 %i.ev, -4
  br label %.lr.ph317

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.n
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit198

bb.r:                                             ; preds = %.noexc167
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

bb.s:                                             ; preds = %bb.o
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit194

.lr.ph313:                                        ; preds = %.lr.ph313.preheader, %bb.u
  %indvars.iv350 = phi i64 [ 0, %.lr.ph313.preheader ], [ %indvars.iv.next351, %bb.u ] ; 4 uses
  %.0130311 = phi i32 [ 0, %.lr.ph313.preheader ], [ %.1, %bb.u ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0237.0398, i64 %indvars.iv350
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !74
  %switch = icmp ult i32 %i.fd, 2
  br i1 %switch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph313
  %i.fe = add nsw i32 %.0130311, 1
  %i.ff = sext i32 %.0130311 to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ff
  %i.fh = trunc nuw nsw i64 %indvars.iv350 to i32
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !19
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph313, %bb.t
  %.1 = phi i32 [ %i.fe, %bb.t ], [ %.0130311, %.lr.ph313 ] ; 2 uses
  %i.fi = add nsw i32 %.1, -1                     ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv350
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !19
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !19
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !19
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  %exitcond354.not = icmp eq i64 %indvars.iv.next351, %wide.trip.count353
  br i1 %exitcond354.not, label %._crit_edge314.loopexit, label %.lr.ph313, !llvm.loop !56

._crit_edge318.loopexit.unr-lcssa:                ; preds = %.lr.ph317
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge318, label %.lr.ph317.epil.preheader

.lr.ph317.epil.preheader:                         ; preds = %._crit_edge318.loopexit.unr-lcssa, %.lr.ph317.preheader
  %.epil.init = phi i32 [ 0, %.lr.ph317.preheader ], [ %i.gq, %._crit_edge318.loopexit.unr-lcssa ]
  %indvars.iv355.epil.init = phi i64 [ 1, %.lr.ph317.preheader ], [ %indvars.iv.next356.3, %._crit_edge318.loopexit.unr-lcssa ]
  %lcmp.mod592 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod592)
  br label %.lr.ph317.epil

.lr.ph317.epil:                                   ; preds = %.lr.ph317.epil, %.lr.ph317.epil.preheader
  %i.fo = phi i32 [ %.epil.init, %.lr.ph317.epil.preheader ], [ %i.fs, %.lr.ph317.epil ]
  %indvars.iv355.epil = phi i64 [ %indvars.iv355.epil.init, %.lr.ph317.epil.preheader ], [ %indvars.iv.next356.epil, %.lr.ph317.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph317.epil.preheader ], [ %epil.iter.next, %.lr.ph317.epil ]
  %i.fp = getelementptr [4 x i8], ptr %i.ek, i64 %indvars.iv355.epil
  %i.fq = getelementptr i8, ptr %i.fp, i64 -4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !19
  %i.fs = add nsw i32 %i.fr, %i.fo                ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv355.epil
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !19
  %indvars.iv.next356.epil = add nuw nsw i64 %indvars.iv355.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge318, label %.lr.ph317.epil, !llvm.loop !57

._crit_edge318:                                   ; preds = %._crit_edge318.loopexit.unr-lcssa, %.lr.ph317.epil, %._crit_edge314
  %i.fu = sext i32 %1 to i64                      ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0237.0398, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !74
  invoke void @_ZN8LightGBM19RecursiveHalvingMapC1EiNS_24RecursiveHalvingNodeTypeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %i.c, i32 noundef %i.fw, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.x

.lr.ph317:                                        ; preds = %.lr.ph317, %.lr.ph317.preheader.new
  %i.fx = phi i32 [ 0, %.lr.ph317.preheader.new ], [ %i.gq, %.lr.ph317 ]
  %indvars.iv355 = phi i64 [ 1, %.lr.ph317.preheader.new ], [ %indvars.iv.next356.3, %.lr.ph317 ] ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN8LightGBM19RecursiveHalvingMap9ConstructEii:bb.a
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv370
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !19
  %i.hy = load i32, ptr %i.hm, align 4, !tbaa !19 ; 2 uses
  %i.hz = sdiv i32 %i.hb, %i.hy                   ; 2 uses
  %i.ia = sext i32 %i.hz to i64
  %i.ib = sext i32 %i.hy to i64
  %i.ic = mul nsw i64 %i.ia, %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !19
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv370
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !19
  %i.ig = load i32, ptr %i.hm, align 4, !tbaa !19 ; 4 uses
  %i.ih = icmp sgt i32 %i.ig, 0
  br i1 %i.ih, label %.lr.ph322, label %._crit_edge323

.lr.ph322:                                        ; preds = %bb.ab
  %i.ii = mul nsw i32 %i.ig, %i.hz
  %i.ij = sext i32 %i.ii to i64
  %wide.trip.count363 = zext nneg i32 %i.ig to i64 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ek, i64 %i.ij ; 2 uses
  %min.iters.check432 = icmp ult i32 %i.ig, 8
  br i1 %min.iters.check432, label %scalar.ph431.preheader, label %vector.ph433

vector.ph433:                                     ; preds = %.lr.ph322
  %n.vec434 = and i64 %wide.trip.count363, 2147483640 ; 3 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next441, %vector.body435 ] ; 2 uses
  %vec.phi437 = phi <4 x i32> [ zeroinitializer, %vector.ph433 ], [ %i.im, %vector.body435 ]
  %vec.phi438 = phi <4 x i32> [ zeroinitializer, %vector.ph433 ], [ %i.in, %vector.body435 ]
  %i.ik = getelementptr [4 x i8], ptr %invariant.gep, i64 %index436 ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 16
  %wide.load439 = load <4 x i32>, ptr %i.ik, align 4, !tbaa !19
  %wide.load440 = load <4 x i32>, ptr %i.il, align 4, !tbaa !19
  %i.im = add <4 x i32> %wide.load439, %vec.phi437 ; 2 uses
  %i.in = add <4 x i32> %wide.load440, %vec.phi438 ; 2 uses
  %index.next441 = add nuw i64 %index436, 8       ; 2 uses
  %i.io = icmp eq i64 %index.next441, %n.vec434
  br i1 %i.io, label %middle.block442, label %vector.body435, !llvm.loop !59

middle.block442:                                  ; preds = %vector.body435
  %bin.rdx443 = add <4 x i32> %i.in, %i.im
  %i.ip = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx443) ; 2 uses
  %cmp.n444 = icmp eq i64 %n.vec434, %wide.trip.count363
  br i1 %cmp.n444, label %._crit_edge323, label %scalar.ph431.preheader

scalar.ph431.preheader:                           ; preds = %.lr.ph322, %middle.block442
  %indvars.iv360.ph = phi i64 [ 0, %.lr.ph322 ], [ %n.vec434, %middle.block442 ]
  %.0125319.ph = phi i32 [ 0, %.lr.ph322 ], [ %i.ip, %middle.block442 ]
  br label %scalar.ph431

._crit_edge323:                                   ; preds = %scalar.ph431, %middle.block442, %bb.ab
  %.0125.lcssa = phi i32 [ 0, %bb.ab ], [ %i.ip, %middle.block442 ], [ %i.jm, %scalar.ph431 ]
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv370
  store i32 %.0125.lcssa, ptr %i.iq, align 4, !tbaa !19
  %i.ir = load i32, ptr %i.hm, align 4, !tbaa !19 ; 3 uses
  %i.is = mul nsw i32 %i.ir, %i.hr
  %i.it = add nsw i32 %i.is, %i.hb
  %i.iu = sdiv i32 %i.it, %i.ir                   ; 2 uses
  %i.iv = sext i32 %i.iu to i64
  %i.iw = sext i32 %i.ir to i64
  %i.ix = mul nsw i64 %i.iv, %i.iw
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !19
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv370
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !19
  %i.jb = load i32, ptr %i.hm, align 4, !tbaa !19 ; 4 uses
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.lr.ph328, label %._crit_edge329

.lr.ph328:                                        ; preds = %._crit_edge323
  %i.jd = mul nsw i32 %i.jb, %i.iu
  %i.je = sext i32 %i.jd to i64
  %wide.trip.count368 = zext nneg i32 %i.jb to i64 ; 3 uses
  %invariant.gep412 = getelementptr [4 x i8], ptr %i.ek, i64 %i.je ; 2 uses
  %min.iters.check420 = icmp ult i32 %i.jb, 8
  br i1 %min.iters.check420, label %scalar.ph419.preheader, label %vector.ph421

vector.ph421:                                     ; preds = %.lr.ph328
  %n.vec422 = and i64 %wide.trip.count368, 2147483640 ; 3 uses
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph421
  %index424 = phi i64 [ 0, %vector.ph421 ], [ %index.next427, %vector.body423 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph421 ], [ %i.jh, %vector.body423 ]
  %vec.phi425 = phi <4 x i32> [ zeroinitializer, %vector.ph421 ], [ %i.ji, %vector.body423 ]
  %i.jf = getelementptr [4 x i8], ptr %invariant.gep412, i64 %index424 ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jf, i64 16
  %wide.load = load <4 x i32>, ptr %i.jf, align 4, !tbaa !19
  %wide.load426 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !19
  %i.jh = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ji = add <4 x i32> %wide.load426, %vec.phi425 ; 2 uses
  %index.next427 = add nuw i64 %index424, 8       ; 2 uses
  %i.jj = icmp eq i64 %index.next427, %n.vec422
  br i1 %i.jj, label %middle.block428, label %vector.body423, !llvm.loop !60

middle.block428:                                  ; preds = %vector.body423
  %bin.rdx = add <4 x i32> %i.ji, %i.jh
  %i.jk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n429 = icmp eq i64 %n.vec422, %wide.trip.count368
  br i1 %cmp.n429, label %._crit_edge329, label %scalar.ph419.preheader

scalar.ph419.preheader:                           ; preds = %.lr.ph328, %middle.block428
  %indvars.iv365.ph = phi i64 [ 0, %.lr.ph328 ], [ %n.vec422, %middle.block428 ]
  %.0123325.ph = phi i32 [ 0, %.lr.ph328 ], [ %i.jk, %middle.block428 ]
  br label %scalar.ph419

scalar.ph431:                                     ; preds = %scalar.ph431.preheader, %scalar.ph431
  %indvars.iv360 = phi i64 [ %indvars.iv.next361, %scalar.ph431 ], [ %indvars.iv360.ph, %scalar.ph431.preheader ] ; 2 uses
  %.0125319 = phi i32 [ %i.jm, %scalar.ph431 ], [ %.0125319.ph, %scalar.ph431.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv360
  %i.jl = load i32, ptr %gep, align 4, !tbaa !19
  %i.jm = add nsw i32 %i.jl, %.0125319            ; 2 uses
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %._crit_edge323, label %scalar.ph431, !llvm.loop !61

._crit_edge329:                                   ; preds = %scalar.ph419, %middle.block428, %._crit_edge323
  %.0123.lcssa = phi i32 [ 0, %._crit_edge323 ], [ %i.jk, %middle.block428 ], [ %i.jp, %scalar.ph419 ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv370
  store i32 %.0123.lcssa, ptr %i.jn, align 4, !tbaa !19
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count374
  br i1 %exitcond375.not, label %.loopexit, label %bb.ab, !llvm.loop !62

scalar.ph419:                                     ; preds = %scalar.ph419.preheader, %scalar.ph419
  %indvars.iv365 = phi i64 [ %indvars.iv.next366, %scalar.ph419 ], [ %indvars.iv365.ph, %scalar.ph419.preheader ] ; 2 uses
  %.0123325 = phi i32 [ %i.jp, %scalar.ph419 ], [ %.0123325.ph, %scalar.ph419.preheader ]
  %gep413 = getelementptr [4 x i8], ptr %invariant.gep412, i64 %indvars.iv365
  %i.jo = load i32, ptr %gep413, align 4, !tbaa !19
  %i.jp = add nsw i32 %i.jo, %.0123325            ; 2 uses
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %exitcond369.not = icmp eq i64 %indvars.iv.next366, %wide.trip.count368
  br i1 %exitcond369.not, label %._crit_edge329, label %scalar.ph419, !llvm.loop !63

.loopexit:                                        ; preds = %._crit_edge329, %bb.w
  %.not.i.i.i184 = icmp eq ptr %.sroa.0205.0402, null
  br i1 %.not.i.i.i184, label %_ZNSt6vectorIiSaIiEED2Ev.exit191, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.aa, %.loopexit
  %i.jq = ptrtoint ptr %.sroa.0205.0402 to i64
  %i.jr = sub i64 %.sroa.11.0404, %i.jq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.0402, i64 noundef %i.jr) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit191

_ZNSt6vectorIiSaIiEED2Ev.exit191:                 ; preds = %.loopexit, %.loopexit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.ea) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ea) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ea) #11
  %.not.i.i.i192 = icmp eq ptr %.sroa.0237.0398, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit191
  %i.js = ptrtoint ptr %.sroa.0237.0398 to i64
  %i.jt = sub i64 %.sroa.17.0396, %i.js
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.0398, i64 noundef %i.jt) #11
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit194:                 ; preds = %bb.y, %bb.x, %bb.s
  %.pn = phi { ptr, i32 } [ %i.fb, %bb.s ], [ %i.gv, %bb.x ], [ %i.gv, %bb.y ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.ea) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

_ZNSt6vectorIiSaIiEED2Ev.exit196:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit194, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit194 ], [ %i.fa, %bb.r ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ea) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit198

_ZNSt6vectorIiSaIiEED2Ev.exit198:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit196, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit196 ], [ %i.ez, %bb.q ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ea) #11
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit198, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit198 ], [ %i.ey, %bb.p ] ; 2 uses
  %.not.i.i.i199 = icmp eq ptr %.sroa.0237.0398, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ju = ptrtoint ptr %.sroa.0237.0398 to i64
  %i.jv = sub i64 %.sroa.17.0396, %i.ju
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.0398, i64 noundef %i.jv) #11
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit: ; preds = %.preheader, %bb.ac, %_ZNSt6vectorIiSaIiEED2Ev.exit191
  %.not.i.i.i201 = icmp eq ptr %.sroa.0250.0.lcssa, null
  br i1 %.not.i.i.i201, label %_ZNSt6vectorIiSaIiEED2Ev.exit202, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread: ; preds = %scalar.ph507, %middle.block573, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit
  %i.jw = ptrtoint ptr %.sroa.30.0.lcssa to i64
  %i.jx = ptrtoint ptr %.sroa.0250.0.lcssa to i64
  %i.jy = sub i64 %i.jw, %i.jx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0.lcssa, i64 noundef %i.jy) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit202

_ZNSt6vectorIiSaIiEED2Ev.exit202:                 ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread
  ret void

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200: ; preds = %.loopexit283, %.loopexit.split-lp, %bb.ad, %bb.ae
  %.sroa.30.0295 = phi ptr [ %.sroa.30.0.lcssa, %bb.ae ], [ %.sroa.30.0.lcssa, %bb.ad ], [ %.sroa.27.0302, %.loopexit283 ], [ %.sroa.30.0297, %.loopexit.split-lp ]
  %.sroa.0250.0287 = phi ptr [ %.sroa.0250.0.lcssa, %bb.ae ], [ %.sroa.0250.0.lcssa, %bb.ad ], [ %.sroa.0250.0303, %.loopexit283 ], [ %.sroa.0250.0289, %.loopexit.split-lp ] ; 3 uses
  %.pn153 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ae ], [ %.pn.pn.pn.pn, %bb.ad ], [ %lpad.loopexit, %.loopexit283 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i203 = icmp eq ptr %.sroa.0250.0287, null
  br i1 %.not.i.i.i203, label %_ZNSt6vectorIiSaIiEED2Ev.exit204, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200
  %i.jz = ptrtoint ptr %.sroa.30.0295 to i64
  %i.ka = ptrtoint ptr %.sroa.0250.0287 to i64
  %i.kb = sub i64 %i.jz, %i.ka
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0287, i64 noundef %i.kb) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit204

_ZNSt6vectorIiSaIiEED2Ev.exit204:                 ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200, %bb.af
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

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
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !11, i64 0}
!13 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !12, i64 0}
!14 = !{!"_ZTSSt6vectorIiSaIiEE", !13, i64 0}
!15 = !{!"_ZTSN8LightGBM8BruckMapE", !6, i64 0, !14, i64 8, !14, i64 32}
!16 = !{!15, !6, i64 0}
!17 = !{!11, !10, i64 8}
!18 = !{!11, !10, i64 16}
!19 = !{!6, !6, i64 0}
!20 = !{!11, !10, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"_ZTSN8LightGBM24RecursiveHalvingNodeTypeE", !5, i64 0}
!25 = !{!"bool", !5, i64 0}
!26 = !{!"_ZTSN8LightGBM19RecursiveHalvingMapE", !6, i64 0, !24, i64 4, !25, i64 8, !6, i64 12, !14, i64 16, !14, i64 40, !14, i64 64, !14, i64 88, !14, i64 112}
!27 = !{!26, !6, i64 0}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, i1 false, !"LVerDomain"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !30}
!34 = distinct !{!34, !21, !22, !23}
!35 = distinct !{!35, !21, !22}
!36 = !{!31}
!37 = !{!32}
!38 = !{!33, !31}
!39 = !{!33}
!40 = distinct !{!40, !21}
!41 = !{!26, !24, i64 4}
!42 = !{!26, !25, i64 8}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, i1 false, !"LVerDomain"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !45}
!50 = distinct !{!50, !45}
!51 = distinct !{!51, !45}
!52 = distinct !{!52, !21, !22, !23}
!53 = distinct !{!53, !21, !22}
!54 = distinct !{!54, !21, !22, !23}
!55 = distinct !{!55, !21, !23, !22}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !75}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21, !22, !23}
!60 = distinct !{!60, !21, !22, !23}
!61 = distinct !{!61, !21, !23, !22}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !21, !23, !22}
!64 = !{!46}
!65 = !{!47}
!66 = !{!51, !50, !49, !48, !46}
!67 = !{!51}
!68 = !{!50, !49, !48, !46}
!69 = !{!50}
!70 = !{!49, !48, !46}
!71 = !{!49}
!72 = !{!48, !46}
!73 = !{!48}
!74 = !{!24, !24, i64 0}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!26, !6, i64 12}
end_hunk_2
