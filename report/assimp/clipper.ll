inline.NumInlined: 2352
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10ClipperLib11ClipperBase9GetBoundsEv:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = tail call i64 @llvm.smax.i64(i64 %i.n, i64 %i.r) ; 2 uses
  store i64 %i.s, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.023.064, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.v = phi i64 [ %.promoted525861, %bb.d ], [ %i.ap, %._crit_edge ]
  %.promoted4350 = phi i64 [ %.promoted5762, %bb.d ], [ %i.am, %._crit_edge ] ; 2 uses
  %.promoted48 = phi i64 [ %.promoted475563, %bb.d ], [ %i.ak, %._crit_edge ] ; 2 uses
  %.014 = phi ptr [ %i.p, %bb.d ], [ %i.u, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 96
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not44 = icmp eq ptr %i.x, null
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %i.y = phi ptr [ %i.ad, %.lr.ph ], [ %i.x, %bb.e ] ; 3 uses
  %.146 = phi ptr [ %i.y, %.lr.ph ], [ %.014, %bb.e ] ; 2 uses
  %spec.store.select4245 = phi i64 [ %spec.store.select, %.lr.ph ], [ %.promoted48, %bb.e ]
  %i.z = phi i64 [ %spec.store.select36, %.lr.ph ], [ %.promoted4350, %bb.e ]
  %i.aa = load i64, ptr %.146, align 8
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %spec.store.select4245) ; 3 uses
  store i64 %spec.store.select, ptr %0, align 8
  %i.ab = load i64, ptr %.146, align 8
  %spec.store.select36 = tail call i64 @llvm.smax.i64(i64 %i.ab, i64 %i.z) ; 3 uses
  store i64 %spec.store.select36, ptr %i.l, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.promoted4351 = phi i64 [ %.promoted4350, %bb.e ], [ %spec.store.select36, %.lr.ph ]
  %.promoted49 = phi i64 [ %.promoted48, %bb.e ], [ %spec.store.select, %.lr.ph ]
  %.1.lcssa = phi ptr [ %.014, %bb.e ], [ %i.y, %.lr.ph ] ; 4 uses
  %i.ae = load i64, ptr %.1.lcssa, align 8
  %i.af = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %.promoted49) ; 2 uses
  store i64 %i.af, ptr %0, align 8
  %i.ag = load i64, ptr %.1.lcssa, align 8
  %i.ah = tail call i64 @llvm.smax.i64(i64 %.promoted4351, i64 %i.ag) ; 2 uses
  store i64 %i.ah, ptr %i.l, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 32 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 %i.af) ; 3 uses
  store i64 %i.ak, ptr %0, align 8
  %i.al = load i64, ptr %i.ai, align 8
  %i.am = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 %i.al) ; 3 uses
  store i64 %i.am, ptr %i.l, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 40
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = tail call i64 @llvm.smin.i64(i64 %i.ao, i64 %i.v) ; 3 uses
  store i64 %i.ap, ptr %i.k, align 8
  %i.aq = icmp eq ptr %.014, %i.p
  br i1 %i.aq, label %bb.e, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.023.064, i64 24 ; 2 uses
  %.not37 = icmp eq ptr %i.ar, %i.d
  br i1 %.not37, label %.loopexit, label %bb.d, !llvm.loop !47

.loopexit:                                        ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE4pushERKx(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 4 uses
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #32 ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  %i.u = load i64, ptr %1, align 8
  store i64 %i.u, ptr %i.t, align 8
  %i.v = icmp sgt i64 %i.k, 0
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #33
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  store ptr %i.s, ptr %0, align 8
  store ptr %i.w, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.x, ptr %i.c, align 8
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

_ZNSt6vectorIxSaIxEE9push_backERKx.exit:          ; preds = %bb.b, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i
  %i.y = phi ptr [ %i.g, %bb.b ], [ %i.w, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ] ; 2 uses
  %i.z = phi ptr [ %.pre, %bb.b ], [ %i.s, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ] ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = add nsw i64 %i.af, -1                   ; 2 uses
  %i.ah = icmp sgt i64 %i.af, 1
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEESt4lessIxEEvT_S9_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIxSaIxEE9push_backERKx.exit, %bb.g
  %.019.i.i = phi i64 [ %.0920.i56.i, %bb.g ], [ %i.ag, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i56.i = lshr i64 %.0920.in.i.i, 1        ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.0920.i56.i
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp slt i64 %i.aj, %i.ab
  br i1 %i.ak, label %bb.g, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEESt4lessIxEEvT_S9_T0_.exit

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.019.i.i
  store i64 %i.aj, ptr %i.al, align 8
  %.not.i3 = icmp eq i64 %.0920.i56.i, 0
  br i1 %.not.i3, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEESt4lessIxEEvT_S9_T0_.exit, label %.lr.ph.i.i, !llvm.loop !48

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEESt4lessIxEEvT_S9_T0_.exit: ; preds = %.lr.ph.i.i, %bb.g, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit
  %.0.lcssa.i.i = phi i64 [ %i.ag, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ], [ 0, %bb.g ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.am = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.0.lcssa.i.i
  store i64 %i.ab, ptr %i.am, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib11ClipperBase11PopScanbeamERx(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8
  store i64 %i.f, ptr %1, align 8
  %i.g = load ptr, ptr %i.a, align 8              ; 12 uses
  %i.h = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp sgt i64 %i.k, 8
  br i1 %i.l, label %bb.c, label %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = load i64, ptr %i.g, align 8
  store i64 %i.o, ptr %i.m, align 8
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.j                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3                   ; 3 uses
  %i.s = add nsw i64 %i.r, -1
  %2 = lshr i64 %i.s, 1
  %i.t = icmp sgt i64 %i.r, 2
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.u = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.x
  %i.z = load i64, ptr %i.w, align 8
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = icmp slt i64 %i.z, %i.aa
  %spec.select.i.i.i.i = select i1 %i.ab, i64 %i.x, i64 %i.v ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.g, i64 %spec.select.i.i.i.i
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.035.i.i.i.i
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = icmp slt i64 %spec.select.i.i.i.i, %2
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !49

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ag = and i64 %i.q, 8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = add nsw i64 %i.r, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa.i.i.i.i, %i.aj
  br i1 %i.ak, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.al = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0.lcssa.i.i.i.i
  store i64 %i.ao, ptr %i.ap, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.e ], [ %i.am, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.f
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i67.i.i.i, %bb.f ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i67.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0920.i.i67.i.i.i
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp slt i64 %i.ar, %i.n
  br i1 %i.as, label %bb.f, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.at = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.019.i.i.i.i.i
  store i64 %i.ar, ptr %i.at, align 8
  %.not8.i.i.i = icmp eq i64 %.0920.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !48

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.f ]
  %i.au = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.n, ptr %i.au, align 8
  %.pre.i = load ptr, ptr %i.c, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit

_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit: ; preds = %bb.b, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i
  %i.av = phi ptr [ %i.g, %bb.b ], [ %.pre, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i ] ; 2 uses
  %i.aw = phi ptr [ %i.h, %bb.b ], [ %.pre.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i ] ; 2 uses
  %storemerge22 = getelementptr inbounds i8, ptr %i.aw, i64 -8 ; 3 uses
  store ptr %storemerge22, ptr %i.c, align 8
  %i.ax = icmp eq ptr %i.av, %storemerge22
  br i1 %i.ax, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit, %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit21
  %i.ay = phi ptr [ %i.co, %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit21 ], [ %i.av, %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit ] ; 12 uses
  %storemerge24 = phi ptr [ %storemerge, %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit21 ], [ %storemerge22, %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit ] ; 2 uses
  %.pn23 = phi ptr [ %i.cp, %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit21 ], [ %i.aw, %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit ]
  %i.az = load i64, ptr %1, align 8               ; 2 uses
  %i.ba = load i64, ptr %i.ay, align 8
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  %i.bc = ptrtoint ptr %storemerge24 to i64
  %i.bd = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp sgt i64 %i.be, 8
  br i1 %i.bf, label %bb.h, label %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit21

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds i8, ptr %.pn23, i64 -16 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  store i64 %i.az, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bi, %i.bd                    ; 2 uses
  %i.bk = ashr exact i64 %i.bj, 3                 ; 3 uses
  %i.bl = add nsw i64 %i.bk, -1
  %3 = lshr i64 %i.bl, 1
  %i.bm = icmp sgt i64 %i.bk, 2
  br i1 %i.bm, label %.lr.ph.i.i.i.i18, label %._crit_edge.i.i.i.i4

.lr.ph.i.i.i.i18:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i18
  %.035.i.i.i.i19 = phi i64 [ %spec.select.i.i.i.i20, %.lr.ph.i.i.i.i18 ], [ 0, %bb.h ] ; 2 uses
  %i.bn = shl i64 %.035.i.i.i.i19, 1              ; 2 uses
  %i.bo = add i64 %i.bn, 2                        ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bo
  %i.bq = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bq
  %i.bs = load i64, ptr %i.bp, align 8
  %i.bt = load i64, ptr %i.br, align 8
  %i.bu = icmp slt i64 %i.bs, %i.bt
  %spec.select.i.i.i.i20 = select i1 %i.bu, i64 %i.bq, i64 %i.bo ; 4 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %spec.select.i.i.i.i20
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %.035.i.i.i.i19
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = icmp slt i64 %spec.select.i.i.i.i20, %3
  br i1 %i.by, label %.lr.ph.i.i.i.i18, label %._crit_edge.i.i.i.i4, !llvm.loop !49

._crit_edge.i.i.i.i4:                             ; preds = %.lr.ph.i.i.i.i18, %bb.h
  %.0.lcssa.i.i.i.i5 = phi i64 [ 0, %bb.h ], [ %spec.select.i.i.i.i20, %.lr.ph.i.i.i.i18 ] ; 5 uses
  %i.bz = and i64 %i.bj, 8
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i4
  %i.cb = add nsw i64 %i.bk, -2
  %i.cc = ashr exact i64 %i.cb, 1
  %i.cd = icmp eq i64 %.0.lcssa.i.i.i.i5, %i.cc
  br i1 %i.cd, label %.thread.i.i.i17, label %bb.j

.thread.i.i.i17:                                  ; preds = %bb.i
  %i.ce = shl nuw nsw i64 %.0.lcssa.i.i.i.i5, 1
  %i.cf = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0.lcssa.i.i.i.i5
  store i64 %i.ch, ptr %i.ci, align 8
  br label %.lr.ph.i.i.i.i.i9.preheader

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i4
  %.not.i.i.i6 = icmp eq i64 %.0.lcssa.i.i.i.i5, 0
  br i1 %.not.i.i.i6, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i13, label %.lr.ph.i.i.i.i.i9.preheader

.lr.ph.i.i.i.i.i9.preheader:                      ; preds = %bb.j, %.thread.i.i.i17
  %.019.i.i.i.i.i10.ph = phi i64 [ %.0.lcssa.i.i.i.i5, %bb.j ], [ %i.cf, %.thread.i.i.i17 ]
  br label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %.lr.ph.i.i.i.i.i9.preheader, %bb.k
  %.019.i.i.i.i.i10 = phi i64 [ %.0920.i.i67.i.i.i12, %bb.k ], [ %.019.i.i.i.i.i10.ph, %.lr.ph.i.i.i.i.i9.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i11 = add nsw i64 %.019.i.i.i.i.i10, -1
  %.0920.i.i67.i.i.i12 = lshr i64 %.0920.in.i.i.i.i.i11, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0920.i.i67.i.i.i12
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = icmp slt i64 %i.ck, %i.bh
  br i1 %i.cl, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i13

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i9
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %.019.i.i.i.i.i10
  store i64 %i.ck, ptr %i.cm, align 8
  %.not8.i.i.i16 = icmp eq i64 %.0920.i.i67.i.i.i12, 0
  br i1 %.not8.i.i.i16, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i13, label %.lr.ph.i.i.i.i.i9, !llvm.loop !48

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i13: ; preds = %bb.k, %.lr.ph.i.i.i.i.i9, %bb.j
  %.0.lcssa.i.i.i.i.i14 = phi i64 [ 0, %bb.j ], [ %.019.i.i.i.i.i10, %.lr.ph.i.i.i.i.i9 ], [ 0, %bb.k ]
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %.0.lcssa.i.i.i.i.i14
  store i64 %i.bh, ptr %i.cn, align 8
  %.pre.i15 = load ptr, ptr %i.c, align 8
  %.pre26 = load ptr, ptr %i.a, align 8
  br label %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit21

_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit21: ; preds = %bb.g, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i13
  %i.co = phi ptr [ %i.ay, %bb.g ], [ %.pre26, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i13 ] ; 2 uses
  %i.cp = phi ptr [ %storemerge24, %bb.g ], [ %.pre.i15, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_comp_iterISt4lessIxEEEEvT_SC_SC_RT0_.exit.i.i13 ] ; 2 uses
  %storemerge = getelementptr inbounds i8, ptr %i.cp, i64 -8 ; 3 uses
  store ptr %storemerge, ptr %i.c, align 8
  %i.cq = icmp eq ptr %i.co, %storemerge
  br i1 %i.cq, label %.critedge, label %.lr.ph, !llvm.loop !50

.critedge:                                        ; preds = %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit21, %.lr.ph, %_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE3popEv.exit, %bb.a
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ClipperLib11ClipperBase17DisposeAllOutRecsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %_ZNSt6vectorIPN10ClipperLib6OutRecESaIS2_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit
  %i.e = icmp eq ptr %i.v, %i.w
  br i1 %i.e, label %_ZNSt6vectorIPN10ClipperLib6OutRecESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN10ClipperLib6OutRecES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN10ClipperLib6OutRecES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.w, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN10ClipperLib6OutRecESaIS2_EE5clearEv.exit

_ZNSt6vectorIPN10ClipperLib6OutRecESaIS2_EE5clearEv.exit: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPPN10ClipperLib6OutRecES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit
  %i.f = phi ptr [ %i.w, %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit ], [ %i.d, %bb.a ]
  %.06 = phi i64 [ %i.u, %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit ], [ 0, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.06
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr null, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.n, null
  br i1 %.not8.i.i, label %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.o = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.q, ptr %i.i, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 40) #33
  %i.r = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.r, null
  br i1 %.not.i.i3, label %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit, label %.lr.ph.i.i, !llvm.loop !15

_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit: ; preds = %.lr.ph.i.i, %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 40) #33
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.06
  store ptr null, ptr %i.t, align 8
  %i.u = add nuw i64 %.06, 1                      ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !51
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ClipperLib11ClipperBase13DisposeOutRecEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr null, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.j, null
  br i1 %.not8.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.k = phi ptr [ %i.n, %.lr.ph.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.e, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #33
  %i.n = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph.i, %bb.b, %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 40) #33
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %1
  store ptr null, ptr %i.p, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib11ClipperBase13DeleteFromAELEPNS_5TEdgeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp ne ptr %i.b, null                   ; 2 uses
  %i.f = icmp ne ptr %i.d, null                   ; 2 uses
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %1, %i.h
  %or.cond18 = select i1 %or.cond, i1 true, i1 %.not
  br i1 %or.cond18, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %i.d, ptr %i.i, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr %i.b, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN10ClipperLib11ClipperBase12CreateOutRecEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_:bb.a
  %i.w = icmp slt i64 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i28, i64 24, i1 false)
  %i.x = ptrtoint ptr %.sroa.0.019.i28 to i64
  %i.y = sub i64 %i.x, %i.b                       ; 4 uses
  %i.z = icmp sgt i64 %i.y, 24
  br i1 %i.z, label %bb.j, label %bb.k, !prof !134

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 48
  %.neg24.i41 = udiv exact i64 %i.y, 24
  %.neg24.neg.i42 = sub nsw i64 0, %.neg24.i41
  %i.ab = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %.neg24.neg.i42
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.y, 24
  br i1 %i.ac, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i27
  %.sroa.5.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 32
  %.sroa.5.i.i23.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx.i.i30, align 8
  %i.ae = load i64, ptr %.pn18.i29, align 8
  %i.af = icmp slt i64 %i.ae, %i.v
  br i1 %i.af, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i31

.lr.ph.i.i36:                                     ; preds = %bb.m, %.lr.ph.i.i36
  %.sroa.0.011.i.i37 = phi ptr [ %.sroa.0.0.i.i39, %.lr.ph.i.i36 ], [ %.pn18.i29, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i38 = phi ptr [ %.sroa.0.011.i.i37, %.lr.ph.i.i36 ], [ %.sroa.0.019.i28, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i38, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.011.i.i37, i64 24, i1 false)
  %.sroa.0.0.i.i39 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i37, i64 -24 ; 2 uses
  %i.ag = load i64, ptr %.sroa.0.0.i.i39, align 8
  %i.ah = icmp slt i64 %i.ag, %i.v
  br i1 %i.ah, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i31, !llvm.loop !359

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i31: ; preds = %.lr.ph.i.i36, %bb.m
  %.sroa.06.0.lcssa.i.i32 = phi ptr [ %.sroa.0.019.i28, %bb.m ], [ %.sroa.0.011.i.i37, %.lr.ph.i.i36 ] ; 2 uses
  store i64 %i.v, ptr %.sroa.06.0.lcssa.i.i32, align 8
  %.sroa.5.0..sroa_idx5.i.i33 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i32, i64 8
  store <2 x ptr> %.sroa.5.i.i23.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx5.i.i33, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i31, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40
  %.sroa.0.0.i34 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i28, i64 24 ; 2 uses
  %.not.i35 = icmp eq ptr %.sroa.0.0.i34, %1
  br i1 %.not.i35, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit, label %.lr.ph.i27, !llvm.loop !360

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i15, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN10ClipperLib8IntPointESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIN10ClipperLib8IntPointESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #31
  unreachable

_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !365, !noalias !362
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !alias.scope !362, !noalias !365
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !365, !noalias !362
  store ptr %i.aa, ptr %i.y, align 8, !alias.scope !362, !noalias !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !365, !noalias !362
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !58

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #33
  br label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIN10ClipperLib8IntPointESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #5 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.68", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph30

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEET_SF_SF_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph30, !llvm.loop !367

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_RT0_(ptr %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_RT0_.exit.i.i ], [ %storemerge19.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %0, align 8
  store ptr %i.k, ptr %i.i, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %5 = lshr i64 %i.o, 1
  %i.p = icmp sgt i64 %i.n, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.036.i.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = load ptr, ptr %i.u, align 8
  %i.x = call noundef zeroext i1 %3(ptr noundef %i.v, ptr noundef %i.w), !inline_history !368
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.t, i64 %i.r ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %5
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !369

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.m, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.n, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store ptr %i.ak, ptr %i.al, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i78.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i78.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i78.i.i.i ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef zeroext i1 %3(ptr noundef %i.an, ptr noundef %i.j), !inline_history !370
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = load ptr, ptr %i.am, align 8
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store ptr %i.ap, ptr %i.aq, align 8
  %.not9.i.i.i = icmp eq i64 %.0920.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !371

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.j, ptr %i.ar, align 8
  %i.as = icmp sgt i64 %i.m, 8
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_T0_.exit, !llvm.loop !372

.lr.ph30:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1929 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02028 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.ci, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.02028, -1                 ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 7 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge1929, i64 -8 ; 7 uses
  %i.ay = load ptr, ptr %i.f, align 8
  %i.az = load ptr, ptr %i.aw, align 8
  %i.ba = tail call noundef zeroext i1 %3(ptr noundef %i.ay, ptr noundef %i.az), !inline_history !373
  %i.bb = load ptr, ptr %i.ax, align 8            ; 2 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph30
  %i.bc = load ptr, ptr %i.aw, align 8
  %i.bd = tail call noundef zeroext i1 %3(ptr noundef %i.bc, ptr noundef %i.bb), !inline_history !373
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %0, align 8
  %i.bf = load ptr, ptr %i.aw, align 8
  store ptr %i.bf, ptr %0, align 8
  store ptr %i.be, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.f, align 8
  %i.bh = load ptr, ptr %i.ax, align 8
  %i.bi = tail call noundef zeroext i1 %3(ptr noundef %i.bg, ptr noundef %i.bh), !inline_history !373
  %i.bj = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ax, align 8
  store ptr %i.bk, ptr %0, align 8
  store ptr %i.bj, ptr %i.ax, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.f, align 8
  store ptr %i.bl, ptr %0, align 8
  store ptr %i.bj, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph30
  %i.bm = load ptr, ptr %i.f, align 8
  %i.bn = tail call noundef zeroext i1 %3(ptr noundef %i.bm, ptr noundef %i.bb), !inline_history !373
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load <2 x ptr>, ptr %0, align 8
  %i.bp = shufflevector <2 x ptr> %i.bo, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bp, ptr %0, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.aw, align 8
  %i.br = load ptr, ptr %i.ax, align 8
  %i.bs = tail call noundef zeroext i1 %3(ptr noundef %i.bq, ptr noundef %i.br), !inline_history !373
  %i.bt = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.ax, align 8
  store ptr %i.bu, ptr %0, align 8
  store ptr %i.bt, ptr %i.ax, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.aw, align 8
  store ptr %i.bv, ptr %0, align 8
  store ptr %i.bt, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i.preheader, %bb.r
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.r ], [ %storemerge1929, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.bz, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i ], [ %i.bz, %bb.p ] ; 9 uses
  %i.bw = load ptr, ptr %.sroa.012.1.i.i, align 8
  %i.bx = load ptr, ptr %0, align 8
  %i.by = tail call noundef zeroext i1 %3(ptr noundef %i.bw, ptr noundef %i.bx), !inline_history !374
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.by, label %bb.p, label %.preheader.i.i, !llvm.loop !375

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.p ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 6 uses
  %i.ca = load ptr, ptr %0, align 8
  %i.cb = load ptr, ptr %.sroa.09.1.i.i, align 8
  %i.cc = tail call noundef zeroext i1 %3(ptr noundef %i.ca, ptr noundef %i.cb), !inline_history !374
  br i1 %i.cc, label %.preheader.i.i, label %bb.q, !llvm.loop !376

bb.q:                                             ; preds = %.preheader.i.i
  %i.cd = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cd, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEET_SF_SF_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr %.sroa.012.1.i.i, align 8
  %i.cf = load ptr, ptr %.sroa.09.1.i.i, align 8
  store ptr %i.cf, ptr %.sroa.012.1.i.i, align 8
  store ptr %i.ce, ptr %.sroa.09.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_.exit.i, !llvm.loop !377

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEET_SF_SF_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1929, i64 noundef %i.au, ptr %3)
  %i.cg = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ch = sub i64 %i.cg, %i.a
  %i.ci = ashr exact i64 %i.ch, 3                 ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, 16
  br i1 %i.cj, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_T0_.exit, !llvm.loop !367

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEET_SF_SF_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_T0_SG_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_T0_SG_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8 ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_T0_SG_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.09.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = load ptr, ptr %i.w, align 8
end_hunk_1
