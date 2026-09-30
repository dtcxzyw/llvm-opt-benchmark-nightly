Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7049
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZSt13__introselectIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_:bb.a
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph65, !llvm.loop !71981

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.01630.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..016, %.lr.ph ]
  %.01729.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.017., %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %.01729.lcssa, ptr noundef nonnull %i.g, ptr noundef %.01630.lcssa)
  %i.h = load double, ptr %.01729.lcssa, align 8, !tbaa !9286
  %i.i = load double, ptr %1, align 8, !tbaa !9286
  store double %i.i, ptr %.01729.lcssa, align 8, !tbaa !9286
  store double %i.h, ptr %1, align 8, !tbaa !9286
  br label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit

.lr.ph65:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0172964 = phi ptr [ %.017., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %.0163063 = phi ptr [ %..016, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.03162 = phi i64 [ %i.k, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.j = phi i64 [ %i.ak, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.k = add nsw i64 %.03162, -1                  ; 2 uses
  %i.l = lshr i64 %i.j, 4
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0172964, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0172964, i64 8 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0163063, i64 -8 ; 3 uses
  %i.p = load double, ptr %i.n, align 8, !tbaa !9286 ; 5 uses
  %i.q = load double, ptr %i.m, align 8, !tbaa !9286 ; 5 uses
  %i.r = fcmp olt double %i.p, %i.q
  %i.s = load double, ptr %i.o, align 8, !tbaa !9286 ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph65
  %i.t = fcmp olt double %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load double, ptr %.0172964, align 8, !tbaa !9286
  store double %i.q, ptr %.0172964, align 8, !tbaa !9286
  store double %i.u, ptr %i.m, align 8, !tbaa !9286
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.v = fcmp olt double %i.p, %i.s
  %i.w = load double, ptr %.0172964, align 8, !tbaa !9286 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.s, ptr %.0172964, align 8, !tbaa !9286
  store double %i.w, ptr %i.o, align 8, !tbaa !9286
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store double %i.p, ptr %.0172964, align 8, !tbaa !9286
  store double %i.w, ptr %i.n, align 8, !tbaa !9286
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph65
  %i.x = fcmp olt double %i.p, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load double, ptr %.0172964, align 8, !tbaa !9286
  store double %i.p, ptr %.0172964, align 8, !tbaa !9286
  store double %i.y, ptr %i.n, align 8, !tbaa !9286
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = fcmp olt double %i.q, %i.s
  %i.aa = load double, ptr %.0172964, align 8, !tbaa !9286 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.s, ptr %.0172964, align 8, !tbaa !9286
  store double %i.aa, ptr %i.o, align 8, !tbaa !9286
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store double %i.q, ptr %.0172964, align 8, !tbaa !9286
  store double %i.aa, ptr %i.m, align 8, !tbaa !9286
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0163063, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.n, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.ab = load double, ptr %.0172964, align 8, !tbaa !9286 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.ae, %bb.l ] ; 7 uses
  %i.ac = load double, ptr %.1.i.i, align 8, !tbaa !9286 ; 2 uses
  %i.ad = fcmp olt double %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !71982

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.af = load double, ptr %.114.i.i, align 8, !tbaa !9286 ; 2 uses
  %i.ag = fcmp olt double %i.ab, %i.af
  br i1 %i.ag, label %.preheader.i.i, label %bb.m, !llvm.loop !71983

bb.m:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.n:                                             ; preds = %bb.m
  store double %i.af, ptr %.1.i.i, align 8, !tbaa !9286
  store double %i.ac, ptr %.114.i.i, align 8, !tbaa !9286
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !71984

_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %.017. = select i1 %.not, ptr %.0172964, ptr %.1.i.i ; 4 uses
  %..016 = select i1 %.not, ptr %.1.i.i, ptr %.0163063 ; 4 uses
  %i.ai = ptrtoint ptr %..016 to i64
  %i.aj = ptrtoint ptr %.017. to i64              ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 24
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !71981

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %0, %bb.a ], [ %.017., %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 8 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %..016, %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 3 uses
  %.lcssa25 = phi i64 [ %i.b, %bb.a ], [ %i.aj, %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ]
  %i.am = icmp eq ptr %.017.lcssa, %.016.lcssa
  %.017.i = getelementptr inbounds nuw i8, ptr %.017.lcssa, i64 8 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i, %.016.lcssa
  %or.cond = select i1 %i.am, i1 true, i1 %.not18.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
  %.020.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ], [ %.017.i, %._crit_edge ] ; 6 uses
  %.pn19.i = phi ptr [ %.020.i, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ], [ %.017.lcssa, %._crit_edge ] ; 4 uses
  %i.an = load double, ptr %.020.i, align 8, !tbaa !9286 ; 4 uses
  %i.ao = load double, ptr %.017.lcssa, align 8, !tbaa !9286 ; 2 uses
  %i.ap = fcmp olt double %i.an, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.aq = ptrtoint ptr %.020.i to i64
  %i.ar = sub i64 %i.aq, %.lcssa25                ; 3 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.p, label %bb.q, !prof !21340

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  %i.av = sub nsw i64 0, %i.as
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %.017.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ax = icmp eq i64 %i.ar, 8
  br i1 %i.ax, label %bb.r, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store double %i.ao, ptr %i.ay, align 8, !tbaa !9286
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.az = load double, ptr %.pn19.i, align 8, !tbaa !9286 ; 2 uses
  %i.ba = fcmp olt double %i.an, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.bb = phi double [ %i.bc, %.lr.ph.i.i ], [ %i.az, %bb.s ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn19.i, %bb.s ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.020.i, %bb.s ]
  store double %i.bb, ptr %.0912.i.i, align 8, !tbaa !9286
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -8 ; 2 uses
  %i.bc = load double, ptr %.0.i.i22, align 8, !tbaa !9286 ; 2 uses
  %i.bd = fcmp olt double %i.an, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, !llvm.loop !71985

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.017.lcssa, %bb.r ], [ %.017.lcssa, %bb.p ], [ %.017.lcssa, %bb.q ], [ %.020.i, %bb.s ], [ %.013.i.i21, %.lr.ph.i.i ]
  store double %i.an, ptr %.sink.i, align 8, !tbaa !9286
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.016.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !71986

_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 3 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 3 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = or disjoint i64 %i.k, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load double, ptr %.011.us, align 8, !tbaa !9286 ; 3 uses
  %i.p = load double, ptr %0, align 8, !tbaa !9286 ; 2 uses
  %i.q = fcmp olt double %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store double %i.p, ptr %.011.us, align 8, !tbaa !9286
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.t, align 8, !tbaa !9286
  %i.x = load double, ptr %i.v, align 8, !tbaa !9286
  %i.y = fcmp olt double %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !9286
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  store double %i.ab, ptr %i.ac, align 8, !tbaa !9286
  %i.ad = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !861

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load double, ptr %i.m, align 8, !tbaa !9286
  store double %i.ae, ptr %i.n, align 8, !tbaa !9286
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i78.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i78.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i78.i.us
  %i.ag = load double, ptr %i.af, align 8, !tbaa !9286 ; 2 uses
  %i.ah = fcmp olt double %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  store double %i.ag, ptr %i.ai, align 8, !tbaa !9286
  %.not9.i.us = icmp eq i64 %.018.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !862

_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store double %i.o, ptr %i.aj, align 8, !tbaa !9286
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !71987

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load double, ptr %0, align 8, !tbaa !9286
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.k, 0
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre29 = load double, ptr %0, align 8, !tbaa !9286
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.av, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ap = load double, ptr %.011.us12.us, align 8, !tbaa !9286 ; 3 uses
  %i.aq = load double, ptr %0, align 8, !tbaa !9286 ; 2 uses
  %i.ar = fcmp olt double %i.ap, %i.aq
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store double %i.aq, ptr %.011.us12.us, align 8, !tbaa !9286
  %i.as = load double, ptr %i.an, align 8, !tbaa !9286 ; 2 uses
  store double %i.as, ptr %0, align 8, !tbaa !9286
  %i.at = fcmp uge double %i.as, %i.ap
  %spec.select = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store double %i.ap, ptr %i.au, align 8, !tbaa !9286
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %2
  br i1 %i.aw, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !71987

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.ax = phi double [ %i.ba, %bb.f ], [ %.pre29, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bb, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ay = load double, ptr %.011.us12, align 8, !tbaa !9286 ; 3 uses
  %i.az = fcmp olt double %i.ay, %i.ax
  br i1 %i.az, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store double %i.ax, ptr %.011.us12, align 8, !tbaa !9286
  store double %i.ay, ptr %0, align 8, !tbaa !9286
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.ba = phi double [ %i.ay, %._crit_edge.i.i.us13 ], [ %i.ax, %.lr.ph.split.split.us.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %2
  br i1 %i.bc, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !71987

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bd = phi double [ %i.bg, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bh, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.be = load double, ptr %.011, align 8, !tbaa !9286 ; 3 uses
  %i.bf = fcmp olt double %i.be, %i.bd
  br i1 %i.bf, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store double %i.bd, ptr %.011, align 8, !tbaa !9286
  store double %i.be, ptr %0, align 8, !tbaa !9286
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bg = phi double [ %i.bd, %.lr.ph.split.split ], [ %i.be, %._crit_edge.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %2
  br i1 %i.bi, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !71987
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.us
  %i.p = load double, ptr %i.o, align 8, !tbaa !9286 ; 2 uses
  %i.q = icmp slt i64 %.013.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.t, align 8, !tbaa !9286
  %i.x = load double, ptr %i.v, align 8, !tbaa !9286
  %i.y = fcmp olt double %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !9286
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  store double %i.ab, ptr %i.ac, align 8, !tbaa !9286
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !861

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ag = load double, ptr %i.af, align 8, !tbaa !9286 ; 2 uses
  %i.ah = fcmp olt double %i.ag, %i.p
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store double %i.ag, ptr %i.ai, align 8, !tbaa !9286
  %i.aj = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !862

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store double %i.p, ptr %i.ak, align 8, !tbaa !9286
  %.not.us = icmp eq i64 %.013.us, 0
  %i.al = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !71988

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013
  %i.an = load double, ptr %i.am, align 8, !tbaa !9286 ; 2 uses
  %i.ao = icmp slt i64 %.013, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.ap = shl i64 %.029.i, 1                      ; 3 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr [8 x i8], ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load double, ptr %i.ar, align 8, !tbaa !9286
  %i.av = load double, ptr %i.at, align 8, !tbaa !9286
  %i.aw = fcmp olt double %i.au, %i.av
  %i.ax = or disjoint i64 %i.ap, 1
  %spec.select.i = select i1 %i.aw, i64 %i.ax, i64 %i.aq ; 4 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.az = load double, ptr %i.ay, align 8, !tbaa !9286
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  store double %i.az, ptr %i.ba, align 8, !tbaa !9286
  %i.bb = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !861

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = load double, ptr %i.m, align 8, !tbaa !9286
  store double %i.bd, ptr %i.n, align 8, !tbaa !9286
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
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !9286 ; 2 uses
  %i.bh = fcmp olt double %i.bg, %i.an
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store double %i.bg, ptr %i.bi, align 8, !tbaa !9286
  %i.bj = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !862

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store double %i.an, ptr %i.bk, align 8, !tbaa !9286
  %.not = icmp eq i64 %.013, 0
  %i.bl = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !71988

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #46

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i64 @lround(double noundef) local_unnamed_addr #11

declare noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !71989

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !9286 ; 2 uses
  %i.k = load double, ptr %0, align 8, !tbaa !9286
  store double %i.k, ptr %i.i, align 8, !tbaa !9286
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load double, ptr %i.t, align 8, !tbaa !9286
  %i.x = load double, ptr %i.v, align 8, !tbaa !9286
  %i.y = fcmp olt double %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !9286
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.i.i.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !9286
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !863

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_:bb.a

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.012.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bk = load double, ptr %0, align 8, !tbaa !9286 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load double, ptr %.sroa.012.1.i.i, align 8, !tbaa !9286 ; 2 uses
  %i.bm = fcmp olt double %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !71991

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.bo = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !9286 ; 2 uses
  %i.bp = fcmp olt double %i.bk, %i.bo
  br i1 %i.bp, label %.preheader.i.i, label %bb.q, !llvm.loop !71992

bb.q:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store double %i.bo, ptr %.sroa.012.1.i.i, align 8, !tbaa !9286
  store double %i.bl, ptr %.sroa.0.1.i.i, align 8, !tbaa !9286
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !71993

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1742, i64 noundef %i.au)
  %i.bq = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a
  %i.bs = ashr exact i64 %i.br, 3                 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 16
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !71989

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.017.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.017.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn16.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.017.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.017.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i.idx ; 4 uses
  %i.e = load double, ptr %.sroa.0.017.i.ptr, align 8, !tbaa !9286 ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !9286 ; 2 uses
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.017.i.idx, 8
  br i1 %i.h, label %bb.d, label %bb.e, !prof !21340

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.017.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 8
  store double %i.f, ptr %i.i, align 8, !tbaa !9286
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load double, ptr %.pn16.i, align 8, !tbaa !9286 ; 2 uses
  %i.k = fcmp olt double %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi double [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn16.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.017.i.ptr, %bb.f ]
  store double %i.l, ptr %.sroa.04.08.i.i, align 8, !tbaa !9286
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -8 ; 2 uses
  %i.m = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !9286 ; 2 uses
  %i.n = fcmp olt double %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !71994

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.017.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store double %i.e, ptr %.sink.i, align 8, !tbaa !9286
  %.sroa.0.017.i.add = add nuw nsw i64 %.sroa.0.017.i.idx, 8 ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.017.i.add, 128
  br i1 %i.o, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !71995

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.0.04.i = phi ptr [ %i.x, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.p, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit ] ; 5 uses
  %i.r = load double, ptr %.sroa.0.04.i, align 8, !tbaa !9286 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.04.i, i64 -8 ; 2 uses
  %i.s = load double, ptr %.sroa.0.07.i.i, align 8, !tbaa !9286 ; 2 uses
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %.lr.ph.i.i7, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i7:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i7
  %i.u = phi double [ %i.v, %.lr.ph.i.i7 ], [ %i.s, %.lr.ph.i6 ]
  %.sroa.0.09.i.i8 = phi ptr [ %.sroa.0.0.i.i10, %.lr.ph.i.i7 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i9 = phi ptr [ %.sroa.0.09.i.i8, %.lr.ph.i.i7 ], [ %.sroa.0.04.i, %.lr.ph.i6 ]
  store double %i.u, ptr %.sroa.04.08.i.i9, align 8, !tbaa !9286
  %.sroa.0.0.i.i10 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i8, i64 -8 ; 2 uses
  %i.v = load double, ptr %.sroa.0.0.i.i10, align 8, !tbaa !9286 ; 2 uses
  %i.w = fcmp olt double %i.r, %i.v
  br i1 %i.w, label %.lr.ph.i.i7, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !71994

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i7, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.04.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i8, %.lr.ph.i.i7 ]
  store double %i.r, ptr %.sroa.04.0.lcssa.i.i, align 8, !tbaa !9286
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 8 ; 2 uses
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !71996

bb.g:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  %.sroa.0.015.i12 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = icmp eq ptr %.sroa.0.015.i12, %1
  %or.cond = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i16
  %.sroa.0.017.i14 = phi ptr [ %.sroa.0.0.i18, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i16 ], [ %.sroa.0.015.i12, %bb.g ] ; 6 uses
  %.pn16.i15 = phi ptr [ %.sroa.0.017.i14, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i16 ], [ %0, %bb.g ] ; 4 uses
  %i.ab = load double, ptr %.sroa.0.017.i14, align 8, !tbaa !9286 ; 4 uses
  %i.ac = load double, ptr %0, align 8, !tbaa !9286 ; 2 uses
  %i.ad = fcmp olt double %i.ab, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i13
  %i.ae = ptrtoint ptr %.sroa.0.017.i14 to i64
  %i.af = sub i64 %i.ae, %i.b                     ; 3 uses
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j, !prof !21340

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn16.i15, i64 16
  %i.aj = sub nsw i64 0, %i.ag
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.af, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i16

bb.j:                                             ; preds = %bb.h
  %i.al = icmp eq i64 %i.af, 8
  br i1 %i.al, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i16

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.pn16.i15, i64 8
  store double %i.ac, ptr %i.am, align 8, !tbaa !9286
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i16

bb.l:                                             ; preds = %.lr.ph.i13
  %i.an = load double, ptr %.pn16.i15, align 8, !tbaa !9286 ; 2 uses
  %i.ao = fcmp olt double %i.ab, %i.an
  br i1 %i.ao, label %.lr.ph.i.i19, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i16

.lr.ph.i.i19:                                     ; preds = %bb.l, %.lr.ph.i.i19
  %i.ap = phi double [ %i.aq, %.lr.ph.i.i19 ], [ %i.an, %bb.l ]
  %.sroa.0.09.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.pn16.i15, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i21 = phi ptr [ %.sroa.0.09.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.017.i14, %bb.l ]
  store double %i.ap, ptr %.sroa.04.08.i.i21, align 8, !tbaa !9286
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i20, i64 -8 ; 2 uses
  %i.aq = load double, ptr %.sroa.0.0.i.i22, align 8, !tbaa !9286 ; 2 uses
  %i.ar = fcmp olt double %i.ab, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i19, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i16, !llvm.loop !71994

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i16: ; preds = %.lr.ph.i.i19, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i17 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.017.i14, %bb.l ], [ %.sroa.0.09.i.i20, %.lr.ph.i.i19 ]
  store double %i.ab, ptr %.sink.i17, align 8, !tbaa !9286
  %.sroa.0.0.i18 = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i14, i64 8 ; 2 uses
  %i.as = icmp eq ptr %.sroa.0.0.i18, %1
  br i1 %i.as, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i13, !llvm.loop !71995

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i16, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
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
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.07.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %.07.us
  %i.p = load double, ptr %i.o, align 8, !tbaa !9286 ; 2 uses
  %i.q = icmp slt i64 %.07.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.034.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.07.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.034.i.us, 1                    ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load double, ptr %i.t, align 8, !tbaa !9286
  %i.x = load double, ptr %i.v, align 8, !tbaa !9286
  %i.y = fcmp olt double %i.w, %i.x
  %spec.select.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = load double, ptr %i.z, align 8, !tbaa !9286
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.us
  store double %i.aa, ptr %i.ab, align 8, !tbaa !9286
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !863

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.07.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.af = load double, ptr %i.ae, align 8, !tbaa !9286 ; 2 uses
  %i.ag = fcmp olt double %i.af, %i.p
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store double %i.af, ptr %i.ah, align 8, !tbaa !9286
  %i.ai = icmp sgt i64 %.0920.i.i.us, %.07.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !864

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.07.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store double %i.p, ptr %i.aj, align 8, !tbaa !9286
  %.not.us = icmp eq i64 %.07.us, 0
  %i.ak = add nsw i64 %.07.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !71997

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.07 = phi i64 [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %.07
  %i.am = load double, ptr %i.al, align 8, !tbaa !9286 ; 2 uses
  %i.an = icmp slt i64 %.07, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.034.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.07, %.split ] ; 2 uses
  %i.ao = shl i64 %.034.i, 1                      ; 2 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ap
  %i.ar = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = load double, ptr %i.aq, align 8, !tbaa !9286
  %i.au = load double, ptr %i.as, align 8, !tbaa !9286
  %i.av = fcmp olt double %i.at, %i.au
  %spec.select.i = select i1 %i.av, i64 %i.ar, i64 %i.ap ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !9286
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i
  store double %i.ax, ptr %i.ay, align 8, !tbaa !9286
  %i.az = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !863

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.07, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ba = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bb = load double, ptr %i.m, align 8, !tbaa !9286
  store double %i.bb, ptr %i.n, align 8, !tbaa !9286
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bc = icmp sgt i64 %.1.i, %.07
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !9286 ; 2 uses
  %i.bf = fcmp olt double %i.be, %i.am
  br i1 %i.bf, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store double %i.be, ptr %i.bg, align 8, !tbaa !9286
  %i.bh = icmp sgt i64 %.0920.i.i, %.07
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !864

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store double %i.am, ptr %i.bi, align 8, !tbaa !9286
  %.not = icmp eq i64 %.07, 0
  %i.bj = add nsw i64 %.07, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !71997

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16105 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !16104  ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, !prof !9356

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i
  %i.i = phi ptr [ %i.h, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !16104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !16105
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !16103
  %i.m = load ptr, ptr %1, align 8, !tbaa !9382   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !9382 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ] ; 5 uses
  %.sroa.04.09.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.010.i.i.i.i, align 8, !tbaa !9321
  %i.q = load ptr, ptr %.sroa.04.09.i.i.i.i, align 8, !tbaa !9326 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9324 ; 8 uses
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = icmp slt i64 %i.s, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = add nuw i64 %i.s, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, !prof !9356

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #59 ; 2 uses
  store ptr %i.x, ptr %.010.i.i.i.i, align 8, !tbaa !9326
  store i64 %i.s, ptr %i.p, align 8, !tbaa !9325
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.y = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.i = udiv exact i64 %i.g, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %i.ao, %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %i.an, %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.am, %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i ], [ %i.a, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0812.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !16152
  %i.j = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !9326 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 32 ; 4 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !9326 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32 ; 6 uses
  %i.q = icmp eq ptr %i.o, %i.p                   ; 2 uses
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.q, label %bb.c, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.q, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9324 ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  switch i64 %i.s, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.o, align 1, !tbaa !9325
  store i8 %i.u, ptr %i.l, align 1, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.v = load i64, ptr %i.r, align 8, !tbaa !9324 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24
  store i64 %i.v, ptr %i.w, align 8, !tbaa !9324
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !9326
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !9325
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !9326
  br label %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24
  store ptr %i.o, ptr %i.j, align 8, !tbaa !9326
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !9324
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !9324
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !9325
  store i64 %i.ac, ptr %i.m, align 8, !tbaa !9325
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !9325
  store ptr %i.o, ptr %i.j, align 8, !tbaa !9326
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9324
  %i.ag = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !9324
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !9325
  store i64 %i.ah, ptr %i.m, align 8, !tbaa !9325
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.l, ptr %i.k, align 8, !tbaa !9326
  store i64 %i.ad, ptr %i.p, align 8, !tbaa !9325
  br label %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.p, ptr %i.k, align 8, !tbaa !9326
  br label %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i

_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i:     ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
  %i.ai = phi ptr [ %i.l, %bb.f ], [ %i.p, %bb.g ], [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  store i64 0, ptr %i.aj, align 8, !tbaa !9324
  store i8 0, ptr %i.ai, align 1, !tbaa !9325
  %i.ak = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 72
  %i.ao = add nsw i64 %.014.i.i.i.i.i, -1
  %i.ap = icmp sgt i64 %.014.i.i.i.i.i, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit, !llvm.loop !72227

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit: ; preds = %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !16155
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit, %bb.b, %bb.a
  %i.aq = phi ptr [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -72
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !16155
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !9326 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 -40 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZSt10destroy_atIN5Catch11MessageInfoEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !9325
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #60
  br label %_ZSt10destroy_atIN5Catch11MessageInfoEEvPT_.exit

_ZSt10destroy_atIN5Catch11MessageInfoEEvPT_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16113
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16111 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9326 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN5Catch8TagAliasD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !9325
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #60
  br label %_ZN5Catch8TagAliasD2Ev.exit.i.i.i.i

_ZN5Catch8TagAliasD2Ev.exit.i.i.i.i:              ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !9326 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN5Catch8TagAliasD2Ev.exit.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !9325
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #60
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %_ZN5Catch8TagAliasD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 112) #60
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72228

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph128

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEET_SI_SI_T0_.exit"
  %i.h = icmp eq i64 %i.fr, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph128, !llvm.loop !72229

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa124 = phi i64 [ %i.d, %.lr.ph ], [ %i.ke, %bb.b ] ; 2 uses
  %.lcssa122 = phi i64 [ %i.c, %.lr.ph ], [ %i.kd, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.072.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa124, -2               ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %.lcssa124, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %.lcssa122, 16
  %i.n = icmp eq i64 %i.m, 0
  %3 = or disjoint i64 %i.i, 1                    ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.cj, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !16127
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !19326 ; 6 uses
  %i.s = icmp slt i64 %.010.i.i.i, %i.l
  br i1 %i.s, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.t = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %.val.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !19392 ; 6 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !19392 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !9324 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !9324 ; 3 uses
  %.sroa.speculated.i.i12.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.z) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i12.i.i.i, 0
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ad = load ptr, ptr %.val1.i.i.i.i.i, align 8, !tbaa !9326
  %i.ae = load ptr, ptr %.val.i.i.i.i.i, align 8, !tbaa !9326
  %i.af = tail call i32 @memcmp(ptr noundef %i.ae, ptr noundef %i.ad, i64 noundef %.sroa.speculated.i.i12.i.i.i) #49 ; 2 uses
  %.not.i.i14.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i14.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i.i, %.lr.ph.i.i.i.i
  %i.ag = sub i64 %i.z, %i.ab
  %spec.select7.i.i.i19.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i20.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i19.i.i.i, i64 2147483647)
  %.0.i6.i.i21.i.i.i = trunc nsw i64 %.08.i.i.i20.i.i.i to i32
  %.not.i22.i.i.i = icmp eq i64 %i.z, %i.ab
  br i1 %.not.i22.i.i.i, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i.i
  %.0.i20.i16.i.i.i = phi i32 [ %.0.i6.i.i21.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i.i ], [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i.i ]
  %i.ah = icmp slt i32 %.0.i20.i16.i.i.i, 0
  br label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 32
  %.sroa.02.0.copyload.i23.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 40
  %.sroa.2.0.copyload.i25.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i24.i.i.i, align 8, !tbaa !9358 ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !9368
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !9358 ; 2 uses
  %.sroa.speculated.i15.i26.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i25.i.i.i, i64 %i.am)
  %i.an = tail call i32 @strncmp(ptr noundef %i.ak, ptr noundef readonly %.sroa.02.0.copyload.i23.i.i.i, i64 noundef %.sroa.speculated.i15.i26.i.i.i) #62 ; 2 uses
  %.not.i16.i27.i.i.i = icmp eq i32 %i.an, 0
  %spec.select.i.i28.i.i.i = tail call i32 @llvm.ucmp.i32.i64(i64 %i.am, i64 %.sroa.2.0.copyload.i25.i.i.i)
  %.0.i17.i29.i.i.i = select i1 %.not.i16.i27.i.i.i, i32 %spec.select.i.i28.i.i.i, i32 %i.an ; 2 uses
  %.not14.i30.i.i.i = icmp eq i32 %.0.i17.i29.i.i.i, 0
  br i1 %.not14.i30.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp slt i32 %.0.i17.i29.i.i.i, 0
  br label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 80
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !19420
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19420
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !19420
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19420
  %i.ax = tail call i8 @_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_(ptr %i.ar, ptr %i.at, ptr %i.au, ptr %i.aw)
  %i.ay = icmp slt i8 %i.ax, 0
  br label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i

_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i: ; preds = %bb.f, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i.i
  %.1.i17.i.i.i = phi i1 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i.i ], [ %i.ao, %bb.e ], [ %i.ay, %bb.f ]
  %spec.select.i.i.i.i = select i1 %.1.i17.i.i.i, i64 %i.w, i64 %i.u ; 4 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ba = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !23528
  %i.bb = icmp slt i64 %spec.select.i.i.i.i, %i.l
  br i1 %i.bb, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !72230

._crit_edge.i.i.i.i:                              ; preds = %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i.i.i.i, %i.j
  %or.cond.i.i.i = select i1 %i.n, i1 %i.bc, i1 false
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !23528
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %3, %bb.g ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.bd, label %.lr.ph.i.i.preheader.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 32
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 88
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.preheader.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.j ], [ %.1.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 5 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bi = getelementptr inbounds [16 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !19392 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !9324 ; 3 uses
  %i.bl = load i64, ptr %i.be, align 8, !tbaa !9324 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bk) ; 2 uses
  %i.bm = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bn = load ptr, ptr %.sroa.03.0.copyload.i.i.i, align 8, !tbaa !9326
  %i.bo = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !tbaa !9326
  %i.bp = tail call i32 @memcmp(ptr noundef %i.bo, ptr noundef %i.bn, i64 noundef %.sroa.speculated.i.i.i.i.i) #49 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.bq = sub i64 %i.bk, %i.bl
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bq, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  %.not.i.i.i.i = icmp eq i64 %i.bk, %i.bl
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i20.i.i.i.i = phi i32 [ %.0.i6.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i.i.i ], [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ]
  %i.br = icmp slt i32 %.0.i20.i.i.i.i, 0
  br i1 %i.br, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !9357
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !9358 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !9368
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 40
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !9358 ; 2 uses
  %.sroa.speculated.i15.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i, i64 %i.bv)
  %i.bw = tail call i32 @strncmp(ptr noundef %i.bt, ptr noundef readonly %.sroa.02.0.copyload.i.i.i.i, i64 noundef %.sroa.speculated.i15.i.i.i.i) #62 ; 2 uses
  %.not.i16.i.i.i.i = icmp eq i32 %i.bw, 0
  %spec.select.i.i.i.i.i = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bv, i64 %.sroa.2.0.copyload.i.i.i.i)
  %.0.i17.i.i.i.i = select i1 %.not.i16.i.i.i.i, i32 %spec.select.i.i.i.i.i, i32 %i.bw ; 2 uses
  %.not14.i.i.i.i = icmp eq i32 %.0.i17.i.i.i.i, 0
  br i1 %.not14.i.i.i.i, label %.split.i.i.i, label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i.i

.split.i.i.i:                                     ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !19420
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19420
  %i.cb = load ptr, ptr %i.bg, align 8, !tbaa !19420
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !19420
  %i.cd = tail call i8 @_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_(ptr %i.by, ptr %i.ca, ptr %i.cb, ptr %i.cc)
  %i.ce = icmp slt i8 %i.cd, 0
  br i1 %i.ce, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i.i:   ; preds = %bb.i
  %i.cf = icmp slt i32 %.0.i17.i.i.i.i, 0
  br i1 %i.cf, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

bb.j:                                             ; preds = %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i.i, %.split.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i.i
  %i.cg = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !23528
  %i.ch = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", !llvm.loop !72231

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i": ; preds = %bb.j, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i.i, %.split.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.h ], [ %.010.i.i.i.i.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i.i ], [ %.0911.i.i.i.i.i, %bb.j ], [ %.010.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i.i ], [ %.010.i.i.i.i.i, %.split.i.i.i ]
  %i.ci = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store <2 x ptr> %i.r, ptr %i.ci, align 8, !tbaa !16127
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.cj = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_RT0_.exit.i.i", label %bb.c, !llvm.loop !72232

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"
  %i.ck = icmp sgt i64 %.lcssa122, 16
  br i1 %i.ck, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_RT0_.exit.i29.i"
  %.sroa.0.03.i.i = phi ptr [ %i.cl, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_RT0_.exit.i29.i" ], [ %storemerge41.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_RT0_.exit.i.i" ]
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 5 uses
  %i.cm = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !16127
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.cl, align 8, !tbaa !19326 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !23528
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cn, %i.a                     ; 3 uses
  %i.cp = ashr exact i64 %i.co, 4                 ; 3 uses
  %i.cq = add nsw i64 %i.cp, -1
  %i.cr = lshr i64 %i.cq, 1
  %i.cs = icmp sgt i64 %i.cp, 2
  br i1 %i.cs, label %.lr.ph.i.i.i46.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i46.i:                                 ; preds = %.lr.ph.i9.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i
  %.037.i.i.i47.i = phi i64 [ %spec.select.i.i.i50.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ct = shl i64 %.037.i.i.i47.i, 1              ; 2 uses
  %i.cu = add i64 %i.ct, 2                        ; 2 uses
  %i.cv = getelementptr inbounds [16 x i8], ptr %0, i64 %i.cu
  %i.cw = or disjoint i64 %i.ct, 1                ; 2 uses
  %i.cx = getelementptr inbounds [16 x i8], ptr %0, i64 %i.cw
  %.val.i.i.i.i48.i = load ptr, ptr %i.cv, align 8, !tbaa !19392 ; 6 uses
  %.val1.i.i.i.i49.i = load ptr, ptr %i.cx, align 8, !tbaa !19392 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i48.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !9324 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i49.i, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !9324 ; 3 uses
  %.sroa.speculated.i.i5.i.i = tail call i64 @llvm.umin.i64(i64 %i.db, i64 %i.cz) ; 2 uses
  %i.dc = icmp eq i64 %.sroa.speculated.i.i5.i.i, 0
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i11.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6.i.i: ; preds = %.lr.ph.i.i.i46.i
  %i.dd = load ptr, ptr %.val1.i.i.i.i49.i, align 8, !tbaa !9326
  %i.de = load ptr, ptr %.val.i.i.i.i48.i, align 8, !tbaa !9326
  %i.df = tail call i32 @memcmp(ptr noundef %i.de, ptr noundef %i.dd, i64 noundef %.sroa.speculated.i.i5.i.i) #49 ; 2 uses
  %.not.i.i7.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i11.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i11.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6.i.i, %.lr.ph.i.i.i46.i
  %i.dg = sub i64 %i.cz, %i.db
  %spec.select7.i.i.i12.i.i = tail call i64 @llvm.smax.i64(i64 %i.dg, i64 -2147483648)
  %.08.i.i.i13.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i12.i.i, i64 2147483647)
  %.0.i6.i.i14.i.i = trunc nsw i64 %.08.i.i.i13.i.i to i32
  %.not.i15.i.i = icmp eq i64 %i.cz, %i.db
  br i1 %.not.i15.i.i, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i8.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i11.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6.i.i
  %.0.i20.i9.i.i = phi i32 [ %.0.i6.i.i14.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i11.i.i ], [ %i.df, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6.i.i ]
  %i.dh = icmp slt i32 %.0.i20.i9.i.i, 0
  br label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i11.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i48.i, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i49.i, i64 32
  %.sroa.02.0.copyload.i16.i.i = load ptr, ptr %i.dj, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i49.i, i64 40
  %.sroa.2.0.copyload.i18.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i17.i.i, align 8, !tbaa !9358 ; 2 uses
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !9368
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i48.i, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !9358 ; 2 uses
  %.sroa.speculated.i15.i19.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i18.i.i, i64 %i.dm)
  %i.dn = tail call i32 @strncmp(ptr noundef %i.dk, ptr noundef readonly %.sroa.02.0.copyload.i16.i.i, i64 noundef %.sroa.speculated.i15.i19.i.i) #62 ; 2 uses
  %.not.i16.i20.i.i = icmp eq i32 %i.dn, 0
  %spec.select.i.i21.i.i = tail call i32 @llvm.ucmp.i32.i64(i64 %i.dm, i64 %.sroa.2.0.copyload.i18.i.i)
  %.0.i17.i22.i.i = select i1 %.not.i16.i20.i.i, i32 %spec.select.i.i21.i.i, i32 %i.dn ; 2 uses
  %.not14.i23.i.i = icmp eq i32 %.0.i17.i22.i.i, 0
  br i1 %.not14.i23.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = icmp slt i32 %.0.i17.i22.i.i, 0
  br label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i

bb.m:                                             ; preds = %bb.k
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i48.i, i64 80
  %i.dq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i49.i, i64 80
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !19420
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i48.i, i64 88
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !19420
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !19420
  %i.dv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i49.i, i64 88
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !19420
  %i.dx = tail call i8 @_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_(ptr %i.dr, ptr %i.dt, ptr %i.du, ptr %i.dw)
  %i.dy = icmp slt i8 %i.dx, 0
  br label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i

_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i:   ; preds = %bb.m, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i8.i.i
  %.1.i10.i.i = phi i1 [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i8.i.i ], [ %i.do, %bb.l ], [ %i.dy, %bb.m ]
  %spec.select.i.i.i50.i = select i1 %.1.i10.i.i, i64 %i.cw, i64 %i.cu ; 4 uses
  %i.dz = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i50.i
  %i.ea = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i47.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !23528
  %i.eb = icmp slt i64 %spec.select.i.i.i50.i, %i.cr
  br i1 %i.eb, label %.lr.ph.i.i.i46.i, label %._crit_edge.i.i.i13.i, !llvm.loop !72230

._crit_edge.i.i.i13.i:                            ; preds = %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i50.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i ] ; 5 uses
  %i.ec = and i64 %i.co, 16
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.ee = add nsw i64 %i.cp, -2
  %i.ef = ashr exact i64 %i.ee, 1
  %i.eg = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.ef
  br i1 %i.eg, label %.thread.i.i45.i, label %bb.o

.thread.i.i45.i:                                  ; preds = %bb.n
  %i.eh = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
end_hunk_2
begin_hunk_3_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_:bb.a
.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.0.015.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.017.i.idx = phi i64 [ 1, %.lr.ph.i ], [ %.sroa.0.017.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn16.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.017.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.017.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i.idx ; 4 uses
  %i.e = load i8, ptr %.sroa.0.017.i.ptr, align 1, !tbaa !9325 ; 4 uses
  %i.f = load i8, ptr %0, align 1, !tbaa !9325    ; 2 uses
  %i.g = icmp slt i8 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.017.i.idx, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !21340

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.017.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 1
  store i8 %i.f, ptr %i.i, align 1, !tbaa !9325
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.pn16.i, align 1, !tbaa !9325 ; 2 uses
  %i.k = icmp slt i8 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i8 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn16.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.017.i.ptr, %bb.f ]
  store i8 %i.l, ptr %.sroa.04.08.i.i, align 1, !tbaa !9325
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -1 ; 2 uses
  %i.m = load i8, ptr %.sroa.0.0.i.i, align 1, !tbaa !9325 ; 2 uses
  %i.n = icmp slt i8 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !73458

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.017.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i8 %i.e, ptr %.sink.i, align 1, !tbaa !9325
  %.sroa.0.017.i.add = add nuw nsw i64 %.sroa.0.017.i.idx, 1 ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.017.i.add, 16
  br i1 %i.o, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !73459

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  %i.r = sub i64 %i.a, %i.b
  %i.s = add i64 %i.a, -17
  %xtraiter = and i64 %i.r, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i6.prol.loopexit, label %.lr.ph.i6.prol

.lr.ph.i6.prol:                                   ; preds = %.lr.ph.i6.preheader
  %i.t = load i8, ptr %i.p, align 1, !tbaa !9325  ; 3 uses
  %.sroa.0.07.i.i.prol = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.u = load i8, ptr %.sroa.0.07.i.i.prol, align 1, !tbaa !9325 ; 2 uses
  %i.v = icmp slt i8 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.i.i7.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol

.lr.ph.i.i7.prol:                                 ; preds = %.lr.ph.i6.prol, %.lr.ph.i.i7.prol
  %i.w = phi i8 [ %i.x, %.lr.ph.i.i7.prol ], [ %i.u, %.lr.ph.i6.prol ]
  %.sroa.0.09.i.i8.prol = phi ptr [ %.sroa.0.0.i.i10.prol, %.lr.ph.i.i7.prol ], [ %.sroa.0.07.i.i.prol, %.lr.ph.i6.prol ] ; 3 uses
  %.sroa.04.08.i.i9.prol = phi ptr [ %.sroa.0.09.i.i8.prol, %.lr.ph.i.i7.prol ], [ %i.p, %.lr.ph.i6.prol ]
  store i8 %i.w, ptr %.sroa.04.08.i.i9.prol, align 1, !tbaa !9325
  %.sroa.0.0.i.i10.prol = getelementptr inbounds i8, ptr %.sroa.0.09.i.i8.prol, i64 -1 ; 2 uses
  %i.x = load i8, ptr %.sroa.0.0.i.i10.prol, align 1, !tbaa !9325 ; 2 uses
  %i.y = icmp slt i8 %i.t, %i.x
  br i1 %i.y, label %.lr.ph.i.i7.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol, !llvm.loop !73458

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol: ; preds = %.lr.ph.i.i7.prol, %.lr.ph.i6.prol
  %.sroa.04.0.lcssa.i.i.prol = phi ptr [ %i.p, %.lr.ph.i6.prol ], [ %.sroa.0.09.i.i8.prol, %.lr.ph.i.i7.prol ]
  store i8 %i.t, ptr %.sroa.04.0.lcssa.i.i.prol, align 1, !tbaa !9325
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %.lr.ph.i6.prol.loopexit

.lr.ph.i6.prol.loopexit:                          ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol, %.lr.ph.i6.preheader
  %.sroa.0.04.i.unr = phi ptr [ %i.p, %.lr.ph.i6.preheader ], [ %i.z, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol ]
  %i.aa = icmp eq i64 %i.s, %i.b
  br i1 %i.aa, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1
  %.sroa.0.04.i = phi ptr [ %i.ao, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1 ], [ %.sroa.0.04.i.unr, %.lr.ph.i6.prol.loopexit ] ; 8 uses
  %i.ab = load i8, ptr %.sroa.0.04.i, align 1, !tbaa !9325 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.04.i, i64 -1 ; 2 uses
  %i.ac = load i8, ptr %.sroa.0.07.i.i, align 1, !tbaa !9325 ; 2 uses
  %i.ad = icmp slt i8 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i7, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i7:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i7
  %i.ae = phi i8 [ %i.af, %.lr.ph.i.i7 ], [ %i.ac, %.lr.ph.i6 ]
  %.sroa.0.09.i.i8 = phi ptr [ %.sroa.0.0.i.i10, %.lr.ph.i.i7 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i9 = phi ptr [ %.sroa.0.09.i.i8, %.lr.ph.i.i7 ], [ %.sroa.0.04.i, %.lr.ph.i6 ]
  store i8 %i.ae, ptr %.sroa.04.08.i.i9, align 1, !tbaa !9325
  %.sroa.0.0.i.i10 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i8, i64 -1 ; 2 uses
  %i.af = load i8, ptr %.sroa.0.0.i.i10, align 1, !tbaa !9325 ; 2 uses
  %i.ag = icmp slt i8 %i.ab, %i.af
  br i1 %i.ag, label %.lr.ph.i.i7, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !73458

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i7, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.04.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i8, %.lr.ph.i.i7 ]
  store i8 %i.ab, ptr %.sroa.04.0.lcssa.i.i, align 1, !tbaa !9325
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 1 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9325 ; 3 uses
  %i.aj = load i8, ptr %.sroa.0.04.i, align 1, !tbaa !9325 ; 2 uses
  %i.ak = icmp slt i8 %i.ai, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i7.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1

.lr.ph.i.i7.1:                                    ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %.lr.ph.i.i7.1
  %i.al = phi i8 [ %i.am, %.lr.ph.i.i7.1 ], [ %i.aj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  %.sroa.0.09.i.i8.1 = phi ptr [ %.sroa.0.0.i.i10.1, %.lr.ph.i.i7.1 ], [ %.sroa.0.04.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ] ; 3 uses
  %.sroa.04.08.i.i9.1 = phi ptr [ %.sroa.0.09.i.i8.1, %.lr.ph.i.i7.1 ], [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  store i8 %i.al, ptr %.sroa.04.08.i.i9.1, align 1, !tbaa !9325
  %.sroa.0.0.i.i10.1 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i8.1, i64 -1 ; 2 uses
  %i.am = load i8, ptr %.sroa.0.0.i.i10.1, align 1, !tbaa !9325 ; 2 uses
  %i.an = icmp slt i8 %i.ai, %i.am
  br i1 %i.an, label %.lr.ph.i.i7.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, !llvm.loop !73458

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1: ; preds = %.lr.ph.i.i7.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.04.0.lcssa.i.i.1 = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %.sroa.0.09.i.i8.1, %.lr.ph.i.i7.1 ]
  store i8 %i.ai, ptr %.sroa.04.0.lcssa.i.i.1, align 1, !tbaa !9325
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 2 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %1
  br i1 %i.ap, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !73460

bb.g:                                             ; preds = %bb.a
  %i.aq = icmp eq ptr %0, %1
  br i1 %i.aq, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.preheader.i11

.preheader.i11:                                   ; preds = %bb.g
  %.sroa.0.015.i12 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.ar = icmp eq ptr %.sroa.0.015.i12, %1
  br i1 %i.ar, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.preheader.i11, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i16
  %.sroa.0.017.i14 = phi ptr [ %.sroa.0.0.i18, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i16 ], [ %.sroa.0.015.i12, %.preheader.i11 ] ; 6 uses
  %.pn16.i15 = phi ptr [ %.sroa.0.017.i14, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i16 ], [ %0, %.preheader.i11 ] ; 3 uses
  %i.as = load i8, ptr %.sroa.0.017.i14, align 1, !tbaa !9325 ; 4 uses
  %i.at = load i8, ptr %0, align 1, !tbaa !9325   ; 2 uses
  %i.au = icmp slt i8 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i13
  %i.av = ptrtoint ptr %.sroa.0.017.i14 to i64
  %i.aw = sub i64 %i.av, %i.b                     ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 1
  br i1 %i.ax, label %bb.i, label %bb.j, !prof !21340

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i12, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.aw, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i16

bb.j:                                             ; preds = %bb.h
  %i.ay = icmp eq i64 %i.aw, 1
  br i1 %i.ay, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i16

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.pn16.i15, i64 1
  store i8 %i.at, ptr %i.az, align 1, !tbaa !9325
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i16

bb.l:                                             ; preds = %.lr.ph.i13
  %i.ba = load i8, ptr %.pn16.i15, align 1, !tbaa !9325 ; 2 uses
  %i.bb = icmp slt i8 %i.as, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i19, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i16

.lr.ph.i.i19:                                     ; preds = %bb.l, %.lr.ph.i.i19
  %i.bc = phi i8 [ %i.bd, %.lr.ph.i.i19 ], [ %i.ba, %bb.l ]
  %.sroa.0.09.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.pn16.i15, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i21 = phi ptr [ %.sroa.0.09.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.017.i14, %bb.l ]
  store i8 %i.bc, ptr %.sroa.04.08.i.i21, align 1, !tbaa !9325
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i20, i64 -1 ; 2 uses
  %i.bd = load i8, ptr %.sroa.0.0.i.i22, align 1, !tbaa !9325 ; 2 uses
  %i.be = icmp slt i8 %i.as, %i.bd
  br i1 %i.be, label %.lr.ph.i.i19, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i16, !llvm.loop !73458

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i16: ; preds = %.lr.ph.i.i19, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i17 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.017.i14, %bb.l ], [ %.sroa.0.09.i.i20, %.lr.ph.i.i19 ]
  store i8 %i.as, ptr %.sink.i17, align 1, !tbaa !9325
  %.sroa.0.0.i18 = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i14, i64 1 ; 2 uses
  %i.bf = icmp eq ptr %.sroa.0.0.i18, %1
  br i1 %i.bf, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i13, !llvm.loop !73459

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i16, %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, %.preheader.i11, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 4 uses
  %i.d = icmp slt i64 %.fr, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %.fr, -2                     ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = add nsw i64 %.fr, -1
  %i.h = lshr i64 %i.g, 1                         ; 4 uses
  %i.i = and i64 %.fr, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = lshr exact i64 %i.e, 1                   ; 2 uses
  br i1 %i.j, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.e, 1                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.aj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.f, %bb.b ] ; 8 uses
  %i.n = getelementptr inbounds i8, ptr %0, i64 %.08.us
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9325  ; 2 uses
  %i.p = icmp slt i64 %.08.us, %i.h
  br i1 %i.p, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.s, align 1, !tbaa !9325
  %i.w = load i8, ptr %i.u, align 1, !tbaa !9325
  %i.x = icmp slt i8 %i.v, %i.w
  %spec.select.i.us = select i1 %i.x, i64 %i.t, i64 %i.r ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.us
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9325
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.035.i.us
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !9325
  %i.ab = icmp slt i64 %spec.select.i.us, %i.h
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !3576

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ac = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ac, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i.us
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9325 ; 2 uses
  %i.af = icmp slt i8 %i.ae, %i.o
  br i1 %i.af, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i.us
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !9325
  %i.ah = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.ah, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !3577

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.us
  store i8 %i.o, ptr %i.ai, align 1, !tbaa !9325
  %.not.us = icmp eq i64 %.08.us, 0
  %i.aj = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !73461

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bi, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.f, %.split.preheader ] ; 8 uses
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %.08
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9325 ; 2 uses
  %i.am = icmp slt i64 %.08, %i.h
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.an = shl i64 %.035.i, 1                      ; 2 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %i.ao
  %i.aq = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !9325
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !9325
  %i.au = icmp slt i8 %i.as, %i.at
  %spec.select.i = select i1 %i.au, i64 %i.aq, i64 %i.ao ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %0, i64 %spec.select.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9325
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %.035.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !9325
  %i.ay = icmp slt i64 %spec.select.i, %i.h
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3576

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.az = icmp eq i64 %.0.lcssa.i, %i.k
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ba = load i8, ptr %i.l, align 1, !tbaa !9325
  store i8 %i.ba, ptr %i.m, align 1, !tbaa !9325
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bb = icmp sgt i64 %.1.i, %.08
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9325 ; 2 uses
  %i.be = icmp slt i8 %i.bd, %i.al
  br i1 %i.be, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !9325
  %i.bg = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !3577

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i
  store i8 %i.al, ptr %i.bh, align 1, !tbaa !9325
  %.not = icmp eq i64 %.08, 0
  %i.bi = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !73461

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !69547  ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9357 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9357 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !69548 ; 6 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.016.i.i, 1                    ; 3 uses
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i.i, i64 %i.k ; 2 uses
  %i.l = load i8, ptr %.sink.i.i.i, align 1, !tbaa !9325
  %i.m = icmp slt i8 %i.l, %i.f                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 1
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.016.i.i, %i.o
  %.sroa.011.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.k    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !3578

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.r = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.d
  br i1 %i.r, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i
  %i.s = load i8, ptr %.sroa.011.0.lcssa.i.i, align 1, !tbaa !9325
  %.not = icmp slt i8 %i.f, %i.s
  br i1 %.not, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69549 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69549 ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.042.050, i64 2 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.w
  br i1 %i.z, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, %bb.b
  %.sroa.042.050 = phi ptr [ %i.y, %bb.b ], [ %i.u, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread ] ; 3 uses
  %i.aa = load i8, ptr %.sroa.042.050, align 1, !tbaa !69447
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.042.050, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !69448
  %i.ad = icmp sle i8 %i.aa, %i.f
  %i.ae = icmp sle i8 %i.f, %i.ac
  %i.af = and i1 %i.ad, %i.ae
  br i1 %i.af, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread, label %bb.b

.critedge:                                        ; preds = %bb.b, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !69541, !nonnull !4070, !align !19314
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.08.0.copyload = load i32, ptr %i.ai, align 8 ; 2 uses
  %i.aj = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #49
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !69403
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69406
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aj
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69408 ; 7 uses
  %.not.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.not.i.i, label %bb.c, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i
end_hunk_3
