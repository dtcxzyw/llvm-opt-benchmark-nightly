Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/warpfield?download=true
inline.NumInlined: 5076
inline.NumDeleted: 2014
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZNSt6vectorIS_IN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EESaIS6_EE5clearEv:bb.a
  %.not.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i, label %_ZNSt6vectorIS_IN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EESaIS6_EE15_M_erase_at_endEPS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN2cv3PtrINS1_6dynafu8WarpNodeEEESaIS5_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyISt6vectorIN2cv3PtrINS1_6dynafu8WarpNodeEEESaIS5_EEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !131 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !120
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !121
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #35, !inline_history !640
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #35, !inline_history !640
  br label %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i.i.i.i.i.i, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #35
  br label %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !131
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.y = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv3PtrINS1_6dynafu8WarpNodeEEESaIS5_EEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #36
  br label %_ZSt8_DestroyISt6vectorIN2cv3PtrINS1_6dynafu8WarpNodeEEESaIS5_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv3PtrINS1_6dynafu8WarpNodeEEESaIS5_EEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv3PtrINS1_6dynafu8WarpNodeEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIN2cv3PtrINS1_6dynafu8WarpNodeEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv3PtrINS1_6dynafu8WarpNodeEEESaIS5_EEEvPT_.exit.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !106
  br label %_ZNSt6vectorIS_IN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EESaIS6_EE15_M_erase_at_endEPS6_.exit

_ZNSt6vectorIS_IN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EESaIS6_EE15_M_erase_at_endEPS6_.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt6vectorIN2cv3PtrINS1_6dynafu8WarpNodeEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EESaIS6_EE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !131    ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3PtrINS0_6dynafu8WarpNodeEEEE8allocateEmPKv.exit.i.i.i.i, !prof !125

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt15__new_allocatorIN2cv3PtrINS0_6dynafu8WarpNodeEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #34
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN2cv3PtrINS0_6dynafu8WarpNodeEEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.m = phi ptr [ null, %bb.b ], [ %i.l, %_ZNSt15__new_allocatorIN2cv3PtrINS0_6dynafu8WarpNodeEEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !132
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !133
  %i.q = load ptr, ptr %1, align 8, !tbaa !158    ; 2 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !158  ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.q, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118  ; 2 uses
  %i.u = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !134
  store <2 x ptr> %i.u, ptr %.09.i.i.i.i.i, align 8, !tbaa !134
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.v, align 4, !tbaa !124
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !124
  br label %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EEC2ERKS6_.exit: ; preds = %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.ab, %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.n, align 8, !tbaa !132
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !106
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIS_IN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EEC2ERKS6_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !131    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.j = load ptr, ptr %0, align 8, !tbaa !131    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE11_M_allocateEm.exit.i, !prof !125

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt12_Vector_baseIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118  ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !134
  store <2 x ptr> %i.s, ptr %.09.i.i.i.i.i, align 8, !tbaa !134
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !124
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !124
  br label %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %_ZSt10_ConstructIN2cv3PtrINS0_6dynafu8WarpNodeEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE11_M_allocateEm.exit.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !131   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !132 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEEEvT_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.au, %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i ], [ %i.aa, %_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.af, align 8, !tbaa !120
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !121
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !123
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #35, !inline_history !3
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !123
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #35, !inline_history !3
  br label %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.k ], [ %i.as, %bb.l ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.m, label %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i, !prof !125

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #35
  br label %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i

_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.au, %i.ac
  br i1 %.not.i.i26, label %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEEEvT_S6_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEEEvT_S6_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_6dynafu8WarpNodeEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !131
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEEEvT_S6_.exit

_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEEEvT_S6_.exitthread-pre-split, %_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit
  %i.av = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEEEvT_S6_.exitthread-pre-split ], [ %i.aa, %_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEEEvT_S6_.exit
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #36
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_6dynafu8WarpNodeEEEEvT_S6_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !131
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !133
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit

bb.o:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !132 ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.be, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp sgt i64 %i.g, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i27:                               ; preds = %bb.p, %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ci, %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ch, %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cg, %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bg = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !139
  store ptr %i.bg, ptr %.0811.i.i.i.i.i, align 8, !tbaa !139
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !118 ; 4 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i27
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i.i.i.i.i.i28 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !124
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !124
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !118
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bq = phi ptr [ %i.bk, %bb.q ], [ %i.bk, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.br, align 8, !tbaa !120
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !121
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !123
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #35, !inline_history !641
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !123
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #35, !inline_history !641
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i9.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.x ], [ %i.ce, %bb.y ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, !prof !125

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #35
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !118
  br label %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i

_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i27
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.ci = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cj = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit, !llvm.loop !642

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit: ; preds = %_ZN2cv3PtrINS_6dynafu8WarpNodeEEaSERKS3_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !158
  %.pre66 = ptrtoint ptr %i.ch to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit, %bb.p
  %.pre-phi67 = phi i64 [ %.pre66, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.ck = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.bc, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ch, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_6dynafu8WarpNodeEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.j, %bb.p ]
end_hunk_0
