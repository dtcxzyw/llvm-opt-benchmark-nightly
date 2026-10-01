Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTNLPReducer?download=true
inline.NumInlined: 96
inline.NumDeleted: 44
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !34   ; 2 uses
  %i.j = load i32, ptr %0, align 4, !tbaa !34
  store i32 %i.j, ptr %i.h, align 4, !tbaa !34
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.s, align 4, !tbaa !34
  %i.w = load i32, ptr %i.u, align 4, !tbaa !34
  %i.x = icmp slt i32 %i.v, %i.w
  %i.y = or disjoint i64 %i.q, 1
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.r ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !34
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !34
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.l, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.m, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !34
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !34 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.i
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !34
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.i, ptr %i.ar, align 4, !tbaa !34
  %i.as = icmp sgt i64 %i.l, 4
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !67

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.at = phi i64 [ %i.bs, %bb.b ], [ %i.c, %.lr.ph ]
  %i.au = add nsw i64 %.0121944, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.02043, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !34  ; 5 uses
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !34 ; 5 uses
  %i.ba = icmp slt i32 %i.ay, %i.az
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !34 ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bc = icmp slt i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i32, ptr %0, align 4, !tbaa !34
  store i32 %i.az, ptr %0, align 4, !tbaa !34
  store i32 %i.bd, ptr %i.aw, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp slt i32 %i.ay, %i.bb
  %i.bf = load i32, ptr %0, align 4, !tbaa !34    ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.bb, ptr %0, align 4, !tbaa !34
  store i32 %i.bf, ptr %i.ax, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.ay, ptr %0, align 4, !tbaa !34
  store i32 %i.bf, ptr %i.e, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bg = icmp slt i32 %i.ay, %i.bb
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %0, align 4, !tbaa !34
  store i32 %i.ay, ptr %0, align 4, !tbaa !34
  store i32 %i.bh, ptr %i.e, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp slt i32 %i.az, %i.bb
  %i.bj = load i32, ptr %0, align 4, !tbaa !34    ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.bb, ptr %0, align 4, !tbaa !34
  store i32 %i.bj, ptr %i.ax, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.az, ptr %0, align 4, !tbaa !34
  store i32 %i.bj, ptr %i.aw, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bk = load i32, ptr %0, align 4, !tbaa !34    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load i32, ptr %.1.i.i, align 4, !tbaa !34 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !68

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.bo = load i32, ptr %.114.i.i, align 4, !tbaa !34 ; 2 uses
  %i.bp = icmp slt i32 %i.bk, %i.bo
  br i1 %i.bp, label %.preheader.i.i, label %bb.q, !llvm.loop !69

bb.q:                                             ; preds = %.preheader.i.i
  %i.bq = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bq, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bo, ptr %.1.i.i, align 4, !tbaa !34
  store i32 %i.bl, ptr %.114.i.i, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !70

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.au)
  %i.br = ptrtoint ptr %.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a                     ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 64
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !66

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

bb.c:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.a, %bb.b
  %.019.i.idx = phi i64 [ 4, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.a ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.a ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %2 = load i32, ptr %.019.i.ptr, align 4, !tbaa !34 ; 4 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  %i.f = icmp slt i32 %2, %i.e
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = icmp samesign ugt i64 %.019.i.idx, 4
  br i1 %i.g, label %bb.e, label %bb.f, !prof !74

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.a

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  store i32 %i.e, ptr %i.h, align 4, !tbaa !34
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.a

bb.g:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.pn18.i, align 4, !tbaa !34 ; 2 uses
  %i.j = icmp slt i32 %2, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.a

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.k = phi i32 [ %i.l, %.lr.ph.i.i ], [ %i.i, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i32 %i.k, ptr %.0912.i.i, align 4, !tbaa !34
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 2 uses
  %i.l = load i32, ptr %.0.i.i, align 4, !tbaa !34 ; 2 uses
  %i.m = icmp slt i32 %2, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.a, !llvm.loop !71

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.a:   ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i32 %2, ptr %.sink.i, align 4, !tbaa !34
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !72

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not5.i = icmp eq ptr %i.n, %1
  br i1 %.not5.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.a
  %.06.i = phi ptr [ %i.u, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.a ], [ %i.n, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit ] ; 5 uses
  %i.o = load i32, ptr %.06.i, align 4, !tbaa !34 ; 3 uses
  %.011.i.i = getelementptr inbounds i8, ptr %.06.i, i64 -4 ; 2 uses
  %i.p = load i32, ptr %.011.i.i, align 4, !tbaa !34 ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.a

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i, %.lr.ph.i.i9
  %i.r = phi i32 [ %i.s, %.lr.ph.i.i9 ], [ %i.p, %.lr.ph.i ]
  %.013.i.i10 = phi ptr [ %.0.i.i12, %.lr.ph.i.i9 ], [ %.011.i.i, %.lr.ph.i ] ; 3 uses
  %.0912.i.i11 = phi ptr [ %.013.i.i10, %.lr.ph.i.i9 ], [ %.06.i, %.lr.ph.i ]
  store i32 %i.r, ptr %.0912.i.i11, align 4, !tbaa !34
  %.0.i.i12 = getelementptr inbounds i8, ptr %.013.i.i10, i64 -4 ; 2 uses
  %i.s = load i32, ptr %.0.i.i12, align 4, !tbaa !34 ; 2 uses
  %i.t = icmp slt i32 %i.o, %i.s
  br i1 %i.t, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.a, !llvm.loop !71

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.a: ; preds = %.lr.ph.i.i9, %.lr.ph.i
  %.09.lcssa.i.i.a = phi ptr [ %.06.i, %.lr.ph.i ], [ %.013.i.i10, %.lr.ph.i.i9 ]
  store i32 %i.o, ptr %.09.lcssa.i.i.a, align 4, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i8 = icmp eq ptr %i.u, %1
  br i1 %.not.i8, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !73

bb.h:                                             ; preds = %bb.a
  %3 = icmp eq ptr %0, %1
  %.016.i13 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i13, %1
  %or.cond = select i1 %3, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.h, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17
  %.019.i15 = phi ptr [ %.0.i19, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17 ], [ %.016.i13, %bb.h ] ; 6 uses
  %.pn18.i16 = phi ptr [ %.019.i15, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17 ], [ %0, %bb.h ] ; 4 uses
  %4 = load i32, ptr %.019.i15, align 4, !tbaa !34 ; 4 uses
  %i.v = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  %i.w = icmp slt i32 %4, %i.v
  br i1 %i.w, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i14
  %i.x = ptrtoint ptr %.019.i15 to i64
  %i.y = sub i64 %i.x, %i.b                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !74

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i16, i64 8
  %i.ac = sub nsw i64 0, %i.z
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ad, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %i.y, 4
  br i1 %i.ae, label %bb.l, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.pn18.i16, i64 4
  store i32 %i.v, ptr %i.af, align 4, !tbaa !34
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17

bb.m:                                             ; preds = %.lr.ph.i14
  %i.ag = load i32, ptr %.pn18.i16, align 4, !tbaa !34 ; 2 uses
  %i.ah = icmp slt i32 %4, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17

.lr.ph.i.i21:                                     ; preds = %bb.m, %.lr.ph.i.i21
  %i.ai = phi i32 [ %i.aj, %.lr.ph.i.i21 ], [ %i.ag, %bb.m ]
  %.013.i.i22 = phi ptr [ %.0.i.i24, %.lr.ph.i.i21 ], [ %.pn18.i16, %bb.m ] ; 3 uses
  %.0912.i.i23 = phi ptr [ %.013.i.i22, %.lr.ph.i.i21 ], [ %.019.i15, %bb.m ]
  store i32 %i.ai, ptr %.0912.i.i23, align 4, !tbaa !34
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.0.i.i24, align 4, !tbaa !34 ; 2 uses
  %i.ak = icmp slt i32 %4, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !71

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store i32 %4, ptr %.sink.i18, align 4, !tbaa !34
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.019.i15, i64 4 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !72

_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.a, %bb.h, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
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
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !34   ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.u, align 4, !tbaa !34
  %i.y = load i32, ptr %i.w, align 4, !tbaa !34
  %i.z = icmp slt i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !34
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !34
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !1

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !34 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !34
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !2

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i32 %i.q, ptr %i.al, align 4, !tbaa !34
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !75

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !34 ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.as, align 4, !tbaa !34
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !34
  %i.ax = icmp slt i32 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !34
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !34
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i32, ptr %i.n, align 4, !tbaa !34
  store i32 %i.be, ptr %i.o, align 4, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.013
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !34 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !34
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !2

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.ao, ptr %i.bl, align 4, !tbaa !34
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !75

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null, null}
!1 = distinct !{!1, !36}
!2 = distinct !{!2, !36}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"_ZTSN5Ipopt16ReferencedObjectE", !8, i64 8}
!12 = !{!11, !8, i64 8}
!13 = !{!"vtable pointer", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"p1 _ZTSN5Ipopt4TNLPE", !15, i64 0}
!17 = !{!"_ZTSN5Ipopt8SmartPtrINS_4TNLPEEE", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"_ZTSN5Ipopt4TNLPE", !11, i64 0}
!20 = !{!"p1 int", !15, i64 0}
!21 = !{!"_ZTSN5Ipopt4TNLP14IndexStyleEnumE", !7, i64 0}
!22 = !{!"_ZTSN5Ipopt11TNLPReducerE", !19, i64 0, !17, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !20, i64 40, !21, i64 48, !20, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !20, i64 80, !8, i64 88, !20, i64 96, !8, i64 104, !20, i64 112, !8, i64 120, !20, i64 128}
end_hunk_0
