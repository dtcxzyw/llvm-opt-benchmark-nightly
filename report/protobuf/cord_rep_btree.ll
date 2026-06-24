inline.NumInlined: 754
inline.NumDeleted: 205
begin_hunk_0_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  br i1 %i.cu, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cv = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !8
  %i.cw = add i64 %i.cv, %1
  store i64 %i.cw, ptr %.sroa.0.0.i, align 8, !tbaa !8
  %i.cx = call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull %0, i32 noundef %i.d, i64 noundef %1, ptr nonnull %.sroa.0.0.i, i32 %.sroa.3.0.i)
  br label %bb.s

bb.g:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cy = sub i64 %1, %i.cs                       ; 5 uses
  %i.cz = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !8
  %i.da = add i64 %i.cz, %i.cy
  store i64 %i.da, ptr %.sroa.0.0.i, align 8, !tbaa !8
  br i1 %.not108, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %i.db = zext i8 %i.c to i64                     ; 6 uses
  %i.dc = add nsw i32 %i.d, -1
  %i.dd = zext nneg i32 %i.dc to i64              ; 3 uses
  %i.de = getelementptr [8 x i8], ptr %4, i64 %i.db ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !14 ; 4 uses
  %i.dg = sext i32 %i.br to i64                   ; 2 uses
  br i1 %i.ca, label %.loopexit119.i.i, label %bb.j

bb.h:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i
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

bb.i:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i
  %indvars.iv.next59.jt0.i.i = add nsw i64 %indvars.iv586997.i.i, -1
  %i.dn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next8391.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !14
  br label %.loopexit119.i.i

bb.j:                                             ; preds = %.preheader.i.i
  %.not45.i.i = icmp sgt i64 %i.db, %i.dg
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
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i, !prof !30

bb.k:                                             ; preds = %.loopexit110
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.dy)
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i

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
  %i.eh = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 10 uses
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
  br i1 %.not19.i.i.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i, label %.lr.ph.preheader.i.i.i

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
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i, label %.lr.ph.i.i.i

_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre138.i = load i64, ptr %i.eh, align 8, !tbaa !8
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i

_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i: ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i, %.preheader
  %i.et = phi i64 [ %.pre138.i, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.loopexit.i ], [ %i.eg, %.preheader ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.eb
  store ptr %.sroa.024.08194.i.i, ptr %i.ev, align 8, !tbaa !17
  %i.ew = add i64 %i.et, %i.cy
  store i64 %i.ew, ptr %i.eh, align 8, !tbaa !8
  store ptr %i.eh, ptr %i.ec, align 8, !tbaa !14
  %i.ex = icmp sgt i64 %indvars.iv7596.i.i, 1
  br i1 %i.ex, label %bb.h, label %.loopexit.thread108.i.i, !llvm.loop !55

_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i: ; preds = %bb.k, %.loopexit110
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

.loopexit.thread108.i.i:                          ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i, %.loopexit.i.i
  %.sroa.024.3111.i.i = phi ptr [ %.sroa.0.0.i, %.loopexit.i.i ], [ %i.eh, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt1.i.i ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fl = atomicrmw sub ptr %i.fk, i32 2 acq_rel, align 4
  %.not.i.i35.i.i = icmp eq i32 %i.fl, 2
  br i1 %.not.i.i35.i.i, label %bb.l, label %.loopexit, !prof !30

bb.l:                                             ; preds = %.loopexit.thread108.i.i
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i68, %.loopexit.i.i, %bb.l, %.loopexit.thread108.i.i, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i, %.loopexit119.i.i
  %.2.i.i = phi ptr [ %.sroa.024.3111.i.i, %bb.l ], [ %i.fb, %.loopexit119.i.i ], [ %i.dv, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SetEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.jt0.i.i ], [ %.sroa.0.0.i, %.loopexit.i.i ], [ %.sroa.024.3111.i.i, %.loopexit.thread108.i.i ], [ %i.fg, %.lr.ph.i.i68 ]
  %i.fm = add nuw nsw i32 %i.d, 1
  store i32 %i.fm, ptr %4, align 8, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit
  %.sroa.11.0 = phi ptr [ %i.ct, %.loopexit ], [ %2, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ]
  %.sroa.0.0 = phi i64 [ %i.cs, %.loopexit ], [ %1, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ]
  %.160 = phi ptr [ %.2.i.i, %.loopexit ], [ %0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ]
  %i.fn = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i32 2, ptr %i.fo, align 4, !tbaa !26
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  store i8 3, ptr %i.fp, align 4, !tbaa !27
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 13
  store i8 0, ptr %i.fq, align 1, !tbaa !7
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 14
  store i8 0, ptr %i.fr, align 2, !tbaa !7
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i: ; preds = %bb.r, %bb.m
  %i.ft = phi ptr [ %i.fn, %bb.m ], [ %i.ir, %bb.r ] ; 5 uses
  %.261138 = phi ptr [ %.160, %bb.m ], [ %i.gz, %bb.r ] ; 2 uses
  %.063137 = phi i32 [ %i.d, %bb.m ], [ %i.hc, %bb.r ] ; 2 uses
  %.sroa.0.1136 = phi i64 [ %.sroa.0.0, %bb.m ], [ %i.gx, %bb.r ] ; 6 uses
  %.sroa.11.1135 = phi ptr [ %.sroa.11.0, %bb.m ], [ %i.gy, %bb.r ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i
  %.029.i = phi i64 [ 0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %5, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ]
  %.01828.i = phi i64 [ 0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %6, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ] ; 2 uses
  %.sroa.6.027.i = phi ptr [ %.sroa.11.1135, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.gq, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ] ; 2 uses
  %.sroa.0.026.i = phi i64 [ %.sroa.0.1136, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.gp, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ] ; 3 uses
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
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #18 ; 5 uses
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
  %5 = add i64 %.sroa.speculated.i, %.029.i       ; 8 uses
  %6 = add nuw nsw i64 %.01828.i, 1               ; 3 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.01828.i
  store ptr %i.gd, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds nuw i8, ptr %i.gd, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %8, ptr align 1 %.sroa.6.027.i, i64 %.sroa.speculated.i, i1 false)
  %i.gp = sub nuw i64 %.sroa.0.026.i, %.sroa.speculated.i ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.6.027.i, i64 %.sroa.speculated.i
  %i.gr = icmp eq i64 %i.gp, 0
  %i.gs = icmp eq i64 %6, 6
  %.not19.i = select i1 %i.gr, i1 true, i1 %i.gs
  br i1 %.not19.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm.exit, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i, !llvm.loop !57

_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i
  %i.gt = trunc i64 %6 to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ft, i64 15
  store i64 %5, ptr %i.ft, align 8, !tbaa !8
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !7
  %.not = icmp eq i64 %5, %.sroa.0.1136
  br i1 %.not, label %.thread100, label %bb.n

.thread100:                                       ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm.exit
  %i.gv = call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261138, i32 noundef %.063137, i64 noundef %.sroa.0.1136, ptr nonnull %i.ft, i32 2)
  br label %bb.s

bb.n:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm.exit
  %i.gw = icmp ugt i64 %5, %.sroa.0.1136
  br i1 %i.gw, label %bb.o, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i64 noundef %5, i64 noundef %.sroa.0.1136) #19
  unreachable

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit: ; preds = %bb.n
  %i.gx = sub nuw i64 %.sroa.0.1136, %5
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.11.1135, i64 %5
  %i.gz = call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261138, i32 noundef %.063137, i64 noundef %5, ptr nonnull %i.ft, i32 2) ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 13
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !7   ; 4 uses
  %i.hc = zext i8 %i.hb to i32                    ; 2 uses
  %.not109 = icmp eq i8 %i.hb, 0
  br i1 %.not109, label %bb.r, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit
  %wide.trip.count.i73 = zext i8 %i.hb to i64     ; 2 uses
  %xtraiter230 = and i64 %wide.trip.count.i73, 3  ; 3 uses
  %i.hd = icmp ult i8 %i.hb, 4
  br i1 %i.hd, label %.epil.preheader, label %.lr.ph.i72.new

.lr.ph.i72.new:                                   ; preds = %.lr.ph.i72
  %unroll_iter = and i64 %wide.trip.count.i73, 252
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i72.new
  %indvars.iv.i74 = phi i64 [ 0, %.lr.ph.i72.new ], [ %indvars.iv.next.i75.3, %bb.p ] ; 5 uses
  %.067.i = phi ptr [ %i.gz, %.lr.ph.i72.new ], [ %i.ii, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i72.new ], [ %niter.next.3, %bb.p ]
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.i74
  store ptr %.067.i, ptr %i.he, align 8, !tbaa !14
  %i.hf = getelementptr inbounds nuw i8, ptr %.067.i, i64 15
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = zext i8 %i.hg to i64
  %i.hi = getelementptr i8, ptr %.067.i, i64 8
  %i.hj = getelementptr [8 x i8], ptr %i.hi, i64 %i.hh
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !17 ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.i74
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr %i.hk, ptr %i.hm, align 8, !tbaa !14
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 15
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = zext i8 %i.ho to i64
  %i.hq = getelementptr i8, ptr %i.hk, i64 8
  %i.hr = getelementptr [8 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !17 ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.i74
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store ptr %i.hs, ptr %i.hu, align 8, !tbaa !14
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 15
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = zext i8 %i.hw to i64
  %i.hy = getelementptr i8, ptr %i.hs, i64 8
  %i.hz = getelementptr [8 x i8], ptr %i.hy, i64 %i.hx
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next.i75.3 = add nuw nsw i64 %indvars.iv.i74, 4 ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.i74
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  store ptr %i.ia, ptr %i.ic, align 8, !tbaa !14
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 15
  %i.ie = load i8, ptr %i.id, align 1
  %i.if = zext i8 %i.ie to i64
  %i.ig = getelementptr i8, ptr %i.ia, i64 8
  %i.ih = getelementptr [8 x i8], ptr %i.ig, i64 %i.if
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !17 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i77.unr-lcssa, label %bb.p, !llvm.loop !58

._crit_edge.loopexit.i77.unr-lcssa:               ; preds = %bb.p
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %._crit_edge.loopexit.i77, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i77.unr-lcssa, %.lr.ph.i72
  %indvars.iv.i74.epil.init = phi i64 [ 0, %.lr.ph.i72 ], [ %indvars.iv.next.i75.3, %._crit_edge.loopexit.i77.unr-lcssa ]
  %.067.i.epil.init = phi ptr [ %i.gz, %.lr.ph.i72 ], [ %i.ii, %._crit_edge.loopexit.i77.unr-lcssa ]
  %lcmp.mod232 = icmp ne i64 %xtraiter230, 0
  tail call void @llvm.assume(i1 %lcmp.mod232)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i74.epil = phi i64 [ %indvars.iv.i74.epil.init, %.epil.preheader ], [ %indvars.iv.next.i75.epil, %bb.q ] ; 2 uses
  %.067.i.epil = phi ptr [ %.067.i.epil.init, %.epil.preheader ], [ %i.ip, %bb.q ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %indvars.iv.next.i75.epil = add nuw nsw i64 %indvars.iv.i74.epil, 1
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.i74.epil
  store ptr %.067.i.epil, ptr %i.ij, align 8, !tbaa !14
  %i.ik = getelementptr inbounds nuw i8, ptr %.067.i.epil, i64 15
  %i.il = load i8, ptr %i.ik, align 1
  %i.im = zext i8 %i.il to i64
  %i.in = getelementptr i8, ptr %.067.i.epil, i64 8
  %i.io = getelementptr [8 x i8], ptr %i.in, i64 %i.im
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !17
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter230
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i77, label %bb.q, !llvm.loop !59

._crit_edge.loopexit.i77:                         ; preds = %bb.q, %._crit_edge.loopexit.i77.unr-lcssa
  %i.iq = add nuw nsw i32 %i.hc, 1
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.loopexit.i77, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit
  %.0.lcssa.i71 = phi i32 [ 1, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit ], [ %i.iq, %._crit_edge.loopexit.i77 ]
  store i32 %.0.lcssa.i71, ptr %4, align 8, !tbaa !34
  %i.ir = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i32 2, ptr %i.is, align 4, !tbaa !26
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  store i8 3, ptr %i.it, align 4, !tbaa !27
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 13
  store i8 0, ptr %i.iu, align 1, !tbaa !7
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 14
  store i8 0, ptr %i.iv, align 2, !tbaa !7
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i

bb.s:                                             ; preds = %.thread100, %.thread
  %.4 = phi ptr [ %i.gv, %.thread100 ], [ %i.cx, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s
  %.5 = phi ptr [ %.4, %bb.s ], [ %0, %bb.a ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES8_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !7     ; 3 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !7     ; 2 uses
  %i.f = zext i8 %i.e to i64
  %i.g = sub nsw i64 %i.f, %i.c                   ; 6 uses
  store i8 0, ptr %i.a, align 2, !tbaa !7
  %i.h = trunc nuw nsw i64 %i.g to i8
  store i8 %i.h, ptr %i.d, align 1, !tbaa !7
  %i.i = icmp ult i64 %i.g, 7
  tail call void @llvm.assume(i1 %i.i)
  %.not12.i = icmp eq i8 %i.e, %i.b
  br i1 %.not12.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.g, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.g, 6                        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.c
  %wide.load = load <2 x ptr>, ptr %i.l, align 8, !tbaa !17
  store <2 x ptr> %wide.load, ptr %i.k, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.011.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011.i = phi i64 [ %i.q, %scalar.ph ], [ %.011.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.j, i64 %.011.i ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  store ptr %i.p, ptr %i.n, align 8, !tbaa !17
  %i.q = add nuw nsw i64 %.011.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %i.g
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit, label %scalar.ph, !llvm.loop !61

_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit: ; preds = %scalar.ph, %middle.block, %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit
  %.sroa.0.0 = phi i64 [ %1, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit ], [ %i.at, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit ] ; 3 uses
  %.sroa.7.0 = phi ptr [ %2, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit ], [ %i.au, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit ] ; 2 uses
  %i.t = add i64 %.sroa.0.0, %3                   ; 2 uses
  %i.u = icmp ult i64 %i.t, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 4083)
  %i.v = add nuw nsw i64 %spec.store.select.i.i, 13
  %.0.i.i = select i1 %i.u, i64 32, i64 %i.v      ; 2 uses
  %i.w = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.w, i64 -8, i64 -64
  %i.x = select i1 %i.w, i64 8, i64 64
  %i.y = add nsw i64 %.0.i.i, -1
  %i.z = add nuw nsw i64 %i.y, %i.x
  %i.aa = and i64 %i.z, %.neg.i.i                 ; 3 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #18 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 2, ptr %i.ad, align 8, !tbaa !26
  %i.ae = icmp samesign ult i64 %i.aa, 513        ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.ae, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.ae, i64 2, i64 58
  %i.af = lshr i64 %i.aa, %.sink6.i.i.i.i
  %i.ag = add nuw nsw i64 %i.af, %.sink5.i.i.i.i  ; 3 uses
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i8 %i.ah, ptr %i.ai, align 4, !tbaa !27
  %i.aj = trunc nuw nsw i64 %i.ag to i32
  %i.ak = icmp samesign ult i64 %i.ag, 67         ; 2 uses
  %.sink6.i.i.i = select i1 %i.ak, i32 3, i32 6
  %i.al = shl nuw nsw i32 %i.aj, %.sink6.i.i.i
  %i.am = select i1 %i.ak, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.al, %i.am
  %i.an = sext i32 %narrow.i.i to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0, i64 %i.an) ; 4 uses
  store i64 %.sroa.speculated, ptr %i.ab, align 8, !tbaa !8
  %i.ao = load i8, ptr %i.s, align 1, !tbaa !7    ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = add i8 %i.ao, 1                         ; 2 uses
  store i8 %i.aq, ptr %i.s, align 1, !tbaa !7
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ap
  store ptr %i.ab, ptr %i.ar, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %.sroa.7.0, i64 %.sroa.speculated, i1 false)
  %i.at = sub nuw i64 %.sroa.0.0, %.sroa.speculated ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 %.sroa.speculated ; 2 uses
  %i.av = icmp eq i64 %i.at, 0
  %.not = icmp eq i8 %i.aq, 6
  %or.cond = or i1 %.not, %i.av
  br i1 %or.cond, label %.critedge, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit, !llvm.loop !62

.critedge:                                        ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.at, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.au, 1
  ret { i64, ptr } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %0, ptr nofree readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 2, ptr %i.b, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 3, ptr %i.c, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 0, ptr %i.d, align 1, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 0, ptr %i.e, align 2, !tbaa !7
  %i.f = icmp eq i64 %0, 0
  br i1 %i.f, label %._crit_edge, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit
  %.029 = phi i64 [ 0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph ], [ %3, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit ]
  %.01828 = phi i64 [ 0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph ], [ %4, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit ] ; 2 uses
  %.sroa.6.027 = phi ptr [ %1, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph ], [ %i.ad, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit ] ; 2 uses
  %.sroa.0.026 = phi i64 [ %0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph ], [ %i.ac, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit ] ; 3 uses
  %i.h = add i64 %.sroa.0.026, %2                 ; 2 uses
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 6 uses
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
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.026, i64 %i.ab) ; 5 uses
  store i64 %.sroa.speculated, ptr %i.p, align 8, !tbaa !8
  %3 = add i64 %.sroa.speculated, %.029           ; 2 uses
  %4 = add nuw nsw i64 %.01828, 1                 ; 3 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01828
  store ptr %i.p, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %.sroa.6.027, i64 %.sroa.speculated, i1 false)
  %i.ac = sub nuw i64 %.sroa.0.026, %.sroa.speculated ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.6.027, i64 %.sroa.speculated
  %i.ae = icmp eq i64 %i.ac, 0
  %i.af = icmp eq i64 %4, 6
  %.not19 = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %.not19, label %._crit_edge.loopexit, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit, !llvm.loop !57

._crit_edge.loopexit:                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit
  %i.ag = trunc i64 %4 to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.018.lcssa = phi i8 [ 0, %bb.a ], [ %i.ag, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %3, %._crit_edge.loopexit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i64 %.0.lcssa, ptr %i.a, align 8, !tbaa !8
  store i8 %.018.lcssa, ptr %i.ah, align 1, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051213cord_internal32SetCordBtreeExhaustiveValidationEb(i1 noundef zeroext %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %0 to i8
  store atomic i8 %i.a, ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_132cord_btree_exhaustive_validationE.0 monotonic, align 1
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051213cord_internal38IsCordBtreeExhaustiveValidationEnabledEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_132cord_btree_exhaustive_validationE.0 monotonic, align 1, !range !63, !noundef !28
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal12CordRepBtree4DumpEPKNS1_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEbRSo(ptr noundef %0, i64 %1, ptr %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str, i64 noundef 36) ; 0 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, i64 noundef %1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !7
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !66
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.1, i64 noundef 36) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17DumpAllEPKNS1_7CordRepEbRSom(ptr noundef nonnull %0, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.2, i64 noundef 5) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17DumpAllEPKNS1_7CordRepEbRSom(ptr noundef %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %16 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp eq i32 %i.e, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  br i1 %i.f, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.g, ptr noundef nonnull align 1 dereferenceable(7) @.str.18, i64 7, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.h, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.i, align 1, !tbaa !7
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  store i64 7, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.19, ptr %i.j, align 8
  %i.k = load atomic i32, ptr %i.d acquire, align 4
  %i.l = ashr i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.o = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %i.m, ptr noundef nonnull %i.n)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  store i64 %i.r, ptr %6, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.n, ptr %i.s, align 8, !tbaa !82
  store i64 1, ptr %7, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.20, ptr %i.t, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i64 2, ptr %9, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.21, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.v = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.x, ptr %11, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8, !tbaa !78
  invoke void @_ZN4absl12lts_2025051213AbslStringifyINS0_16strings_internal13StringifySinkEEEvRT_NS0_3HexE(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 %i.v, i64 12289)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %11, align 8, !tbaa !83
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !78
  store i64 %i.aa, ptr %10, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.z, ptr %i.ab, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %11, align 8, !tbaa !83   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.x
  br i1 %i.ad, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !7
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #20
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.ag = shl i64 %3, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.ah, ptr %12, align 8, !tbaa !75
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.ag, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit
  %i.ai = load ptr, ptr %12, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !78
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ai, i64 noundef %i.ak)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.am = load ptr, ptr %4, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !78
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.am, i64 noundef %i.ao)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit112 unwind label %bb.o ; 2 uses

end_hunk_0
