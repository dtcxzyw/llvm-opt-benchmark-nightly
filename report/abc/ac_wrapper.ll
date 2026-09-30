Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ac_wrapper?download=true
inline.NumInlined: 2178
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_:bb.a
_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bk = load i32, ptr %0, align 4, !tbaa !76    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load i32, ptr %.1.i.i, align 4, !tbaa !76 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !250

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.bo = load i32, ptr %.114.i.i, align 4, !tbaa !76 ; 2 uses
  %i.bp = icmp ult i32 %i.bk, %i.bo
  br i1 %i.bp, label %.preheader.i.i, label %bb.q, !llvm.loop !251

bb.q:                                             ; preds = %.preheader.i.i
  %i.bq = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bq, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bo, ptr %.1.i.i, align 4, !tbaa !76
  store i32 %i.bl, ptr %.114.i.i, align 4, !tbaa !76
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !252

_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.au)
  %i.br = ptrtoint ptr %.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a                     ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 64
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !248

_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 4, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i32, ptr %.019.i.ptr, align 4, !tbaa !76 ; 4 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !76     ; 2 uses
  %i.g = icmp ult i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 4
  br i1 %i.h, label %bb.e, label %bb.f, !prof !135

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  store i32 %i.f, ptr %i.i, align 4, !tbaa !76
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i32, ptr %.pn18.i, align 4, !tbaa !76 ; 2 uses
  %i.k = icmp ult i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i32 %i.l, ptr %.0912.i.i, align 4, !tbaa !76
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.0.i.i, align 4, !tbaa !76 ; 2 uses
  %i.n = icmp ult i32 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, !llvm.loop !253

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i32 %i.e, ptr %.sink.i, align 4, !tbaa !76
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !254

_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
  br i1 %.not5.i, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.06.i = phi ptr [ %i.v, %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.o, %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit ] ; 5 uses
  %i.p = load i32, ptr %.06.i, align 4, !tbaa !76 ; 3 uses
  %.011.i.i = getelementptr inbounds i8, ptr %.06.i, i64 -4 ; 2 uses
  %i.q = load i32, ptr %.011.i.i, align 4, !tbaa !76 ; 2 uses
  %i.r = icmp ult i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i, %.lr.ph.i.i9
  %i.s = phi i32 [ %i.t, %.lr.ph.i.i9 ], [ %i.q, %.lr.ph.i ]
  %.013.i.i10 = phi ptr [ %.0.i.i12, %.lr.ph.i.i9 ], [ %.011.i.i, %.lr.ph.i ] ; 3 uses
  %.0912.i.i11 = phi ptr [ %.013.i.i10, %.lr.ph.i.i9 ], [ %.06.i, %.lr.ph.i ]
  store i32 %i.s, ptr %.0912.i.i11, align 4, !tbaa !76
  %.0.i.i12 = getelementptr inbounds i8, ptr %.013.i.i10, i64 -4 ; 2 uses
  %i.t = load i32, ptr %.0.i.i12, align 4, !tbaa !76 ; 2 uses
  %i.u = icmp ult i32 %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !253

_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i9, %.lr.ph.i
  %.09.lcssa.i.i = phi ptr [ %.06.i, %.lr.ph.i ], [ %.013.i.i10, %.lr.ph.i.i9 ]
  store i32 %i.p, ptr %.09.lcssa.i.i, align 4, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i8 = icmp eq ptr %i.v, %1
  br i1 %.not.i8, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !255

bb.h:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %0, %1
  %.016.i13 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i13, %1
  %or.cond = select i1 %i.w, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.h, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17
  %.019.i15 = phi ptr [ %.0.i19, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17 ], [ %.016.i13, %bb.h ] ; 6 uses
  %.pn18.i16 = phi ptr [ %.019.i15, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17 ], [ %0, %bb.h ] ; 4 uses
  %i.x = load i32, ptr %.019.i15, align 4, !tbaa !76 ; 4 uses
  %i.y = load i32, ptr %0, align 4, !tbaa !76     ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i14
  %i.aa = ptrtoint ptr %.019.i15 to i64
  %i.ab = sub i64 %i.aa, %i.b                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 2                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.k, !prof !135

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn18.i16, i64 8
  %i.af = sub nsw i64 0, %i.ac
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ag, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ab, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17

bb.k:                                             ; preds = %bb.i
  %i.ah = icmp eq i64 %i.ab, 4
  br i1 %i.ah, label %bb.l, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn18.i16, i64 4
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !76
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17

bb.m:                                             ; preds = %.lr.ph.i14
  %i.aj = load i32, ptr %.pn18.i16, align 4, !tbaa !76 ; 2 uses
  %i.ak = icmp ult i32 %i.x, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17

.lr.ph.i.i21:                                     ; preds = %bb.m, %.lr.ph.i.i21
  %i.al = phi i32 [ %i.am, %.lr.ph.i.i21 ], [ %i.aj, %bb.m ]
  %.013.i.i22 = phi ptr [ %.0.i.i24, %.lr.ph.i.i21 ], [ %.pn18.i16, %bb.m ] ; 3 uses
  %.0912.i.i23 = phi ptr [ %.013.i.i22, %.lr.ph.i.i21 ], [ %.019.i15, %bb.m ]
  store i32 %i.al, ptr %.0912.i.i23, align 4, !tbaa !76
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.0.i.i24, align 4, !tbaa !76 ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !253

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store i32 %i.x, ptr %.sink.i18, align 4, !tbaa !76
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.019.i15, i64 4 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !254

_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17, %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.us
  %i.p = load i32, ptr %i.o, align 4, !tbaa !76   ; 2 uses
  %i.q = icmp slt i64 %.013.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.t, align 4, !tbaa !76
  %i.x = load i32, ptr %i.v, align 4, !tbaa !76
  %i.y = icmp ult i32 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !76
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !76
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !7

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !76 ; 2 uses
  %i.ah = icmp ult i32 %i.ag, %i.p
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !76
  %i.aj = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !8

_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i32 %i.p, ptr %i.ak, align 4, !tbaa !76
  %.not.us = icmp eq i64 %.013.us, 0
  %i.al = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !256

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.an = load i32, ptr %i.am, align 4, !tbaa !76 ; 2 uses
  %i.ao = icmp slt i64 %.013, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.ap = shl i64 %.029.i, 1                      ; 3 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr [4 x i8], ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !76
  %i.av = load i32, ptr %i.at, align 4, !tbaa !76
  %i.aw = icmp ult i32 %i.au, %i.av
  %i.ax = or disjoint i64 %i.ap, 1
  %spec.select.i = select i1 %i.aw, i64 %i.ax, i64 %i.aq ; 4 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !76
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !76
  %i.bb = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = load i32, ptr %i.m, align 4, !tbaa !76
  store i32 %i.bd, ptr %i.n, align 4, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.be = icmp sgt i64 %.128.i, %.013
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !76 ; 2 uses
  %i.bh = icmp ult i32 %i.bg, %i.an
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !76
  %i.bj = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !8

_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.an, ptr %i.bk, align 4, !tbaa !76
  %.not = icmp eq i64 %.013, 0
  %i.bl = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !256

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E3_E9_M_invokeERKSt9_Any_dataS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.25", align 4    ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !261
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.c = load i32, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %i.d = icmp ugt i32 %i.c, 6
  %i.e = add i32 %i.c, -6
  %i.f = shl nuw i32 1, %i.e
  %i.g = select i1 %i.d, i32 %i.f, i32 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %wide.trip.count.i.i.i.i = zext i32 %i.g to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  %.not.i.i.i.i.i.i = icmp eq i32 %.229.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10__invoke_rIjRZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE3_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %_ZSt4sortIPjEvT_S1_.exit.i.i.i.i

_ZSt4sortIPjEvT_S1_.exit.i.i.i.i:                 ; preds = %bb.b
  %i.h = zext i32 %.229.1.i.i.i.i to i64          ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.h, 2
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.i.i ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %2, ptr noundef nonnull %i.i, i64 noundef %i.l)
  call void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %2, ptr noundef nonnull %i.i)
  %.not49.i.i.i.i = icmp eq i32 %.229.1.i.i.i.i, 1
  br i1 %.not49.i.i.i.i, label %_ZSt10__invoke_rIjRZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE3_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZSt4sortIPjEvT_S1_.exit.i.i.i.i
  %.pre.i.i.i.i = load i32, ptr %2, align 4, !tbaa !76 ; 2 uses
  %i.m = add nsw i64 %i.h, -1                     ; 2 uses
  %min.iters.check = icmp ult i32 %.229.1.i.i.i.i, 9
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec = and i64 %i.m, -8                       ; 3 uses
  %i.n = or disjoint i64 %n.vec, 1
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load4, %vector.body ]
  %vec.phi = phi <4 x i32> [ <i32 1, i32 0, i32 0, i32 0>, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi3 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !76 ; 3 uses
  %wide.load4 = load <4 x i32>, ptr %i.q, align 4, !tbaa !76 ; 4 uses
  %i.r = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.s = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load4, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.t = icmp ne <4 x i32> %wide.load, %i.r
  %i.u = icmp ne <4 x i32> %wide.load4, %i.s
  %i.v = zext <4 x i1> %i.t to <4 x i32>
  %i.w = zext <4 x i1> %i.u to <4 x i32>
  %i.x = add <4 x i32> %vec.phi, %i.v             ; 2 uses
  %i.y = add <4 x i32> %vec.phi3, %i.w            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.y, %i.x
  %i.aa = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %vector.recur.extract = extractelement <4 x i32> %wide.load4, i64 3
end_hunk_0
begin_hunk_1_@_ZN3acd21ac_decomposition_impl22create_covering_matrixILb0EEEbRKSt6vectorIN5kitty18static_truth_tableILj11ELb0EEESaIS5_EERS2_INS0_15encoding_columnESaISA_EEb:bb.a
  %i.rp = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.rq = add i32 %.04564.us.i, %i.rp             ; 2 uses
  %i.rr = zext i32 %i.rq to i64                   ; 2 uses
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.rr
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !84
  %i.ru = add i32 %i.rq, %i.rn
  %i.rv = zext i32 %i.ru to i64                   ; 2 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.rv
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !84
  %i.ry = xor i64 %i.rx, %i.rt
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.rr
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !84
  %i.sb = and i64 %i.ry, %i.sa
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.rv
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !84
  %i.se = and i64 %i.sb, %i.sd
  %.not.us.i = icmp eq i64 %i.se, 0
  br i1 %.not.us.i, label %bb.r, label %_ZN3acd21ac_decomposition_impl15has_var_supportERKN5kitty18static_truth_tableILj11ELb0EEES5_jh.exit

..critedge_crit_edge.us.i:                        ; preds = %bb.r
  %i.sf = add nuw i32 %.04564.us.i, %i.ro         ; 2 uses
  %.not54.us.i = icmp ult i32 %i.sf, %i.bd
  br i1 %.not54.us.i, label %.preheader59.us.i, label %_ZN3acd21ac_decomposition_impl15has_var_supportERKN5kitty18static_truth_tableILj11ELb0EEES5_jh.exit, !llvm.loop !12

_ZN3acd21ac_decomposition_impl15has_var_supportERKN5kitty18static_truth_tableILj11ELb0EEES5_jh.exit: ; preds = %..critedge_crit_edge.us.i, %bb.p, %bb.q, %bb.s
  %.5.i = phi i32 [ 1, %bb.s ], [ 0, %bb.q ], [ 1, %bb.p ], [ 0, %..critedge_crit_edge.us.i ]
  %i.sg = add i32 %.5.i, %.048137                 ; 2 uses
  %i.sh = add nuw i32 %.047138, 1                 ; 2 uses
  %exitcond158.not = icmp eq i32 %i.sh, %.fr149
  br i1 %exitcond158.not, label %._crit_edge141, label %.lr.ph140.split, !llvm.loop !349

bb.t:                                             ; preds = %._crit_edge141
  %i.si = icmp eq i32 %.048.lcssa.fr, 1
  %spec.select = select i1 %i.si, i32 0, i32 %.048.lcssa.fr
  br label %.thread

.thread:                                          ; preds = %bb.t, %._crit_edge
  %i.sj = phi i32 [ 0, %._crit_edge ], [ %spec.select, %bb.t ] ; 3 uses
  %i.sk = load i64, ptr %i.a, align 16, !tbaa !84 ; 3 uses
  %i.sl = load i64, ptr %i.bh, align 8, !tbaa !84 ; 3 uses
  %i.sm = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.sl)
  %i.sn = add i64 %i.sm, %i.sk
  %i.so = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.sn)
  %i.sp = trunc nuw nsw i64 %i.so to i32
  %i.sq = sub nsw i32 %i.e, %i.sp
  %i.sr = load i32, ptr %i.f, align 8, !tbaa !75
  %i.ss = shl i32 %i.sq, %i.sr
  %i.st = add i32 %i.ss, %i.sj
  %i.su = uitofp i32 %i.st to float               ; 2 uses
  %i.sv = load ptr, ptr %i.bi, align 8, !tbaa !149 ; 7 uses
  %i.sw = load ptr, ptr %i.bj, align 8, !tbaa !150
  %.not.i = icmp eq ptr %i.sv, %i.sw
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread
  store i64 %i.sk, ptr %i.sv, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  store i64 %i.sl, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !98
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  store i32 %i.sj, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !76
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sv, i64 20
  store i32 %.052143, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !76
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  store float %i.su, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !155
  %i.sx = load ptr, ptr %i.bi, align 8, !tbaa !149
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 32
  store ptr %i.sy, ptr %i.bi, align 8, !tbaa !149
  br label %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.v:                                             ; preds = %.thread
  %i.sz = load ptr, ptr %2, align 8, !tbaa !148   ; 4 uses
  %i.ta = ptrtoint ptr %i.sv to i64
  %i.tb = ptrtoint ptr %i.sz to i64               ; 2 uses
  %i.tc = sub i64 %i.ta, %i.tb                    ; 5 uses
  %i.td = icmp eq i64 %i.tc, 9223372036854775776
  br i1 %i.td, label %bb.w, label %_ZNKSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #14
  unreachable

_ZNKSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.te = ashr exact i64 %i.tc, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.te, i64 1)
  %i.tf = add nsw i64 %.sroa.speculated.i.i.i, %i.te ; 2 uses
  %i.tg = icmp ult i64 %i.tf, %i.te
  %i.th = call i64 @llvm.umin.i64(i64 %i.tf, i64 288230376151711743)
  %i.ti = select i1 %i.tg, i64 288230376151711743, i64 %i.th ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ti, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.tj = shl nuw nsw i64 %i.ti, 5
  %i.tk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tj) #15 ; 4 uses
  %i.tl = getelementptr inbounds i8, ptr %i.tk, i64 %i.tc ; 6 uses
  store i64 %i.sk, ptr %i.tl, align 8
  %.sroa.5.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store i64 %i.sl, ptr %.sroa.5.0..sroa_idx57, align 8, !tbaa !98
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store i32 %i.sj, ptr %.sroa.6.0..sroa_idx59, align 8, !tbaa !76
  %.sroa.7.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.tl, i64 20
  store i32 %.052143, ptr %.sroa.7.0..sroa_idx61, align 4, !tbaa !76
  %.sroa.8.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  store float %i.su, ptr %.sroa.8.0..sroa_idx63, align 8, !tbaa !155
  %i.tm = icmp sgt i64 %i.tc, 0
  br i1 %i.tm, label %bb.x, label %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tk, ptr align 8 %i.sz, i64 %i.tc, i1 false)
  br label %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.x, %_ZNKSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %.not.i17.i.i = icmp eq ptr %i.sz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.to = load ptr, ptr %i.bj, align 8, !tbaa !150
  %i.tp = ptrtoint ptr %i.to to i64
  %i.tq = sub i64 %i.tp, %i.tb
  call void @_ZdlPvm(ptr noundef nonnull %i.sz, i64 noundef %i.tq) #13
  br label %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.tk, ptr %2, align 8, !tbaa !148
  store ptr %i.tn, ptr %i.bi, align 8, !tbaa !149
  %i.tr = getelementptr inbounds nuw [32 x i8], ptr %i.tk, i64 %i.ti
  store ptr %i.tr, ptr %i.bj, align 8, !tbaa !150
  br label %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.u, %._crit_edge141
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ts = add i32 %.052143, 1                     ; 2 uses
  %i.tt = zext i32 %i.ts to i64                   ; 2 uses
  %i.tu = load ptr, ptr %i.l, align 8, !tbaa !145
  %i.tv = load ptr, ptr %i.k, align 8, !tbaa !85  ; 2 uses
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = ashr exact i64 %i.ty, 3
  %i.ua = icmp ugt i64 %i.tz, %i.tt
  br i1 %i.ua, label %bb.b, label %._crit_edge146, !llvm.loop !350

bb.z:                                             ; preds = %._crit_edge146
  %i.ub = load ptr, ptr %2, align 8, !tbaa !156   ; 4 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !156 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ub, %i.ud
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEEZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISD_EERS8_bEUlRKS4_SK_E0_EvT_SM_T0_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ue = ptrtoint ptr %i.ud to i64
  %i.uf = ptrtoint ptr %i.ub to i64
  %i.ug = sub i64 %i.ue, %i.uf
  %i.uh = ashr exact i64 %i.ug, 5
  %i.ui = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.uh, i1 true)
  %i.uj = shl nuw nsw i64 %i.ui, 1
  %i.uk = xor i64 %i.uj, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_T1_(ptr %i.ub, ptr %i.ud, i64 noundef %i.uk)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_(ptr %i.ub, ptr %i.ud)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEEZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISD_EERS8_bEUlRKS4_SK_E0_EvT_SM_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEEZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISD_EERS8_bEUlRKS4_SK_E0_EvT_SM_T0_.exit: ; preds = %bb.aa, %bb.z, %._crit_edge146
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.014.i.i = alloca { [2 x i64], i32, i32 }, align 8 ; 4 uses
  %3 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %4 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %5 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %6 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %7 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %8 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %9 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %.sroa.06.i.i.i = alloca { [2 x i64], i32, i32 }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph57

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEET_SP_SP_T0_.exit
  %i.j = icmp eq i64 %i.cd, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph57, !llvm.loop !351

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa53 = phi i64 [ %i.d, %.lr.ph ], [ %i.dc, %bb.b ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.c, %.lr.ph ], [ %i.db, %bb.b ] ; 2 uses
  %storemerge27.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.k = add nsw i64 %.lcssa53, -2                ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %.lcssa53, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.lcssa51, 32
  %i.p = icmp eq i64 %i.o, 0
  %10 = or disjoint i64 %i.k, 1                   ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %10
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.aq, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %0, i64 %.08.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %.sroa.417.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.417.0.copyload.i.i = load float, ptr %.sroa.417.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !155 ; 2 uses
  %.sroa.518.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %.sroa.518.0.copyload.i.i = load i32, ptr %.sroa.518.0..sroa.0.0..sroa_idx.i.i, align 4
  %i.t = icmp slt i64 %.08.i.i, %i.n
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.040.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.040.i.i.i, 1                   ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [32 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [32 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load float, ptr %i.z, align 8, !tbaa !157
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !157
  %i.ad = fcmp olt float %i.aa, %i.ac
  %spec.select.i.i.i = select i1 %i.ad, i64 %i.x, i64 %i.v ; 4 uses
  %i.ae = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %.040.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !tbaa.struct !158
  %i.ag = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ag, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !352

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ah, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !tbaa.struct !158
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %10, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load float, ptr %i.ak, align 8, !tbaa !157
  %i.am = fcmp olt float %i.al, %.sroa.417.0.copyload.i.i
  br i1 %i.am, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !tbaa.struct !158
  %i.ao = icmp sgt i64 %.0919.i.i.i.i, %.08.i.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i, !llvm.loop !353

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store float %.sroa.417.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !155
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  store i32 %.sroa.518.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i.i)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.aq = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit, label %bb.c, !llvm.loop !354

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i
  %i.ar = icmp sgt i64 %.lcssa51, 32
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i ], [ %storemerge27.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.49.0.copyload.i.i.i = load float, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !155 ; 2 uses
  %.sroa.510.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4
  %.sroa.510.0.copyload.i.i.i = load i32, ptr %.sroa.510.0..sroa.0.0..sroa_idx.i.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = ashr exact i64 %i.au, 5                 ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = icmp sgt i64 %i.av, 2
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.040.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.az = shl i64 %.040.i.i.i.i, 1                ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load float, ptr %i.be, align 8, !tbaa !157
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !157
  %i.bi = fcmp olt float %i.bf, %i.bh
  %spec.select.i.i.i.i = select i1 %i.bi, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bj = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bk = getelementptr inbounds [32 x i8], ptr %0, i64 %.040.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !tbaa.struct !158
  %i.bl = icmp slt i64 %spec.select.i.i.i.i, %i.ax
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !352

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bm = and i64 %i.au, 32
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bo = add nsw i64 %i.av, -2
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bp
  br i1 %i.bq, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.br = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bs = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !tbaa.struct !158
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bs, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i1112.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i1112.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i1112.i.i.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !157
  %i.by = fcmp olt float %i.bx, %.sroa.49.0.copyload.i.i.i
  br i1 %i.by, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bz = getelementptr inbounds [32 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 32, i1 false), !tbaa.struct !158
  %.not13.i.i.i = icmp eq i64 %.0919.i.i1112.i.i.i, 0
  br i1 %.not13.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !353

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.ca = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store float %.sroa.49.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !155
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  store i32 %.sroa.510.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i.i)
  %i.cb = icmp sgt i64 %i.au, 32
  br i1 %i.cb, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit, !llvm.loop !355

.lr.ph57:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2756 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02855 = phi i64 [ %i.cd, %bb.b ], [ %2, %.lr.ph ]
  %i.cc = phi i64 [ %i.dc, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cd = add nsw i64 %.02855, -1                 ; 3 uses
  %i.ce = lshr i64 %i.cc, 1
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ce ; 5 uses
  %i.cg = getelementptr inbounds i8, ptr %storemerge2756, i64 -32 ; 4 uses
  %i.ch = load float, ptr %i.g, align 8, !tbaa !157 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !157 ; 3 uses
  %i.ck = fcmp olt float %i.ch, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %storemerge2756, i64 -8
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !157 ; 4 uses
  br i1 %i.ck, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph57
  %i.cn = fcmp olt float %i.cj, %i.cm
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.co = fcmp olt float %i.ch, %i.cm
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph57
  %i.cp = fcmp olt float %i.ch, %i.cm
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cq = fcmp olt float %i.cj, %i.cm
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader
end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_T0_:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i29
  %.sroa.0.019.i30 = phi ptr [ %.sroa.0.016.i27, %.lr.ph.i29 ], [ %.sroa.0.0.i37, %bb.o ] ; 7 uses
  %.pn18.i31 = phi ptr [ %0, %.lr.ph.i29 ], [ %.sroa.0.019.i30, %bb.o ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i31, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !152 ; 4 uses
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !152
  %i.ae = icmp ult i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i30, i64 32, i1 false), !tbaa.struct !158
  %i.af = ptrtoint ptr %.sroa.0.019.i30 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 3 uses
  %i.ah = ashr exact i64 %i.ag, 5                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %bb.l, !prof !135

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn18.i31, i64 64
  %i.ak = sub nsw i64 0, %i.ah
  %i.al = getelementptr inbounds [32 x i8], ptr %i.aj, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i42

bb.l:                                             ; preds = %bb.j
  %i.am = icmp eq i64 %i.ag, 32
  br i1 %i.am, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i42

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.pn18.i31, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i42

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i42: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i24)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i25)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i30, i64 16, i1 false), !tbaa.struct !158
  %.sroa.5.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %.pn18.i31, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i25, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i32, i64 12, i1 false), !tbaa.struct !378
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn18.i31, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !152
  %i.aq = icmp ult i32 %i.ac, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i39, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_T0_.exit.i33

.lr.ph.i.i39:                                     ; preds = %bb.n, %.lr.ph.i.i39
  %.sroa.07.010.i.i40 = phi ptr [ %.sroa.0.0.i.i41, %.lr.ph.i.i39 ], [ %.sroa.0.019.i30, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i40, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.010.i.i40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i41, i64 32, i1 false), !tbaa.struct !158
  %i.ar = getelementptr inbounds i8, ptr %.sroa.07.010.i.i40, i64 -48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !152
  %i.at = icmp ult i32 %i.ac, %i.as
  br i1 %i.at, label %.lr.ph.i.i39, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_T0_.exit.i33, !llvm.loop !375

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_T0_.exit.i33: ; preds = %.lr.ph.i.i39, %bb.n
  %.sroa.07.0.lcssa.i.i34 = phi ptr [ %.sroa.0.019.i30, %bb.n ], [ %.sroa.0.0.i.i41, %.lr.ph.i.i39 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.0.lcssa.i.i34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i24, i64 16, i1 false), !tbaa.struct !158
  %.sroa.4.0..sroa_idx4.i.i35 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i34, i64 16
  store i32 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i35, align 8, !tbaa !76
  %.sroa.5.0..sroa_idx6.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i34, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx6.i.i36, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i25, i64 12, i1 false), !tbaa.struct !378
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i24)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i25)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_T0_.exit.i33, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i42
  %.sroa.0.0.i37 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i30, i64 32 ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.0.0.i37, %1
  br i1 %.not.i38, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_T0_.exit, label %bb.i, !llvm.loop !376

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_T0_.exit.i16, %.preheader.i26, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.06.i = alloca [2 x i64], align 8         ; 4 uses
  %.sroa.5.i = alloca [12 x i8], align 4          ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_SP_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_SP_RT0_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16
  %.sroa.49.0.copyload.i = load i32, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i, align 8, !tbaa !76 ; 2 uses
  %.sroa.510.0..sroa.0.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.510.0..sroa.0.0..sroa_idx.i, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.a                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 5                   ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %i.j = lshr i64 %i.i, 1
  %i.k = icmp sgt i64 %i.h, 2
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.039.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = shl i64 %.039.i.i, 1                     ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr inbounds [32 x i8], ptr %0, i64 %i.m
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds [32 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !152
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !152
  %i.u = icmp ult i32 %i.r, %i.t
  %spec.select.i.i = select i1 %i.u, i64 %i.o, i64 %i.m ; 4 uses
  %i.v = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i
  %i.w = getelementptr inbounds [32 x i8], ptr %0, i64 %.039.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !tbaa.struct !158
  %i.x = icmp slt i64 %spec.select.i.i, %i.j
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !13

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.y = and i64 %i.g, 32
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.aa = add nsw i64 %i.h, -2
  %i.ab = ashr exact i64 %i.aa, 1
  %i.ac = icmp eq i64 %.0.lcssa.i.i, %i.ab
  br i1 %i.ac, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ad = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !tbaa.struct !158
  br label %.lr.ph.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_SP_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c, %.thread.i
  %.018.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.c ], [ %i.ae, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.018.i.i.i = phi i64 [ %.0919.i.i1112.i, %bb.d ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i1112.i = lshr i64 %.0919.in.i.i.i, 1  ; 3 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i1112.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !152
  %i.ak = icmp ult i32 %i.aj, %.sroa.49.0.copyload.i
  br i1 %i.ak, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_SP_RT0_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds [32 x i8], ptr %0, i64 %.018.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !158
  %.not13.i = icmp eq i64 %.0919.i.i1112.i, 0
  br i1 %.not13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_SP_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !14

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_SP_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.am = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i32 %.sroa.49.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !76
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.an = icmp sgt i64 %i.g, 32
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !379

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_SP_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_SP_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.014 = alloca [2 x i64], align 8          ; 4 uses
  %.sroa.5 = alloca [12 x i8], align 4            ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 32
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_T0_SQ_T1_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.am, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_T0_SQ_T1_T2_.exit ] ; 8 uses
  %i.o = getelementptr inbounds [32 x i8], ptr %0, i64 %.08 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %.sroa.417.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.417.0.copyload = load i32, ptr %.sroa.417.0..sroa.0.0..sroa_idx, align 8, !tbaa !76 ; 2 uses
  %.sroa.518.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.518.0..sroa.0.0..sroa_idx, i64 12, i1 false)
  %i.p = icmp slt i64 %.08, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.039.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %bb.c ] ; 2 uses
  %i.q = shl i64 %.039.i, 1                       ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [32 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !152
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !152
  %i.z = icmp ult i32 %i.w, %i.y
  %spec.select.i = select i1 %i.z, i64 %i.t, i64 %i.r ; 4 uses
  %i.aa = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i
  %i.ab = getelementptr inbounds [32 x i8], ptr %0, i64 %.039.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !tbaa.struct !158
  %i.ac = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !tbaa.struct !158
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i, %.08
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_T0_SQ_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.018.i.i = phi i64 [ %.0919.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0919.in.i.i = add nsw i64 %.018.i.i, -1
  %.0919.i.i = sdiv i64 %.0919.in.i.i, 2          ; 4 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !152
  %i.ai = icmp ult i32 %i.ah, %.sroa.417.0.copyload
  br i1 %i.ai, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_T0_SQ_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.018.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !tbaa.struct !158
  %i.ak = icmp sgt i64 %.0919.i.i, %.08
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_T0_SQ_T1_T2_.exit, !llvm.loop !14

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_T0_SQ_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0919.i.i, %bb.f ], [ %.018.i.i, %.lr.ph.i.i ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 %.sroa.417.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.08, 0
  %i.am = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !380

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb1EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E_EEEvT_T0_SQ_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3acd21ac_decomposition_impl22generate_decompositionEv(ptr noundef nonnull align 8 dereferenceable(500) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.acd::ac_decomposition_result", align 8 ; 13 uses
  %2 = alloca %"struct.kitty::static_truth_table", align 16 ; 73 uses
  %3 = alloca %"struct.kitty::static_truth_table", align 16 ; 71 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN3acd23ac_decomposition_resultEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN3acd23ac_decomposition_resultEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #13
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !93 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3acd23ac_decomposition_resultEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !94
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #13
  br label %_ZSt8_DestroyIN3acd23ac_decomposition_resultEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3acd23ac_decomposition_resultEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3acd23ac_decomposition_resultEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN3acd23ac_decomposition_resultEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIN3acd23ac_decomposition_resultEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !88
  br label %_ZNSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE5clearEv.exit

_ZNSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN3acd23ac_decomposition_resultEEvT_S3_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !136
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !96   ; 2 uses
  %.not99 = icmp eq ptr %i.u, %i.v
  br i1 %.not99, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %_ZNSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE5clearEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %next.gep323.1 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %next.gep323.2 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %next.gep323.3 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48
  %next.gep323.4 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %next.gep323.5 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80
  %next.gep323.6 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96
  %next.gep323.7 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 112
  %next.gep323.8 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 128
  %next.gep323.9 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 144
  %next.gep323.10 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 160
  %next.gep323.11 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 176
  %next.gep323.12 = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 192
  %next.gep323.13 = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 208
  %next.gep323.14 = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 224
  %next.gep323.15 = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %next.gep210.1 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %next.gep210.2 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %next.gep210.3 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 112
end_hunk_2
