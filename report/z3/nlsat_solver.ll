Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nlsat_solver?download=true
inline.NumInlined: 3993
inline.NumDeleted: 1516
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_T1_:bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEET_S9_S9_T0_.exit
  %i.j = icmp eq i64 %i.cm, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph44, !llvm.loop !533

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.co, %bb.b ]
  %.022.lcssa = phi ptr [ %1, %.lr.ph ], [ %.129.i.i, %bb.b ]
  %i.k = lshr exact i64 %.lcssa, 2                ; 2 uses
  %i.l = add nsw i64 %i.k, -2
  %i.m = lshr i64 %i.l, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.014.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.p, %bb.c ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.i.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !192
  tail call void @_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_SA_T1_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.k, i32 noundef %i.o, ptr %3)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.p = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.c, !llvm.loop !534

.lr.ph.i5.i:                                      ; preds = %bb.c, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.q, %.lr.ph.i5.i ], [ %.022.lcssa, %bb.c ]
  %i.q = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !192
  %i.s = load i32, ptr %0, align 4, !tbaa !192
  store i32 %i.s, ptr %i.q, align 4, !tbaa !192
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.t, %i.a                       ; 2 uses
  %i.v = ashr exact i64 %i.u, 2
  tail call void @_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_SA_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.v, i32 noundef %i.r, ptr %3)
  %i.w = icmp sgt i64 %i.u, 4
  br i1 %i.w, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_S9_T0_.exit, !llvm.loop !535

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %.0152143 = phi i64 [ %i.cm, %bb.b ], [ %2, %.lr.ph ]
  %.02242 = phi ptr [ %.129.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.x = phi i64 [ %i.co, %bb.b ], [ %i.c, %.lr.ph ]
  %i.y = lshr i64 %i.x, 3
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds i8, ptr %.02242, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_S9_S9_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.z, ptr noundef nonnull %i.aa, ptr %3)
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !203 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph44
  %.013.i.i = phi ptr [ %.02242, %.lr.ph44 ], [ %.114.lcssa.i.i, %bb.i ]
  %.0.i.i = phi ptr [ %i.e, %.lr.ph44 ], [ %i.cl, %bb.i ] ; 3 uses
  %i.ac = load i32, ptr %0, align 4, !tbaa !192
  %i.ad = zext i32 %i.ac to i64                   ; 5 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !192 ; 6 uses
  %i.ag = load i32, ptr %.0.i.i, align 4, !tbaa !192 ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !192 ; 2 uses
  %i.ak = icmp ult i32 %i.aj, %i.af
  br i1 %i.ak, label %.preheader.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i.i
  %i.al = phi i32 [ %i.bm, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i.i ], [ %i.aj, %bb.d ]
  %i.am = phi i64 [ %i.bk, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i.i ], [ %i.ah, %bb.d ] ; 2 uses
  %i.an = phi i32 [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i.i ], [ %i.ag, %bb.d ] ; 2 uses
  %.131.i.i = phi ptr [ %i.bi, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i.i ], [ %.0.i.i, %bb.d ] ; 3 uses
  %i.ao = icmp ugt i32 %i.al, %i.af
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !203 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.am
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !192 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ad
  %i.at = load i32, ptr %i.as, align 4, !tbaa !192 ; 2 uses
  %i.au = icmp ult i32 %i.ar, %i.at
  br i1 %i.au, label %.preheader.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = icmp ugt i32 %i.ar, %i.at
  br i1 %i.av, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.f
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !203 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.am
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !192
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ad
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !192
  %i.bb = icmp ult i32 %i.ay, %i.ba
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i.i, %.split.i.i, %bb.e, %bb.d
  %.129.i.i = phi ptr [ %.0.i.i, %bb.d ], [ %.131.i.i, %bb.e ], [ %i.bi, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i.i ], [ %.131.i.i, %.split.i.i ] ; 7 uses
  %i.bc = phi i32 [ %i.ag, %bb.d ], [ %i.an, %bb.e ], [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i.i ], [ %i.an, %.split.i.i ]
  %.11442.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 3 uses
  %i.bd = load i32, ptr %.11442.i.i, align 4, !tbaa !192 ; 3 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !192 ; 2 uses
  %i.bh = icmp ult i32 %i.af, %i.bg
  br i1 %i.bh, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit16.thread.i.i, label %.lr.ph44.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i.i: ; preds = %.split.i.i, %bb.f, %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.131.i.i, i64 4 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !192 ; 3 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !192 ; 2 uses
  %i.bn = icmp ult i32 %i.bm, %i.af
  br i1 %i.bn, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !536

.lr.ph44.i.i:                                     ; preds = %.preheader.i.i, %.backedge.i.i
  %i.bo = phi i32 [ %i.ci, %.backedge.i.i ], [ %i.bg, %.preheader.i.i ]
  %i.bp = phi i64 [ %i.cg, %.backedge.i.i ], [ %i.be, %.preheader.i.i ] ; 2 uses
  %i.bq = phi i32 [ %i.cf, %.backedge.i.i ], [ %i.bd, %.preheader.i.i ] ; 2 uses
  %.11443.i.i = phi ptr [ %.114.i.i, %.backedge.i.i ], [ %.11442.i.i, %.preheader.i.i ] ; 3 uses
  %i.br = icmp ugt i32 %i.af, %i.bo
  br i1 %i.br, label %.backedge.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph44.i.i
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !203 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ad
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !192 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bp
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !192 ; 2 uses
  %i.bx = icmp ult i32 %i.bu, %i.bw
  br i1 %i.bx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit16.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = icmp ugt i32 %i.bu, %i.bw
  br i1 %i.by, label %.backedge.i.i, label %.split20.i.i

.split20.i.i:                                     ; preds = %bb.h
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !203 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ad
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !192
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bp
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !192
  %i.ce = icmp ult i32 %i.cb, %i.cd
  br i1 %i.ce, label %.backedge.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit16.thread.i.i

.backedge.i.i:                                    ; preds = %.split20.i.i, %bb.h, %.lr.ph44.i.i
  %.114.i.i = getelementptr inbounds i8, ptr %.11443.i.i, i64 -4 ; 3 uses
  %i.cf = load i32, ptr %.114.i.i, align 4, !tbaa !192 ; 3 uses
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !192 ; 2 uses
  %i.cj = icmp ult i32 %i.af, %i.ci
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit16.thread.i.i, label %.lr.ph44.i.i, !llvm.loop !537

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit16.thread.i.i: ; preds = %.backedge.i.i, %.split20.i.i, %bb.g, %.preheader.i.i
  %.114.lcssa.i.i = phi ptr [ %.11442.i.i, %.preheader.i.i ], [ %.11443.i.i, %bb.g ], [ %.114.i.i, %.backedge.i.i ], [ %.11443.i.i, %.split20.i.i ] ; 3 uses
  %.lcssa30.i.i = phi i32 [ %i.bd, %.preheader.i.i ], [ %i.bq, %bb.g ], [ %i.cf, %.backedge.i.i ], [ %i.bq, %.split20.i.i ]
  %i.ck = icmp ult ptr %.129.i.i, %.114.lcssa.i.i
  br i1 %i.ck, label %bb.i, label %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEET_S9_S9_T0_.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit16.thread.i.i
  store i32 %.lcssa30.i.i, ptr %.129.i.i, align 4, !tbaa !192
  store i32 %i.bc, ptr %.114.lcssa.i.i, align 4, !tbaa !192
  %i.cl = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 4
  br label %bb.d, !llvm.loop !538

_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEET_S9_S9_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit16.thread.i.i
  %i.cm = add nsw i64 %.0152143, -1               ; 3 uses
  tail call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_T1_(ptr noundef %.129.i.i, ptr noundef %.02242, i64 noundef %i.cm, ptr %3)
  %i.cn = ptrtoint ptr %.129.i.i to i64
  %i.co = sub i64 %i.cn, %i.a                     ; 3 uses
  %i.cp = icmp sgt i64 %i.co, 64
  br i1 %i.cp, label %bb.b, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_S9_T0_.exit, !llvm.loop !533

_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEET_S9_S9_T0_.exit, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  %.pre18 = load ptr, ptr %i.e, align 8, !tbaa !203
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, %bb.b
  %i.h = phi ptr [ %.pre18, %bb.b ], [ %i.bk, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 9 uses
  %.024.i.idx = phi i64 [ 4, %bb.b ], [ %.024.i.add, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn23.i = phi ptr [ %0, %bb.b ], [ %.024.i.ptr, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 4 uses
  %i.i = load i32, ptr %.024.i.ptr, align 4, !tbaa !192 ; 2 uses
  %i.j = load i32, ptr %0, align 4, !tbaa !192    ; 2 uses
  %i.k = zext i32 %i.i to i64                     ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !192  ; 4 uses
  %i.n = zext i32 %i.j to i64                     ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !192  ; 2 uses
  %i.q = icmp ult i32 %i.m, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i32 %i.m, %i.p
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !192  ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.n
  %i.w = load i32, ptr %i.v, align 4, !tbaa !192  ; 2 uses
  %i.x = icmp ult i32 %i.u, %i.w
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp ugt i32 %i.u, %i.w
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.i: ; preds = %bb.f
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !203  ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.k
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !192
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.n
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !192
  %i.ae = icmp ult i32 %i.ab, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.i, %bb.f, %bb.d
  %i.af = icmp samesign ugt i64 %.024.i.idx, 4
  br i1 %i.af, label %bb.g, label %bb.h, !prof !394

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !203
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 4
  store i32 %i.j, ptr %i.ag, align 4, !tbaa !192
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.i, %bb.e, %bb.c
  %i.ah = load i32, ptr %.pn23.i, align 4, !tbaa !192 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !192 ; 2 uses
  %i.al = icmp ult i32 %i.m, %i.ak
  br i1 %i.al, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i
  %i.am = phi i32 [ %i.bi, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i ], [ %i.ak, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i ]
  %i.an = phi i64 [ %i.bg, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i ] ; 2 uses
  %i.ao = phi i32 [ %i.bf, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i ], [ %i.m, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i ]
  %i.ap = phi i32 [ %i.be, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i ], [ %i.ah, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i ]
  %.017.i.i = phi ptr [ %.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i ], [ %.pn23.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i ] ; 3 uses
  %.0916.i.i = phi ptr [ %.017.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i ], [ %.024.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i ] ; 3 uses
  %i.aq = icmp ugt i32 %i.ao, %i.am
  br i1 %i.aq, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !203 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.k
  %i.at = load i32, ptr %i.as, align 4, !tbaa !192 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.an
  %i.av = load i32, ptr %i.au, align 4, !tbaa !192 ; 2 uses
  %i.aw = icmp ult i32 %i.at, %i.av
  br i1 %i.aw, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp ugt i32 %i.at, %i.av
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.i.i: ; preds = %bb.j
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !203 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.k
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !192
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.an
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !192
  %i.bd = icmp ult i32 %i.ba, %i.bc
  br i1 %i.bd, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.i.i, %bb.j, %.lr.ph.i.i
  store i32 %i.ap, ptr %.0916.i.i, align 4, !tbaa !192
  %.0.i.i = getelementptr inbounds i8, ptr %.017.i.i, i64 -4 ; 2 uses
  %i.be = load i32, ptr %.0.i.i, align 4, !tbaa !192 ; 2 uses
  %i.bf = load i32, ptr %i.l, align 4, !tbaa !192 ; 2 uses
  %i.bg = zext i32 %i.be to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !192 ; 2 uses
  %i.bj = icmp ult i32 %i.bf, %i.bi
  br i1 %i.bj, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, label %.lr.ph.i.i, !llvm.loop !21

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i:     ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.i.i, %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i, %bb.h, %bb.g
  %i.bk = phi ptr [ %i.h, %bb.h ], [ %.pre, %bb.g ], [ %i.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i ], [ %i.h, %bb.i ], [ %i.h, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.i.i ], [ %i.h, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i ] ; 4 uses
  %.sink.i = phi ptr [ %0, %bb.h ], [ %0, %bb.g ], [ %.024.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread19.i ], [ %.017.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i ], [ %.0916.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.i.i ], [ %.0916.i.i, %bb.i ]
  store i32 %i.i, ptr %.sink.i, align 4, !tbaa !192
  %.024.i.add = add nuw nsw i64 %.024.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.024.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_.exit, label %bb.c, !llvm.loop !22

_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.bl, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_.exit.i
  %.08.i = phi ptr [ %i.ct, %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_.exit.i ], [ %i.bl, %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_.exit ] ; 5 uses
  %i.bm = load i32, ptr %.08.i, align 4, !tbaa !192 ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bn ; 2 uses
  %.015.i.i = getelementptr inbounds i8, ptr %.08.i, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %.015.i.i, align 4, !tbaa !192 ; 2 uses
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !192 ; 2 uses
  %i.br = zext i32 %i.bp to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !192 ; 2 uses
  %i.bu = icmp ult i32 %i.bq, %i.bt
  br i1 %i.bu, label %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_.exit.i, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16
  %i.bv = phi i32 [ %i.cr, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16 ], [ %i.bt, %.lr.ph.i ]
  %i.bw = phi i64 [ %i.cp, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16 ], [ %i.br, %.lr.ph.i ] ; 2 uses
  %i.bx = phi i32 [ %i.co, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16 ], [ %i.bq, %.lr.ph.i ]
  %i.by = phi i32 [ %i.cn, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16 ], [ %i.bp, %.lr.ph.i ]
  %.017.i.i12 = phi ptr [ %.0.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16 ], [ %.015.i.i, %.lr.ph.i ] ; 3 uses
  %.0916.i.i13 = phi ptr [ %.017.i.i12, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16 ], [ %.08.i, %.lr.ph.i ] ; 3 uses
  %i.bz = icmp ugt i32 %i.bx, %i.bv
  br i1 %i.bz, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i11
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !203 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bn
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !192 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bw
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !192 ; 2 uses
  %i.cf = icmp ult i32 %i.cc, %i.ce
  br i1 %i.cf, label %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = icmp ugt i32 %i.cc, %i.ce
  br i1 %i.cg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.i.i14

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.i.i14: ; preds = %bb.l
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !203 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.bn
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !192
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.bw
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !192
  %i.cm = icmp ult i32 %i.cj, %i.cl
  br i1 %i.cm, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16, label %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.i.i14, %bb.l, %.lr.ph.i.i11
  store i32 %i.by, ptr %.0916.i.i13, align 4, !tbaa !192
  %.0.i.i17 = getelementptr inbounds i8, ptr %.017.i.i12, i64 -4 ; 2 uses
  %i.cn = load i32, ptr %.0.i.i17, align 4, !tbaa !192 ; 2 uses
  %i.co = load i32, ptr %i.bo, align 4, !tbaa !192 ; 2 uses
  %i.cp = zext i32 %i.cn to i64                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !192 ; 2 uses
  %i.cs = icmp ult i32 %i.co, %i.cr
  br i1 %i.cs, label %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_.exit.i, label %.lr.ph.i.i11, !llvm.loop !21

_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.i.i14, %bb.k, %.lr.ph.i
  %.09.lcssa.i.i = phi ptr [ %.08.i, %.lr.ph.i ], [ %.0916.i.i13, %bb.k ], [ %.017.i.i12, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.thread.i.i16 ], [ %.0916.i.i13, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIjPjEEbRT_T0_.exit.i.i14 ]
  store i32 %i.bm, ptr %.09.lcssa.i.i, align 4, !tbaa !192
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i15 = icmp eq ptr %i.ct, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !539

bb.m:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2)
  br label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_.exit

_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_.exit.i, %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_T0_.exit, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_SA_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !203  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread33
  %.036 = phi i64 [ %1, %.lr.ph ], [ %i.al, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread33 ] ; 2 uses
  %i.h = shl i64 %.036, 1                         ; 4 uses
  %i.i = add i64 %i.h, 2                          ; 4 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr [4 x i8], ptr %0, i64 %i.h
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.j, align 4, !tbaa !192
  %i.n = load i32, ptr %i.l, align 4, !tbaa !192
  %i.o = zext i32 %i.m to i64                     ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !192  ; 2 uses
  %i.r = zext i32 %i.n to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !192  ; 2 uses
  %i.u = icmp ult i32 %i.q, %i.t
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread33, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp ugt i32 %i.q, %i.t
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.o
  %i.y = load i32, ptr %i.x, align 4, !tbaa !192  ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.r
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !192 ; 2 uses
  %i.ab = icmp ult i32 %i.y, %i.aa
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread33, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp ugt i32 %i.y, %i.aa
  br i1 %i.ac, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread: ; preds = %bb.c, %bb.e
  %i.ad = or disjoint i64 %i.h, 1
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread33

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit: ; preds = %bb.e
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !203 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !192
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.r
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !192
  %i.aj = icmp ult i32 %i.ag, %i.ai
  %i.ak = or disjoint i64 %i.h, 1
  %cond.fr = freeze i1 %i.aj
  %spec.select = select i1 %cond.fr, i64 %i.ak, i64 %i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread33

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread33: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit, %bb.d, %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread
  %i.al = phi i64 [ %i.i, %bb.d ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit ], [ %i.ad, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread ], [ %i.i, %bb.b ] ; 4 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !192
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %.036
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !192
  %i.ap = icmp slt i64 %i.al, %i.b
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !540

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread33, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.al, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread33 ] ; 5 uses
  %i.aq = and i64 %2, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.as = add nsw i64 %2, -2
  %i.at = ashr exact i64 %i.as, 1
  %i.au = icmp eq i64 %.0.lcssa, %i.at
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = shl nsw i64 %.0.lcssa, 1
  %i.aw = or disjoint i64 %i.av, 1                ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !192
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !192
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge
  %.128 = phi i64 [ %i.aw, %bb.g ], [ %.0.lcssa, %bb.f ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ba = icmp sgt i64 %.128, %1
  br i1 %i.ba, label %.lr.ph.i, label %_ZSt11__push_heapIPjljN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_SA_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !203 ; 2 uses
  %i.bd = zext i32 %3 to i64                      ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.thread.i, %.lr.ph.i
  %.01321.i = phi i64 [ %.128, %.lr.ph.i ], [ %.022.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.thread.i ] ; 5 uses
  %.022.in.i = add nsw i64 %.01321.i, -1
  %.022.i = sdiv i64 %.022.in.i, 2                ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %0, i64 %.022.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !192 ; 2 uses
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !192 ; 2 uses
  %i.bm = load i32, ptr %i.be, align 4, !tbaa !192 ; 2 uses
  %i.bn = icmp ult i32 %i.bl, %i.bm
  br i1 %i.bn, label %_ZSt11__push_heapIPjljN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_SA_T1_RT2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = icmp ugt i32 %i.bl, %i.bm
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = load ptr, ptr %i.bf, align 8, !tbaa !203 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bj
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !192 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bd
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !192 ; 2 uses
  %i.bu = icmp ult i32 %i.br, %i.bt
  br i1 %i.bu, label %_ZSt11__push_heapIPjljN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_SA_T1_RT2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = icmp ugt i32 %i.br, %i.bt
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.i: ; preds = %bb.l
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !203 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bj
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !192
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bd
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !192
  %i.cb = icmp ult i32 %i.by, %i.ca
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIPjljN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_SA_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.i, %bb.l, %bb.j
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %.01321.i
  store i32 %i.bi, ptr %i.cc, align 4, !tbaa !192
  %i.cd = icmp sgt i64 %.022.i, %1
  br i1 %i.cd, label %bb.i, label %_ZSt11__push_heapIPjljN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_SA_T1_RT2_.exit, !llvm.loop !541

_ZSt11__push_heapIPjljN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEEEvT_T0_SA_T1_RT2_.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.thread.i, %bb.h
  %.013.lcssa.i = phi i64 [ %.128, %bb.h ], [ %.01321.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.i ], [ %.022.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5nlsat6solver3imp10reorder_ltEEclIPjjEEbT_RT0_.exit.thread.i ], [ %.01321.i, %bb.i ], [ %.01321.i, %bb.k ]
  %i.ce = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i
  store i32 %3, ptr %i.ce, align 4, !tbaa !192
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEEEvT_S9_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !192    ; 5 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !192    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !203  ; 4 uses
  %i.e = zext i32 %i.a to i64                     ; 7 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !192  ; 6 uses
  %i.h = zext i32 %i.b to i64                     ; 7 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !192  ; 6 uses
  %i.k = icmp ult i32 %i.g, %i.j
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread36, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i32 %i.g, %i.j
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp10reorder_ltEEclIPjS8_EEbT_T0_.exit.thread, label %bb.c
end_hunk_0
begin_hunk_1_@_ZNK5nlsat6solver3imp6degreeERKNS_6clauseE:bb.a

.epil.preheader:                                  ; preds = %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.unr-lcssa ]
  %.015.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i ], [ %.2.i.i.1, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.unr-lcssa ] ; 3 uses
  %lcmp.mod31 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i.epil.init
  %.sroa.03.0.copyload.i.i.epil = load i32, ptr %i.z, align 4, !tbaa !192
  %i.aa = lshr i32 %.sroa.03.0.copyload.i.i.epil, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !240 ; 2 uses
  %.not.i.i.epil = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.epil, label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit, label %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.epil

_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.epil: ; preds = %.epil.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !260 ; 2 uses
  %i.ag = icmp eq i32 %.015.i.i.epil.init, -1
  %i.ah = tail call i32 @llvm.umax.i32(i32 %i.af, i32 %.015.i.i.epil.init)
  %.1.i.i.epil = select i1 %i.ag, i32 %i.af, i32 %i.ah
  br label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit

_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit: ; preds = %.epil.preheader, %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.epil, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.unr-lcssa
  %.2.i.i.lcssa = phi i32 [ %.2.i.i.1, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.unr-lcssa ], [ %.1.i.i.epil, %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.epil ], [ %.015.i.i.epil.init, %.epil.preheader ]
  %i.ai = icmp eq i32 %.2.i.i.lcssa, -1
  br i1 %i.ai, label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit
  %.idx = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.025 = phi ptr [ %i.c, %.lr.ph ], [ %i.bh, %bb.j ] ; 2 uses
  %.01724 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.j ] ; 2 uses
  %i.ak = load i32, ptr %.025, align 4, !tbaa !192
  %i.al = lshr i32 %i.ak, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !244
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !240 ; 6 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !243
  %i.as = icmp slt i32 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !260 ; 2 uses
  br i1 %i.as, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !263 ; 2 uses
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %wide.trip.count.i = zext i32 %i.aw to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.01518.i = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i, %bb.h ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !265
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = and i64 %i.ba, -8
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = tail call noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.bc, i32 noundef %i.au)
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 %.01518.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit, label %bb.h, !llvm.loop !1

bb.i:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !267
  %i.bg = tail call noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.bf, i32 noundef %i.au)
  br label %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit

_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit:    ; preds = %bb.h, %bb.g, %bb.i
  %.016.i = phi i32 [ %i.bg, %bb.i ], [ 0, %bb.g ], [ %spec.select.i, %bb.h ]
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.016.i, i32 %.01724)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit
  %.2 = phi i32 [ %spec.select, %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit ], [ %.01724, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.025, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.aj
  br i1 %.not, label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread, label %bb.e

_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread: ; preds = %bb.j, %bb.a, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit
  %.019 = phi i32 [ 0, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit ], [ 0, %bb.a ], [ %.2, %bb.j ]
  ret i32 %.019
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !243
  %i.b = icmp slt i32 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !260  ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !263  ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %wide.trip.count = zext i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.01518 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !265
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, -8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = tail call noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.l, i32 noundef %i.d)
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.m, i32 %.01518) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !1

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !267
  %i.p = tail call noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.o, i32 noundef %i.d)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.d
  %.016 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.b ], [ %spec.select, %bb.c ]
  ret i32 %.016
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #1 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.53", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.53", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph24

.lr.ph:                                           ; preds = %.lr.ph24
  %i.f = icmp eq i64 %i.g, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph24, !llvm.loop !546

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.018.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph24:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0151723 = phi i64 [ %i.g, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.01822 = phi ptr [ %i.h, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.g = add nsw i64 %.0151723, -1                ; 3 uses
  %i.h = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEET_S9_S9_T0_(ptr noundef %0, ptr noundef %.01822, ptr %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_T1_(ptr noundef %i.h, ptr noundef %.01822, i64 noundef %i.g, ptr %3)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = icmp sgt i64 %i.j, 64
  br i1 %i.k, label %.lr.ph, label %.loopexit, !llvm.loop !546

.loopexit:                                        ; preds = %.lr.ph24, %bb.a, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.pre22.i = load ptr, ptr %2, align 8, !tbaa !203
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, %bb.b
  %i.e = phi ptr [ %.pre22.i, %bb.b ], [ %i.ai, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 7 uses
  %.020.i.idx = phi i64 [ 4, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.f = load i32, ptr %.020.i.ptr, align 4, !tbaa !192 ; 5 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !192    ; 3 uses
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !192  ; 4 uses
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !192  ; 2 uses
  %i.n = icmp ult i32 %i.j, %i.m
  %i.o = icmp ule i32 %i.j, %i.m
  %i.p = icmp ult i32 %i.f, %i.g
  %spec.select.i.i.i = and i1 %i.p, %i.o
  %.0.i.i.i = or i1 %i.n, %spec.select.i.i.i
  br i1 %.0.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = icmp samesign ugt i64 %.020.i.idx, 4
  br i1 %i.q, label %bb.e, label %bb.f, !prof !394

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !203
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store i32 %i.g, ptr %i.r, align 4, !tbaa !192
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.s = load i32, ptr %.pn19.i, align 4, !tbaa !192 ; 3 uses
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !192  ; 2 uses
  %i.w = icmp ult i32 %i.j, %i.v
  %i.x = icmp ule i32 %i.j, %i.v
  %i.y = icmp ult i32 %i.f, %i.s
  %spec.select.i.i12.i.i = and i1 %i.y, %i.x
  %.0.i.i13.i.i = or i1 %i.w, %spec.select.i.i12.i.i
  br i1 %.0.i.i13.i.i, label %.lr.ph.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.z = phi i32 [ %i.aa, %.lr.ph.i.i ], [ %i.s, %bb.g ]
  %.015.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0914.i.i = phi ptr [ %.015.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store i32 %i.z, ptr %.0914.i.i, align 4, !tbaa !192
  %.0.i.i = getelementptr inbounds i8, ptr %.015.i.i, i64 -4 ; 2 uses
  %i.aa = load i32, ptr %.0.i.i, align 4, !tbaa !192 ; 3 uses
  %i.ab = load i32, ptr %i.i, align 4, !tbaa !192 ; 2 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !192 ; 2 uses
  %i.af = icmp ult i32 %i.ab, %i.ae
  %i.ag = icmp ule i32 %i.ab, %i.ae
  %i.ah = icmp ult i32 %i.f, %i.aa
  %spec.select.i.i.i.i = and i1 %i.ah, %i.ag
  %.0.i.i.i.i = or i1 %i.af, %spec.select.i.i.i.i
  br i1 %.0.i.i.i.i, label %.lr.ph.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, !llvm.loop !547

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.020.i.ptr, %bb.g ], [ %.015.i.i, %.lr.ph.i.i ]
  %i.ai = phi ptr [ %i.e, %bb.f ], [ %.pre.i, %bb.e ], [ %i.e, %bb.g ], [ %i.e, %.lr.ph.i.i ] ; 4 uses
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !192
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_.exit, label %bb.c, !llvm.loop !548

_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.aj, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_.exit.i
  %.08.i = phi ptr [ %i.be, %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_.exit.i ], [ %i.aj, %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_.exit ] ; 5 uses
  %i.ak = load i32, ptr %.08.i, align 4, !tbaa !192 ; 4 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.al ; 2 uses
  %.011.i.i = getelementptr inbounds i8, ptr %.08.i, i64 -4 ; 2 uses
  %i.an = load i32, ptr %.011.i.i, align 4, !tbaa !192 ; 3 uses
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !192 ; 2 uses
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !192 ; 2 uses
  %i.as = icmp ult i32 %i.ao, %i.ar
  %i.at = icmp ule i32 %i.ao, %i.ar
  %i.au = icmp ult i32 %i.ak, %i.an
  %spec.select.i.i12.i.i11 = and i1 %i.au, %i.at
  %.0.i.i13.i.i12 = or i1 %i.as, %spec.select.i.i12.i.i11
  br i1 %.0.i.i13.i.i12, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_.exit.i

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i14
  %i.av = phi i32 [ %i.aw, %.lr.ph.i.i14 ], [ %i.an, %.lr.ph.i ]
  %.015.i.i15 = phi ptr [ %.0.i.i17, %.lr.ph.i.i14 ], [ %.011.i.i, %.lr.ph.i ] ; 3 uses
  %.0914.i.i16 = phi ptr [ %.015.i.i15, %.lr.ph.i.i14 ], [ %.08.i, %.lr.ph.i ]
  store i32 %i.av, ptr %.0914.i.i16, align 4, !tbaa !192
  %.0.i.i17 = getelementptr inbounds i8, ptr %.015.i.i15, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %.0.i.i17, align 4, !tbaa !192 ; 3 uses
  %i.ax = load i32, ptr %i.am, align 4, !tbaa !192 ; 2 uses
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !192 ; 2 uses
  %i.bb = icmp ult i32 %i.ax, %i.ba
  %i.bc = icmp ule i32 %i.ax, %i.ba
  %i.bd = icmp ult i32 %i.ak, %i.aw
  %spec.select.i.i.i.i18 = and i1 %i.bd, %i.bc
  %.0.i.i.i.i19 = or i1 %i.bb, %spec.select.i.i.i.i18
  br i1 %.0.i.i.i.i19, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_.exit.i, !llvm.loop !547

_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i14, %.lr.ph.i
  %.09.lcssa.i.i = phi ptr [ %.08.i, %.lr.ph.i ], [ %.015.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ak, ptr %.09.lcssa.i.i, align 4, !tbaa !192
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.be, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !549

bb.h:                                             ; preds = %bb.a
  %i.bf = icmp eq ptr %0, %1
  br i1 %i.bf, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %.017.i20 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i20, %1
  br i1 %.not18.i, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i
  %.pre22.i22 = load ptr, ptr %2, align 8, !tbaa !203
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29, %.lr.ph.i21
  %i.bg = phi ptr [ %.pre22.i22, %.lr.ph.i21 ], [ %i.cr, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29 ] ; 8 uses
  %.020.i23 = phi ptr [ %.017.i20, %.lr.ph.i21 ], [ %.0.i31, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29 ] ; 6 uses
  %.pn19.i24 = phi ptr [ %0, %.lr.ph.i21 ], [ %.020.i23, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29 ] ; 4 uses
  %i.bh = load i32, ptr %.020.i23, align 4, !tbaa !192 ; 5 uses
  %i.bi = load i32, ptr %0, align 4, !tbaa !192   ; 3 uses
  %i.bj = zext i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !192 ; 4 uses
  %i.bm = zext i32 %i.bi to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !192 ; 2 uses
  %i.bp = icmp ult i32 %i.bl, %i.bo
  %i.bq = icmp ule i32 %i.bl, %i.bo
  %i.br = icmp ult i32 %i.bh, %i.bi
  %spec.select.i.i.i25 = and i1 %i.br, %i.bq
  %.0.i.i.i26 = or i1 %i.bp, %spec.select.i.i.i25
  br i1 %.0.i.i.i26, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bs = ptrtoint ptr %.020.i23 to i64
  %i.bt = sub i64 %i.bs, %i.b                     ; 3 uses
  %i.bu = ashr exact i64 %i.bt, 2                 ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 1
  br i1 %i.bv, label %bb.k, label %bb.l, !prof !394

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn19.i24, i64 8
  %i.bx = sub nsw i64 0, %i.bu
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.by, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bt, i1 false)
  %.pre.i39 = load ptr, ptr %2, align 8, !tbaa !203
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29

bb.l:                                             ; preds = %bb.j
  %i.bz = icmp eq i64 %i.bt, 4
  br i1 %i.bz, label %bb.m, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn19.i24, i64 4
  store i32 %i.bi, ptr %i.ca, align 4, !tbaa !192
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29

bb.n:                                             ; preds = %bb.i
  %i.cb = load i32, ptr %.pn19.i24, align 4, !tbaa !192 ; 3 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !192 ; 2 uses
  %i.cf = icmp ult i32 %i.bl, %i.ce
  %i.cg = icmp ule i32 %i.bl, %i.ce
  %i.ch = icmp ult i32 %i.bh, %i.cb
  %spec.select.i.i12.i.i27 = and i1 %i.ch, %i.cg
  %.0.i.i13.i.i28 = or i1 %i.cf, %spec.select.i.i12.i.i27
  br i1 %.0.i.i13.i.i28, label %.lr.ph.i.i33, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29

.lr.ph.i.i33:                                     ; preds = %bb.n, %.lr.ph.i.i33
  %i.ci = phi i32 [ %i.cj, %.lr.ph.i.i33 ], [ %i.cb, %bb.n ]
  %.015.i.i34 = phi ptr [ %.0.i.i36, %.lr.ph.i.i33 ], [ %.pn19.i24, %bb.n ] ; 3 uses
  %.0914.i.i35 = phi ptr [ %.015.i.i34, %.lr.ph.i.i33 ], [ %.020.i23, %bb.n ]
  store i32 %i.ci, ptr %.0914.i.i35, align 4, !tbaa !192
  %.0.i.i36 = getelementptr inbounds i8, ptr %.015.i.i34, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %.0.i.i36, align 4, !tbaa !192 ; 3 uses
  %i.ck = load i32, ptr %i.bk, align 4, !tbaa !192 ; 2 uses
  %i.cl = zext i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !192 ; 2 uses
  %i.co = icmp ult i32 %i.ck, %i.cn
  %i.cp = icmp ule i32 %i.ck, %i.cn
  %i.cq = icmp ult i32 %i.bh, %i.cj
  %spec.select.i.i.i.i37 = and i1 %i.cq, %i.cp
  %.0.i.i.i.i38 = or i1 %i.co, %spec.select.i.i.i.i37
  br i1 %.0.i.i.i.i38, label %.lr.ph.i.i33, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29, !llvm.loop !547

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29:   ; preds = %.lr.ph.i.i33, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i30 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.020.i23, %bb.n ], [ %.015.i.i34, %.lr.ph.i.i33 ]
  %i.cr = phi ptr [ %i.bg, %bb.m ], [ %.pre.i39, %bb.k ], [ %i.bg, %bb.l ], [ %i.bg, %bb.n ], [ %i.bg, %.lr.ph.i.i33 ]
  store i32 %i.bh, ptr %.sink.i30, align 4, !tbaa !192
  %.0.i31 = getelementptr inbounds nuw i8, ptr %.020.i23, i64 4 ; 2 uses
  %.not.i32 = icmp eq ptr %.0.i31, %1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_.exit, label %bb.i, !llvm.loop !548

_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29, %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_.exit.i, %.preheader.i, %bb.h, %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -4 ; 3 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !192  ; 6 uses
  %i.j = load i32, ptr %i.f, align 4, !tbaa !192  ; 6 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !203    ; 6 uses
  %i.l = zext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !192  ; 6 uses
  %i.o = zext i32 %i.j to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !192  ; 6 uses
  %i.r = icmp ult i32 %i.n, %i.q
  %i.s = icmp ule i32 %i.n, %i.q
  %i.t = icmp ult i32 %i.i, %i.j
  %spec.select.i.i.i = and i1 %i.t, %i.s
  %.0.i.i.i = or i1 %i.r, %spec.select.i.i.i
  %i.u = load i32, ptr %i.h, align 4, !tbaa !192  ; 7 uses
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !192  ; 8 uses
  br i1 %.0.i.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.y = icmp ult i32 %i.q, %i.x
  %i.z = icmp ule i32 %i.q, %i.x
  %i.aa = icmp ult i32 %i.j, %i.u
  %spec.select.i.i22.i = and i1 %i.aa, %i.z
  %.0.i.i23.i = or i1 %i.y, %spec.select.i.i22.i
  br i1 %.0.i.i23.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %0, align 4, !tbaa !192
  store i32 %i.j, ptr %0, align 4, !tbaa !192
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !192
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_S9_S9_T0_.exit.preheader

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp ult i32 %i.n, %i.x
  %i.ad = icmp ule i32 %i.n, %i.x
  %i.ae = icmp ult i32 %i.i, %i.u
  %spec.select.i.i24.i = and i1 %i.ae, %i.ad
  %.0.i.i25.i = or i1 %i.ac, %spec.select.i.i24.i
  %i.af = load i32, ptr %0, align 4, !tbaa !192   ; 2 uses
  br i1 %.0.i.i25.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.u, ptr %0, align 4, !tbaa !192
  store i32 %i.af, ptr %i.h, align 4, !tbaa !192
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_S9_S9_T0_.exit.preheader

bb.f:                                             ; preds = %bb.d
  store i32 %i.i, ptr %0, align 4, !tbaa !192
  store i32 %i.af, ptr %i.g, align 4, !tbaa !192
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_S9_S9_T0_.exit.preheader

bb.g:                                             ; preds = %bb.a
  %i.ag = icmp ult i32 %i.n, %i.x
  %i.ah = icmp ule i32 %i.n, %i.x
  %i.ai = icmp ult i32 %i.i, %i.u
  %spec.select.i.i26.i = and i1 %i.ai, %i.ah
  %.0.i.i27.i = or i1 %i.ag, %spec.select.i.i26.i
  br i1 %.0.i.i27.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %0, align 4, !tbaa !192
  store i32 %i.i, ptr %0, align 4, !tbaa !192
  store i32 %i.aj, ptr %i.g, align 4, !tbaa !192
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_S9_S9_T0_.exit.preheader

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i32 %i.q, %i.x
  %i.al = icmp ule i32 %i.q, %i.x
  %i.am = icmp ult i32 %i.j, %i.u
  %spec.select.i.i28.i = and i1 %i.am, %i.al
  %.0.i.i29.i = or i1 %i.ak, %spec.select.i.i28.i
  %i.an = load i32, ptr %0, align 4, !tbaa !192   ; 2 uses
  br i1 %.0.i.i29.i, label %bb.j, label %bb.k

end_hunk_1
