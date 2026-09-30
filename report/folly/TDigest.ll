Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/TDigest?download=true
inline.NumInlined: 1033
inline.NumDeleted: 399
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_:bb.a
_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bk = load double, ptr %0, align 8, !tbaa !33 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load double, ptr %.1.i.i, align 8, !tbaa !33 ; 2 uses
  %i.bm = fcmp olt double %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !73

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bo = load double, ptr %.114.i.i, align 8, !tbaa !33 ; 2 uses
  %i.bp = fcmp olt double %i.bk, %i.bo
  br i1 %i.bp, label %.preheader.i.i, label %bb.q, !llvm.loop !74

bb.q:                                             ; preds = %.preheader.i.i
  %i.bq = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bq, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store double %i.bo, ptr %.1.i.i, align 8, !tbaa !33
  store double %i.bl, ptr %.114.i.i, align 8, !tbaa !33
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !75

_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.au)
  %i.br = ptrtoint ptr %.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a                     ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 128
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !71

_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.020.i.idx = phi i64 [ 8, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.e = load double, ptr %.020.i.ptr, align 8, !tbaa !33 ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !33  ; 2 uses
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.020.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !39

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store double %i.f, ptr %i.i, align 8, !tbaa !33
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load double, ptr %.pn19.i, align 8, !tbaa !33 ; 2 uses
  %i.k = fcmp olt double %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi double [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store double %i.l, ptr %.0912.i.i, align 8, !tbaa !33
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.m = load double, ptr %.0.i.i, align 8, !tbaa !33 ; 2 uses
  %i.n = fcmp olt double %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, !llvm.loop !76

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store double %i.e, ptr %.sink.i, align 8, !tbaa !33
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !77

_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
  br i1 %.not5.i, label %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.06.i = phi ptr [ %i.v, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.o, %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit ] ; 5 uses
  %i.p = load double, ptr %.06.i, align 8, !tbaa !33 ; 3 uses
  %.011.i.i = getelementptr inbounds i8, ptr %.06.i, i64 -8 ; 2 uses
  %i.q = load double, ptr %.011.i.i, align 8, !tbaa !33 ; 2 uses
  %i.r = fcmp olt double %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i, %.lr.ph.i.i9
  %i.s = phi double [ %i.t, %.lr.ph.i.i9 ], [ %i.q, %.lr.ph.i ]
  %.013.i.i10 = phi ptr [ %.0.i.i12, %.lr.ph.i.i9 ], [ %.011.i.i, %.lr.ph.i ] ; 3 uses
  %.0912.i.i11 = phi ptr [ %.013.i.i10, %.lr.ph.i.i9 ], [ %.06.i, %.lr.ph.i ]
  store double %i.s, ptr %.0912.i.i11, align 8, !tbaa !33
  %.0.i.i12 = getelementptr inbounds i8, ptr %.013.i.i10, i64 -8 ; 2 uses
  %i.t = load double, ptr %.0.i.i12, align 8, !tbaa !33 ; 2 uses
  %i.u = fcmp olt double %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !76

_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i9, %.lr.ph.i
  %.09.lcssa.i.i = phi ptr [ %.06.i, %.lr.ph.i ], [ %.013.i.i10, %.lr.ph.i.i9 ]
  store double %i.p, ptr %.09.lcssa.i.i, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %.not.i8 = icmp eq ptr %i.v, %1
  br i1 %.not.i8, label %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !78

bb.h:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %0, %1
  %.017.i13 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i13, %1
  %or.cond = select i1 %i.w, i1 true, i1 %.not18.i
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.h, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i17
  %.020.i15 = phi ptr [ %.0.i19, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i17 ], [ %.017.i13, %bb.h ] ; 6 uses
  %.pn19.i16 = phi ptr [ %.020.i15, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i17 ], [ %0, %bb.h ] ; 4 uses
  %i.x = load double, ptr %.020.i15, align 8, !tbaa !33 ; 4 uses
  %i.y = load double, ptr %0, align 8, !tbaa !33  ; 2 uses
  %i.z = fcmp olt double %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i14
  %i.aa = ptrtoint ptr %.020.i15 to i64
  %i.ab = sub i64 %i.aa, %i.b                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.k, !prof !39

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn19.i16, i64 16
  %i.af = sub nsw i64 0, %i.ac
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ab, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i17

bb.k:                                             ; preds = %bb.i
  %i.ah = icmp eq i64 %i.ab, 8
  br i1 %i.ah, label %bb.l, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i17

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn19.i16, i64 8
  store double %i.y, ptr %i.ai, align 8, !tbaa !33
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i17

bb.m:                                             ; preds = %.lr.ph.i14
  %i.aj = load double, ptr %.pn19.i16, align 8, !tbaa !33 ; 2 uses
  %i.ak = fcmp olt double %i.x, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i17

.lr.ph.i.i21:                                     ; preds = %bb.m, %.lr.ph.i.i21
  %i.al = phi double [ %i.am, %.lr.ph.i.i21 ], [ %i.aj, %bb.m ]
  %.013.i.i22 = phi ptr [ %.0.i.i24, %.lr.ph.i.i21 ], [ %.pn19.i16, %bb.m ] ; 3 uses
  %.0912.i.i23 = phi ptr [ %.013.i.i22, %.lr.ph.i.i21 ], [ %.020.i15, %bb.m ]
  store double %i.al, ptr %.0912.i.i23, align 8, !tbaa !33
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -8 ; 2 uses
  %i.am = load double, ptr %.0.i.i24, align 8, !tbaa !33 ; 2 uses
  %i.an = fcmp olt double %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !76

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.020.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store double %i.x, ptr %.sink.i18, align 8, !tbaa !33
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.020.i15, i64 8 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !77

_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i17, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.us
  %i.p = load double, ptr %i.o, align 8, !tbaa !33 ; 2 uses
  %i.q = icmp slt i64 %.013.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.t, align 8, !tbaa !33
  %i.x = load double, ptr %i.v, align 8, !tbaa !33
  %i.y = fcmp olt double %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !33
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  store double %i.ab, ptr %i.ac, align 8, !tbaa !33
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !1

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ag = load double, ptr %i.af, align 8, !tbaa !33 ; 2 uses
  %i.ah = fcmp olt double %i.ag, %i.p
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store double %i.ag, ptr %i.ai, align 8, !tbaa !33
  %i.aj = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !2

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store double %i.p, ptr %i.ak, align 8, !tbaa !33
  %.not.us = icmp eq i64 %.013.us, 0
  %i.al = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !79

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013
  %i.an = load double, ptr %i.am, align 8, !tbaa !33 ; 2 uses
  %i.ao = icmp slt i64 %.013, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.ap = shl i64 %.029.i, 1                      ; 3 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr [8 x i8], ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load double, ptr %i.ar, align 8, !tbaa !33
  %i.av = load double, ptr %i.at, align 8, !tbaa !33
  %i.aw = fcmp olt double %i.au, %i.av
  %i.ax = or disjoint i64 %i.ap, 1
  %spec.select.i = select i1 %i.aw, i64 %i.ax, i64 %i.aq ; 4 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.az = load double, ptr %i.ay, align 8, !tbaa !33
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  store double %i.az, ptr %i.ba, align 8, !tbaa !33
  %i.bb = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = load double, ptr %i.m, align 8, !tbaa !33
  store double %i.bd, ptr %i.n, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.be = icmp sgt i64 %.128.i, %.013
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !33 ; 2 uses
  %i.bh = fcmp olt double %i.bg, %i.an
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store double %i.bg, ptr %i.bi, align 8, !tbaa !33
  %i.bj = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !2

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store double %i.an, ptr %i.bk, align 8, !tbaa !33
  %.not = icmp eq i64 %.013, 0
  %i.bl = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !79

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly7TDigest11mergeValuesERS0_NS_5RangeIPKdEERSt6vectorINS0_8CentroidESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr %2, ptr %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.folly::TDigest::CentroidMerger", align 16 ; 28 uses
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load double, ptr %i.b, align 8, !tbaa !27 ; 2 uses
  %i.d = ptrtoint ptr %3 to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = uitofp i64 %i.g to double
  %i.i = fadd double %i.c, %i.h                   ; 3 uses
  %i.j = load double, ptr %2, align 8, !tbaa !33  ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %3, i64 -8
  %i.l = load double, ptr %i.k, align 8, !tbaa !33 ; 3 uses
  %i.m = fcmp ogt double %i.c, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load double, ptr %i.n, align 8, !tbaa !33 ; 2 uses
  %i.p = fcmp olt double %i.j, %i.o
  %.sroa.speculated40 = select i1 %i.p, double %i.j, double %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load double, ptr %i.q, align 8, !tbaa !33 ; 2 uses
  %i.s = fcmp olt double %i.r, %i.l
  %.sroa.speculated = select i1 %i.s, double %i.l, double %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.016 = phi double [ %.sroa.speculated40, %bb.c ], [ %i.j, %bb.b ]
  %.015 = phi double [ %.sroa.speculated, %bb.c ], [ %i.l, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !26   ; 4 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !31     ; 3 uses
  store ptr %i.v, ptr %5, align 16, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.x, align 8, !tbaa !34
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !30
  store <2 x ptr> %i.aa, ptr %i.w, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i64 %i.u, ptr %i.ac, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store double %i.i, ptr %i.ad, align 16, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store double 2.000000e+00, ptr %i.ae, align 8, !tbaa !58
  %i.ag = uitofp i64 %i.u to double
  %i.ah = fdiv double 1.000000e+00, %i.ag         ; 4 uses
  %i.ai = fcmp ult double %i.ah, 5.000000e-01
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = fsub double 1.000000e+00, %i.ah         ; 2 uses
  %i.ak = fmul nnan double %i.aj, -2.000000e+00
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.aj, double 1.000000e+00)
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i

bb.f:                                             ; preds = %bb.d
  %i.am = fmul nnan double %i.ah, 2.000000e+00
  %i.an = fmul double %i.ah, %i.am
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i

end_hunk_0
begin_hunk_1_@_ZN5folly7TDigest10merge2ImplERKS0_S2_:bb.a
bb.aj:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly7TDigestD2Ev.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit: ; preds = %bb.ah, %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.gj = load ptr, ptr %3, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i57, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  %i.gk = load ptr, ptr %i.bv, align 8, !tbaa !32
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gj to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gn) #24
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit: ; preds = %bb.ak, %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.am

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %bb.aj, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %i.gh, %bb.ai ], [ %i.gi, %bb.aj ]
  %i.go = load ptr, ptr %3, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i60, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit61, label %bb.al

bb.al:                                            ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.gp = load ptr, ptr %i.bv, align 8, !tbaa !32
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gs) #24
  br label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit61

_ZN5folly7TDigest14CentroidMergerD2Ev.exit61:     ; preds = %bb.al, %_ZN5folly7TDigestD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn

bb.am:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit, %_ZN5folly7TDigestC2ERKS0_.exit51, %_ZN5folly7TDigestC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::TDigest::CentroidMerger", align 16 ; 30 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 100, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.d, align 8, !tbaa !33
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 6                   ; 3 uses
  %i.i = icmp eq i64 %i.g, 128
  br i1 %i.i, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_ZN5folly7TDigest10merge2ImplERKS0_S2_(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.j)
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26   ; 9 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = icmp eq i64 %.1, 0
  br i1 %i.m, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0199 = phi i64 [ %.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.048198 = phi ptr [ %.149, %.lr.ph ], [ null, %.lr.ph.preheader ]
  %.061197 = phi ptr [ %i.w, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %i.n = load ptr, ptr %.061197, align 8, !tbaa !34 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.061197, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p                   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4
  %.149 = select i1 %i.q, ptr %.048198, ptr %.061197 ; 5 uses
  %i.v = select i1 %i.q, i64 0, i64 %i.u
  %.1 = add i64 %i.v, %.0199                      ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.061197, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.w, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.z, align 8, !tbaa !33
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %.149, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30 ; 3 uses
  %i.ac = load ptr, ptr %.149, align 8, !tbaa !31 ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = ashr exact i64 %i.af, 4
  %i.ah = icmp eq i64 %.1, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.149, i64 24 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.ak = icmp eq i64 %i.aj, %i.l
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = icmp ugt i64 %i.af, 9223372036854775792
  br i1 %i.al, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, !prof !40

.noexc.i.i.i:                                     ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29
  %.pre238 = load ptr, ptr %.149, align 8, !tbaa !34
  %.pre239 = load ptr, ptr %i.aa, align 8, !tbaa !34
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, %bb.h
  %i.an = phi ptr [ %i.ab, %bb.h ], [ %.pre239, %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.ao = phi ptr [ %i.ac, %bb.h ], [ %.pre238, %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.ap = phi ptr [ null, %bb.h ], [ %i.am, %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.af
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !32
  %i.at = icmp eq ptr %i.ao, %i.an
  br i1 %i.at, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %i.ap, %bb.j ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %i.ao, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !41
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.an
  br i1 %i.aw, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN5folly7TDigestC2ERKS0_.exit:                   ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.j ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i64 40, i1 false)
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.k:                                             ; preds = %bb.f, %bb.g
  %i.ay = icmp ugt i64 %i.h, 384307168202282325
  br i1 %i.ay, label %.noexc72, label %.lr.ph209.preheader

.noexc72:                                         ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

.lr.ph209.preheader:                              ; preds = %bb.k
  %i.az = mul nuw nsw i64 %i.h, 24
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #29 ; 3 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.h
  br label %.lr.ph209

._crit_edge210:                                   ; preds = %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit
  %i.bc = ptrtoint ptr %.sroa.15139.1 to i64
  %i.bd = ptrtoint ptr %.sroa.0130.1 to i64       ; 3 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = icmp slt i64 %i.be, 48
  br i1 %i.bf, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEvS8_S8_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge210
  %i.bg = udiv exact i64 %i.be, 24                ; 3 uses
  %i.bh = add nsw i64 %i.bg, -2
  %i.bi = lshr i64 %i.bh, 1                       ; 3 uses
  %i.bj = add nsw i64 %i.bg, -1                   ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 2 uses
  %i.bl = and i64 %i.bg, 1
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0130.1, i64 %i.bj
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0130.1, i64 %i.bi
  br label %bb.m

bb.m:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i, %bb.l
  %.07.i.i = phi i64 [ %i.bi, %bb.l ], [ %i.cn, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i ] ; 8 uses
  %i.bp = getelementptr inbounds [24 x i8], ptr %.sroa.0130.1, i64 %.07.i.i ; 2 uses
  %.sroa.013.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.bp, align 8
  %.sroa.416.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.416.0.copyload.i.i = load double, ptr %.sroa.416.0..sroa.0.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.bq = icmp slt i64 %.07.i.i, %i.bk
  br i1 %i.bq, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.m ] ; 2 uses
  %i.br = shl i64 %.038.i.i.i, 1                  ; 2 uses
  %i.bs = add i64 %i.br, 2                        ; 2 uses
  %i.bt = getelementptr inbounds [24 x i8], ptr %.sroa.0130.1, i64 %i.bs
  %i.bu = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bv = getelementptr inbounds [24 x i8], ptr %.sroa.0130.1, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !114
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !114
  %i.ca = fcmp ogt double %i.bx, %i.bz
  %spec.select.i.i.i = select i1 %i.ca, i64 %i.bu, i64 %i.bs ; 4 uses
  %i.cb = getelementptr inbounds [24 x i8], ptr %.sroa.0130.1, i64 %spec.select.i.i.i
  %i.cc = getelementptr inbounds [24 x i8], ptr %.sroa.0130.1, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  %i.cd = icmp slt i64 %spec.select.i.i.i, %i.bk
  br i1 %i.cd, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !103

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.m
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.m ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ce = icmp eq i64 %.0.lcssa.i.i.i, %i.bi
  %or.cond.i.i = select i1 %i.bm, i1 %i.ce, i1 false
  br i1 %or.cond.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.bj, %bb.n ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cf = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.cf, label %.lr.ph.i.i.i.i74, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i

.lr.ph.i.i.i.i74:                                 ; preds = %bb.o, %bb.p
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.p ], [ %.1.i.i.i, %bb.o ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0130.1, i64 %.0919.i.i.i.i ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !114
  %i.cj = fcmp ogt double %i.ci, %.sroa.416.0.copyload.i.i
  br i1 %i.cj, label %bb.p, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i74
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0130.1, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  %i.cl = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.cl, label %.lr.ph.i.i.i.i74, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i, !llvm.loop !104

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i: ; preds = %bb.p, %.lr.ph.i.i.i.i74, %bb.o
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.o ], [ %.0919.i.i.i.i, %bb.p ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i74 ]
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0130.1, i64 %.0.lcssa.i.i.i.i ; 2 uses
  store <2 x ptr> %.sroa.013.i.i.sroa.0.0.copyload, ptr %i.cm, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store double %.sroa.416.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.cn = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEvS8_S8_.exit, label %bb.m, !llvm.loop !105

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit
  %.050208 = phi ptr [ %i.el, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %1, %.lr.ph209.preheader ] ; 7 uses
  %.051207 = phi double [ %.152, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ 0.000000e+00, %.lr.ph209.preheader ] ; 2 uses
  %.sroa.29.0204 = phi ptr [ %.sroa.29.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %i.bb, %.lr.ph209.preheader ] ; 8 uses
  %.sroa.15139.0203 = phi ptr [ %.sroa.15139.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %i.ba, %.lr.ph209.preheader ] ; 6 uses
  %.sroa.0130.0202 = phi ptr [ %.sroa.0130.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %i.ba, %.lr.ph209.preheader ] ; 8 uses
  %i.co = phi <2 x double> [ %i.ek, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ <double -inf, double +inf>, %.lr.ph209.preheader ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.050208, i64 40
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !27 ; 2 uses
  %i.cr = fcmp ogt double %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.q, label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit

bb.q:                                             ; preds = %.lr.ph209
  %i.cs = getelementptr inbounds nuw i8, ptr %.050208, i64 48
  %i.ct = load <2 x double>, ptr %i.cs, align 8, !tbaa !33 ; 3 uses
  %i.cu = shufflevector <2 x double> %i.co, <2 x double> %i.ct, <2 x i32> <i32 0, i32 3>
  %i.cv = shufflevector <2 x double> %i.ct, <2 x double> %i.co, <2 x i32> <i32 0, i32 3>
  %i.cw = fcmp olt <2 x double> %i.cu, %i.cv
  %i.cx = select <2 x i1> %i.cw, <2 x double> %i.ct, <2 x double> %i.co ; 2 uses
  %i.cy = fadd double %.051207, %i.cq             ; 2 uses
  %.not.i = icmp eq ptr %.sroa.15139.0203, %.sroa.29.0204
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = load ptr, ptr %.050208, align 8, !tbaa !31 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.050208, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !30
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  store ptr %i.cz, ptr %.sroa.15139.0203, align 8, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.15139.0203, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.de
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !69
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.15139.0203, i64 16
  %i.di = load double, ptr %i.cz, align 8, !tbaa !62
  store double %i.di, ptr %i.dh, align 8, !tbaa !114
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.15139.0203, i64 24
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.dk = ptrtoint ptr %.sroa.29.0204 to i64
  %i.dl = ptrtoint ptr %.sroa.0130.0202 to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 4 uses
  %i.dn = icmp eq i64 %i.dm, 9223372036854775800
  br i1 %i.dn, label %bb.t, label %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12_M_check_lenEmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #28
          to label %.noexc108 unwind label %.loopexit.split-lp

.noexc108:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %i.do = sdiv exact i64 %i.dm, 24                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dp = add nsw i64 %.sroa.speculated.i.i, %i.do ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  %i.dr = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 384307168202282325)
  %i.ds = select i1 %i.dq, i64 384307168202282325, i64 %i.dr ; 3 uses
  %.not.i.i99 = icmp ne i64 %i.ds, 0
  tail call void @llvm.assume(i1 %.not.i.i99)
  %i.dt = mul nuw nsw i64 %i.ds, 24
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #29
          to label %.noexc109 unwind label %.loopexit ; 5 uses

.noexc109:                                        ; preds = %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12_M_check_lenEmPKc.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dm ; 3 uses
  %i.dw = load ptr, ptr %.050208, align 8, !tbaa !31 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.050208, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !30
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !68
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.eb
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !69
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ef = load double, ptr %i.dw, align 8, !tbaa !62
  store double %i.ef, ptr %i.ee, align 8, !tbaa !114
  %.not10.i.i.i.i100 = icmp eq ptr %.sroa.0130.0202, %.sroa.29.0204
  br i1 %.not10.i.i.i.i100, label %.noexc76, label %.lr.ph.i.i.i.i101

.lr.ph.i.i.i.i101:                                ; preds = %.noexc109, %.lr.ph.i.i.i.i101
  %.012.i.i.i.i102 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i101 ], [ %i.du, %.noexc109 ] ; 2 uses
  %.0911.i.i.i.i103 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i101 ], [ %.sroa.0130.0202, %.noexc109 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i102, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i103, i64 24, i1 false), !alias.scope !115
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i103, i64 24 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i102, i64 24 ; 2 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.eg, %.sroa.29.0204
  br i1 %.not.i.i.i.i104, label %.noexc76, label %.lr.ph.i.i.i.i101, !llvm.loop !109

.noexc76:                                         ; preds = %.lr.ph.i.i.i.i101, %.noexc109
  %.0.lcssa.i.i.i.i106 = phi ptr [ %i.du, %.noexc109 ], [ %i.eh, %.lr.ph.i.i.i.i101 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i106, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0130.0202, i64 noundef %i.dm) #24
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.ds
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit98

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit98

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit: ; preds = %.noexc76, %bb.r, %.lr.ph209
  %.sroa.0130.1 = phi ptr [ %.sroa.0130.0202, %.lr.ph209 ], [ %i.du, %.noexc76 ], [ %.sroa.0130.0202, %bb.r ] ; 31 uses
  %.sroa.15139.1 = phi ptr [ %.sroa.15139.0203, %.lr.ph209 ], [ %i.ei, %.noexc76 ], [ %i.dj, %bb.r ] ; 4 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.0204, %.lr.ph209 ], [ %i.ej, %.noexc76 ], [ %.sroa.29.0204, %bb.r ] ; 4 uses
  %.152 = phi double [ %.051207, %.lr.ph209 ], [ %i.cy, %.noexc76 ], [ %i.cy, %bb.r ] ; 5 uses
  %i.ek = phi <2 x double> [ %i.co, %.lr.ph209 ], [ %i.cx, %.noexc76 ], [ %i.cx, %bb.r ] ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.050208, i64 64 ; 2 uses
  %.not63 = icmp eq ptr %i.el, %2
  br i1 %.not63, label %._crit_edge210, label %.lr.ph209

_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEvS8_S8_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i, %._crit_edge210
  %i.em = icmp ugt i64 %i.l, 576460752303423487
  br i1 %i.em, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEvS8_S8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %.noexc83 unwind label %bb.aj

.noexc83:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEvS8_S8_.exit
  %.not174 = icmp eq i64 %i.l, 0
  br i1 %.not174, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.v
  %i.en = shl nuw nsw i64 %i.l, 4
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #29
          to label %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.aj ; 2 uses

_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.l
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.v
  %.sroa.0113.1 = phi ptr [ %i.eo, %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.v ] ; 2 uses
  %.sroa.15.1 = phi ptr [ %i.ep, %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %.sroa.0113.1, ptr %3, align 16, !tbaa !31
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %.sroa.0113.1, ptr %i.eq, align 8, !tbaa !30
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %.sroa.15.1, ptr %i.er, align 16, !tbaa !32
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %i.l, ptr %i.es, align 8, !tbaa !56
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store double %.152, ptr %i.et, align 16, !tbaa !57
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store double 2.000000e+00, ptr %i.eu, align 8, !tbaa !58
  %i.ew = uitofp nneg i64 %i.l to double
  %i.ex = fdiv double 1.000000e+00, %i.ew         ; 4 uses
  %i.ey = fcmp ult double %i.ex, 5.000000e-01
  br i1 %i.ey, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit
  %i.ez = fsub double 1.000000e+00, %i.ex         ; 2 uses
  %i.fa = fmul nnan double %i.ez, -2.000000e+00
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.ez, double 1.000000e+00)
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i
end_hunk_1
begin_hunk_2_@_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE:bb.a
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.lh) #24
  br label %_ZN5folly7TDigestD2Ev.exit

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %bb.az, %bb.aw, %bb.ak
  %.pn65 = phi { ptr, i32 } [ %i.ht, %bb.ak ], [ %i.ku, %bb.aw ], [ %i.ku, %bb.az ]
  %i.li = load ptr, ptr %3, align 16, !tbaa !31   ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i.i93, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94, label %bb.ba

bb.ba:                                            ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.lj = load ptr, ptr %i.er, align 16, !tbaa !32
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.li to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.lm) #24
  br label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94

_ZN5folly7TDigest14CentroidMergerD2Ev.exit94:     ; preds = %bb.ba, %_ZN5folly7TDigestD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit98

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit98: ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94
  %.sroa.0130.0194 = phi ptr [ %.sroa.0130.1, %bb.aj ], [ %.sroa.0130.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94 ], [ %.sroa.0130.0202, %.loopexit ], [ %.sroa.0130.0202, %.loopexit.split-lp ] ; 2 uses
  %.sroa.29.0188 = phi ptr [ %.sroa.29.1, %bb.aj ], [ %.sroa.29.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94 ], [ %.sroa.29.0204, %.loopexit ], [ %.sroa.29.0204, %.loopexit.split-lp ]
  %.pn69.pn = phi { ptr, i32 } [ %i.hs, %bb.aj ], [ %.pn65, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ln = ptrtoint ptr %.sroa.29.0188 to i64
  %i.lo = ptrtoint ptr %.sroa.0130.0194 to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0130.0194, i64 noundef %i.lp) #24
  resume { ptr, i32 } %.pn69.pn

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit: ; preds = %bb.ay, %bb.e, %_ZN5folly7TDigestC2ERKS0_.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly7TDigest5mergeENS_5RangeIPPKS0_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::TDigest::CentroidMerger", align 16 ; 30 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 100, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.d, align 8, !tbaa !33
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 3 uses
  %i.i = icmp eq i64 %i.g, 16
  %i.j = load ptr, ptr %1, align 8, !tbaa !128    ; 2 uses
  br i1 %i.i, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  tail call void @_ZN5folly7TDigest10merge2ImplERKS0_S2_(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.l)
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26   ; 9 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.o = icmp eq i64 %.1, 0
  br i1 %i.o, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0199 = phi i64 [ %.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.048198 = phi ptr [ %.149, %.lr.ph ], [ null, %.lr.ph.preheader ]
  %.061197 = phi ptr [ %i.z, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.p = load ptr, ptr %.061197, align 8, !tbaa !128 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 4
  %.149 = select i1 %i.t, ptr %.048198, ptr %i.p  ; 5 uses
  %i.y = select i1 %i.t, i64 0, i64 %i.x
  %.1 = add i64 %i.y, %.0199                      ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.061197, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.z, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.aa, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.ac, align 8, !tbaa !33
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %.149, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30 ; 2 uses
  %i.af = load ptr, ptr %.149, align 8, !tbaa !31 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = ashr exact i64 %i.ai, 4
  %i.ak = icmp eq i64 %.1, %i.aj
  br i1 %i.ak, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.149, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26
  %i.an = icmp eq i64 %i.am, %i.n
  br i1 %i.an, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp ugt i64 %i.ai, 9223372036854775792
  br i1 %i.ao, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, !prof !40

.noexc.i.i.i:                                     ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #29
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, %bb.h
  %i.aq = phi ptr [ null, %bb.h ], [ %i.ap, %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !32
  %i.au = load ptr, ptr %.149, align 8, !tbaa !34 ; 2 uses
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %i.aq, %bb.j ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %i.au, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !41
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.av
  br i1 %i.az, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN5folly7TDigestC2ERKS0_.exit:                   ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.j ], [ %i.ay, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false)
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

bb.k:                                             ; preds = %bb.f, %bb.g
  %i.bb = icmp ugt i64 %i.h, 384307168202282325
  br i1 %i.bb, label %.noexc72, label %.lr.ph209.preheader

.noexc72:                                         ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

.lr.ph209.preheader:                              ; preds = %bb.k
  %i.bc = mul nuw nsw i64 %i.h, 24
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #29 ; 3 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.h
  br label %.lr.ph209

._crit_edge210:                                   ; preds = %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit
  %i.bf = ptrtoint ptr %.sroa.15139.1 to i64
  %i.bg = ptrtoint ptr %.sroa.0130.1 to i64       ; 3 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = icmp slt i64 %i.bh, 48
  br i1 %i.bi, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEvS9_S9_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge210
  %i.bj = udiv exact i64 %i.bh, 24                ; 3 uses
  %i.bk = add nsw i64 %i.bj, -2
  %i.bl = lshr i64 %i.bk, 1                       ; 3 uses
  %i.bm = add nsw i64 %i.bj, -1                   ; 3 uses
  %i.bn = lshr i64 %i.bm, 1                       ; 2 uses
  %i.bo = and i64 %i.bj, 1
  %i.bp = icmp eq i64 %i.bo, 0
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0130.1, i64 %i.bm
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0130.1, i64 %i.bl
  br label %bb.m

bb.m:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i, %bb.l
  %.07.i.i = phi i64 [ %i.bl, %bb.l ], [ %i.cq, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i ] ; 8 uses
  %i.bs = getelementptr inbounds [24 x i8], ptr %.sroa.0130.1, i64 %.07.i.i ; 2 uses
  %.sroa.013.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.bs, align 8
  %.sroa.416.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.416.0.copyload.i.i = load double, ptr %.sroa.416.0..sroa.0.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.bt = icmp slt i64 %.07.i.i, %i.bn
  br i1 %i.bt, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.m ] ; 2 uses
  %i.bu = shl i64 %.038.i.i.i, 1                  ; 2 uses
  %i.bv = add i64 %i.bu, 2                        ; 2 uses
  %i.bw = getelementptr inbounds [24 x i8], ptr %.sroa.0130.1, i64 %i.bv
  %i.bx = or disjoint i64 %i.bu, 1                ; 2 uses
  %i.by = getelementptr inbounds [24 x i8], ptr %.sroa.0130.1, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !130
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !130
  %i.cd = fcmp ogt double %i.ca, %i.cc
  %spec.select.i.i.i = select i1 %i.cd, i64 %i.bx, i64 %i.bv ; 4 uses
  %i.ce = getelementptr inbounds [24 x i8], ptr %.sroa.0130.1, i64 %spec.select.i.i.i
  %i.cf = getelementptr inbounds [24 x i8], ptr %.sroa.0130.1, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  %i.cg = icmp slt i64 %spec.select.i.i.i, %i.bn
  br i1 %i.cg, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !117

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.m
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.m ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ch = icmp eq i64 %.0.lcssa.i.i.i, %i.bl
  %or.cond.i.i = select i1 %i.bp, i1 %i.ch, i1 false
  br i1 %or.cond.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.bm, %bb.n ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ci = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.ci, label %.lr.ph.i.i.i.i74, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i

.lr.ph.i.i.i.i74:                                 ; preds = %bb.o, %bb.p
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.p ], [ %.1.i.i.i, %bb.o ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0130.1, i64 %.0919.i.i.i.i ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !130
  %i.cm = fcmp ogt double %i.cl, %.sroa.416.0.copyload.i.i
  br i1 %i.cm, label %bb.p, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i74
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0130.1, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  %i.co = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.co, label %.lr.ph.i.i.i.i74, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i, !llvm.loop !118

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i: ; preds = %bb.p, %.lr.ph.i.i.i.i74, %bb.o
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.o ], [ %.0919.i.i.i.i, %bb.p ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i74 ]
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0130.1, i64 %.0.lcssa.i.i.i.i ; 2 uses
  store <2 x ptr> %.sroa.013.i.i.sroa.0.0.copyload, ptr %i.cp, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store double %.sroa.416.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.cq = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEvS9_S9_.exit, label %bb.m, !llvm.loop !119

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit
  %.050208 = phi ptr [ %i.ep, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ %1, %.lr.ph209.preheader ] ; 2 uses
  %.051207 = phi double [ %.152, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ 0.000000e+00, %.lr.ph209.preheader ] ; 2 uses
  %.sroa.29.0204 = phi ptr [ %.sroa.29.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ %i.be, %.lr.ph209.preheader ] ; 8 uses
  %.sroa.15139.0203 = phi ptr [ %.sroa.15139.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ %i.bd, %.lr.ph209.preheader ] ; 6 uses
  %.sroa.0130.0202 = phi ptr [ %.sroa.0130.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ %i.bd, %.lr.ph209.preheader ] ; 8 uses
  %i.cr = phi <2 x double> [ %i.eo, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ <double -inf, double +inf>, %.lr.ph209.preheader ] ; 4 uses
  %i.cs = load ptr, ptr %.050208, align 8, !tbaa !128 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !27 ; 2 uses
  %i.cv = fcmp ogt double %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.q, label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit

bb.q:                                             ; preds = %.lr.ph209
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cx = load <2 x double>, ptr %i.cw, align 8, !tbaa !33 ; 3 uses
  %i.cy = shufflevector <2 x double> %i.cr, <2 x double> %i.cx, <2 x i32> <i32 0, i32 3>
  %i.cz = shufflevector <2 x double> %i.cx, <2 x double> %i.cr, <2 x i32> <i32 0, i32 3>
  %i.da = fcmp olt <2 x double> %i.cy, %i.cz
  %i.db = select <2 x i1> %i.da, <2 x double> %i.cx, <2 x double> %i.cr ; 2 uses
  %i.dc = fadd double %.051207, %i.cu             ; 2 uses
  %.not.i = icmp eq ptr %.sroa.15139.0203, %.sroa.29.0204
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = load ptr, ptr %i.cs, align 8, !tbaa !31 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !30
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  store ptr %i.dd, ptr %.sroa.15139.0203, align 8, !tbaa !68
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.15139.0203, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.di
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !69
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.15139.0203, i64 16
  %i.dm = load double, ptr %i.dd, align 8, !tbaa !62
  store double %i.dm, ptr %i.dl, align 8, !tbaa !130
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.15139.0203, i64 24
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.do = ptrtoint ptr %.sroa.29.0204 to i64
  %i.dp = ptrtoint ptr %.sroa.0130.0202 to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 4 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %bb.t, label %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12_M_check_lenEmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #28
          to label %.noexc108 unwind label %.loopexit.split-lp

.noexc108:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %i.ds = sdiv exact i64 %i.dq, 24                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = tail call i64 @llvm.umin.i64(i64 %i.dt, i64 384307168202282325)
  %i.dw = select i1 %i.du, i64 384307168202282325, i64 %i.dv ; 3 uses
  %.not.i.i99 = icmp ne i64 %i.dw, 0
  tail call void @llvm.assume(i1 %.not.i.i99)
  %i.dx = mul nuw nsw i64 %i.dw, 24
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #29
          to label %.noexc109 unwind label %.loopexit ; 5 uses

.noexc109:                                        ; preds = %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12_M_check_lenEmPKc.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dq ; 3 uses
  %i.ea = load ptr, ptr %i.cs, align 8, !tbaa !31 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !30
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !68
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ef
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !69
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ej = load double, ptr %i.ea, align 8, !tbaa !62
  store double %i.ej, ptr %i.ei, align 8, !tbaa !130
  %.not10.i.i.i.i100 = icmp eq ptr %.sroa.0130.0202, %.sroa.29.0204
  br i1 %.not10.i.i.i.i100, label %.noexc76, label %.lr.ph.i.i.i.i101

.lr.ph.i.i.i.i101:                                ; preds = %.noexc109, %.lr.ph.i.i.i.i101
  %.012.i.i.i.i102 = phi ptr [ %i.el, %.lr.ph.i.i.i.i101 ], [ %i.dy, %.noexc109 ] ; 2 uses
  %.0911.i.i.i.i103 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i101 ], [ %.sroa.0130.0202, %.noexc109 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i102, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i103, i64 24, i1 false), !alias.scope !131
  %i.ek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i103, i64 24 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i102, i64 24 ; 2 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.ek, %.sroa.29.0204
  br i1 %.not.i.i.i.i104, label %.noexc76, label %.lr.ph.i.i.i.i101, !llvm.loop !123

.noexc76:                                         ; preds = %.lr.ph.i.i.i.i101, %.noexc109
  %.0.lcssa.i.i.i.i106 = phi ptr [ %i.dy, %.noexc109 ], [ %i.el, %.lr.ph.i.i.i.i101 ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i106, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0130.0202, i64 noundef %i.dq) #24
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.dw
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit98

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit98

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit: ; preds = %.noexc76, %bb.r, %.lr.ph209
  %.sroa.0130.1 = phi ptr [ %.sroa.0130.0202, %.lr.ph209 ], [ %i.dy, %.noexc76 ], [ %.sroa.0130.0202, %bb.r ] ; 31 uses
  %.sroa.15139.1 = phi ptr [ %.sroa.15139.0203, %.lr.ph209 ], [ %i.em, %.noexc76 ], [ %i.dn, %bb.r ] ; 4 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.0204, %.lr.ph209 ], [ %i.en, %.noexc76 ], [ %.sroa.29.0204, %bb.r ] ; 4 uses
  %.152 = phi double [ %.051207, %.lr.ph209 ], [ %i.dc, %.noexc76 ], [ %i.dc, %bb.r ] ; 5 uses
  %i.eo = phi <2 x double> [ %i.cr, %.lr.ph209 ], [ %i.db, %.noexc76 ], [ %i.db, %bb.r ] ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.050208, i64 8 ; 2 uses
  %.not63 = icmp eq ptr %i.ep, %2
  br i1 %.not63, label %._crit_edge210, label %.lr.ph209

_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEvS9_S9_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i, %._crit_edge210
  %i.eq = icmp ugt i64 %i.n, 576460752303423487
  br i1 %i.eq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEvS9_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %.noexc83 unwind label %bb.aj

.noexc83:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEvS9_S9_.exit
  %.not174 = icmp eq i64 %i.n, 0
  br i1 %.not174, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.v
  %i.er = shl nuw nsw i64 %i.n, 4
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #29
          to label %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.aj ; 2 uses

_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.n
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.v
  %.sroa.0113.1 = phi ptr [ %i.es, %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.v ] ; 2 uses
  %.sroa.15.1 = phi ptr [ %i.et, %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %.sroa.0113.1, ptr %3, align 16, !tbaa !31
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %.sroa.0113.1, ptr %i.eu, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %.sroa.15.1, ptr %i.ev, align 16, !tbaa !32
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %i.n, ptr %i.ew, align 8, !tbaa !56
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store double %.152, ptr %i.ex, align 16, !tbaa !57
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store double 2.000000e+00, ptr %i.ey, align 8, !tbaa !58
  %i.fa = uitofp nneg i64 %i.n to double
  %i.fb = fdiv double 1.000000e+00, %i.fa         ; 4 uses
  %i.fc = fcmp ult double %i.fb, 5.000000e-01
  br i1 %i.fc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit
  %i.fd = fsub double 1.000000e+00, %i.fb         ; 2 uses
  %i.fe = fmul nnan double %i.fd, -2.000000e+00
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.fd, double 1.000000e+00)
end_hunk_2
