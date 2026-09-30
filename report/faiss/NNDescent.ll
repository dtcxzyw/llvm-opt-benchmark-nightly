Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/NNDescent?download=true
inline.NumInlined: 1107
inline.NumDeleted: 428
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_:bb.a
_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bk = load i32, ptr %0, align 4, !tbaa !50    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load i32, ptr %.1.i.i, align 4, !tbaa !50 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !113

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.bo = load i32, ptr %.114.i.i, align 4, !tbaa !50 ; 2 uses
  %i.bp = icmp slt i32 %i.bk, %i.bo
  br i1 %i.bp, label %.preheader.i.i, label %bb.q, !llvm.loop !114

bb.q:                                             ; preds = %.preheader.i.i
  %i.bq = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bq, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bo, ptr %.1.i.i, align 4, !tbaa !50
  store i32 %i.bl, ptr %.114.i.i, align 4, !tbaa !50
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !115

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.au)
  %i.br = ptrtoint ptr %.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a                     ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 64
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !111

_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 4, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i32, ptr %.019.i.ptr, align 4, !tbaa !50 ; 4 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 4
  br i1 %i.h, label %bb.e, label %bb.f, !prof !55

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  store i32 %i.f, ptr %i.i, align 4, !tbaa !50
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i32, ptr %.pn18.i, align 4, !tbaa !50 ; 2 uses
  %i.k = icmp slt i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i32 %i.l, ptr %.0912.i.i, align 4, !tbaa !50
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.0.i.i, align 4, !tbaa !50 ; 2 uses
  %i.n = icmp slt i32 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i, !llvm.loop !116

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i32 %i.e, ptr %.sink.i, align 4, !tbaa !50
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !117

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
  br i1 %.not5.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.06.i = phi ptr [ %i.v, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.o, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit ] ; 5 uses
  %i.p = load i32, ptr %.06.i, align 4, !tbaa !50 ; 3 uses
  %.011.i.i = getelementptr inbounds i8, ptr %.06.i, i64 -4 ; 2 uses
  %i.q = load i32, ptr %.011.i.i, align 4, !tbaa !50 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i, %.lr.ph.i.i9
  %i.s = phi i32 [ %i.t, %.lr.ph.i.i9 ], [ %i.q, %.lr.ph.i ]
  %.013.i.i10 = phi ptr [ %.0.i.i12, %.lr.ph.i.i9 ], [ %.011.i.i, %.lr.ph.i ] ; 3 uses
  %.0912.i.i11 = phi ptr [ %.013.i.i10, %.lr.ph.i.i9 ], [ %.06.i, %.lr.ph.i ]
  store i32 %i.s, ptr %.0912.i.i11, align 4, !tbaa !50
  %.0.i.i12 = getelementptr inbounds i8, ptr %.013.i.i10, i64 -4 ; 2 uses
  %i.t = load i32, ptr %.0.i.i12, align 4, !tbaa !50 ; 2 uses
  %i.u = icmp slt i32 %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !116

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i9, %.lr.ph.i
  %.09.lcssa.i.i = phi ptr [ %.06.i, %.lr.ph.i ], [ %.013.i.i10, %.lr.ph.i.i9 ]
  store i32 %i.p, ptr %.09.lcssa.i.i, align 4, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i8 = icmp eq ptr %i.v, %1
  br i1 %.not.i8, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !118

bb.h:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %0, %1
  %.016.i13 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i13, %1
  %or.cond = select i1 %i.w, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.h, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17
  %.019.i15 = phi ptr [ %.0.i19, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17 ], [ %.016.i13, %bb.h ] ; 6 uses
  %.pn18.i16 = phi ptr [ %.019.i15, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17 ], [ %0, %bb.h ] ; 4 uses
  %i.x = load i32, ptr %.019.i15, align 4, !tbaa !50 ; 4 uses
  %i.y = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i14
  %i.aa = ptrtoint ptr %.019.i15 to i64
  %i.ab = sub i64 %i.aa, %i.b                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 2                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.k, !prof !55

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn18.i16, i64 8
  %i.af = sub nsw i64 0, %i.ac
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ag, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ab, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17

bb.k:                                             ; preds = %bb.i
  %i.ah = icmp eq i64 %i.ab, 4
  br i1 %i.ah, label %bb.l, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn18.i16, i64 4
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !50
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17

bb.m:                                             ; preds = %.lr.ph.i14
  %i.aj = load i32, ptr %.pn18.i16, align 4, !tbaa !50 ; 2 uses
  %i.ak = icmp slt i32 %i.x, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17

.lr.ph.i.i21:                                     ; preds = %bb.m, %.lr.ph.i.i21
  %i.al = phi i32 [ %i.am, %.lr.ph.i.i21 ], [ %i.aj, %bb.m ]
  %.013.i.i22 = phi ptr [ %.0.i.i24, %.lr.ph.i.i21 ], [ %.pn18.i16, %bb.m ] ; 3 uses
  %.0912.i.i23 = phi ptr [ %.013.i.i22, %.lr.ph.i.i21 ], [ %.019.i15, %bb.m ]
  store i32 %i.al, ptr %.0912.i.i23, align 4, !tbaa !50
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.0.i.i24, align 4, !tbaa !50 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !116

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store i32 %i.x, ptr %.sink.i18, align 4, !tbaa !50
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.019.i15, i64 4 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !117

_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.us
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50   ; 2 uses
  %i.q = icmp slt i64 %.013.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.t, align 4, !tbaa !50
  %i.x = load i32, ptr %i.v, align 4, !tbaa !50
  %i.y = icmp slt i32 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !50
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !50
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !2

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !50 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.p
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !50
  %i.aj = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !3

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i32 %i.p, ptr %i.ak, align 4, !tbaa !50
  %.not.us = icmp eq i64 %.013.us, 0
  %i.al = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !119

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.an = load i32, ptr %i.am, align 4, !tbaa !50 ; 2 uses
  %i.ao = icmp slt i64 %.013, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.ap = shl i64 %.029.i, 1                      ; 3 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr [4 x i8], ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !50
  %i.av = load i32, ptr %i.at, align 4, !tbaa !50
  %i.aw = icmp slt i32 %i.au, %i.av
  %i.ax = or disjoint i64 %i.ap, 1
  %spec.select.i = select i1 %i.aw, i64 %i.ax, i64 %i.aq ; 4 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !50
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !50
  %i.bb = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = load i32, ptr %i.m, align 4, !tbaa !50
  store i32 %i.bd, ptr %i.n, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.be = icmp sgt i64 %.128.i, %.013
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !50 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.an
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !50
  %i.bj = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !3

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.an, ptr %i.bk, align 4, !tbaa !50
  %.not = icmp eq i64 %.013, 0
  %i.bl = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !119

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2, i8 %3) local_unnamed_addr #16 {
bb.a:
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %2 to i32 ; 3 uses
  %.sroa.0.sroa.2.0.extract.shift = lshr i64 %2, 32
  %.sroa.0.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.2.0.extract.shift to i32
  %i.a = bitcast i32 %.sroa.0.sroa.2.0.extract.trunc to float ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !65
  %i.d = fcmp ogt float %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = sext i32 %1 to i64
  %i.g = mul nsw i64 %i.f, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.e, ptr nonnull align 4 %0, i64 %i.g, i1 false)
  store i64 %2, ptr %0, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %3, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !60
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = add nsw i32 %1, -1                       ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [12 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !65
  %i.m = fcmp olt float %i.l, %i.a
  br i1 %i.m, label %bb.d, label %.preheader68

.preheader68:                                     ; preds = %bb.c
  %i.n = icmp sgt i32 %1, 2
  br i1 %i.n, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.o = sext i32 %1 to i64
  %i.p = getelementptr inbounds [12 x i8], ptr %0, i64 %i.o ; 2 uses
  store i64 %2, ptr %i.p, align 4
  %.sroa.12.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 %3, ptr %.sroa.12.0..sroa_idx58, align 4, !tbaa !60
  br label %bb.k

.preheader:                                       ; preds = %.lr.ph
  %i.q = icmp sgt i32 %.063., 0
  br i1 %i.q, label %.lr.ph74, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader68, %.lr.ph
  %.071 = phi i32 [ %..0, %.lr.ph ], [ %i.h, %.preheader68 ] ; 2 uses
  %.06370 = phi i32 [ %.063., %.lr.ph ], [ 0, %.preheader68 ] ; 2 uses
  %i.r = add nsw i32 %.071, %.06370
  %i.s = sdiv i32 %i.r, 2                         ; 3 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !65
  %i.x = fcmp ogt float %i.w, %i.a                ; 2 uses
  %.063. = select i1 %i.x, i32 %.06370, i32 %i.s  ; 5 uses
  %..0 = select i1 %i.x, i32 %i.s, i32 %.071      ; 5 uses
  %i.y = add nsw i32 %..0, -1
  %i.z = icmp slt i32 %.063., %i.y
  br i1 %i.z, label %.lr.ph, label %.preheader, !llvm.loop !4

.lr.ph74:                                         ; preds = %.preheader, %bb.g
  %.273 = phi i32 [ %i.ai, %bb.g ], [ %.063., %.preheader ] ; 4 uses
  %i.aa = zext nneg i32 %.273 to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !65
  %i.ae = fcmp olt float %i.ad, %i.a
  br i1 %i.ae, label %._crit_edge, label %bb.e

end_hunk_0
begin_hunk_1_@_ZN5faiss9NNDescent6updateEv.omp_outlined.7:bb.a
  %i.bl = phi ptr [ %i.az, %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.ae, %bb.g ]
  %i.bm = phi ptr [ %i.bj, %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.ao, %bb.g ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !36
  %i.bp = load i32, ptr %i.o, align 4, !tbaa !90  ; 3 uses
  %i.bq = add nsw i32 %i.bp, %i.bo
  %i.br = ptrtoint ptr %i.bm to i64
  %i.bs = sub i64 %i.br, %.pre-phi
  %i.bt = sdiv exact i64 %i.bs, 12
  %i.bu = trunc i64 %i.bt to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bu) ; 2 uses
  %i.bv = icmp sgt i32 %.sroa.speculated, 0
  %i.bw = icmp sgt i32 %i.bp, 0
  %or.cond38 = and i1 %i.bv, %i.bw
  br i1 %or.cond38, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE7reserveEm.exit
  %i.bx = zext nneg i32 %.sroa.speculated to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02839 = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ]
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !91, !range !92, !noundef !93
  %i.cb = zext nneg i8 %i.ca to i32
  %spec.select = add nuw nsw i32 %.02839, %i.cb   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cc = icmp samesign ult i64 %indvars.iv.next, %i.bx
  %i.cd = icmp slt i32 %spec.select, %i.bp
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !125

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.ce = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE7reserveEm.exit
  %.0.lcssa = phi i32 [ 0, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE7reserveEm.exit ], [ %i.ce, %.critedge.loopexit ]
  store i32 %.0.lcssa, ptr %i.bn, align 8, !tbaa !36
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, 1
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !50
  %i.cg = sext i32 %i.cf to i64
  %.not.not = icmp slt i64 %indvars.iv45, %i.cg
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.a
  ret void

.loopexit:                                        ; preds = %bb.d, %.noexc, %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ch = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ch) #28
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss9NNDescent6updateEv.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::mersenne_twister_engine", align 8 ; 29 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !79
  %i.g = tail call i32 @omp_get_thread_num()
  %i.h = mul nsw i32 %i.f, 5081
  %i.i = add nsw i32 %i.h, %i.g
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  store i64 %i.j, ptr %3, align 8, !tbaa !71
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %i.j, %bb.a ], [ %i.w, %bb.c ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.a ], [ %i.x, %bb.c ] ; 4 uses
  %i.k = getelementptr [8 x i8], ptr %3, i64 %.011.i.i
  %i.l = lshr i64 %store_forwarded, 30
  %i.m = xor i64 %i.l, %store_forwarded
  %i.n = mul nuw nsw i64 %i.m, 1812433253
  %i.o = add nuw i64 %i.n, %.011.i.i              ; 2 uses
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  store i64 %i.p, ptr %i.k, align 8, !tbaa !71
  %i.q = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.q, 624
  br i1 %exitcond.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr [8 x i8], ptr %3, i64 %i.q
  %i.s = lshr i64 %i.p, 30
  %i.t = xor i64 %i.s, %i.o
  %i.u = mul i64 %i.t, 1812433253
  %i.v = add i64 %i.u, %i.q
  %i.w = and i64 %i.v, 4294967295                 ; 2 uses
  store i64 %i.w, ptr %i.r, align 8, !tbaa !71
  %i.x = add nuw nsw i64 %.011.i.i, 2
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4992 ; 3 uses
  store i64 624, ptr %i.y, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !87  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !50    ; 3 uses
  br i1 %i.ab, label %bb.e, label %bb.ap

bb.e:                                             ; preds = %bb.d
  %i.ac = add nsw i32 %i.aa, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !50
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !50
  %i.ae = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ac) ; 2 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !50
  %i.af = load i32, ptr %i.a, align 4, !tbaa !50  ; 2 uses
  %.not106 = icmp sgt i32 %i.af, %i.ae
  br i1 %.not106, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.phi.trans.insert.i.i87 = getelementptr inbounds nuw i8, ptr %3, i64 1816 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4984 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 3168 ; 2 uses
  %i.ak = sext i32 %i.af to i64
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 1808
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4984
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 1808
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 4984
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph109, %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.ar = phi i64 [ 624, %.lr.ph109 ], [ %i.bk, %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ] ; 2 uses
  %indvars.iv115 = phi i64 [ %i.ak, %.lr.ph109 ], [ %indvars.iv.next116, %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ] ; 9 uses
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw [168 x i8], ptr %i.as, i64 %indvars.iv115 ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 64 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !36
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 80 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 88 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 104 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 112 ; 3 uses
  %i.be = trunc nsw i64 %indvars.iv115 to i32
  %i.bf = trunc nsw i64 %indvars.iv115 to i32
  %i.bg = trunc nsw i64 %indvars.iv115 to i32
  %i.bh = trunc nsw i64 %indvars.iv115 to i32
  %i.bi = trunc nsw i64 %indvars.iv115 to i32
  %i.bj = trunc nsw i64 %indvars.iv115 to i32
  br label %bb.m

._crit_edge:                                      ; preds = %bb.ao, %bb.f
  %i.bk = phi i64 [ %i.ar, %bb.f ], [ %i.nq, %bb.ao ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !62 ; 11 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = icmp slt i64 %i.br, 24
  br i1 %i.bs, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bt = udiv exact i64 %i.br, 12                ; 3 uses
  %i.bu = add nsw i64 %i.bt, -2
  %i.bv = lshr i64 %i.bu, 1                       ; 3 uses
  %i.bw = add nsw i64 %i.bt, -1                   ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 2 uses
  %i.by = and i64 %i.bt, 1
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bw
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bv
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %bb.g
  %.012.i.i = phi i64 [ %i.bv, %bb.g ], [ %i.db, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.cc = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %.012.i.i ; 2 uses
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.cc, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !60
  %i.cd = icmp slt i64 %.012.i.i, %i.bx
  br i1 %i.cd, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.043.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.h ] ; 2 uses
  %i.ce = shl i64 %.043.i.i.i, 1                  ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !65
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !65
  %i.cn = fcmp olt float %i.ck, %i.cm
  %spec.select.i.i.i = select i1 %i.cn, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %spec.select.i.i.i
  %i.cp = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %.043.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cp, ptr noundef nonnull align 4 dereferenceable(9) %i.co, i64 9, i1 false), !tbaa.struct !61
  %i.cq = icmp slt i64 %spec.select.i.i.i, %i.bx
  br i1 %i.cq, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !1

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.h
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.h ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cr = icmp eq i64 %.0.lcssa.i.i.i, %i.bv
  %or.cond.i.i = select i1 %i.bz, i1 %i.cr, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cb, ptr noundef nonnull align 4 dereferenceable(9) %i.ca, i64 9, i1 false), !tbaa.struct !61
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.bw, %bb.i ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cs = icmp sgt i64 %.1.i.i.i, %.012.i.i
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j
  %.sroa.013.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.05.0.copyload.i.i, 32
  %.sroa.013.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.013.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.ct = bitcast i32 %.sroa.013.sroa.2.0.extract.trunc.i.i.i.i to float
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.022.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i ], [ %.01023.i.i.i.i, %bb.l ] ; 3 uses
  %.01023.in.i.i.i.i = add nsw i64 %.022.i.i.i.i, -1
  %.01023.i.i.i.i = sdiv i64 %.01023.in.i.i.i.i, 2 ; 4 uses
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %.01023.i.i.i.i ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !65
  %i.cx = fcmp olt float %i.cw, %i.ct
  br i1 %i.cx, label %bb.l, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %.022.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cy, ptr noundef nonnull align 4 dereferenceable(9) %i.cu, i64 9, i1 false), !tbaa.struct !61
  %i.cz = icmp sgt i64 %.01023.i.i.i.i, %.012.i.i
  br i1 %i.cz, label %bb.k, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !0

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.j ], [ %.01023.i.i.i.i, %bb.l ], [ %.022.i.i.i.i, %bb.k ]
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %.0.lcssa.i.i.i.i ; 2 uses
  store i64 %.sroa.05.0.copyload.i.i, ptr %i.da, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i, align 4, !tbaa !60
  %.not.i.i = icmp eq i64 %.012.i.i, 0
  %i.db = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.h, !llvm.loop !7

bb.m:                                             ; preds = %.lr.ph, %bb.ao
  %i.dc = phi i64 [ %i.ar, %.lr.ph ], [ %i.nq, %bb.ao ] ; 10 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
  %i.dd = load ptr, ptr %i.az, align 8, !tbaa !40
  %i.de = getelementptr inbounds nuw [12 x i8], ptr %i.dd, i64 %indvars.iv ; 6 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !66 ; 3 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.di = getelementptr inbounds nuw [168 x i8], ptr %i.dh, i64 %i.dg ; 12 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 4, !tbaa !91, !range !92, !noundef !93
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.dm = load ptr, ptr %i.bc, align 8, !tbaa !38 ; 4 uses
  %i.dn = load ptr, ptr %i.bd, align 8, !tbaa !39
  %.not.i = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.df, ptr %i.dm, align 4, !tbaa !50
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store ptr %i.do, ptr %i.bc, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.p:                                             ; preds = %bb.n
  %i.dp = load ptr, ptr %i.au, align 8, !tbaa !37 ; 4 uses
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 5 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.aj, %bb.ad, %bb.v, %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.du = ashr exact i64 %i.ds, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = call i64 @llvm.umin.i64(i64 %i.dv, i64 2305843009213693951)
  %i.dy = select i1 %i.dw, i64 2305843009213693951, i64 %i.dx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dy, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dz = shl nuw nsw i64 %i.dy, 2
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #27
          to label %.noexc44 unwind label %.loopexit ; 4 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.ds ; 2 uses
  %i.ec = load i32, ptr %i.de, align 4, !tbaa !50
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !50
  %i.ed = icmp sgt i64 %i.ds, 0
  br i1 %i.ed, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc44
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr align 4 %i.dp, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc44
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ef = load ptr, ptr %i.bd, align 8, !tbaa !39
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = sub i64 %i.eg, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.eh) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ea, ptr %i.au, align 8, !tbaa !37
  store ptr %i.ee, ptr %i.bc, align 8, !tbaa !38
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dy
  store ptr %i.ei, ptr %i.bd, align 8, !tbaa !39
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.o
  %i.ej = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !65
  %i.el = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !62
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -8
  %i.eo = load float, ptr %i.en, align 4, !tbaa !65
  %i.ep = fcmp ogt float %i.ek, %i.eo
  br i1 %i.ep, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.eq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.di) #19 ; 2 uses
  %.not.i.i45 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i45, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %.invoke146

.invoke146:                                       ; preds = %bb.ag, %bb.s
  %i.er = phi i32 [ %i.eq, %bb.s ], [ %i.jt, %bb.ag ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.er) #26
          to label %.cont147 unwind label %.loopexit.split-lp

.cont147:                                         ; preds = %.invoke146
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.s
  %i.es = getelementptr inbounds nuw i8, ptr %i.di, i64 144 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.di, i64 152 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !38 ; 4 uses
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !37 ; 5 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex                    ; 5 uses
  %i.ez = ashr exact i64 %i.ey, 2                 ; 4 uses
  %i.fa = load i32, ptr %i.ah, align 8, !tbaa !94
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %i.fc = icmp ult i64 %i.ez, %i.fb
  br i1 %i.fc, label %bb.t, label %bb.y

bb.t:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.di, i64 160 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !39
  %.not.i47 = icmp eq ptr %i.eu, %i.fe
  br i1 %.not.i47, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.bi, ptr %i.eu, align 4, !tbaa !50
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store ptr %i.ff, ptr %i.et, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit56

bb.v:                                             ; preds = %bb.t
  %i.fg = icmp eq i64 %i.ey, 9223372036854775804
  br i1 %i.fg, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i48

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i48: ; preds = %bb.v
  %.sroa.speculated.i.i.i49 = call i64 @llvm.umax.i64(i64 %i.ez, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i49, %i.ez ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.ez
  %i.fj = call i64 @llvm.umin.i64(i64 %i.fh, i64 2305843009213693951)
  %i.fk = select i1 %i.fi, i64 2305843009213693951, i64 %i.fj ; 3 uses
  %.not.i.i.i50 = icmp ne i64 %i.fk, 0
  call void @llvm.assume(i1 %.not.i.i.i50)
  %i.fl = shl nuw nsw i64 %i.fk, 2
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #27
          to label %.noexc55 unwind label %.loopexit ; 4 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i48
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.ey ; 2 uses
  store i32 %i.bj, ptr %i.fn, align 4, !tbaa !50
  %i.fo = icmp sgt i64 %i.ey, 0
  br i1 %i.fo, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51

bb.w:                                             ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fm, ptr align 4 %i.ev, i64 %i.ey, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51: ; preds = %bb.w, %.noexc55
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %.not.i17.i.i52 = icmp eq ptr %i.ev, null
  br i1 %.not.i17.i.i52, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i53, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51
end_hunk_1
begin_hunk_2_@_ZN5faiss9NNDescent6updateEv.omp_outlined.9:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !63  ; 2 uses
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr %i.ao, ptr %i.ah, ptr %i.aj)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !63  ; 2 uses
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !38 ; 3 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = load i32, ptr %i.n, align 8, !tbaa !94  ; 2 uses
  %i.aw = shl nsw i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64                   ; 5 uses
  %i.ay = icmp ugt i64 %i.au, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ax ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.az, ptr %i.af, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.f
  %i.ba = phi ptr [ %i.az, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.aq, %bb.f ]
  %i.bb = icmp slt i32 %i.av, 0
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.as
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = icmp ult i64 %i.bg, %i.ax
  br i1 %i.bh, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.bi = ptrtoint ptr %i.ba to i64
  %i.bj = sub i64 %i.bi, %i.as
  %i.bk = shl nuw nsw i64 %i.ax, 2
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #27
          to label %.noexc35 unwind label %.loopexit ; 4 uses

.noexc35:                                         ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.bm = load ptr, ptr %i.s, align 8, !tbaa !37  ; 4 uses
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !38
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.i:                                             ; preds = %.noexc35
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bl, ptr align 4 %i.bm, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.i, %.noexc35
  %.not.i8.i = icmp eq ptr %i.bm, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bu) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store ptr %i.bv, ptr %i.af, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ax
  store ptr %i.bw, ptr %i.bc, align 8, !tbaa !39
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.h, %bb.e
  %i.bx = load ptr, ptr %i.m, align 8, !tbaa !83  ; 2 uses
  %i.by = getelementptr inbounds nuw [168 x i8], ptr %i.bx, i64 %indvars.iv ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !37 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.ca, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #25
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !83
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %bb.k
  %i.cg = phi ptr [ %i.bx, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.pre, %bb.k ]
  %i.ch = getelementptr inbounds nuw [168 x i8], ptr %i.cg, i64 %indvars.iv ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 120 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !37 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 136
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !39
  %.not.i.i.i36 = icmp eq ptr %i.cj, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIiSaIiEED2Ev.exit37, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit37

_ZNSt6vectorIiSaIiEED2Ev.exit37:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.l
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cp = load i32, ptr %i.b, align 4, !tbaa !50
  %i.cq = sext i32 %i.cp to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cq
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit37, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.a
  ret void

.loopexit:                                        ; preds = %bb.c, %bb.d, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cr = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.cr) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.faiss::nndescent::Neighbor", align 4 ; 4 uses
  %4 = alloca %"struct.faiss::nndescent::Neighbor", align 4 ; 4 uses
  %5 = alloca %"struct.faiss::nndescent::Neighbor", align 4 ; 4 uses
  %6 = alloca %"struct.faiss::nndescent::Neighbor", align 4 ; 4 uses
  %7 = alloca %"struct.faiss::nndescent::Neighbor", align 4 ; 4 uses
  %8 = alloca %"struct.faiss::nndescent::Neighbor", align 4 ; 4 uses
  %9 = alloca %"struct.faiss::nndescent::Neighbor", align 4 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr52.i19 = freeze i64 %i.c                    ; 3 uses
  %i.d = icmp sgt i64 %.fr52.i19, 192
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.i = icmp eq i64 %i.cd, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph41, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr52.i22.lcssa = phi i64 [ %.fr52.i19, %.lr.ph ], [ %.fr52.i, %bb.b ]
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.fr52.i22.lcssa, 12      ; 3 uses
  %i.k = add nsw i64 %i.j, -2
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1                     ; 3 uses
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.m
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.012.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [12 x i8], ptr %0, i64 %.012.i.i ; 2 uses
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.s, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !60
  %i.t = icmp slt i64 %.012.i.i, %i.n
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.043.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.043.i.i.i, 1                   ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !65
  %i.ad = fcmp olt float %i.aa, %i.ac
  %spec.select.i.i.i = select i1 %i.ad, i64 %i.x, i64 %i.v ; 4 uses
  %i.ae = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.af = getelementptr inbounds [12 x i8], ptr %0, i64 %.043.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.af, ptr noundef nonnull align 4 dereferenceable(9) %i.ae, i64 9, i1 false), !tbaa.struct !61
  %i.ag = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ag, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !1

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ah, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.r, ptr noundef nonnull align 4 dereferenceable(9) %i.q, i64 9, i1 false), !tbaa.struct !61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i, %.012.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i12, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i12:                                 ; preds = %bb.e
  %.sroa.013.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.05.0.copyload.i.i, 32
  %.sroa.013.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.013.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.aj = bitcast i32 %.sroa.013.sroa.2.0.extract.trunc.i.i.i.i to float
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i12
  %.022.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i12 ], [ %.01023.i.i.i.i, %bb.g ] ; 3 uses
  %.01023.in.i.i.i.i = add nsw i64 %.022.i.i.i.i, -1
  %.01023.i.i.i.i = sdiv i64 %.01023.in.i.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01023.i.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !65
  %i.an = fcmp olt float %i.am, %i.aj
  br i1 %i.an, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.022.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ao, ptr noundef nonnull align 4 dereferenceable(9) %i.ak, i64 9, i1 false), !tbaa.struct !61
  %i.ap = icmp sgt i64 %.01023.i.i.i.i, %.012.i.i
  br i1 %i.ap, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !0

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.01023.i.i.i.i, %bb.g ], [ %.022.i.i.i.i, %bb.f ]
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store i64 %.sroa.05.0.copyload.i.i, ptr %i.aq, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i, align 4, !tbaa !60
  %.not.i.i11 = icmp eq i64 %.012.i.i, 0
  %i.ar = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i11, label %.lr.ph.i.i, label %bb.c, !llvm.loop !7

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i ], [ %storemerge20.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -12 ; 4 uses
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.as, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.as, ptr noundef nonnull align 4 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !61
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = sdiv exact i64 %i.au, 12                ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = sdiv i64 %i.aw, 2
  %i.ay = icmp sgt i64 %i.au, 24
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.043.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.az = shl i64 %.043.i.i.i.i, 1                ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [12 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !65
  %i.bi = fcmp olt float %i.bf, %i.bh
  %spec.select.i.i.i.i = select i1 %i.bi, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bj = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bk = getelementptr inbounds [12 x i8], ptr %0, i64 %.043.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bk, ptr noundef nonnull align 4 dereferenceable(9) %i.bj, i64 9, i1 false), !tbaa.struct !61
  %i.bl = icmp slt i64 %spec.select.i.i.i.i, %i.ax
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bm = and i64 %i.av, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bo = add nsw i64 %i.av, -2
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bp
  br i1 %i.bq, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.br = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bs = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bs
  %i.bu = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bu, ptr noundef nonnull align 4 dereferenceable(9) %i.bt, i64 9, i1 false), !tbaa.struct !61
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i11.i.i.i = phi i64 [ %i.bs, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %.sroa.013.sroa.2.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.05.0.copyload.i.i.i, 32
  %.sroa.013.sroa.2.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.013.sroa.2.0.extract.shift.i.i.i.i.i to i32
  %i.bv = bitcast i32 %.sroa.013.sroa.2.0.extract.trunc.i.i.i.i.i to float
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.022.i.i.i.i.i = phi i64 [ %.1.i11.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01023.i.i1213.i.i.i, %bb.k ] ; 3 uses
  %.01023.in.i.i.i.i.i = add nsw i64 %.022.i.i.i.i.i, -1
  %.01023.i.i1213.i.i.i = lshr i64 %.01023.in.i.i.i.i.i, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01023.i.i1213.i.i.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !65
  %i.bz = fcmp olt float %i.by, %i.bv
  br i1 %i.bz, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds [12 x i8], ptr %0, i64 %.022.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ca, ptr noundef nonnull align 4 dereferenceable(9) %i.bw, i64 9, i1 false), !tbaa.struct !61
  %.not14.i.i.i = icmp eq i64 %.01023.i.i1213.i.i.i, 0
  br i1 %.not14.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, label %bb.j, !llvm.loop !0

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.022.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.cb = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.05.0.copyload.i.i.i, ptr %i.cb, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i8 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !60
  %i.cc = icmp sgt i64 %i.au, 12
  br i1 %i.cc, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !8

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2040 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02139 = phi i64 [ %i.cd, %bb.b ], [ %2, %.lr.ph ]
  %.fr52.i2238 = phi i64 [ %.fr52.i, %bb.b ], [ %.fr52.i19, %.lr.ph ]
  %i.cd = add nsw i64 %.02139, -1                 ; 3 uses
  %i.ce = udiv i64 %.fr52.i2238, 24
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ce ; 5 uses
  %i.cg = getelementptr inbounds i8, ptr %storemerge2040, i64 -12 ; 4 uses
  %i.ch = load float, ptr %i.f, align 4, !tbaa !65 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !65 ; 3 uses
  %i.ck = fcmp olt float %i.ch, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %storemerge2040, i64 -8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !65 ; 4 uses
  br i1 %i.ck, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph41
  %i.cn = fcmp olt float %i.cj, %i.cm
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.cf, i64 9, i1 false), !tbaa.struct !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cf, ptr noundef nonnull align 4 dereferenceable(9) %9, i64 9, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.co = fcmp olt float %i.ch, %i.cm
  br i1 %i.co, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.cg, i64 9, i1 false), !tbaa.struct !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cg, ptr noundef nonnull align 4 dereferenceable(9) %8, i64 9, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.e, i64 9, i1 false), !tbaa.struct !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.e, ptr noundef nonnull align 4 dereferenceable(9) %7, i64 9, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph41
  %i.cp = fcmp olt float %i.ch, %i.cm
  br i1 %i.cp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.e, i64 9, i1 false), !tbaa.struct !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.e, ptr noundef nonnull align 4 dereferenceable(9) %6, i64 9, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.cq = fcmp olt float %i.cj, %i.cm
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.cg, i64 9, i1 false), !tbaa.struct !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cg, ptr noundef nonnull align 4 dereferenceable(9) %5, i64 9, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !61
end_hunk_2
begin_hunk_3_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_:bb.a
  %.pn16.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.017.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.017.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !65 ; 4 uses
  %i.h = load float, ptr %i.e, align 4, !tbaa !65
  %i.i = fcmp olt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.017.i.ptr, i64 12, i1 false), !tbaa.struct !61
  %i.j = icmp samesign ugt i64 %.sroa.0.017.i.idx, 12
  br i1 %i.j, label %bb.d, label %bb.e, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.017.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.k, ptr noundef nonnull align 4 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !61
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %3, i64 9, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.017.i.ptr, align 4, !tbaa !50
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 20
  %i.l = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !65
  %i.o = fcmp olt float %i.g, %i.n
  br i1 %i.o, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.08.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.017.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.08.011.i.i, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.08.011.i.i, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.0.i.i, i64 9, i1 false), !tbaa.struct !61
  %i.p = getelementptr inbounds i8, ptr %.sroa.08.011.i.i, i64 -20
  %i.q = load float, ptr %i.p, align 4, !tbaa !65
  %i.r = fcmp olt float %i.g, %i.q
  br i1 %i.r, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !135

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.08.0.lcssa.i.i = phi ptr [ %.sroa.0.017.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i = trunc i32 %i.l to i8
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.08.0.lcssa.i.i, align 4, !tbaa !50
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 4
  store float %i.g, ptr %.sroa.4.0..sroa_idx5.i.i, align 4, !tbaa !58
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 8
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i, ptr %.sroa.5.0..sroa_idx7.i.i, align 4, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.017.i.add = add nuw nsw i64 %.sroa.0.017.i.idx, 12 ; 2 uses
  %i.s = icmp eq i64 %.sroa.0.017.i.add, 192
  br i1 %i.s, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !136

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9
  %.sroa.0.04.i = phi ptr [ %i.ac, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9 ], [ %i.t, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit ] ; 7 uses
  %.sroa.03.0.copyload.i.i7 = load i32, ptr %.sroa.0.04.i, align 4, !tbaa !50
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 4
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !58 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 8
  %i.v = load i32, ptr %.sroa.5.0..sroa_idx.i.i8, align 4
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.04.i, i64 -8
  %i.x = load float, ptr %i.w, align 4, !tbaa !65
  %i.y = fcmp olt float %.sroa.4.0.copyload.i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i14
  %.sroa.08.011.i.i15 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.i.i14 ], [ %.sroa.0.04.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.08.011.i.i15, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.08.011.i.i15, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.0.i.i16, i64 9, i1 false), !tbaa.struct !61
  %i.z = getelementptr inbounds i8, ptr %.sroa.08.011.i.i15, i64 -20
  %i.aa = load float, ptr %i.z, align 4, !tbaa !65
  %i.ab = fcmp olt float %.sroa.4.0.copyload.i.i, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9, !llvm.loop !135

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9: ; preds = %.lr.ph.i.i14, %.lr.ph.i6
  %.sroa.08.0.lcssa.i.i10 = phi ptr [ %.sroa.0.04.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i16, %.lr.ph.i.i14 ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i11 = trunc i32 %i.v to i8
  store i32 %.sroa.03.0.copyload.i.i7, ptr %.sroa.08.0.lcssa.i.i10, align 4, !tbaa !50
  %.sroa.4.0..sroa_idx5.i.i12 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i10, i64 4
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx5.i.i12, align 4, !tbaa !58
  %.sroa.5.0..sroa_idx7.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i10, i64 8
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i11, ptr %.sroa.5.0..sroa_idx7.i.i13, align 4, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 12 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6, !llvm.loop !137

bb.h:                                             ; preds = %bb.a
  %i.ae = icmp eq ptr %0, %1
  br i1 %i.ae, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.h
  %.sroa.0.015.i18 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.015.i18, %1
  br i1 %i.af, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i17
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i19
  %.sroa.0.017.i20 = phi ptr [ %.sroa.0.015.i18, %.lr.ph.i19 ], [ %.sroa.0.0.i29, %bb.o ] ; 7 uses
  %.pn16.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.017.i20, %bb.o ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 16
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !65 ; 4 uses
  %i.aj = load float, ptr %i.ag, align 4, !tbaa !65
  %i.ak = fcmp olt float %i.ai, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.017.i20, i64 12, i1 false), !tbaa.struct !61
  %i.al = ptrtoint ptr %.sroa.0.017.i20 to i64
  %i.am = sub i64 %i.al, %i.b                     ; 4 uses
  %i.an = icmp sgt i64 %i.am, 12
  br i1 %i.an, label %bb.k, label %bb.l, !prof !55

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 24
  %.neg22.i34 = udiv exact i64 %i.am, 12
  %.neg22.neg.i35 = sub nsw i64 0, %.neg22.i34
  %i.ap = getelementptr inbounds [12 x i8], ptr %i.ao, i64 %.neg22.neg.i35
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ap, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.am, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33

bb.l:                                             ; preds = %bb.j
  %i.aq = icmp eq i64 %i.am, 12
  br i1 %i.aq, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ar, ptr noundef nonnull align 4 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !61
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %2, i64 9, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.03.0.copyload.i.i22 = load i32, ptr %.sroa.0.017.i20, align 4, !tbaa !50
  %.sroa.5.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 20
  %i.as = load i32, ptr %.sroa.5.0..sroa_idx.i.i23, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !65
  %i.av = fcmp olt float %i.ai, %i.au
  br i1 %i.av, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24

.lr.ph.i.i30:                                     ; preds = %bb.n, %.lr.ph.i.i30
  %.sroa.08.011.i.i31 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i30 ], [ %.sroa.0.017.i20, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.08.011.i.i31, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.08.011.i.i31, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.0.i.i32, i64 9, i1 false), !tbaa.struct !61
  %i.aw = getelementptr inbounds i8, ptr %.sroa.08.011.i.i31, i64 -20
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !65
  %i.ay = fcmp olt float %i.ai, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24, !llvm.loop !135

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i30, %bb.n
  %.sroa.08.0.lcssa.i.i25 = phi ptr [ %.sroa.0.017.i20, %bb.n ], [ %.sroa.0.0.i.i32, %.lr.ph.i.i30 ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i26 = trunc i32 %i.as to i8
  store i32 %.sroa.03.0.copyload.i.i22, ptr %.sroa.08.0.lcssa.i.i25, align 4, !tbaa !50
  %.sroa.4.0..sroa_idx5.i.i27 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i25, i64 4
  store float %i.ai, ptr %.sroa.4.0..sroa_idx5.i.i27, align 4, !tbaa !58
  %.sroa.5.0..sroa_idx7.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i25, i64 8
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i26, ptr %.sroa.5.0..sroa_idx7.i.i28, align 4, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i20, i64 12 ; 2 uses
  %i.az = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %i.az, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.i, !llvm.loop !136

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9, %.preheader.i17, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr52 = freeze i64 %i.c                        ; 4 uses
  %i.d = icmp slt i64 %.fr52, 24
  br i1 %i.d, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %.fr52, 12                ; 3 uses
  %i.f = add nsw i64 %i.e, -2
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = add nsw i64 %i.e, -1                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i, %bb.b
  %.012.i = phi i64 [ %i.g, %bb.b ], [ %i.am, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i ] ; 8 uses
  %i.n = getelementptr inbounds [12 x i8], ptr %0, i64 %.012.i ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.n, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !60
  %i.o = icmp slt i64 %.012.i, %i.i
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.043.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.012.i, %bb.c ] ; 2 uses
  %i.p = shl i64 %.043.i.i, 1                     ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %0, i64 %i.q
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds [12 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !65
  %i.y = fcmp olt float %i.v, %i.x
  %spec.select.i.i = select i1 %i.y, i64 %i.s, i64 %i.q ; 4 uses
  %i.z = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i
  %i.aa = getelementptr inbounds [12 x i8], ptr %0, i64 %.043.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.aa, ptr noundef nonnull align 4 dereferenceable(9) %i.z, i64 9, i1 false), !tbaa.struct !61
  %i.ab = icmp slt i64 %spec.select.i.i, %i.i
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ %.012.i, %bb.c ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ac = icmp eq i64 %.0.lcssa.i.i, %i.g
  %or.cond.i = select i1 %i.k, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.m, ptr noundef nonnull align 4 dereferenceable(9) %i.l, i64 9, i1 false), !tbaa.struct !61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.h, %bb.d ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp sgt i64 %.1.i.i, %.012.i
  br i1 %i.ad, label %.lr.ph.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %.sroa.013.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.05.0.copyload.i, 32
  %.sroa.013.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.013.sroa.2.0.extract.shift.i.i.i to i32
  %i.ae = bitcast i32 %.sroa.013.sroa.2.0.extract.trunc.i.i.i to float
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.022.i.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i.i ], [ %.01023.i.i.i, %bb.g ] ; 3 uses
  %.01023.in.i.i.i = add nsw i64 %.022.i.i.i, -1
  %.01023.i.i.i = sdiv i64 %.01023.in.i.i.i, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01023.i.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !65
  %i.ai = fcmp olt float %i.ah, %i.ae
  br i1 %i.ai, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.022.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.aj, ptr noundef nonnull align 4 dereferenceable(9) %i.af, i64 9, i1 false), !tbaa.struct !61
  %i.ak = icmp sgt i64 %.01023.i.i.i, %.012.i
  br i1 %i.ak, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i, !llvm.loop !0

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.022.i.i.i, %bb.f ], [ %.01023.i.i.i, %bb.g ]
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i64 %.sroa.05.0.copyload.i, ptr %i.al, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i, align 4, !tbaa !60
  %.not.i = icmp eq i64 %.012.i, 0
  %i.am = add nsw i64 %.012.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_.exit, label %bb.c, !llvm.loop !7

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i, %bb.a
  %.not30 = icmp ult ptr %1, %2
  br i1 %.not30, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.ao = sdiv i64 %.fr52, 12                     ; 4 uses
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = sdiv i64 %i.ap, 2
  %i.ar = icmp sgt i64 %.fr52, 24
  %i.as = and i64 %i.ao, 1
  %i.at = icmp eq i64 %i.as, 0                    ; 2 uses
  %i.au = add nsw i64 %i.ao, -2                   ; 2 uses
  %i.av = ashr exact i64 %i.au, 1                 ; 2 uses
  br i1 %i.ar, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %3 = add nsw i64 %i.ao, -1                      ; 2 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %3
  %i.ax = getelementptr inbounds [12 x i8], ptr %0, i64 %i.av
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.k
  %.sroa.0.031.us = phi ptr [ %i.bw, %bb.k ], [ %1, %.lr.ph.split.us.preheader ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !65
  %i.ba = load float, ptr %i.an, align 4, !tbaa !65
  %i.bb = fcmp olt float %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i25.preheader.us, label %bb.k

.lr.ph.i.i25.preheader.us:                        ; preds = %.lr.ph.split.us
  %.sroa.05.0.copyload.i11.us = load i64, ptr %.sroa.0.031.us, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.us = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us, i64 8
  %.sroa.4.0.copyload.i13.us = load i8, ptr %.sroa.4.0..sroa_idx.i12.us, align 4, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.031.us, ptr noundef nonnull align 4 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !61
  br label %.lr.ph.i.i25.us

.lr.ph.i.i25.us:                                  ; preds = %.lr.ph.i.i25.preheader.us, %.lr.ph.i.i25.us
  %.043.i.i26.us = phi i64 [ %spec.select.i.i27.us, %.lr.ph.i.i25.us ], [ 0, %.lr.ph.i.i25.preheader.us ] ; 2 uses
  %i.bc = shl i64 %.043.i.i26.us, 1               ; 2 uses
  %i.bd = add i64 %i.bc, 2                        ; 2 uses
  %i.be = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bd
  %i.bf = or disjoint i64 %i.bc, 1                ; 2 uses
  %i.bg = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !65
  %i.bl = fcmp olt float %i.bi, %i.bk
  %spec.select.i.i27.us = select i1 %i.bl, i64 %i.bf, i64 %i.bd ; 6 uses
  %i.bm = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i27.us
  %i.bn = getelementptr inbounds [12 x i8], ptr %0, i64 %.043.i.i26.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bn, ptr noundef nonnull align 4 dereferenceable(9) %i.bm, i64 9, i1 false), !tbaa.struct !61
  %i.bo = icmp slt i64 %spec.select.i.i27.us, %i.aq
  br i1 %i.bo, label %.lr.ph.i.i25.us, label %._crit_edge.i.i14.loopexit.us, !llvm.loop !1

bb.h:                                             ; preds = %._crit_edge.i.i14.loopexit.us
  %.not.i16.us = icmp eq i64 %spec.select.i.i27.us, 0
  br i1 %.not.i16.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.us, label %.lr.ph.i.i.i17.us

.thread.i.us:                                     ; preds = %._crit_edge.i.i14.loopexit.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ax, ptr noundef nonnull align 4 dereferenceable(9) %i.aw, i64 9, i1 false), !tbaa.struct !61
  br label %.lr.ph.i.i.i17.us

.lr.ph.i.i.i17.us:                                ; preds = %.thread.i.us, %bb.h
  %.1.i11.i.us = phi i64 [ %3, %.thread.i.us ], [ %spec.select.i.i27.us, %bb.h ]
  %.sroa.013.sroa.2.0.extract.shift.i.i.i18.us = lshr i64 %.sroa.05.0.copyload.i11.us, 32
  %.sroa.013.sroa.2.0.extract.trunc.i.i.i19.us = trunc nuw i64 %.sroa.013.sroa.2.0.extract.shift.i.i.i18.us to i32
  %i.bp = bitcast i32 %.sroa.013.sroa.2.0.extract.trunc.i.i.i19.us to float
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i17.us
  %.022.i.i.i20.us = phi i64 [ %.1.i11.i.us, %.lr.ph.i.i.i17.us ], [ %.01023.i.i1213.i.us, %bb.j ] ; 3 uses
  %.01023.in.i.i.i21.us = add nsw i64 %.022.i.i.i20.us, -1
  %.01023.i.i1213.i.us = lshr i64 %.01023.in.i.i.i21.us, 1 ; 3 uses
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01023.i.i1213.i.us ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !65
  %i.bt = fcmp olt float %i.bs, %i.bp
  br i1 %i.bt, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.us

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds [12 x i8], ptr %0, i64 %.022.i.i.i20.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bu, ptr noundef nonnull align 4 dereferenceable(9) %i.bq, i64 9, i1 false), !tbaa.struct !61
  %.not14.i.us = icmp eq i64 %.01023.i.i1213.i.us, 0
  br i1 %.not14.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.us, label %bb.i, !llvm.loop !0

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.us: ; preds = %bb.i, %bb.j, %bb.h
  %.0.lcssa.i.i.i23.us = phi i64 [ 0, %bb.h ], [ %.022.i.i.i20.us, %bb.i ], [ 0, %bb.j ]
  %i.bv = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i23.us ; 2 uses
  store i64 %.sroa.05.0.copyload.i11.us, ptr %i.bv, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i24.us = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 %.sroa.4.0.copyload.i13.us, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i24.us, align 4, !tbaa !60
  br label %bb.k

bb.k:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.us, %.lr.ph.split.us
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us, i64 12 ; 2 uses
  %.not.us = icmp ult ptr %i.bw, %2
  br i1 %.not.us, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !138

._crit_edge.i.i14.loopexit.us:                    ; preds = %.lr.ph.i.i25.us
  %i.bx = icmp eq i64 %spec.select.i.i27.us, %i.av
  %or.cond = select i1 %i.at, i1 %i.bx, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.h

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  br i1 %i.at, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bz = icmp eq i64 %i.au, 0
  br i1 %i.bz, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.l
  %.sroa.0.031.us32.us = phi ptr [ %i.ci, %bb.l ], [ %1, %.lr.ph.split.split.us ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us32.us, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !65
  %i.cc = load float, ptr %i.an, align 4, !tbaa !65
  %i.cd = fcmp olt float %i.cb, %i.cc
  br i1 %i.cd, label %._crit_edge.i.i14.us33.us, label %bb.l

._crit_edge.i.i14.us33.us:                        ; preds = %.lr.ph.split.split.us.split.us
  %.sroa.05.0.copyload.i11.us34.us = load i64, ptr %.sroa.0.031.us32.us, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.us35.us = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us32.us, i64 8
  %.sroa.4.0.copyload.i13.us36.us = load i8, ptr %.sroa.4.0..sroa_idx.i12.us35.us, align 4, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.031.us32.us, ptr noundef nonnull align 4 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.by, i64 9, i1 false), !tbaa.struct !61
  %.sroa.013.sroa.2.0.extract.shift.i.i.i18.us38.us = lshr i64 %.sroa.05.0.copyload.i11.us34.us, 32
  %.sroa.013.sroa.2.0.extract.trunc.i.i.i19.us39.us = trunc nuw i64 %.sroa.013.sroa.2.0.extract.shift.i.i.i18.us38.us to i32
  %i.ce = bitcast i32 %.sroa.013.sroa.2.0.extract.trunc.i.i.i19.us39.us to float
  %i.cf = load float, ptr %i.an, align 4, !tbaa !65
  %i.cg = fcmp uge float %i.cf, %i.ce
  %spec.select = zext i1 %i.cg to i64
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %spec.select ; 2 uses
  store i64 %.sroa.05.0.copyload.i11.us34.us, ptr %i.ch, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i24.us48.us = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %.sroa.4.0.copyload.i13.us36.us, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i24.us48.us, align 4, !tbaa !60
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i14.us33.us, %.lr.ph.split.split.us.split.us
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us32.us, i64 12 ; 2 uses
  %.not.us49.us = icmp ult ptr %i.ci, %2
  br i1 %.not.us49.us, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !138

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i24.us48 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre57 = load float, ptr %i.an, align 4, !tbaa !65
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.split.split.us.split
  %i.cj = phi float [ %.pre57, %.lr.ph.split.split.us.split ], [ %i.cq, %bb.n ] ; 2 uses
  %.sroa.0.031.us32 = phi ptr [ %1, %.lr.ph.split.split.us.split ], [ %i.cr, %bb.n ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us32, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !65
  %i.cm = fcmp olt float %i.cl, %i.cj
  br i1 %i.cm, label %._crit_edge.i.i14.us33, label %bb.n

._crit_edge.i.i14.us33:                           ; preds = %bb.m
  %.sroa.05.0.copyload.i11.us34 = load i64, ptr %.sroa.0.031.us32, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.us35 = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us32, i64 8
  %.sroa.4.0.copyload.i13.us36 = load i8, ptr %.sroa.4.0..sroa_idx.i12.us35, align 4, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.031.us32, ptr noundef nonnull align 4 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !61
  store i64 %.sroa.05.0.copyload.i11.us34, ptr %0, align 4
  store i8 %.sroa.4.0.copyload.i13.us36, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i24.us48, align 4, !tbaa !60
  %i.cn = lshr i64 %.sroa.05.0.copyload.i11.us34, 32
  %i.co = trunc nuw i64 %i.cn to i32
  %i.cp = bitcast i32 %i.co to float
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i14.us33, %bb.m
  %i.cq = phi float [ %i.cp, %._crit_edge.i.i14.us33 ], [ %i.cj, %bb.m ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us32, i64 12 ; 2 uses
  %.not.us49 = icmp ult ptr %i.cr, %2
  br i1 %.not.us49, label %bb.m, label %._crit_edge, !llvm.loop !138

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load float, ptr %i.an, align 4, !tbaa !65
  br label %bb.o

._crit_edge:                                      ; preds = %bb.p, %bb.n, %bb.l, %bb.k, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_.exit
  ret void

bb.o:                                             ; preds = %.lr.ph.split.split, %bb.p
  %i.cs = phi float [ %.pre, %.lr.ph.split.split ], [ %i.cz, %bb.p ] ; 2 uses
  %.sroa.0.031 = phi ptr [ %1, %.lr.ph.split.split ], [ %i.da, %bb.p ] ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !65
  %i.cv = fcmp olt float %i.cu, %i.cs
  br i1 %i.cv, label %._crit_edge.i.i14, label %bb.p

._crit_edge.i.i14:                                ; preds = %bb.o
  %.sroa.05.0.copyload.i11 = load i64, ptr %.sroa.0.031, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 8
  %.sroa.4.0.copyload.i13 = load i8, ptr %.sroa.4.0..sroa_idx.i12, align 4, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.031, ptr noundef nonnull align 4 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !61
  store i64 %.sroa.05.0.copyload.i11, ptr %0, align 4
  store i8 %.sroa.4.0.copyload.i13, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i24, align 4, !tbaa !60
  %i.cw = lshr i64 %.sroa.05.0.copyload.i11, 32
  %i.cx = trunc nuw i64 %i.cw to i32
  %i.cy = bitcast i32 %i.cx to float
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i14
  %i.cz = phi float [ %i.cs, %bb.o ], [ %i.cy, %._crit_edge.i.i14 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 12 ; 2 uses
  %.not = icmp ult ptr %i.da, %2
  br i1 %.not, label %bb.o, label %._crit_edge, !llvm.loop !138
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 12 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 12 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.k, %i.m                       ; 9 uses
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.q = sub nsw i64 0, %i.e
  %i.r = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.q ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = icmp sgt i64 %i.d, 4                     ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f, !prof !55

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr nonnull align 4 %i.r, i64 %i.d, i1 false)
  %.pre71 = load ptr, ptr %i.h, align 8, !tbaa !38
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.d, 4
  br i1 %i.u, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.r, align 4, !tbaa !50
  store i32 %i.v, ptr %i.i, align 4, !tbaa !50
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.w = phi ptr [ %.pre71, %bb.e ], [ %i.i, %bb.f ], [ %i.i, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.d
  store ptr %i.x, ptr %i.h, align 8, !tbaa !38
  %i.y = sub i64 %i.s, %i.m                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
end_hunk_3
begin_hunk_4_@_ZN5faiss9NNDescent10init_graphERNS_16DistanceComputerE:bb.a
  %i.by = load ptr, ptr %i.be, align 8, !tbaa !39
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cb) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.k, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !39
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i:                 ; preds = %bb.l, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.ch = load ptr, ptr %i.bh, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i5.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i
  %i.ci = load ptr, ptr %i.bi, align 8, !tbaa !39
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cl) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i

_ZNSt6vectorIiSaIiEED2Ev.exit6.i:                 ; preds = %bb.m, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i
  %i.cm = load ptr, ptr %i.bj, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i7.i, label %_ZN5faiss9nndescent5NhoodD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6.i
  %i.cn = load ptr, ptr %i.bk, align 8, !tbaa !41
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cq) #25
  br label %_ZN5faiss9nndescent5NhoodD2Ev.exit

_ZN5faiss9nndescent5NhoodD2Ev.exit:               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.cr = add nuw nsw i32 %.05, 1                 ; 2 uses
  %i.cs = load i32, ptr %i.b, align 4, !tbaa !87  ; 2 uses
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.g, label %._crit_edge, !llvm.loop !142

bb.o:                                             ; preds = %bb.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5faiss9nndescent5NhoodD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.cu
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss9NNDescent10init_graphERNS_16DistanceComputerE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::mersenne_twister_engine", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !79
  %i.g = tail call i32 @omp_get_thread_num()
  %i.h = mul nsw i32 %i.f, 7741
  %i.i = add nsw i32 %i.h, %i.g
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  store i64 %i.j, ptr %4, align 8, !tbaa !71
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %i.j, %bb.a ], [ %i.w, %bb.c ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.a ], [ %i.x, %bb.c ] ; 4 uses
  %i.k = getelementptr [8 x i8], ptr %4, i64 %.011.i.i
  %i.l = lshr i64 %store_forwarded, 30
  %i.m = xor i64 %i.l, %store_forwarded
  %i.n = mul nuw nsw i64 %i.m, 1812433253
  %i.o = add nuw i64 %i.n, %.011.i.i              ; 2 uses
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  store i64 %i.p, ptr %i.k, align 8, !tbaa !71
  %i.q = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.q, 624
  br i1 %exitcond.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr [8 x i8], ptr %4, i64 %i.q
  %i.s = lshr i64 %i.p, 30
  %i.t = xor i64 %i.s, %i.o
  %i.u = mul i64 %i.t, 1812433253
  %i.v = add i64 %i.u, %i.q
  %i.w = and i64 %i.v, 4294967295                 ; 2 uses
  store i64 %i.w, ptr %i.r, align 8, !tbaa !71
  %i.x = add nuw nsw i64 %.011.i.i, 2
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 4992
  store i64 624, ptr %i.y, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !87  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %.pre60 = load i32, ptr %0, align 4, !tbaa !50  ; 3 uses
  br i1 %i.ab, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.ac = add nsw i32 %i.aa, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !50
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %.pre60, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !50
  %i.ae = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ac) ; 2 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !50
  %i.af = load i32, ptr %i.a, align 4, !tbaa !50  ; 2 uses
  %.not51 = icmp sgt i32 %i.af, %i.ae
  br i1 %.not51, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = sext i32 %i.af to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph54, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %indvars.iv57 = phi i64 [ %i.aj, %.lr.ph54 ], [ %indvars.iv.next58, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 7 uses
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !90 ; 3 uses
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = icmp slt i32 %i.ak, 0
  br i1 %i.am, label %.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #27
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc30:                                         ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.al ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !50
  %i.aq = add nsw i64 %i.al, -1                   ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc30
  %i.as = getelementptr i8, ptr %i.ao, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !50
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc30, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.ap, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ap, %.noexc30 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.044.0 = phi ptr [ %i.ao, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ao, %.noexc30 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %i.at = load i32, ptr %i.ag, align 4, !tbaa !90
  %i.au = load i32, ptr %i.z, align 4, !tbaa !87
  invoke void @_ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii(ptr noundef nonnull align 8 dereferenceable(5000) %4, ptr noundef %.sroa.044.0, i32 noundef %i.at, i32 noundef %i.au)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.av = load i32, ptr %i.ag, align 4, !tbaa !90
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ax = trunc nsw i64 %indvars.iv57 to i32
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit, %.preheader
  %i.ay = load ptr, ptr %i.ah, align 8, !tbaa !83 ; 2 uses
  %i.az = getelementptr inbounds nuw [168 x i8], ptr %i.ay, i64 %indvars.iv57 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !62 ; 11 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !62
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = icmp slt i64 %i.bg, 24
  br i1 %i.bh, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bi = udiv exact i64 %i.bg, 12                ; 3 uses
  %i.bj = add nsw i64 %i.bi, -2
  %i.bk = lshr i64 %i.bj, 1                       ; 3 uses
  %i.bl = add nsw i64 %i.bi, -1                   ; 3 uses
  %i.bm = lshr i64 %i.bl, 1                       ; 2 uses
  %i.bn = and i64 %i.bi, 1
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bl
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bk
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %bb.h
  %.012.i.i = phi i64 [ %i.bk, %bb.h ], [ %i.cq, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.br = getelementptr inbounds [12 x i8], ptr %i.bb, i64 %.012.i.i ; 2 uses
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.br, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !60
  %i.bs = icmp slt i64 %.012.i.i, %i.bm
  br i1 %i.bs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.043.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.i ] ; 2 uses
  %i.bt = shl i64 %.043.i.i.i, 1                  ; 2 uses
  %i.bu = add i64 %i.bt, 2                        ; 2 uses
  %i.bv = getelementptr inbounds [12 x i8], ptr %i.bb, i64 %i.bu
  %i.bw = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bx = getelementptr inbounds [12 x i8], ptr %i.bb, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !65
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !65
  %i.cc = fcmp olt float %i.bz, %i.cb
  %spec.select.i.i.i = select i1 %i.cc, i64 %i.bw, i64 %i.bu ; 4 uses
  %i.cd = getelementptr inbounds [12 x i8], ptr %i.bb, i64 %spec.select.i.i.i
  %i.ce = getelementptr inbounds [12 x i8], ptr %i.bb, i64 %.043.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ce, ptr noundef nonnull align 4 dereferenceable(9) %i.cd, i64 9, i1 false), !tbaa.struct !61
  %i.cf = icmp slt i64 %spec.select.i.i.i, %i.bm
  br i1 %i.cf, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !1

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.i
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.i ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cg = icmp eq i64 %.0.lcssa.i.i.i, %i.bk
  %or.cond.i.i = select i1 %i.bo, i1 %i.cg, i1 false
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bq, ptr noundef nonnull align 4 dereferenceable(9) %i.bp, i64 9, i1 false), !tbaa.struct !61
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.bl, %bb.j ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ch = icmp sgt i64 %.1.i.i.i, %.012.i.i
  br i1 %i.ch, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k
  %.sroa.013.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.05.0.copyload.i.i, 32
  %.sroa.013.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.013.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.ci = bitcast i32 %.sroa.013.sroa.2.0.extract.trunc.i.i.i.i to float
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i
  %.022.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i ], [ %.01023.i.i.i.i, %bb.m ] ; 3 uses
  %.01023.in.i.i.i.i = add nsw i64 %.022.i.i.i.i, -1
  %.01023.i.i.i.i = sdiv i64 %.01023.in.i.i.i.i, 2 ; 4 uses
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %.01023.i.i.i.i ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !65
  %i.cm = fcmp olt float %i.cl, %i.ci
  br i1 %i.cm, label %bb.m, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %.022.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cn, ptr noundef nonnull align 4 dereferenceable(9) %i.cj, i64 9, i1 false), !tbaa.struct !61
  %i.co = icmp sgt i64 %.01023.i.i.i.i, %.012.i.i
  br i1 %i.co, label %bb.l, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !0

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.k ], [ %.01023.i.i.i.i, %bb.m ], [ %.022.i.i.i.i, %bb.l ]
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %.0.lcssa.i.i.i.i ; 2 uses
  store i64 %.sroa.05.0.copyload.i.i, ptr %i.cp, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i, align 4, !tbaa !60
  %.not.i.i = icmp eq i64 %.012.i.i, 0
  %i.cq = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.loopexit, label %bb.i, !llvm.loop !7

bb.n:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.044.0, i64 %indvars.iv
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !50 ; 4 uses
  %i.ct = icmp eq i32 %i.cs, %i.ax
  br i1 %i.ct, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = sext i32 %i.cs to i64
  %i.cv = load ptr, ptr %3, align 8, !tbaa !68
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef float %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %indvars.iv57, i64 noundef %i.cu)
          to label %bb.p unwind label %.loopexit  ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cz = load ptr, ptr %i.ah, align 8, !tbaa !83
  %i.da = getelementptr inbounds nuw [168 x i8], ptr %i.cz, i64 %indvars.iv57 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 48 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !56 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 56 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !41
  %.not.i.i31 = icmp eq ptr %i.dd, %i.df
  br i1 %.not.i.i31, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.cs, ptr %i.dd, align 4, !tbaa !50
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store float %i.cy, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !58
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !60
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store ptr %i.dg, ptr %i.dc, align 8, !tbaa !56
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit

bb.r:                                             ; preds = %bb.p
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !40 ; 4 uses
  %i.di = ptrtoint ptr %i.dd to i64
  %i.dj = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 5 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775800
  br i1 %i.dl, label %.invoke, label %_ZNKSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.dm = sdiv exact i64 %i.dk, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 768614336404564650)
  %i.dq = select i1 %i.do, i64 768614336404564650, i64 %i.dp ; 3 uses
  %.not.i.i.i.i32 = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.dr = mul nuw nsw i64 %i.dq, 12
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #27
          to label %.noexc34 unwind label %.loopexit ; 4 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 %i.dk ; 4 uses
  store i32 %i.cs, ptr %i.dt, align 4, !tbaa !50
  %.sroa.5.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store float %i.cy, ptr %.sroa.5.0..sroa_idx38, align 4, !tbaa !58
  %.sroa.6.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i8 1, ptr %.sroa.6.0..sroa_idx40, align 4, !tbaa !60
  %i.du = icmp sgt i64 %i.dk, 0
  br i1 %i.du, label %bb.s, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.s:                                             ; preds = %.noexc34
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ds, ptr align 4 %i.dh, i64 %i.dk, i1 false)
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.s, %.noexc34
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %.not.i17.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.dw = load ptr, ptr %i.de, align 8, !tbaa !41
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dy) #25
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ds, ptr %i.db, align 8, !tbaa !40
  store ptr %i.dv, ptr %i.dc, align 8, !tbaa !56
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %i.dq
  store ptr %i.dz, ptr %i.de, align 8, !tbaa !41
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.q, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ea = load i32, ptr %i.ag, align 4, !tbaa !90
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next, %i.eb
  br i1 %i.ec, label %bb.n, label %._crit_edge, !llvm.loop !143

_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.loopexit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i
  %.pre = load ptr, ptr %i.ah, align 8, !tbaa !83
  br label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.loopexit, %._crit_edge
  %i.ed = phi ptr [ %.pre, %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.loopexit ], [ %i.ay, %._crit_edge ]
  %i.ee = getelementptr inbounds nuw [168 x i8], ptr %i.ed, i64 %indvars.iv57 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40 ; 3 uses
  %i.eg = load i32, ptr %i.ai, align 8, !tbaa !82 ; 2 uses
  %i.eh = sext i32 %i.eg to i64                   ; 3 uses
  %i.ei = icmp slt i32 %i.eg, 0
  br i1 %i.ei, label %.invoke, label %bb.u

.invoke:                                          ; preds = %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.f, %bb.r
  %i.ej = phi ptr [ @.str.1, %bb.r ], [ @.str.13, %bb.f ], [ @.str.10, %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ej) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 56 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !41
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !40
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 12
  %i.er = icmp ult i64 %i.eq, %i.eh
  br i1 %i.er, label %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.u
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 48 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !56
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = sub i64 %i.eu, %i.eo
  %i.ew = mul nuw nsw i64 %i.eh, 12
  %i.ex = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #27
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc36:                                         ; preds = %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i
  %i.ey = load ptr, ptr %i.ef, align 8, !tbaa !40 ; 4 uses
  %i.ez = load ptr, ptr %i.es, align 8, !tbaa !56
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ey to i64               ; 2 uses
  %i.fc = sub i64 %i.fa, %i.fb                    ; 2 uses
  %i.fd = icmp sgt i64 %i.fc, 0
  br i1 %i.fd, label %bb.v, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.v:                                             ; preds = %.noexc36
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ex, ptr align 4 %i.ey, i64 %i.fc, i1 false)
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.v, %.noexc36
  %.not.i8.i = icmp eq ptr %i.ey, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.fe = load ptr, ptr %i.ek, align 8, !tbaa !41
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.ff, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fg) #25
  br label %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.w, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.ex, ptr %i.ef, align 8, !tbaa !40
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ev
end_hunk_4
