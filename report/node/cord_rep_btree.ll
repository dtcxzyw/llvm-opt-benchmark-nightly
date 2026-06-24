inline.NumInlined: 774
inline.NumDeleted: 203
begin_hunk_0_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE1EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.az
  br i1 %.not.i.i, label %_ZN4absl13cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.i.i

_ZN4absl13cord_internal12CordRepBtree10ToOpResultEb.exit: ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i.i, %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %.117.i.lcssa, %bb.e ], [ %i.ar, %bb.f ], [ %i.ar, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i.i ] ; 9 uses
  %.sroa.3.0.i = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i.i ] ; 4 uses
  %i.bg = tail call { i64, ptr } @_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES7_m(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i, i64 %1, ptr %2, i64 noundef %3) ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bg, 0      ; 4 uses
  %i.bi = extractvalue { i64, ptr } %i.bg, 1
  %i.bj = icmp eq i64 %i.bh, 0                    ; 2 uses
  br i1 %i.bj, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.bk = load i64, ptr %.sroa.0.0.i, align 8
  %i.bl = add i64 %i.bk, %1
  store i64 %i.bl, ptr %.sroa.0.0.i, align 8
  %.not.i70 = icmp eq i8 %i.c, 0
  br i1 %.not.i70, label %.loopexit42.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.bm = add nsw i32 %i.d, -1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = load i32, ptr %4, align 8
  %i.bp = sext i32 %i.bo to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.preheader.i
  %indvars.iv55.i = phi i64 [ %i.bn, %.preheader.i ], [ %indvars.iv.next56.i, %bb.m ] ; 2 uses
  %indvars.iv.i71 = phi i64 [ %wide.trip.count.i, %.preheader.i ], [ %indvars.iv.next.i72, %bb.m ] ; 5 uses
  %.sroa.023.0.i = phi ptr [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.023.2.ph.i, %bb.m ] ; 3 uses
  %.sroa.6.0.i = phi i32 [ %.sroa.3.0.i, %.preheader.i ], [ %.sroa.6.2.ph.i, %bb.m ] ; 2 uses
  %indvars.iv.next.i72 = add nsw i64 %indvars.iv.i71, -1
  %i.bq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i71
  %i.br = load ptr, ptr %i.bq, align 8            ; 5 uses
  %i.bs = icmp sle i64 %indvars.iv.i71, %i.bp     ; 2 uses
  switch i32 %.sroa.6.0.i, label %bb.m [
    i32 2, label %bb.j
    i32 1, label %bb.k
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.bt = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7AddEdgeILNS1_8EdgeTypeE1EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.br, i1 noundef zeroext %i.bs, ptr noundef %.sroa.023.0.i, i64 noundef %1) ; 2 uses
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  %i.bv = extractvalue { ptr, i32 } %i.bt, 1
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bw = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7SetEdgeILNS1_8EdgeTypeE1EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.br, i1 noundef zeroext %i.bs, ptr noundef %.sroa.023.0.i, i64 noundef %1) ; 2 uses
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = extractvalue { ptr, i32 } %i.bw, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.bz = load i64, ptr %i.br, align 8
  %i.ca = add i64 %i.bz, %1
  store i64 %i.ca, ptr %i.br, align 8
  %i.cb = icmp samesign ugt i64 %indvars.iv.i71, 1
  br i1 %i.cb, label %.lr.ph.i, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %.lr.ph.i ], [ %indvars.iv55.i, %bb.l ] ; 3 uses
  %indvars.iv.next59.i = add nsw i64 %indvars.iv58.i, -1
  %i.cc = getelementptr [8 x i8], ptr %4, i64 %indvars.iv58.i
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = add i64 %i.ce, %1
  store i64 %i.cf, ptr %i.cd, align 8
  %i.cg = icmp sgt i64 %indvars.iv58.i, 1
  br i1 %i.cg, label %.lr.ph.i, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit, !llvm.loop !14

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.023.2.ph.i = phi ptr [ %i.bx, %bb.k ], [ %i.bu, %bb.j ], [ %.sroa.023.0.i, %bb.i ] ; 2 uses
  %.sroa.6.2.ph.i = phi i32 [ %i.by, %bb.k ], [ %i.bv, %bb.j ], [ %.sroa.6.0.i, %bb.i ] ; 2 uses
  %i.ch = icmp samesign ugt i64 %indvars.iv.i71, 1
  %indvars.iv.next56.i = add nsw i64 %indvars.iv55.i, -1
  br i1 %i.ch, label %bb.i, label %.loopexit42.i, !llvm.loop !15

.loopexit42.i:                                    ; preds = %bb.m, %bb.h
  %.sroa.023.3.i = phi ptr [ %.sroa.0.0.i, %bb.h ], [ %.sroa.023.2.ph.i, %bb.m ]
  %.sroa.6.3.i = phi i32 [ %.sroa.3.0.i, %bb.h ], [ %.sroa.6.2.ph.i, %bb.m ]
  %i.ci = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS3_NS3_8OpResultE(ptr noundef nonnull %0, ptr %.sroa.023.3.i, i32 %.sroa.6.3.i)
  br label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit

bb.n:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree10ToOpResultEb.exit
  %.not = icmp eq i64 %1, %i.bh
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 629, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE1EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm) #14
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cj = sub i64 %1, %i.bh                       ; 4 uses
  %i.ck = load i64, ptr %.sroa.0.0.i, align 8
  %i.cl = add i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %.sroa.0.0.i, align 8
  %.not.i.i73 = icmp eq i8 %i.c, 0
  br i1 %.not.i.i73, label %.loopexit38.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %i.cm = add nsw i32 %i.d, -1
  %i.cn = zext nneg i32 %i.cm to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.preheader.i.i
  %indvars.iv57.i.i = phi i64 [ %i.cn, %.preheader.i.i ], [ %indvars.iv.next58.i.i, %bb.u ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %wide.trip.count.i, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.u ] ; 5 uses
  %.sroa.018.0.i.i = phi ptr [ %.sroa.0.0.i, %.preheader.i.i ], [ %.sroa.018.2.ph.i.i, %bb.u ] ; 2 uses
  %.sroa.520.0.i.i = phi i32 [ %.sroa.3.0.i, %.preheader.i.i ], [ %.sroa.520.2.ph.i.i, %bb.u ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.co = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i.i ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 4 uses
  switch i32 %.sroa.520.0.i.i, label %bb.u [
    i32 2, label %bb.r
    i32 1, label %bb.s
    i32 0, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  tail call void @__assert_fail(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.1, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb1EEEPS3_S7_imNS3_8OpResultE) #14
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cq = load i32, ptr %4, align 8
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp sle i64 %indvars.iv.i.i, %i.cr
  %i.ct = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7SetEdgeILNS1_8EdgeTypeE1EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, i1 noundef zeroext %i.cs, ptr noundef %.sroa.018.0.i.i, i64 noundef range(i64 1, 0) %i.cj) ; 2 uses
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0      ; 2 uses
  %i.cv = extractvalue { ptr, i32 } %i.ct, 1
  store ptr %i.cu, ptr %i.co, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.cw = load i64, ptr %i.cp, align 8
  %i.cx = add i64 %i.cw, %i.cj
  store i64 %i.cx, ptr %i.cp, align 8
  %i.cy = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.cy, label %.lr.ph.i.i74, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE9PropagateEPS3_imNS3_8OpResultE.exit

.lr.ph.i.i74:                                     ; preds = %bb.t, %.lr.ph.i.i74
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %.lr.ph.i.i74 ], [ %indvars.iv57.i.i, %bb.t ] ; 3 uses
  %indvars.iv.next62.i.i = add nsw i64 %indvars.iv61.i.i, -1
  %i.cz = getelementptr [8 x i8], ptr %4, i64 %indvars.iv61.i.i
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = add i64 %i.db, %i.cj
  store i64 %i.dc, ptr %i.da, align 8
  %i.dd = icmp sgt i64 %indvars.iv61.i.i, 1
  br i1 %i.dd, label %.lr.ph.i.i74, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE9PropagateEPS3_imNS3_8OpResultE.exit, !llvm.loop !28

bb.u:                                             ; preds = %bb.s, %bb.q
  %.sroa.018.2.ph.i.i = phi ptr [ %i.cu, %bb.s ], [ %.sroa.018.0.i.i, %bb.q ] ; 2 uses
  %.sroa.520.2.ph.i.i = phi i32 [ %i.cv, %bb.s ], [ %.sroa.520.0.i.i, %bb.q ] ; 2 uses
  %i.de = icmp samesign ugt i64 %indvars.iv.i.i, 1
  %indvars.iv.next58.i.i = add nsw i64 %indvars.iv57.i.i, -1
  br i1 %i.de, label %bb.q, label %.loopexit38.i.i, !llvm.loop !29

.loopexit38.i.i:                                  ; preds = %bb.u, %bb.p
  %.sroa.018.3.i.i = phi ptr [ %.sroa.0.0.i, %bb.p ], [ %.sroa.018.2.ph.i.i, %bb.u ]
  %.sroa.520.3.i.i = phi i32 [ %.sroa.3.0.i, %bb.p ], [ %.sroa.520.2.ph.i.i, %bb.u ]
  %i.df = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS3_NS3_8OpResultE(ptr noundef nonnull %0, ptr %.sroa.018.3.i.i, i32 %.sroa.520.3.i.i)
  br label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE9PropagateEPS3_imNS3_8OpResultE.exit

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE9PropagateEPS3_imNS3_8OpResultE.exit: ; preds = %.lr.ph.i.i74, %bb.t, %.loopexit38.i.i
  %.2.i.i = phi ptr [ %i.df, %.loopexit38.i.i ], [ %i.cp, %bb.t ], [ %i.da, %.lr.ph.i.i74 ]
  %i.dg = add nuw nsw i32 %i.d, 1
  store i32 %i.dg, ptr %4, align 8
  br label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit: ; preds = %.lr.ph.i, %.loopexit42.i, %bb.l, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE9PropagateEPS3_imNS3_8OpResultE.exit
  %.060 = phi ptr [ %.2.i.i, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE9PropagateEPS3_imNS3_8OpResultE.exit ], [ %0, %bb.l ], [ %0, %.loopexit42.i ], [ %0, %.lr.ph.i ]
  %.0 = phi ptr [ undef, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE9PropagateEPS3_imNS3_8OpResultE.exit ], [ %i.br, %bb.l ], [ %i.ci, %.loopexit42.i ], [ %i.cd, %.lr.ph.i ]
  br i1 %i.bj, label %bb.am, label %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i.preheader

_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i.preheader: ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS3_i.exit
  %.262206.ph = phi ptr [ %0, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS3_i.exit ], [ %.060, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit ]
  %.sroa.0.1204.ph = phi i64 [ %1, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS3_i.exit ], [ %i.bh, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit ]
  %.sroa.11.1203.ph = phi ptr [ %2, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS3_i.exit ], [ %i.bi, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit ]
  br label %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i

_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i: ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i.preheader, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE15BuildOwnedStackEPS3_i.exit
  %.262206 = phi ptr [ %.2.i101, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE15BuildOwnedStackEPS3_i.exit ], [ %.262206.ph, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i.preheader ] ; 3 uses
  %.064205 = phi i32 [ %i.gp, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE15BuildOwnedStackEPS3_i.exit ], [ %i.d, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i.preheader ] ; 6 uses
  %.sroa.0.1204 = phi i64 [ %i.fn, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE15BuildOwnedStackEPS3_i.exit ], [ %.sroa.0.1204.ph, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i.preheader ] ; 9 uses
  %.sroa.11.1203 = phi ptr [ %i.fo, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE15BuildOwnedStackEPS3_i.exit ], [ %.sroa.11.1203.ph, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i.preheader ] ; 2 uses
  %i.dh = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 11 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 2, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i8 3, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 13
  store i8 0, ptr %i.dk, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 14
  store i8 0, ptr %i.dl, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  br label %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.i

_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.i: ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.i, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i
  %.029.i = phi i64 [ 0, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i ], [ %5, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.i ]
  %.01828.i = phi i64 [ 0, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i ], [ %6, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.i ] ; 2 uses
  %.sroa.6.027.i = phi ptr [ %.sroa.11.1203, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i ], [ %i.ei, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.i ] ; 2 uses
  %.sroa.0.026.i = phi i64 [ %.sroa.0.1204, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i ], [ %i.eh, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.i ] ; 3 uses
  %i.dn = add i64 %.sroa.0.026.i, %3              ; 2 uses
  %i.do = icmp ult i64 %i.dn, 20
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 4083)
  %i.dp = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %i.do, i64 32, i64 %i.dp  ; 2 uses
  %i.dq = icmp samesign ult i64 %.0.i.i.i, 513    ; 2 uses
  %.neg.i.i.i = select i1 %i.dq, i64 -8, i64 -64
  %i.dr = select i1 %i.dq, i64 8, i64 64
  %i.ds = add nsw i64 %.0.i.i.i, -1
  %i.dt = add nuw nsw i64 %i.ds, %i.dr
  %i.du = and i64 %i.dt, %.neg.i.i.i              ; 3 uses
  %i.dv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #16 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 2, ptr %i.dw, align 8
  %i.dx = icmp samesign ult i64 %i.du, 513        ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.dx, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.dx, i64 2, i64 58
  %i.dy = lshr i64 %i.du, %.sink6.i.i.i.i.i
  %i.dz = add nuw nsw i64 %i.dy, %.sink5.i.i.i.i.i ; 3 uses
  %i.ea = trunc nuw nsw i64 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i8 %i.ea, ptr %i.eb, align 4
  %i.ec = trunc nuw nsw i64 %i.dz to i32
  %i.ed = icmp samesign ult i64 %i.dz, 67         ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.ed, i32 3, i32 6
  %i.ee = shl nuw nsw i32 %i.ec, %.sink6.i.i.i.i
  %i.ef = select i1 %i.ed, i32 -29, i32 -3725
  %narrow.i.i.i = add nsw i32 %i.ee, %i.ef
  %i.eg = sext i32 %narrow.i.i.i to i64
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.026.i, i64 %i.eg) ; 5 uses
  store i64 %.sroa.speculated.i, ptr %i.dv, align 8
  %5 = add i64 %.sroa.speculated.i, %.029.i       ; 11 uses
  %6 = add nuw nsw i64 %.01828.i, 1               ; 3 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.01828.i
  store ptr %i.dv, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %i.dv, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %8, ptr align 1 %.sroa.6.027.i, i64 %.sroa.speculated.i, i1 false)
  %i.eh = sub nuw i64 %.sroa.0.026.i, %.sroa.speculated.i ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.6.027.i, i64 %.sroa.speculated.i
  %i.ej = icmp eq i64 %i.eh, 0
  %i.ek = icmp eq i64 %6, 6
  %.not19.i = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %.not19.i, label %_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE1EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm.exit, label %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.i, !llvm.loop !30

_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE1EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm.exit: ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.i
  %i.el = trunc i64 %6 to i8
  %i.em = getelementptr inbounds nuw i8, ptr %i.dh, i64 15
  store i64 %5, ptr %i.dh, align 8
  store i8 %i.el, ptr %i.em, align 1
  %.not69 = icmp eq i64 %5, %.sroa.0.1204
  br i1 %.not69, label %.loopexit, label %bb.aa

.loopexit:                                        ; preds = %_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE1EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm.exit
  %.not.i76 = icmp eq i32 %.064205, 0
  br i1 %.not.i76, label %.loopexit42.i90.thread, label %.preheader.i77

.loopexit42.i90.thread:                           ; preds = %.loopexit
  %i.en = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS3_NS3_8OpResultE(ptr noundef %.262206, ptr nonnull %i.dh, i32 2)
  br label %bb.am

.preheader.i77:                                   ; preds = %.loopexit
  %i.eo = zext nneg i32 %.064205 to i64
  %i.ep = add nsw i32 %.064205, -1
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = load i32, ptr %4, align 8
  %i.es = sext i32 %i.er to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.preheader.i77
  %indvars.iv55.i78 = phi i64 [ %i.eq, %.preheader.i77 ], [ %indvars.iv.next56.i89, %bb.z ] ; 2 uses
  %indvars.iv.i79 = phi i64 [ %i.eo, %.preheader.i77 ], [ %indvars.iv.next.i82, %bb.z ] ; 5 uses
  %.sroa.023.0.i80 = phi ptr [ %i.dh, %.preheader.i77 ], [ %.sroa.023.2.ph.i87, %bb.z ] ; 3 uses
  %.sroa.6.0.i81 = phi i32 [ 2, %.preheader.i77 ], [ %.sroa.6.2.ph.i88, %bb.z ] ; 2 uses
  %indvars.iv.next.i82 = add nsw i64 %indvars.iv.i79, -1
  %i.et = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i79
  %i.eu = load ptr, ptr %i.et, align 8            ; 5 uses
  %i.ev = icmp sle i64 %indvars.iv.i79, %i.es     ; 2 uses
  switch i32 %.sroa.6.0.i81, label %bb.z [
    i32 2, label %bb.w
    i32 1, label %bb.x
    i32 0, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.ew = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7AddEdgeILNS1_8EdgeTypeE1EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.eu, i1 noundef zeroext %i.ev, ptr noundef %.sroa.023.0.i80, i64 noundef %.sroa.0.1204) ; 2 uses
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  %i.ey = extractvalue { ptr, i32 } %i.ew, 1
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.ez = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7SetEdgeILNS1_8EdgeTypeE1EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.eu, i1 noundef zeroext %i.ev, ptr noundef %.sroa.023.0.i80, i64 noundef %.sroa.0.1204) ; 2 uses
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  %i.fb = extractvalue { ptr, i32 } %i.ez, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.fc = load i64, ptr %i.eu, align 8
  %i.fd = add i64 %i.fc, %.sroa.0.1204
  store i64 %i.fd, ptr %i.eu, align 8
  %i.fe = icmp samesign ugt i64 %indvars.iv.i79, 1
  br i1 %i.fe, label %.lr.ph.i84, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit93

.lr.ph.i84:                                       ; preds = %bb.y, %.lr.ph.i84
  %indvars.iv58.i85 = phi i64 [ %indvars.iv.next59.i86, %.lr.ph.i84 ], [ %indvars.iv55.i78, %bb.y ] ; 3 uses
  %indvars.iv.next59.i86 = add nsw i64 %indvars.iv58.i85, -1
  %i.ff = getelementptr [8 x i8], ptr %4, i64 %indvars.iv58.i85
  %i.fg = load ptr, ptr %i.ff, align 8            ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = add i64 %i.fh, %.sroa.0.1204
  store i64 %i.fi, ptr %i.fg, align 8
  %i.fj = icmp sgt i64 %indvars.iv58.i85, 1
  br i1 %i.fj, label %.lr.ph.i84, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit93, !llvm.loop !14

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.023.2.ph.i87 = phi ptr [ %i.fa, %bb.x ], [ %i.ex, %bb.w ], [ %.sroa.023.0.i80, %bb.v ] ; 2 uses
  %.sroa.6.2.ph.i88 = phi i32 [ %i.fb, %bb.x ], [ %i.ey, %bb.w ], [ %.sroa.6.0.i81, %bb.v ] ; 2 uses
  %i.fk = icmp samesign ugt i64 %indvars.iv.i79, 1
  %indvars.iv.next56.i89 = add nsw i64 %indvars.iv55.i78, -1
  br i1 %i.fk, label %bb.v, label %.loopexit42.i90, !llvm.loop !15

.loopexit42.i90:                                  ; preds = %bb.z
  %i.fl = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS3_NS3_8OpResultE(ptr noundef %.262206, ptr %.sroa.023.2.ph.i87, i32 %.sroa.6.2.ph.i88)
  br label %bb.am, !llvm.loop !31

bb.aa:                                            ; preds = %_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE1EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm.exit
  %i.fm = icmp ugt i64 %5, %.sroa.0.1204
  br i1 %i.fm, label %bb.ab, label %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES8_m.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93, i64 noundef %5, i64 noundef %.sroa.0.1204) #14
  unreachable

_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES8_m.exit: ; preds = %bb.aa
  %i.fn = sub nuw i64 %.sroa.0.1204, %5
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.11.1203, i64 %5
  %.not.i94 = icmp eq i32 %.064205, 0
  br i1 %.not.i94, label %.loopexit42.i108, label %.preheader.i95

.preheader.i95:                                   ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES8_m.exit
  %i.fp = zext nneg i32 %.064205 to i64
  %i.fq = add nsw i32 %.064205, -1
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = load i32, ptr %4, align 8
  %i.ft = sext i32 %i.fs to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ag, %.preheader.i95
  %indvars.iv55.i96 = phi i64 [ %i.fr, %.preheader.i95 ], [ %indvars.iv.next56.i107, %bb.ag ] ; 2 uses
  %indvars.iv.i97 = phi i64 [ %i.fp, %.preheader.i95 ], [ %indvars.iv.next.i100, %bb.ag ] ; 5 uses
  %.sroa.023.0.i98 = phi ptr [ %i.dh, %.preheader.i95 ], [ %.sroa.023.2.ph.i105, %bb.ag ] ; 3 uses
  %.sroa.6.0.i99 = phi i32 [ 2, %.preheader.i95 ], [ %.sroa.6.2.ph.i106, %bb.ag ] ; 2 uses
  %indvars.iv.next.i100 = add nsw i64 %indvars.iv.i97, -1
  %i.fu = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i97
  %i.fv = load ptr, ptr %i.fu, align 8            ; 5 uses
  %i.fw = icmp sle i64 %indvars.iv.i97, %i.ft     ; 2 uses
  switch i32 %.sroa.6.0.i99, label %bb.ag [
    i32 2, label %bb.ad
    i32 1, label %bb.ae
    i32 0, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.fx = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7AddEdgeILNS1_8EdgeTypeE1EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fv, i1 noundef zeroext %i.fw, ptr noundef %.sroa.023.0.i98, i64 noundef %5) ; 2 uses
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  %i.fz = extractvalue { ptr, i32 } %i.fx, 1
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.ga = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree7SetEdgeILNS1_8EdgeTypeE1EEENS1_8OpResultEbPNS0_7CordRepEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fv, i1 noundef zeroext %i.fw, ptr noundef %.sroa.023.0.i98, i64 noundef %5) ; 2 uses
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  %i.gc = extractvalue { ptr, i32 } %i.ga, 1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.gd = load i64, ptr %i.fv, align 8
  %i.ge = add i64 %i.gd, %5
  store i64 %i.ge, ptr %i.fv, align 8
  %i.gf = icmp samesign ugt i64 %indvars.iv.i97, 1
  br i1 %i.gf, label %.lr.ph.i102, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit111

.lr.ph.i102:                                      ; preds = %bb.af, %.lr.ph.i102
  %indvars.iv58.i103 = phi i64 [ %indvars.iv.next59.i104, %.lr.ph.i102 ], [ %indvars.iv55.i96, %bb.af ] ; 3 uses
  %indvars.iv.next59.i104 = add nsw i64 %indvars.iv58.i103, -1
  %i.gg = getelementptr [8 x i8], ptr %4, i64 %indvars.iv58.i103
  %i.gh = load ptr, ptr %i.gg, align 8            ; 3 uses
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = add i64 %i.gi, %5
  store i64 %i.gj, ptr %i.gh, align 8
  %i.gk = icmp sgt i64 %indvars.iv58.i103, 1
  br i1 %i.gk, label %.lr.ph.i102, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit111, !llvm.loop !14

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.023.2.ph.i105 = phi ptr [ %i.gb, %bb.ae ], [ %i.fy, %bb.ad ], [ %.sroa.023.0.i98, %bb.ac ] ; 2 uses
  %.sroa.6.2.ph.i106 = phi i32 [ %i.gc, %bb.ae ], [ %i.fz, %bb.ad ], [ %.sroa.6.0.i99, %bb.ac ] ; 2 uses
  %i.gl = icmp samesign ugt i64 %indvars.iv.i97, 1
  %indvars.iv.next56.i107 = add nsw i64 %indvars.iv55.i96, -1
  br i1 %i.gl, label %bb.ac, label %.loopexit42.i108, !llvm.loop !15

.loopexit42.i108:                                 ; preds = %bb.ag, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES8_m.exit
  %.sroa.023.3.i109 = phi ptr [ %i.dh, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES8_m.exit ], [ %.sroa.023.2.ph.i105, %bb.ag ]
  %.sroa.6.3.i110 = phi i32 [ 2, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES8_m.exit ], [ %.sroa.6.2.ph.i106, %bb.ag ]
  %i.gm = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS3_NS3_8OpResultE(ptr noundef %.262206, ptr %.sroa.023.3.i109, i32 %.sroa.6.3.i110)
  br label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit111

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit111: ; preds = %.lr.ph.i102, %bb.af, %.loopexit42.i108
  %.2.i101 = phi ptr [ %i.gm, %.loopexit42.i108 ], [ %i.fv, %bb.af ], [ %i.gh, %.lr.ph.i102 ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.2.i101, i64 13
  %i.go = load i8, ptr %i.gn, align 1             ; 4 uses
  %i.gp = zext i8 %i.go to i32                    ; 2 uses
  %i.gq = icmp ult i8 %i.go, 12
  br i1 %i.gq, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i112, label %bb.ah

_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i112: ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit111
  %wide.trip.count.i113 = zext nneg i8 %i.go to i64
  %exitcond.not.i116408 = icmp eq i8 %i.go, 0
  br i1 %exitcond.not.i116408, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i114._crit_edge, label %.lr.ph411

bb.ah:                                            ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit111
  tail call void @__assert_fail(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.1, i32 noundef 255, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE15BuildOwnedStackEPS3_i) #14
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i114: ; preds = %bb.aj
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i115409, 1 ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i113
  br i1 %exitcond.not.i116, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i114._crit_edge, label %.lr.ph411, !llvm.loop !32

.lr.ph411:                                        ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i112, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i114
  %.09.i410 = phi ptr [ %i.gz, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i114 ], [ %.2.i101, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i112 ] ; 3 uses
  %indvars.iv.i115409 = phi i64 [ %indvars.iv.next.i117, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i114 ], [ 0, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i112 ] ; 2 uses
  %i.gr = getelementptr i8, ptr %.09.i410, i64 8  ; 2 uses
  %i.gs = load atomic i32, ptr %i.gr acquire, align 4
  %i.gt = icmp eq i32 %i.gs, 2
  br i1 %i.gt, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph411
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 258, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE15BuildOwnedStackEPS3_i) #14
  unreachable

bb.aj:                                            ; preds = %.lr.ph411
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i115409
  store ptr %.09.i410, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.09.i410, i64 15
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = zext i8 %i.gw to i64
  %i.gy = getelementptr [8 x i8], ptr %i.gr, i64 %i.gx
  %i.gz = load ptr, ptr %i.gy, align 8            ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  %i.hb = load i8, ptr %i.ha, align 4
  %i.hc = icmp eq i8 %i.hb, 3
  br i1 %i.hc, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i114, label %bb.ak, !llvm.loop !32

bb.ak:                                            ; preds = %bb.aj
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #14
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i114._crit_edge: ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i114, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i112
  %.09.i.lcssa = phi ptr [ %.2.i101, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i112 ], [ %i.gz, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i114 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.09.i.lcssa, i64 8
  %i.he = load atomic i32, ptr %i.hd acquire, align 4
  %i.hf = icmp eq i32 %i.he, 2
  br i1 %i.hf, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE15BuildOwnedStackEPS3_i.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i114._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 262, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE15BuildOwnedStackEPS3_i) #14
  unreachable

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE15BuildOwnedStackEPS3_i.exit: ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i114._crit_edge
  %i.hg = add nuw nsw i32 %i.gp, 1
  store i32 %i.hg, ptr %4, align 8
  br label %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph.i

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit93: ; preds = %.lr.ph.i84, %bb.y
  %.3 = phi ptr [ %i.eu, %bb.y ], [ %i.fg, %.lr.ph.i84 ]
  br label %bb.am, !llvm.loop !31

bb.am:                                            ; preds = %.loopexit42.i90, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit93, %.loopexit42.i90.thread, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit
  %.4 = phi ptr [ %.3, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit93 ], [ %.0, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit ], [ %i.en, %.loopexit42.i90.thread ], [ %i.fl, %.loopexit42.i90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am
  %.5 = phi ptr [ %.4, %bb.am ], [ %0, %bb.a ]
  ret ptr %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, ptr } @_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES7_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 574, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES7_m) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 4 uses
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2               ; 3 uses
  %i.g = zext i8 %i.f to i64                      ; 3 uses
  %i.h = sub nsw i64 %i.d, %i.g                   ; 6 uses
  %i.i = icmp ult i64 %i.h, 6
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 575, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES7_m) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %_ZN4absl13cord_internal12CordRepBtree10AlignBeginEv.exit, label %.preheader.i, !prof !16

.preheader.i:                                     ; preds = %bb.e
  store i8 0, ptr %i.e, align 2
  %i.j = trunc nuw nsw i64 %i.h to i8
  store i8 %i.j, ptr %i.b, align 1
  %.not13.i = icmp eq i8 %i.c, %i.f
  br i1 %.not13.i, label %_ZN4absl13cord_internal12CordRepBtree10AlignBeginEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.h, 6                        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %i.g
  %wide.load = load <2 x ptr>, ptr %i.m, align 8
  store <2 x ptr> %wide.load, ptr %i.l, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN4absl13cord_internal12CordRepBtree10AlignBeginEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.012.i = phi i64 [ %i.r, %scalar.ph ], [ %.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.k, i64 %.012.i ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.g
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.q, ptr %i.o, align 8
  %i.r = add nuw nsw i64 %.012.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not.i, label %_ZN4absl13cord_internal12CordRepBtree10AlignBeginEv.exit, label %scalar.ph, !llvm.loop !34

_ZN4absl13cord_internal12CordRepBtree10AlignBeginEv.exit: ; preds = %scalar.ph, %middle.block, %bb.e, %.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit

_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit: ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit, %_ZN4absl13cord_internal12CordRepBtree10AlignBeginEv.exit
  %.sroa.0.0 = phi i64 [ %1, %_ZN4absl13cord_internal12CordRepBtree10AlignBeginEv.exit ], [ %i.at, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit ] ; 3 uses
  %.sroa.8.0 = phi ptr [ %2, %_ZN4absl13cord_internal12CordRepBtree10AlignBeginEv.exit ], [ %i.au, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit ] ; 2 uses
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
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #16 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 2, ptr %i.ad, align 8
  %i.ae = icmp samesign ult i64 %i.aa, 513        ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.ae, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.ae, i64 2, i64 58
  %i.af = lshr i64 %i.aa, %.sink6.i.i.i.i
  %i.ag = add nuw nsw i64 %i.af, %.sink5.i.i.i.i  ; 3 uses
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i8 %i.ah, ptr %i.ai, align 4
  %i.aj = trunc nuw nsw i64 %i.ag to i32
  %i.ak = icmp samesign ult i64 %i.ag, 67         ; 2 uses
  %.sink6.i.i.i = select i1 %i.ak, i32 3, i32 6
  %i.al = shl nuw nsw i32 %i.aj, %.sink6.i.i.i
  %i.am = select i1 %i.ak, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.al, %i.am
  %i.an = sext i32 %narrow.i.i to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0, i64 %i.an) ; 4 uses
  store i64 %.sroa.speculated, ptr %i.ab, align 8
  %i.ao = load i8, ptr %i.b, align 1              ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = add i8 %i.ao, 1                         ; 2 uses
  store i8 %i.aq, ptr %i.b, align 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ap
  store ptr %i.ab, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %.sroa.8.0, i64 %.sroa.speculated, i1 false)
  %i.at = sub nuw i64 %.sroa.0.0, %.sroa.speculated ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 %.sroa.speculated ; 2 uses
  %i.av = icmp eq i64 %i.at, 0
  %.not = icmp eq i8 %i.aq, 6
  %or.cond = or i1 %.not, %i.av
  br i1 %or.cond, label %.critedge, label %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit, !llvm.loop !35

.critedge:                                        ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.at, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.au, 1
  ret { i64, ptr } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4absl13cord_internal12CordRepBtree7NewLeafILNS1_8EdgeTypeE1EEEPS1_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %0, ptr nofree readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 3, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 0, ptr %i.e, align 2
  %i.f = icmp eq i64 %0, 0
  br i1 %i.f, label %._crit_edge, label %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph

_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit

_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit: ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit
  %.029 = phi i64 [ 0, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph ], [ %3, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit ]
  %.01828 = phi i64 [ 0, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph ], [ %4, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit ] ; 2 uses
  %.sroa.6.027 = phi ptr [ %1, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph ], [ %i.ad, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit ] ; 2 uses
  %.sroa.0.026 = phi i64 [ %0, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit.lr.ph ], [ %i.ac, %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit ] ; 3 uses
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 2, ptr %i.r, align 8
  %i.s = icmp samesign ult i64 %i.o, 513          ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.s, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.s, i64 2, i64 58
  %i.t = lshr i64 %i.o, %.sink6.i.i.i.i
  %i.u = add nuw nsw i64 %i.t, %.sink5.i.i.i.i    ; 3 uses
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i8 %i.v, ptr %i.w, align 4
  %i.x = trunc nuw nsw i64 %i.u to i32
  %i.y = icmp samesign ult i64 %i.u, 67           ; 2 uses
  %.sink6.i.i.i = select i1 %i.y, i32 3, i32 6
  %i.z = shl nuw nsw i32 %i.x, %.sink6.i.i.i
  %i.aa = select i1 %i.y, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.z, %i.aa
  %i.ab = sext i32 %narrow.i.i to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.026, i64 %i.ab) ; 5 uses
  store i64 %.sroa.speculated, ptr %i.p, align 8
  %3 = add i64 %.sroa.speculated, %.029           ; 2 uses
  %4 = add nuw nsw i64 %.01828, 1                 ; 3 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01828
  store ptr %i.p, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %.sroa.6.027, i64 %.sroa.speculated, i1 false)
  %i.ac = sub nuw i64 %.sroa.0.026, %.sroa.speculated ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.6.027, i64 %.sroa.speculated
  %i.ae = icmp eq i64 %i.ac, 0
  %i.af = icmp eq i64 %4, 6
  %.not19 = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %.not19, label %._crit_edge.loopexit, label %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit, !llvm.loop !30

._crit_edge.loopexit:                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_17ConsumeILNS0_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS8_m.exit
  %i.ag = trunc i64 %4 to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.018.lcssa = phi i8 [ 0, %bb.a ], [ %i.ag, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %3, %._crit_edge.loopexit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i64 %.0.lcssa, ptr %i.a, align 8
  store i8 %.018.lcssa, ptr %i.ah, align 1
  ret ptr %i.a
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4absl13cord_internal32SetCordBtreeExhaustiveValidationEb(i1 noundef zeroext %0) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i1 %0 to i8
  store atomic i8 %i.a, ptr @_ZN4absl13cord_internal12_GLOBAL__N_132cord_btree_exhaustive_validationE.0 monotonic, align 1
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4absl13cord_internal38IsCordBtreeExhaustiveValidationEnabledEv() local_unnamed_addr #4 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN4absl13cord_internal12_GLOBAL__N_132cord_btree_exhaustive_validationE.0 monotonic, align 1, !range !36, !noundef !37
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13cord_internal12CordRepBtree4DumpEPKNS0_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEbRSo(ptr noundef %0, i64 %1, ptr %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.2, i64 noundef 36) #13 ; 0 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, i64 noundef %1) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.a, i64 noundef 1) #13 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext 10) #13 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.3, i64 noundef 36) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @_ZN4absl13cord_internal12_GLOBAL__N_17DumpAllEPKNS0_7CordRepEbRSom(ptr noundef nonnull %0, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.4, i64 noundef 5) #13 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl13cord_internal12_GLOBAL__N_17DumpAllEPKNS0_7CordRepEbRSom(ptr noundef %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.absl::AlphaNum", align 8    ; 5 uses
  %6 = alloca %"class.absl::AlphaNum", align 8    ; 6 uses
  %7 = alloca %"class.absl::AlphaNum", align 8    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.absl::AlphaNum", align 8    ; 5 uses
  %10 = alloca %"class.absl::AlphaNum", align 8   ; 5 uses
  %11 = alloca %"class.absl::strings_internal::StringifySink", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.absl::AlphaNum", align 8   ; 5 uses
  %15 = alloca %"class.absl::AlphaNum", align 8   ; 6 uses
  %16 = alloca %"class.absl::AlphaNum", align 8   ; 5 uses
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = icmp ult i64 %3, 15
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 60, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12_GLOBAL__N_17DumpAllEPKNS0_7CordRepEbRSom) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %i.e = icmp eq i32 %i.d, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  br i1 %i.e, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str.38, i64 7, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.h, align 1
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  store i64 7, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.39, ptr %i.i, align 8
  %i.j = load atomic i32, ptr %i.c acquire, align 4
  %i.k = ashr i32 %i.j, 1
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.n = call noundef ptr @_ZN4absl16numbers_internal15FastIntToBufferEmPc(i64 noundef %i.l, ptr noundef nonnull %i.m) #13
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  store i64 %i.q, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.m, ptr %i.r, align 8
  store i64 1, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.40, ptr %i.s, align 8
  call void @_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store i64 2, ptr %9, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.41, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.u = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.w, ptr %11, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.x, align 8
  call void @_ZN4absl13AbslStringifyINS_16strings_internal13StringifySinkEEEvRT_NS_3HexE(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 %i.u, i64 12289)
  %i.y = load ptr, ptr %11, align 8
  %i.z = load i64, ptr %i.x, align 8
  store i64 %i.z, ptr %10, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.y, ptr %i.aa, align 8
  call void @_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10) #13
  %i.ab = load ptr, ptr %11, align 8              ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.w
  br i1 %i.ac, label %_ZN4absl16strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge
  %i.ad = load i64, ptr %i.w, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #17
  br label %_ZN4absl16strings_internal13StringifySinkD2Ev.exit

_ZN4absl16strings_internal13StringifySinkD2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.af = shl nuw nsw i64 %3, 1                   ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ag, ptr %12, align 8
  %i.ah = icmp samesign ugt i64 %3, 7
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl16strings_internal13StringifySinkD2Ev.exit
  %i.ai = or disjoint i64 %i.af, 1
  %i.aj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #15 ; 2 uses
  store ptr %i.aj, ptr %12, align 8
  store i64 %i.af, ptr %i.ag, align 8
  br label %bb.g

bb.f:                                             ; preds = %_ZN4absl16strings_internal13StringifySinkD2Ev.exit
  %cond = icmp eq i64 %3, 0
  br i1 %cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = phi ptr [ %i.aj, %bb.e ], [ %i.ag, %bb.f ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 32, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.f, %bb.g
end_hunk_0
