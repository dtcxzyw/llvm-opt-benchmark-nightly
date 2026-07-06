inline.NumInlined: 756
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE:bb.a
  br i1 %.not.i.i, label %bb.l, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0, !prof !30

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.dj)
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0

bb.m:                                             ; preds = %bb.c, %bb.j
  %i.dm = phi i64 [ %i.ag, %bb.c ], [ %i.de, %bb.j ] ; 3 uses
  %indvars.iv566796 = phi i64 [ %indvars.iv.next57.jt1, %bb.c ], [ %indvars.iv56, %bb.j ]
  %indvars.iv7394 = phi i64 [ %indvars.iv.next83, %bb.c ], [ %indvars.iv, %bb.j ]
  %.sroa.023.07992 = phi ptr [ %.lcssa139.sink172, %bb.c ], [ %.sroa.023.0, %bb.j ]
  %indvars.iv.next8190 = phi i64 [ %indvars.iv.next.jt1, %bb.c ], [ %indvars.iv.next, %bb.j ]
  %i.dn = phi ptr [ %i.aa, %bb.c ], [ %i.e, %bb.j ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 14
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = load i64, ptr %i.dn, align 8, !tbaa !8
  %i.dr = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i32 2, ptr %i.ds, align 4, !tbaa !26
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.dt, ptr noundef nonnull align 4 dereferenceable(52) %i.du, i64 52, i1 false)
  %i.dv = zext i8 %i.dp to i64                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dm
  %.not19.i = icmp samesign eq i64 %i.dm, %i.dv
  br i1 %.not19.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.020.i = phi ptr [ %i.ec, %.lr.ph.i ], [ %i.dy, %.lr.ph.preheader.i ] ; 2 uses
  %i.dz = load ptr, ptr %.020.i, align 8, !tbaa !17, !nonnull !28, !noundef !28
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = atomicrmw add ptr %i.ea, i32 2 monotonic, align 4 ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, %i.dx
  br i1 %.not.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1, label %.lr.ph.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1: ; preds = %.lr.ph.i, %bb.m
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dm
  store ptr %.sroa.023.07992, ptr %i.ee, align 8, !tbaa !17
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0: ; preds = %bb.k, %bb.l
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.df
  store ptr %.sroa.023.07991, ptr %i.eg, align 8, !tbaa !17
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0

.loopexit117:                                     ; preds = %bb.b, %bb.d
  %i.eh = phi ptr [ %i.ai, %bb.d ], [ %i.e, %bb.b ] ; 3 uses
  %indvars.iv74 = phi i64 [ %indvars.iv.next82, %bb.d ], [ %indvars.iv, %bb.b ]
  %indvars.iv5668 = phi i64 [ %indvars.iv.next57.jt0, %bb.d ], [ %indvars.iv56, %bb.b ]
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !8
  %i.ej = add i64 %i.ei, %3
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !8
  %i.ek = icmp sgt i64 %indvars.iv74, 1
  br i1 %i.ek, label %.lr.ph, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit

.lr.ph:                                           ; preds = %.loopexit117, %.lr.ph
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.lr.ph ], [ %indvars.iv5668, %.loopexit117 ] ; 3 uses
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, -1
  %i.el = getelementptr [8 x i8], ptr %0, i64 %indvars.iv59
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !14 ; 3 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !8
  %i.eo = add i64 %i.en, %3
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !8
  %i.ep = icmp sgt i64 %indvars.iv59, 1
  br i1 %i.ep, label %.lr.ph, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit, !llvm.loop !45

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i, %bb.b
  %indvars.iv.next84 = phi i64 [ %indvars.iv.next80.lcssa, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i ], [ %indvars.iv.next, %bb.b ]
  %indvars.iv77 = phi i64 [ %indvars.iv72.lcssa, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i ], [ %indvars.iv, %bb.b ]
  %indvars.iv5671 = phi i64 [ %indvars.iv5666.lcssa, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i ], [ %indvars.iv56, %bb.b ]
  %.sroa.023.2.ph = phi ptr [ %.sroa.0.0.i.i87, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i ], [ %.sroa.023.0, %bb.b ] ; 2 uses
  %.sroa.6.2.ph = phi i32 [ %.sroa.3.0.i.i88, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i ], [ %.sroa.6.0, %bb.b ] ; 2 uses
  %i.eq = icmp sgt i64 %indvars.iv77, 1
  %indvars.iv.next57 = add nsw i64 %indvars.iv5671, -1
  br i1 %i.eq, label %bb.b, label %.loopexit, !llvm.loop !46

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt2: ; preds = %.lr.ph232, %bb.e
  %i.er = phi i8 [ %i.aq, %bb.e ], [ 0, %.lr.ph232 ]
  %i.es = load i64, ptr %.sroa.023.078229, align 8, !tbaa !8
  store i64 %i.es, ptr %i.aj, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i8 3, ptr %i.et, align 4, !tbaa !27
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aj, i64 13
  store i8 %i.er, ptr %i.eu, align 1, !tbaa !7
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  store i8 0, ptr %i.ev, align 2, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aj, i64 15
  store i8 1, ptr %i.ew, align 1, !tbaa !7
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %.sroa.023.078229, ptr %i.ex, align 8, !tbaa !17
  %i.ey = icmp sgt i64 %indvars.iv72230, 1
  br i1 %i.ey, label %.preheader116, label %.loopexit.thread, !llvm.loop !46

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.jt1, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1
  %.lcssa139.sink172 = phi ptr [ %i.au, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.jt1 ], [ %i.dr, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1 ] ; 5 uses
  %indvars.iv.next83 = phi i64 [ %indvars.iv.next80.lcssa, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.jt1 ], [ %indvars.iv.next8190, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1 ] ; 5 uses
  %indvars.iv76 = phi i64 [ %indvars.iv72.lcssa, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.jt1 ], [ %indvars.iv7394, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1 ]
  %indvars.iv5670 = phi i64 [ %indvars.iv5666.lcssa, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.jt1 ], [ %indvars.iv566796, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1 ]
  %i.ez = load i64, ptr %.lcssa139.sink172, align 8, !tbaa !8
  %i.fa = add i64 %i.ez, %3
  store i64 %i.fa, ptr %.lcssa139.sink172, align 8, !tbaa !8
  %i.fb = icmp sgt i64 %indvars.iv76, 1
  br i1 %i.fb, label %bb.c, label %.loopexit.thread106, !llvm.loop !46

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.jt0, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0
  %.lcssa134.lcssa.sink174 = phi ptr [ %.lcssa191, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.jt0 ], [ %i.dg, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0 ] ; 3 uses
  %indvars.iv.next82 = phi i64 [ %indvars.iv.next80.lcssa, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.jt0 ], [ %indvars.iv.next8189, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0 ] ; 2 uses
  %indvars.iv75 = phi i64 [ %indvars.iv72.lcssa, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.jt0 ], [ %indvars.iv7393, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0 ]
  %indvars.iv5669 = phi i64 [ %indvars.iv5666.lcssa, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.jt0 ], [ %indvars.iv566795, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0 ]
  %i.fc = load i64, ptr %.lcssa134.lcssa.sink174, align 8, !tbaa !8
  %i.fd = add i64 %i.fc, %3
  store i64 %i.fd, ptr %.lcssa134.lcssa.sink174, align 8, !tbaa !8
  %i.fe = icmp sgt i64 %indvars.iv75, 1
  br i1 %i.fe, label %bb.d, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit, !llvm.loop !46

.loopexit:                                        ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit, %bb.a
  %.sroa.023.3 = phi ptr [ %4, %bb.a ], [ %.sroa.023.2.ph, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit ] ; 3 uses
  %.sroa.6.3 = phi i32 [ %5, %bb.a ], [ %.sroa.6.2.ph, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit ]
  switch i32 %.sroa.6.3, label %.loopexit.thread113 [
    i32 2, label %.loopexit.thread
    i32 1, label %.loopexit.thread106
    i32 0, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit
  ]

.loopexit.thread:                                 ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt2, %.loopexit
  %.sroa.023.3105 = phi ptr [ %.sroa.023.3, %.loopexit ], [ %i.aj, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt2 ] ; 2 uses
  %i.ff = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i32 2, ptr %i.fg, align 4, !tbaa !26
  %i.fh = load i64, ptr %1, align 8, !tbaa !8
  %i.fi = load i64, ptr %.sroa.023.3105, align 8, !tbaa !8
  %i.fj = add i64 %i.fi, %i.fh
  store i64 %i.fj, ptr %i.ff, align 8, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !7
  %i.fm = add i8 %i.fl, 1                         ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i8 3, ptr %i.fn, align 4, !tbaa !27
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ff, i64 13
  store i8 %i.fm, ptr %i.fo, align 1, !tbaa !7
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ff, i64 14
  store i8 0, ptr %i.fp, align 2, !tbaa !7
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 15
  store i8 2, ptr %i.fq, align 1, !tbaa !7
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store ptr %1, ptr %i.fr, align 8, !tbaa !17
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store ptr %.sroa.023.3105, ptr %i.fs, align 8, !tbaa !17
  %i.ft = icmp ugt i8 %i.fm, 11
  br i1 %i.ft, label %bb.n, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !30

bb.n:                                             ; preds = %.loopexit.thread
  %i.fu = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7RebuildEPS2_(ptr noundef nonnull %i.ff) ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 13
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !7
  %i.fx = icmp ugt i8 %i.fw, 11
  br i1 %i.fx, label %bb.o, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !30

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 71), i32 noundef 280, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44)
  unreachable

.loopexit.thread106:                              ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1, %.loopexit
  %.sroa.023.3109 = phi ptr [ %.sroa.023.3, %.loopexit ], [ %.lcssa139.sink172, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fz = atomicrmw sub ptr %i.fy, i32 2 acq_rel, align 4
  %.not.i.i33 = icmp eq i32 %i.fz, 2
  br i1 %.not.i.i33, label %bb.p, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !30

bb.p:                                             ; preds = %.loopexit.thread106
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef %1)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit

.loopexit.thread113:                              ; preds = %.loopexit
  unreachable

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit: ; preds = %.lr.ph, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0, %.loopexit117, %bb.p, %.loopexit.thread106, %bb.n, %.loopexit.thread, %.loopexit
  %.2 = phi ptr [ %.sroa.023.3109, %bb.p ], [ %i.ff, %.loopexit.thread ], [ %i.fu, %bb.n ], [ %.sroa.023.3, %.loopexit ], [ %.sroa.023.3109, %.loopexit.thread106 ], [ %i.eh, %.loopexit117 ], [ %.lcssa134.lcssa.sink174, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0 ], [ %i.em, %.lr.ph ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20240116::cord_internal::(anonymous namespace)::StackOperations", align 8 ; 16 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.s, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !7     ; 5 uses
  %i.d = zext i8 %i.c to i32                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %.not92 = icmp eq i8 %i.c, 0                    ; 2 uses
  br i1 %.not92, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count.i = zext i8 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01416.i = phi ptr [ %0, %.lr.ph.i ], [ %i.o, %bb.d ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i, i64 8
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %.critedge.loopexit.i

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  store ptr %.01416.i, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i, i64 14
  %i.k = load i8, ptr %i.j, align 2
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.01416.i, i64 16
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.c, !llvm.loop !19

.critedge.thread.i:                               ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load atomic i32, ptr %i.p acquire, align 4
  %i.r = icmp eq i32 %i.q, 2
  %i.s = zext i1 %i.r to i32
  %i.t = add nuw nsw i32 %i.s, %i.d               ; 2 uses
  store i32 %i.t, ptr %4, align 8, !tbaa !21
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit

.critedge.loopexit.i:                             ; preds = %bb.c
  %i.u = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.b
  %.014.lcssa.i = phi ptr [ %0, %bb.b ], [ %.01416.i, %.critedge.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.u, %.critedge.loopexit.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 8
  %i.w = load atomic i32, ptr %i.v acquire, align 4
  %i.x = icmp eq i32 %i.w, 2
  %i.y = zext i1 %i.x to i32
  %i.z = add nuw nsw i32 %.0.lcssa.i, %i.y        ; 4 uses
  store i32 %i.z, ptr %4, align 8, !tbaa !21
  %i.aa = icmp slt i32 %.0.lcssa.i, %i.d
  br i1 %i.aa, label %.lr.ph24.i, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit

.lr.ph24.i:                                       ; preds = %.critedge.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ac = zext i32 %.0.lcssa.i to i64             ; 4 uses
  %wide.trip.count = zext i8 %i.c to i64          ; 3 uses
  %i.ad = sub nsw i64 %wide.trip.count, %i.ac
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph24.i, %.prol.preheader
  %indvars.iv27.i.prol = phi i64 [ %indvars.iv.next28.i.prol, %.prol.preheader ], [ %i.ac, %.lr.ph24.i ] ; 2 uses
  %.11522.i.prol = phi ptr [ %i.ak, %.prol.preheader ], [ %.014.lcssa.i, %.lr.ph24.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph24.i ]
  %indvars.iv.next28.i.prol = add nuw nsw i64 %indvars.iv27.i.prol, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv27.i.prol
  store ptr %.11522.i.prol, ptr %i.ae, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %.11522.i.prol, i64 14
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.11522.i.prol, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph24.i
  %.lcssa179.unr = phi ptr [ poison, %.lr.ph24.i ], [ %i.ak, %.prol.preheader ]
  %indvars.iv27.i.unr = phi i64 [ %i.ac, %.lr.ph24.i ], [ %indvars.iv.next28.i.prol, %.prol.preheader ]
  %.11522.i.unr = phi ptr [ %.014.lcssa.i, %.lr.ph24.i ], [ %i.ak, %.prol.preheader ]
  %i.al = sub nsw i64 %i.ac, %wide.trip.count
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new

.lr.ph24.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph24.i.new
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i.3, %.lr.ph24.i.new ], [ %indvars.iv27.i.unr, %.prol.loopexit ] ; 5 uses
  %.11522.i = phi ptr [ %i.br, %.lr.ph24.i.new ], [ %.11522.i.unr, %.prol.loopexit ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv27.i
  store ptr %.11522.i, ptr %i.an, align 8, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %.11522.i, i64 14
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.11522.i, i64 16
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !17 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv27.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.at, ptr %i.av, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 14
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !17 ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv27.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 14
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next28.i.3 = add nuw nsw i64 %indvars.iv27.i, 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv27.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 14
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !17 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next28.i.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new, !llvm.loop !25

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit: ; preds = %.prol.loopexit, %.lr.ph24.i.new, %.critedge.thread.i, %.critedge.i
  %i.bs = phi i32 [ %i.z, %.critedge.i ], [ %i.t, %.critedge.thread.i ], [ %i.z, %.lr.ph24.i.new ], [ %i.z, %.prol.loopexit ] ; 3 uses
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.o, %.critedge.thread.i ], [ %.lcssa179.unr, %.prol.loopexit ], [ %i.br, %.lr.ph24.i.new ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !7
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 14 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !7
  %i.by = zext i8 %i.bx to i64
  %i.bz = sub nsw i64 %i.bv, %i.by
  %i.ca = icmp ult i64 %i.bz, 6
  br i1 %i.ca, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit
  %i.cb = icmp sgt i32 %i.bs, %i.d                ; 3 uses
  br i1 %i.cb, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cc = load i64, ptr %.115.lcssa.i, align 8, !tbaa !8
  %i.cd = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 2, ptr %i.ce, align 4, !tbaa !26
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.cf, ptr noundef nonnull align 4 dereferenceable(52) %i.cg, i64 52, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 16 ; 2 uses
  %i.ci = load i8, ptr %i.bw, align 2, !tbaa !7   ; 2 uses
  %i.cj = load i8, ptr %i.bt, align 1, !tbaa !7   ; 2 uses
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ck
  %.not10.i.i = icmp eq i8 %i.ci, %i.cj
  br i1 %.not10.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cm = zext i8 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cm
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %i.cn, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.co = load ptr, ptr %.011.i.i, align 8, !tbaa !17, !nonnull !28, !noundef !28
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = atomicrmw add ptr %i.cp, i32 2 monotonic, align 4 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cr, %i.cl
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit: ; preds = %.lr.ph.i.i, %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %.115.lcssa.i, %bb.e ], [ %i.cd, %bb.f ], [ %i.cd, %.lr.ph.i.i ] ; 10 uses
  %.sroa.3.0.i = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %.lr.ph.i.i ]
  %i.cs = tail call { i64, ptr } @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEESt17basic_string_viewIcSt11char_traitsIcEES8_m(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i, i64 %1, ptr %2, i64 noundef %3) ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0      ; 3 uses
  %i.cu = extractvalue { i64, ptr } %i.cs, 1
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cw = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !8
  %i.cx = add i64 %i.cw, %1
  store i64 %i.cx, ptr %.sroa.0.0.i, align 8, !tbaa !8
  %i.cy = call fastcc noundef ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull %0, i32 noundef %i.d, i64 noundef %1, ptr nonnull %.sroa.0.0.i, i32 %.sroa.3.0.i)
  br label %bb.r

bb.g:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cz = sub i64 %1, %i.ct                       ; 5 uses
  %i.da = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !8
  %i.db = add i64 %i.da, %i.cz
  store i64 %i.db, ptr %.sroa.0.0.i, align 8, !tbaa !8
  br i1 %.not92, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %i.dc = zext i8 %i.c to i64                     ; 5 uses
  %i.dd = add nsw i32 %i.d, -1
  %i.de = zext nneg i32 %i.dd to i64              ; 3 uses
  %i.df = getelementptr [8 x i8], ptr %4, i64 %i.dc ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !14 ; 4 uses
  %i.dh = sext i32 %i.bs to i64
  br i1 %i.cb, label %.loopexit124.i.i, label %bb.j

bb.h:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i
  %indvars.iv.next63.jt1.i.i = add nsw i64 %indvars.iv6273103.i.i, -1 ; 2 uses
  %indvars.iv.next.jt1.i.i = add nsw i64 %indvars.iv.next8797.i.i, -1 ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next8797.i.i ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !14 ; 3 uses
  %.not46.jt1.i.i = icmp sgt i64 %indvars.iv.next8797.i.i, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 14
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dl to i64                    ; 2 uses
  br i1 %.not46.jt1.i.i, label %.preheader, label %.loopexit94

bb.i:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i
  %indvars.iv.next63.jt0.i.i = add nsw i64 %indvars.iv6273102.i.i, -1
  %i.dn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next8796.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !14
  br label %.loopexit124.i.i

bb.j:                                             ; preds = %.preheader.i.i
  %.not46.i.i = icmp slt i32 %i.bs, %i.d
  %indvars.iv.next.i.i = add nsw i64 %i.dc, -1    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 14
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i64                    ; 2 uses
  br i1 %.not46.i.i, label %.preheader, label %.loopexit94

.loopexit94:                                      ; preds = %bb.h, %bb.j
  %i.ds = phi i64 [ %i.dr, %bb.j ], [ %i.dm, %bb.h ]
  %indvars.iv6273102.i.i = phi i64 [ %i.de, %bb.j ], [ %indvars.iv.next63.jt1.i.i, %bb.h ]
  %indvars.iv79100.i.i = phi i64 [ %i.dc, %bb.j ], [ %indvars.iv.next8797.i.i, %bb.h ]
  %.sroa.024.08598.i.i = phi ptr [ %.sroa.0.0.i, %bb.j ], [ %i.eh, %bb.h ]
  %indvars.iv.next8796.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.j ], [ %indvars.iv.next.jt1.i.i, %bb.h ] ; 2 uses
  %i.dt = phi ptr [ %i.df, %bb.j ], [ %i.di, %bb.h ]
  %i.du = phi ptr [ %i.dg, %bb.j ], [ %i.dj, %bb.h ] ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ds ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !17 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = atomicrmw sub ptr %i.dy, i32 2 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.dz, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i, !prof !30

bb.k:                                             ; preds = %.loopexit94
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.dx)
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i

.preheader:                                       ; preds = %bb.j, %bb.h
  %i.ea = phi i64 [ %i.dm, %bb.h ], [ %i.dr, %bb.j ] ; 2 uses
  %indvars.iv6273103.i.i = phi i64 [ %indvars.iv.next63.jt1.i.i, %bb.h ], [ %i.de, %bb.j ]
  %indvars.iv79101.i.i = phi i64 [ %indvars.iv.next8797.i.i, %bb.h ], [ %i.dc, %bb.j ]
  %.sroa.024.08599.i.i = phi ptr [ %i.eh, %bb.h ], [ %.sroa.0.0.i, %bb.j ]
  %indvars.iv.next8797.i.i = phi i64 [ %indvars.iv.next.jt1.i.i, %bb.h ], [ %indvars.iv.next.i.i, %bb.j ] ; 5 uses
  %i.eb = phi ptr [ %i.di, %bb.h ], [ %i.df, %bb.j ]
  %i.ec = phi ptr [ %i.dj, %bb.h ], [ %i.dg, %bb.j ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 15
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = zext i8 %i.ee to i64
  %i.eg = load i64, ptr %i.ec, align 8, !tbaa !8  ; 2 uses
  %i.eh = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 2, ptr %i.ei, align 4, !tbaa !26
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.ej, ptr noundef nonnull align 4 dereferenceable(52) %i.ek, i64 52, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ea, 3
  %.idx22.i.i.i = shl nuw nsw i64 %i.ef, 3        ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx22.i.i.i
  %i.en = add nuw nsw i64 %.idx.i.i.i, 8          ; 2 uses
  %.not20.i.i.i = icmp samesign eq i64 %i.en, %.idx22.i.i.i
  br i1 %.not20.i.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader
  %.019.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.en
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.021.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.019.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.eo = load ptr, ptr %.021.i.i.i, align 8, !tbaa !17, !nonnull !28, !noundef !28
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = atomicrmw add ptr %i.ep, i32 2 monotonic, align 4 ; 0 uses
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.021.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.em
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i, label %.lr.ph.i.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre.i = load i64, ptr %i.eh, align 8, !tbaa !8
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i, %.preheader
  %i.er = phi i64 [ %.pre.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i ], [ %i.eg, %.preheader ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ea
  store ptr %.sroa.024.08599.i.i, ptr %i.et, align 8, !tbaa !17
  %i.eu = add i64 %i.er, %i.cz
  store i64 %i.eu, ptr %i.eh, align 8, !tbaa !8
  store ptr %i.eh, ptr %i.eb, align 8, !tbaa !14
  %i.ev = icmp sgt i64 %indvars.iv79101.i.i, 1
  br i1 %i.ev, label %bb.h, label %.loopexit.thread113.i.i, !llvm.loop !48

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i: ; preds = %bb.k, %.loopexit94
  store ptr %.sroa.024.08598.i.i, ptr %i.dw, align 8, !tbaa !17
  %i.ew = load i64, ptr %i.du, align 8, !tbaa !8
  %i.ex = add i64 %i.ew, %i.cz
  store i64 %i.ex, ptr %i.du, align 8, !tbaa !8
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !14
  %i.ey = icmp sgt i64 %indvars.iv79100.i.i, 1
  br i1 %i.ey, label %bb.i, label %.loopexit, !llvm.loop !48

.loopexit124.i.i:                                 ; preds = %.preheader.i.i, %bb.i
  %i.ez = phi ptr [ %i.do, %bb.i ], [ %i.dg, %.preheader.i.i ] ; 3 uses
  %indvars.iv80.i.i = phi i64 [ %indvars.iv.next8796.i.i, %bb.i ], [ %i.dc, %.preheader.i.i ]
  %indvars.iv6274.i.i = phi i64 [ %indvars.iv.next63.jt0.i.i, %bb.i ], [ %i.de, %.preheader.i.i ]
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !8
  %i.fb = add i64 %i.fa, %i.cz
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !8
  %i.fc = icmp sgt i64 %indvars.iv80.i.i, 1
  br i1 %i.fc, label %.lr.ph.i.i68, label %.loopexit

.lr.ph.i.i68:                                     ; preds = %.loopexit124.i.i, %.lr.ph.i.i68
  %indvars.iv65.i.i = phi i64 [ %indvars.iv.next66.i.i, %.lr.ph.i.i68 ], [ %indvars.iv6274.i.i, %.loopexit124.i.i ] ; 3 uses
  %indvars.iv.next66.i.i = add nsw i64 %indvars.iv65.i.i, -1
  %i.fd = getelementptr [8 x i8], ptr %4, i64 %indvars.iv65.i.i
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !14 ; 3 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !8
  %i.fg = add i64 %i.ff, %i.cz
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !8
  %i.fh = icmp sgt i64 %indvars.iv65.i.i, 1
  br i1 %i.fh, label %.lr.ph.i.i68, label %.loopexit, !llvm.loop !49

.loopexit.i.i:                                    ; preds = %bb.g
  br i1 %i.cb, label %.loopexit, label %.loopexit.thread113.i.i

.loopexit.thread113.i.i:                          ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i, %.loopexit.i.i
  %.sroa.024.3116.i.i = phi ptr [ %.sroa.0.0.i, %.loopexit.i.i ], [ %i.eh, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fj = atomicrmw sub ptr %i.fi, i32 2 acq_rel, align 4
  %.not.i.i36.i.i = icmp eq i32 %i.fj, 2
  br i1 %.not.i.i36.i.i, label %bb.l, label %.loopexit, !prof !30

bb.l:                                             ; preds = %.loopexit.thread113.i.i
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i68, %.loopexit.i.i, %bb.l, %.loopexit.thread113.i.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i, %.loopexit124.i.i
  %.2.i.i = phi ptr [ %.sroa.024.3116.i.i, %bb.l ], [ %i.ez, %.loopexit124.i.i ], [ %i.du, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i ], [ %.sroa.0.0.i, %.loopexit.i.i ], [ %.sroa.024.3116.i.i, %.loopexit.thread113.i.i ], [ %i.fe, %.lr.ph.i.i68 ]
  %i.fk = add nuw nsw i32 %i.d, 1
  store i32 %i.fk, ptr %4, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit
  %.sroa.11.0 = phi ptr [ %i.cu, %.loopexit ], [ %2, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.ct, %.loopexit ], [ %1, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ] ; 4 uses
  %.160 = phi ptr [ %.2.i.i, %.loopexit ], [ %0, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ] ; 2 uses
  %i.fl = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE0EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %.sroa.0.0, ptr %.sroa.11.0, i64 noundef %3) ; 3 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !8  ; 2 uses
  %.not107 = icmp eq i64 %i.fm, %.sroa.0.0
  br i1 %.not107, label %.thread85, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %bb.n

.thread85:                                        ; preds = %bb.q, %bb.m
  %.063.lcssa = phi i32 [ %i.d, %bb.m ], [ %i.fv, %bb.q ]
  %.261.lcssa = phi ptr [ %.160, %bb.m ], [ %i.fs, %bb.q ]
  %.lcssa95 = phi ptr [ %i.fl, %bb.m ], [ %i.hk, %bb.q ]
  %.lcssa = phi i64 [ %.sroa.0.0, %bb.m ], [ %.sroa.speculated.i.i, %bb.q ]
  %i.fo = call fastcc noundef ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261.lcssa, i32 noundef %.063.lcssa, i64 noundef %.lcssa, ptr nonnull %.lcssa95, i32 2)
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph, %bb.q
  %i.fp = phi i64 [ %i.fm, %.lr.ph ], [ %i.hl, %bb.q ] ; 2 uses
  %i.fq = phi ptr [ %i.fl, %.lr.ph ], [ %i.hk, %bb.q ]
  %.261110 = phi ptr [ %.160, %.lr.ph ], [ %i.fs, %bb.q ]
  %.063109 = phi i32 [ %i.d, %.lr.ph ], [ %i.fv, %bb.q ]
  %.sroa.0.1108 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.speculated.i.i, %bb.q ] ; 2 uses
  %i.fr = sub i64 %.sroa.0.1108, %i.fp
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.1108, i64 %i.fr) ; 4 uses
  %i.fs = call fastcc noundef ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261110, i32 noundef %.063109, i64 noundef %i.fp, ptr nonnull %i.fq, i32 2) ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 13
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !7   ; 4 uses
  %i.fv = zext i8 %i.fu to i32                    ; 3 uses
  %.not93 = icmp eq i8 %i.fu, 0
  br i1 %.not93, label %bb.q, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %bb.n
  %wide.trip.count.i72 = zext i8 %i.fu to i64     ; 2 uses
  %xtraiter183 = and i64 %wide.trip.count.i72, 3  ; 3 uses
  %i.fw = icmp ult i8 %i.fu, 4
  br i1 %i.fw, label %.epil.preheader, label %.lr.ph.i71.new

.lr.ph.i71.new:                                   ; preds = %.lr.ph.i71
  %unroll_iter = and i64 %wide.trip.count.i72, 252
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i71.new
  %indvars.iv.i73 = phi i64 [ 0, %.lr.ph.i71.new ], [ %indvars.iv.next.i74.3, %bb.o ] ; 5 uses
  %.067.i = phi ptr [ %i.fs, %.lr.ph.i71.new ], [ %i.hb, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i71.new ], [ %niter.next.3, %bb.o ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.i73
  store ptr %.067.i, ptr %i.fx, align 8, !tbaa !14
  %i.fy = getelementptr inbounds nuw i8, ptr %.067.i, i64 14
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.ga
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !17 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.i73
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %i.gd, ptr %i.gf, align 8, !tbaa !14
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 14
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gi
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !17 ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.i73
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %.4 = phi ptr [ %i.fo, %.thread85 ], [ %i.cy, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  %.5 = phi ptr [ %.4, %bb.r ], [ %0, %bb.a ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEESt17basic_string_viewIcSt11char_traitsIcEES8_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7     ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = sub nsw i64 6, %i.c                      ; 2 uses
  %.not.i = icmp eq i8 %i.b, 6
  br i1 %.not.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !7
  %i.g = zext i8 %i.f to i64
  %i.h = add nsw i64 %i.d, %i.g                   ; 3 uses
  %i.i = trunc i64 %i.h to i8
  store i8 %i.i, ptr %i.e, align 2, !tbaa !7
  store i8 6, ptr %i.a, align 1, !tbaa !7
  %.not1415.i = icmp ugt i64 %i.h, 5
  br i1 %.not1415.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.016.i = phi i64 [ 5, %.lr.ph.i ], [ %.0.i, %bb.c ] ; 3 uses
  %i.k = sub i64 %.016.i, %i.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016.i
  store ptr %i.m, ptr %i.n, align 8, !tbaa !17
  %.0.i = add nsw i64 %.016.i, -1                 ; 2 uses
  %.not14.i = icmp ult i64 %.0.i, %i.h
  br i1 %.not14.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit, label %bb.c, !llvm.loop !29

_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit: ; preds = %bb.c, %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit
  %.sroa.0.0 = phi i64 [ %1, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit ], [ %.sroa.speculated.i.i, %bb.d ] ; 4 uses
  %i.q = add i64 %.sroa.0.0, %3                   ; 2 uses
  %i.r = icmp ult i64 %i.q, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 4083)
  %i.s = add nuw nsw i64 %spec.store.select.i.i, 13
  %.0.i.i = select i1 %i.r, i64 32, i64 %i.s      ; 2 uses
  %i.t = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.t, i64 -8, i64 -64
  %i.u = select i1 %i.t, i64 8, i64 64
  %i.v = add nsw i64 %.0.i.i, -1
  %i.w = add nuw nsw i64 %i.v, %i.u
  %i.x = and i64 %i.w, %.neg.i.i                  ; 3 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #20 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 2, ptr %i.aa, align 8, !tbaa !26
  %i.ab = icmp samesign ult i64 %i.x, 513         ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.ab, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.ab, i64 2, i64 58
  %i.ac = lshr i64 %i.x, %.sink6.i.i.i.i
  %i.ad = add nuw nsw i64 %i.ac, %.sink5.i.i.i.i  ; 3 uses
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i8 %i.ae, ptr %i.af, align 4, !tbaa !27
  %i.ag = trunc nuw nsw i64 %i.ad to i32
  %i.ah = icmp samesign ult i64 %i.ad, 67         ; 2 uses
  %.sink6.i.i.i = select i1 %i.ah, i32 3, i32 6
  %i.ai = shl nuw nsw i32 %i.ag, %.sink6.i.i.i
  %i.aj = select i1 %i.ah, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.ai, %i.aj
  %i.ak = sext i32 %narrow.i.i to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0, i64 %i.ak) ; 3 uses
  store i64 %.sroa.speculated, ptr %i.y, align 8, !tbaa !8
  %i.al = load i8, ptr %i.p, align 2, !tbaa !7
  %i.am = add i8 %i.al, -1                        ; 3 uses
  store i8 %i.am, ptr %i.p, align 2, !tbaa !7
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.an
  store ptr %i.y, ptr %i.ao, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %i.aq = sub i64 %.sroa.0.0, %.sroa.speculated   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ar, i64 %.sroa.speculated, i1 false)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0, i64 %i.aq) ; 3 uses
  %i.as = icmp eq i64 %.sroa.speculated.i.i, 0
  %.not = icmp eq i8 %i.am, 0
  %or.cond = or i1 %.not, %i.as
  br i1 %or.cond, label %.critedge, label %bb.d, !llvm.loop !52

.critedge:                                        ; preds = %bb.d
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %.sroa.speculated.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %2, 1
  ret { i64, ptr } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE0EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %0, ptr nofree readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 2, ptr %i.b, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 3, ptr %i.c, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 0, ptr %i.d, align 1, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 6, ptr %i.e, align 1, !tbaa !7
  %i.f = icmp eq i64 %0, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.b ]
  %.01928 = phi i64 [ 6, %.lr.ph ], [ %i.ad, %bb.b ]
  %.sroa.0.027 = phi i64 [ %0, %.lr.ph ], [ %.sroa.speculated.i.i, %bb.b ] ; 4 uses
  %i.h = add i64 %.sroa.0.027, %2                 ; 2 uses
  %i.i = icmp ult i64 %i.h, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4083)
  %i.j = add nuw nsw i64 %spec.store.select.i.i, 13
  %.0.i.i = select i1 %i.i, i64 32, i64 %i.j      ; 2 uses
  %i.k = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.k, i64 -8, i64 -64
  %i.l = select i1 %i.k, i64 8, i64 64
  %i.m = add nsw i64 %.0.i.i, -1
  %i.n = add nuw nsw i64 %i.m, %i.l
  %i.o = and i64 %i.n, %.neg.i.i                  ; 3 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 2, ptr %i.r, align 8, !tbaa !26
  %i.s = icmp samesign ult i64 %i.o, 513          ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.s, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.s, i64 2, i64 58
  %i.t = lshr i64 %i.o, %.sink6.i.i.i.i
  %i.u = add nuw nsw i64 %i.t, %.sink5.i.i.i.i    ; 3 uses
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i8 %i.v, ptr %i.w, align 4, !tbaa !27
  %i.x = trunc nuw nsw i64 %i.u to i32
  %i.y = icmp samesign ult i64 %i.u, 67           ; 2 uses
  %.sink6.i.i.i = select i1 %i.y, i32 3, i32 6
  %i.z = shl nuw nsw i32 %i.x, %.sink6.i.i.i
  %i.aa = select i1 %i.y, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.z, %i.aa
  %i.ab = sext i32 %narrow.i.i to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.027, i64 %i.ab) ; 4 uses
  store i64 %.sroa.speculated, ptr %i.p, align 8, !tbaa !8
  %i.ac = add i64 %.sroa.speculated, %.029        ; 2 uses
  %i.ad = add nsw i64 %.01928, -1                 ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ad
  store ptr %i.p, ptr %i.ae, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  %i.ag = sub i64 %.sroa.0.027, %.sroa.speculated ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.ah, i64 %.sroa.speculated, i1 false)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.027, i64 %i.ag) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i, 0
  %i.aj = icmp eq i64 %i.ad, 0
  %.not20 = or i1 %i.ai, %i.aj
  br i1 %.not20, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !53

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ak = trunc i64 %i.ad to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.019.lcssa = phi i8 [ 6, %bb.a ], [ %i.ak, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ac, %._crit_edge.loopexit ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i64 %.0.lcssa, ptr %i.a, align 8, !tbaa !8
  store i8 %.019.lcssa, ptr %i.al, align 2, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20240116::cord_internal::(anonymous namespace)::StackOperations.0", align 8 ; 16 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.t, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !7     ; 5 uses
  %i.d = zext i8 %i.c to i32                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %.not108 = icmp eq i8 %i.c, 0                   ; 2 uses
  br i1 %.not108, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count.i = zext i8 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01416.i = phi ptr [ %0, %.lr.ph.i ], [ %i.n, %bb.d ] ; 4 uses
  %i.f = getelementptr i8, ptr %.01416.i, i64 8   ; 2 uses
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %.critedge.loopexit.i

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  store ptr %.01416.i, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i, i64 15
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr [8 x i8], ptr %i.f, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.c, !llvm.loop !33

.critedge.thread.i:                               ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load atomic i32, ptr %i.o acquire, align 4
  %i.q = icmp eq i32 %i.p, 2
  %i.r = zext i1 %i.q to i32
  %i.s = add nuw nsw i32 %i.r, %i.d               ; 2 uses
  store i32 %i.s, ptr %4, align 8, !tbaa !34
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit

.critedge.loopexit.i:                             ; preds = %bb.c
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.b
  %.014.lcssa.i = phi ptr [ %0, %bb.b ], [ %.01416.i, %.critedge.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.t, %.critedge.loopexit.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp eq i32 %i.v, 2
  %i.x = zext i1 %i.w to i32
  %i.y = add nuw nsw i32 %.0.lcssa.i, %i.x        ; 4 uses
  store i32 %i.y, ptr %4, align 8, !tbaa !34
  %i.z = icmp slt i32 %.0.lcssa.i, %i.d
  br i1 %i.z, label %.lr.ph24.i, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit

.lr.ph24.i:                                       ; preds = %.critedge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ab = zext i32 %.0.lcssa.i to i64             ; 4 uses
  %wide.trip.count = zext i8 %i.c to i64          ; 3 uses
  %i.ac = sub nsw i64 %wide.trip.count, %i.ab
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph24.i, %.prol.preheader
  %indvars.iv27.i.prol = phi i64 [ %indvars.iv.next28.i.prol, %.prol.preheader ], [ %i.ab, %.lr.ph24.i ] ; 2 uses
  %.11522.i.prol = phi ptr [ %i.aj, %.prol.preheader ], [ %.014.lcssa.i, %.lr.ph24.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph24.i ]
  %indvars.iv.next28.i.prol = add nuw nsw i64 %indvars.iv27.i.prol, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i.prol
  store ptr %.11522.i.prol, ptr %i.ad, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %.11522.i.prol, i64 15
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr i8, ptr %.11522.i.prol, i64 8
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !54

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph24.i
  %.lcssa226.unr = phi ptr [ poison, %.lr.ph24.i ], [ %i.aj, %.prol.preheader ]
  %indvars.iv27.i.unr = phi i64 [ %i.ab, %.lr.ph24.i ], [ %indvars.iv.next28.i.prol, %.prol.preheader ]
  %.11522.i.unr = phi ptr [ %.014.lcssa.i, %.lr.ph24.i ], [ %i.aj, %.prol.preheader ]
  %i.ak = sub nsw i64 %i.ab, %wide.trip.count
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new

.lr.ph24.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph24.i.new
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i.3, %.lr.ph24.i.new ], [ %indvars.iv27.i.unr, %.prol.loopexit ] ; 5 uses
  %.11522.i = phi ptr [ %i.bq, %.lr.ph24.i.new ], [ %.11522.i.unr, %.prol.loopexit ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i
  store ptr %.11522.i, ptr %i.am, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %.11522.i, i64 15
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr i8, ptr %.11522.i, i64 8
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !17 ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %i.au, align 8, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 15
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr i8, ptr %i.as, i64 8
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17 ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 15
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr i8, ptr %i.ba, i64 8
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next28.i.3 = add nuw nsw i64 %indvars.iv27.i, 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 15
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr i8, ptr %i.bi, i64 8
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next28.i.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new, !llvm.loop !37

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit: ; preds = %.prol.loopexit, %.lr.ph24.i.new, %.critedge.thread.i, %.critedge.i
  %i.br = phi i32 [ %i.y, %.critedge.i ], [ %i.s, %.critedge.thread.i ], [ %i.y, %.lr.ph24.i.new ], [ %i.y, %.prol.loopexit ] ; 3 uses
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.n, %.critedge.thread.i ], [ %.lcssa226.unr, %.prol.loopexit ], [ %i.bq, %.lr.ph24.i.new ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !7
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 14 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !7
  %i.bx = zext i8 %i.bw to i64
  %i.by = sub nsw i64 %i.bu, %i.bx
  %i.bz = icmp ult i64 %i.by, 6
  br i1 %i.bz, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit
  %i.ca = icmp sgt i32 %i.br, %i.d                ; 3 uses
  br i1 %i.ca, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = load i64, ptr %.115.lcssa.i, align 8, !tbaa !8
  %i.cc = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 2, ptr %i.cd, align 4, !tbaa !26
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cf = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.ce, ptr noundef nonnull align 4 dereferenceable(52) %i.cf, i64 52, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 16 ; 2 uses
  %i.ch = load i8, ptr %i.bv, align 2, !tbaa !7   ; 2 uses
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !7   ; 2 uses
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cj
  %.not10.i.i = icmp eq i8 %i.ch, %i.ci
  br i1 %.not10.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cl = zext i8 %i.ch to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cl
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %i.cm, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cn = load ptr, ptr %.011.i.i, align 8, !tbaa !17, !nonnull !28, !noundef !28
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = atomicrmw add ptr %i.co, i32 2 monotonic, align 4 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, %i.ck
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit: ; preds = %.lr.ph.i.i, %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %.115.lcssa.i, %bb.e ], [ %i.cc, %bb.f ], [ %i.cc, %.lr.ph.i.i ] ; 10 uses
  %.sroa.3.0.i = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %.lr.ph.i.i ]
  %i.cr = tail call { i64, ptr } @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES8_m(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i, i64 %1, ptr %2, i64 noundef %3) ; 2 uses
  %i.cs = extractvalue { i64, ptr } %i.cr, 0      ; 3 uses
  %i.ct = extractvalue { i64, ptr } %i.cr, 1
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cv = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !8
  %i.cw = add i64 %i.cv, %1
  store i64 %i.cw, ptr %.sroa.0.0.i, align 8, !tbaa !8
  %i.cx = call fastcc noundef ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull %0, i32 noundef %i.d, i64 noundef %1, ptr nonnull %.sroa.0.0.i, i32 %.sroa.3.0.i)
  br label %bb.s

bb.g:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cy = sub i64 %1, %i.cs                       ; 5 uses
  %i.cz = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !8
  %i.da = add i64 %i.cz, %i.cy
  store i64 %i.da, ptr %.sroa.0.0.i, align 8, !tbaa !8
  br i1 %.not108, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %i.db = zext i8 %i.c to i64                     ; 5 uses
  %i.dc = add nsw i32 %i.d, -1
  %i.dd = zext nneg i32 %i.dc to i64              ; 3 uses
  %i.de = getelementptr [8 x i8], ptr %4, i64 %i.db ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !14 ; 4 uses
  %i.dg = sext i32 %i.br to i64
  br i1 %i.ca, label %.loopexit119.i.i, label %bb.j

bb.h:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i
  %indvars.iv.next59.jt1.i.i = add nsw i64 %indvars.iv586998.i.i, -1 ; 2 uses
  %indvars.iv.next.jt1.i.i = add nsw i64 %indvars.iv.next8392.i.i, -1 ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next8392.i.i ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !14 ; 3 uses
  %.not45.jt1.i.i = icmp sgt i64 %indvars.iv.next8392.i.i, %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 15
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i64
  %i.dm = add nsw i64 %i.dl, -1                   ; 2 uses
  br i1 %.not45.jt1.i.i, label %.preheader, label %.loopexit110

bb.i:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i
  %indvars.iv.next59.jt0.i.i = add nsw i64 %indvars.iv586997.i.i, -1
  %i.dn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next8391.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !14
  br label %.loopexit119.i.i

bb.j:                                             ; preds = %.preheader.i.i
  %.not45.i.i = icmp slt i32 %i.br, %i.d
  %indvars.iv.next.i.i = add nsw i64 %i.db, -1    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 15
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i64
  %i.ds = add nsw i64 %i.dr, -1                   ; 2 uses
  br i1 %.not45.i.i, label %.preheader, label %.loopexit110

.loopexit110:                                     ; preds = %bb.h, %bb.j
  %i.dt = phi i64 [ %i.ds, %bb.j ], [ %i.dm, %bb.h ]
  %indvars.iv586997.i.i = phi i64 [ %i.dd, %bb.j ], [ %indvars.iv.next59.jt1.i.i, %bb.h ]
  %indvars.iv7595.i.i = phi i64 [ %i.db, %bb.j ], [ %indvars.iv.next8392.i.i, %bb.h ]
  %.sroa.024.08193.i.i = phi ptr [ %.sroa.0.0.i, %bb.j ], [ %i.eh, %bb.h ]
  %indvars.iv.next8391.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.j ], [ %indvars.iv.next.jt1.i.i, %bb.h ] ; 2 uses
  %i.du = phi ptr [ %i.de, %bb.j ], [ %i.dh, %bb.h ]
  %i.dv = phi ptr [ %i.df, %bb.j ], [ %i.di, %bb.h ] ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dt ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !17 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = atomicrmw sub ptr %i.dz, i32 2 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ea, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i, !prof !30

bb.k:                                             ; preds = %.loopexit110
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.dy)
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i

.preheader:                                       ; preds = %bb.j, %bb.h
  %i.eb = phi i64 [ %i.dm, %bb.h ], [ %i.ds, %bb.j ] ; 3 uses
  %indvars.iv586998.i.i = phi i64 [ %indvars.iv.next59.jt1.i.i, %bb.h ], [ %i.dd, %bb.j ]
  %indvars.iv7596.i.i = phi i64 [ %indvars.iv.next8392.i.i, %bb.h ], [ %i.db, %bb.j ]
  %.sroa.024.08194.i.i = phi ptr [ %i.eh, %bb.h ], [ %.sroa.0.0.i, %bb.j ]
  %indvars.iv.next8392.i.i = phi i64 [ %indvars.iv.next.jt1.i.i, %bb.h ], [ %indvars.iv.next.i.i, %bb.j ] ; 5 uses
  %i.ec = phi ptr [ %i.dh, %bb.h ], [ %i.de, %bb.j ]
  %i.ed = phi ptr [ %i.di, %bb.h ], [ %i.df, %bb.j ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 14
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = load i64, ptr %i.ed, align 8, !tbaa !8  ; 2 uses
  %i.eh = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 2, ptr %i.ei, align 4, !tbaa !26
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.ej, ptr noundef nonnull align 4 dereferenceable(52) %i.ek, i64 52, i1 false)
  %i.el = zext i8 %i.ef to i64                    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.eb
  %.not19.i.i.i = icmp samesign eq i64 %i.eb, %i.el
  br i1 %.not19.i.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i ], [ %i.eo, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ep = load ptr, ptr %.020.i.i.i, align 8, !tbaa !17, !nonnull !28, !noundef !28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = atomicrmw add ptr %i.eq, i32 2 monotonic, align 4 ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.es, %i.en
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i, label %.lr.ph.i.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre138.i = load i64, ptr %i.eh, align 8, !tbaa !8
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i, %.preheader
  %i.et = phi i64 [ %.pre138.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i ], [ %i.eg, %.preheader ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.eb
  store ptr %.sroa.024.08194.i.i, ptr %i.ev, align 8, !tbaa !17
  %i.ew = add i64 %i.et, %i.cy
  store i64 %i.ew, ptr %i.eh, align 8, !tbaa !8
  store ptr %i.eh, ptr %i.ec, align 8, !tbaa !14
  %i.ex = icmp sgt i64 %indvars.iv7596.i.i, 1
  br i1 %i.ex, label %bb.h, label %.loopexit.thread108.i.i, !llvm.loop !55

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i: ; preds = %bb.k, %.loopexit110
  store ptr %.sroa.024.08193.i.i, ptr %i.dx, align 8, !tbaa !17
  %i.ey = load i64, ptr %i.dv, align 8, !tbaa !8
  %i.ez = add i64 %i.ey, %i.cy
  store i64 %i.ez, ptr %i.dv, align 8, !tbaa !8
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !14
  %i.fa = icmp sgt i64 %indvars.iv7595.i.i, 1
  br i1 %i.fa, label %bb.i, label %.loopexit, !llvm.loop !55

.loopexit119.i.i:                                 ; preds = %.preheader.i.i, %bb.i
  %i.fb = phi ptr [ %i.do, %bb.i ], [ %i.df, %.preheader.i.i ] ; 3 uses
  %indvars.iv76.i.i = phi i64 [ %indvars.iv.next8391.i.i, %bb.i ], [ %i.db, %.preheader.i.i ]
  %indvars.iv5870.i.i = phi i64 [ %indvars.iv.next59.jt0.i.i, %bb.i ], [ %i.dd, %.preheader.i.i ]
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !8
  %i.fd = add i64 %i.fc, %i.cy
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !8
  %i.fe = icmp sgt i64 %indvars.iv76.i.i, 1
  br i1 %i.fe, label %.lr.ph.i.i68, label %.loopexit

.lr.ph.i.i68:                                     ; preds = %.loopexit119.i.i, %.lr.ph.i.i68
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %.lr.ph.i.i68 ], [ %indvars.iv5870.i.i, %.loopexit119.i.i ] ; 3 uses
  %indvars.iv.next62.i.i = add nsw i64 %indvars.iv61.i.i, -1
  %i.ff = getelementptr [8 x i8], ptr %4, i64 %indvars.iv61.i.i
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !14 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !8
  %i.fi = add i64 %i.fh, %i.cy
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !8
  %i.fj = icmp sgt i64 %indvars.iv61.i.i, 1
  br i1 %i.fj, label %.lr.ph.i.i68, label %.loopexit, !llvm.loop !56

.loopexit.i.i:                                    ; preds = %bb.g
  br i1 %i.ca, label %.loopexit, label %.loopexit.thread108.i.i

.loopexit.thread108.i.i:                          ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i, %.loopexit.i.i
  %.sroa.024.3111.i.i = phi ptr [ %.sroa.0.0.i, %.loopexit.i.i ], [ %i.eh, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fl = atomicrmw sub ptr %i.fk, i32 2 acq_rel, align 4
  %.not.i.i35.i.i = icmp eq i32 %i.fl, 2
  br i1 %.not.i.i35.i.i, label %bb.l, label %.loopexit, !prof !30

bb.l:                                             ; preds = %.loopexit.thread108.i.i
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i68, %.loopexit.i.i, %bb.l, %.loopexit.thread108.i.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i, %.loopexit119.i.i
  %.2.i.i = phi ptr [ %.sroa.024.3111.i.i, %bb.l ], [ %i.fb, %.loopexit119.i.i ], [ %i.dv, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i ], [ %.sroa.0.0.i, %.loopexit.i.i ], [ %.sroa.024.3111.i.i, %.loopexit.thread108.i.i ], [ %i.fg, %.lr.ph.i.i68 ]
  %i.fm = add nuw nsw i32 %i.d, 1
  store i32 %i.fm, ptr %4, align 8, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit
  %.sroa.11.0 = phi ptr [ %i.ct, %.loopexit ], [ %2, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ]
  %.sroa.0.0 = phi i64 [ %i.cs, %.loopexit ], [ %1, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ]
  %.160 = phi ptr [ %.2.i.i, %.loopexit ], [ %0, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ]
  %i.fn = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i32 2, ptr %i.fo, align 4, !tbaa !26
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  store i8 3, ptr %i.fp, align 4, !tbaa !27
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 13
  store i8 0, ptr %i.fq, align 1, !tbaa !7
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 14
  store i8 0, ptr %i.fr, align 2, !tbaa !7
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i: ; preds = %bb.r, %bb.m
  %i.ft = phi ptr [ %i.fn, %bb.m ], [ %i.iv, %bb.r ] ; 5 uses
  %.261138 = phi ptr [ %.160, %bb.m ], [ %i.hd, %bb.r ] ; 2 uses
  %.063137 = phi i32 [ %i.d, %bb.m ], [ %i.hg, %bb.r ] ; 2 uses
  %.sroa.0.1136 = phi i64 [ %.sroa.0.0, %bb.m ], [ %i.hb, %bb.r ] ; 6 uses
  %.sroa.11.1135 = phi ptr [ %.sroa.11.0, %bb.m ], [ %i.hc, %bb.r ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i: ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i
  %.029.i = phi i64 [ 0, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.gs, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ]
  %.01828.i = phi i64 [ 0, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.gr, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ] ; 2 uses
  %.sroa.6.027.i = phi ptr [ %.sroa.11.1135, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.gu, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ] ; 2 uses
  %.sroa.0.026.i = phi i64 [ %.sroa.0.1136, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.gt, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ] ; 3 uses
  %i.fv = add i64 %.sroa.0.026.i, %3              ; 2 uses
  %i.fw = icmp ult i64 %i.fv, 20
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.fv, i64 4083)
  %i.fx = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %i.fw, i64 32, i64 %i.fx  ; 2 uses
  %i.fy = icmp samesign ult i64 %.0.i.i.i, 513    ; 2 uses
  %.neg.i.i.i = select i1 %i.fy, i64 -8, i64 -64
  %i.fz = select i1 %i.fy, i64 8, i64 64
  %i.ga = add nsw i64 %.0.i.i.i, -1
  %i.gb = add nuw nsw i64 %i.ga, %i.fz
  %i.gc = and i64 %i.gb, %.neg.i.i.i              ; 3 uses
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #20 ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 2, ptr %i.ge, align 8
  %i.gf = icmp samesign ult i64 %i.gc, 513        ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.gf, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.gf, i64 2, i64 58
  %i.gg = lshr i64 %i.gc, %.sink6.i.i.i.i.i
  %i.gh = add nuw nsw i64 %i.gg, %.sink5.i.i.i.i.i ; 3 uses
  %i.gi = trunc nuw nsw i64 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i8 %i.gi, ptr %i.gj, align 4, !tbaa !27
  %i.gk = trunc nuw nsw i64 %i.gh to i32
  %i.gl = icmp samesign ult i64 %i.gh, 67         ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.gl, i32 3, i32 6
  %i.gm = shl nuw nsw i32 %i.gk, %.sink6.i.i.i.i
  %i.gn = select i1 %i.gl, i32 -29, i32 -3725
  %narrow.i.i.i = add nsw i32 %i.gm, %i.gn
  %i.go = sext i32 %narrow.i.i.i to i64
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.026.i, i64 %i.go) ; 5 uses
  store i64 %.sroa.speculated.i, ptr %i.gd, align 8, !tbaa !8
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.01828.i
  store ptr %i.gd, ptr %i.gp, align 8, !tbaa !17
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gq, ptr align 1 %.sroa.6.027.i, i64 %.sroa.speculated.i, i1 false)
  %i.gr = add nuw nsw i64 %.01828.i, 1            ; 3 uses
  %i.gs = add i64 %.sroa.speculated.i, %.029.i    ; 8 uses
  %i.gt = sub nuw i64 %.sroa.0.026.i, %.sroa.speculated.i ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.6.027.i, i64 %.sroa.speculated.i
  %i.gv = icmp eq i64 %i.gt, 0
  %i.gw = icmp eq i64 %i.gr, 6
end_hunk_1
