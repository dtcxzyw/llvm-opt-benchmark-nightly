inline.NumInlined: 7390
inline.NumDeleted: 1611
begin_hunk_0_@_ZN5arrow7compute8internal18ListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.fd = add nsw i64 %i.fc, %i.ez
  store i64 %i.fd, ptr %i.af, align 8, !tbaa !227, !noalias !535
  %.not136263.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0
  br i1 %.not136263.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i, label %.critedge143.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i:           ; preds = %.noexc12.i, %_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i
  %.0106265.i.i.i.i.i = phi i64 [ %i.ge, %_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i ], [ 0, %.noexc12.i ]
  %.1264.i.i.i.i.i = phi i64 [ %i.gd, %_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.noexc12.i ] ; 3 uses
  %i.fe = load ptr, ptr %i.bp, align 8, !tbaa !523, !noalias !542 ; 4 uses
  %i.ff = load ptr, ptr %17, align 8, !tbaa !545, !noalias !542, !nonnull !129, !align !242
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !249, !noalias !542
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal18ListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.gd = add nsw i64 %.1264.i.i.i.i.i, 1         ; 2 uses
  %i.ge = add nuw nsw i64 %.0106265.i.i.i.i.i, 1  ; 2 uses
  %exitcond286.not.i.i.i.i.i = icmp eq i64 %i.ge, %i.ez
  br i1 %exitcond286.not.i.i.i.i.i, label %.critedge143.i.loopexit.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i, !llvm.loop !548

_ZN5arrow6StatusD2Ev.exit168.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i
  %.0104261.i.i.i.i.i = phi i64 [ %i.gi, %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ]
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal18ListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.lh, %i.iw
  br i1 %exitcond.not.i.i.i.i.i, label %.critedge143.i.i.loopexit13.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !568

.critedge143.i.loopexit.i.i.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i
  store ptr null, ptr %16, align 8, !tbaa !115, !alias.scope !541, !noalias !518
  br label %.critedge143.i.i.i.i.i

.critedge143.i.loopexit1.i.i.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i
  store ptr null, ptr %16, align 8, !tbaa !115, !alias.scope !541, !noalias !518
  br label %.critedge143.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal18ListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store ptr null, ptr %16, align 8, !noalias !518
  br label %.critedge143.i.i.i.i.i

.critedge143.i.i.i.i.i:                           ; preds = %.critedge143.i.i.loopexit13.i.i.i, %.critedge143.i.i.loopexit11.i.i.i, %.critedge143.i.i.loopexit9.i.i.i, %.critedge143.i.i.loopexit.i.i.i, %.critedge143.i.loopexit1.i.i.i.i, %.critedge143.i.loopexit.i.i.i.i, %.preheader231.i.i.i.i.i, %.preheader234.i.i.i.i.i, %.preheader226.i.i.i.i.i, %.preheader228.i.i.i.i.i, %.noexc12.i, %.preheader.i.i.i.i.i, %bb.ab
  %.12.i.i.i.i.i = phi i64 [ %i.ii, %.critedge143.i.i.loopexit.i.i.i ], [ %i.ev, %bb.ab ], [ %i.jl, %.critedge143.i.i.loopexit11.i.i.i ], [ %i.gd, %.critedge143.i.loopexit.i.i.i.i ], [ %i.gh, %.critedge143.i.loopexit1.i.i.i.i ], [ %i.iu, %.critedge143.i.i.loopexit9.i.i.i ], [ %.0107267.i.i.i.i.i, %.noexc12.i ], [ %.0107267.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader226.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader228.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader231.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader234.i.i.i.i.i ], [ %i.lg, %.critedge143.i.i.loopexit13.i.i.i ] ; 2 uses
  %i.li = load ptr, ptr %i.n, align 8, !tbaa !534, !noalias !535, !nonnull !129, !align !242
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !135, !noalias !535
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal23LargeListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.fd = add nsw i64 %i.fc, %i.ez
  store i64 %i.fd, ptr %i.af, align 8, !tbaa !227, !noalias !609
  %.not136263.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0
  br i1 %.not136263.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i, label %.critedge143.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i:           ; preds = %.noexc12.i, %_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i
  %.0106265.i.i.i.i.i = phi i64 [ %i.ge, %_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i ], [ 0, %.noexc12.i ]
  %.1264.i.i.i.i.i = phi i64 [ %i.gd, %_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.noexc12.i ] ; 3 uses
  %i.fe = load ptr, ptr %i.bp, align 8, !tbaa !597, !noalias !616 ; 4 uses
  %i.ff = load ptr, ptr %17, align 8, !tbaa !619, !noalias !616, !nonnull !129, !align !242
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !393, !noalias !616
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal23LargeListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.gd = add nsw i64 %.1264.i.i.i.i.i, 1         ; 2 uses
  %i.ge = add nuw nsw i64 %.0106265.i.i.i.i.i, 1  ; 2 uses
  %exitcond286.not.i.i.i.i.i = icmp eq i64 %i.ge, %i.ez
  br i1 %exitcond286.not.i.i.i.i.i, label %.critedge143.i.loopexit.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i, !llvm.loop !622

_ZN5arrow6StatusD2Ev.exit168.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i
  %.0104261.i.i.i.i.i = phi i64 [ %i.gi, %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ]
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal23LargeListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.lh, %i.iw
  br i1 %exitcond.not.i.i.i.i.i, label %.critedge143.i.i.loopexit13.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !642

.critedge143.i.loopexit.i.i.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit162.i.i.i.i.i
  store ptr null, ptr %16, align 8, !tbaa !115, !alias.scope !615, !noalias !593
  br label %.critedge143.i.i.i.i.i

.critedge143.i.loopexit1.i.i.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i
  store ptr null, ptr %16, align 8, !tbaa !115, !alias.scope !615, !noalias !593
  br label %.critedge143.i.i.i.i.i
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal23LargeListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store ptr null, ptr %16, align 8, !noalias !593
  br label %.critedge143.i.i.i.i.i

.critedge143.i.i.i.i.i:                           ; preds = %.critedge143.i.i.loopexit13.i.i.i, %.critedge143.i.i.loopexit11.i.i.i, %.critedge143.i.i.loopexit9.i.i.i, %.critedge143.i.i.loopexit.i.i.i, %.critedge143.i.loopexit1.i.i.i.i, %.critedge143.i.loopexit.i.i.i.i, %.preheader231.i.i.i.i.i, %.preheader234.i.i.i.i.i, %.preheader226.i.i.i.i.i, %.preheader228.i.i.i.i.i, %.noexc12.i, %.preheader.i.i.i.i.i, %bb.ab
  %.12.i.i.i.i.i = phi i64 [ %i.ii, %.critedge143.i.i.loopexit.i.i.i ], [ %i.ev, %bb.ab ], [ %i.jl, %.critedge143.i.i.loopexit11.i.i.i ], [ %i.gd, %.critedge143.i.loopexit.i.i.i.i ], [ %i.gh, %.critedge143.i.loopexit1.i.i.i.i ], [ %i.iu, %.critedge143.i.i.loopexit9.i.i.i ], [ %.0107267.i.i.i.i.i, %.noexc12.i ], [ %.0107267.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader226.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader228.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader231.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader234.i.i.i.i.i ], [ %i.lg, %.critedge143.i.i.loopexit13.i.i.i ] ; 2 uses
  %i.li = load ptr, ptr %i.n, align 8, !tbaa !608, !noalias !609, !nonnull !129, !align !242
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !135, !noalias !609
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal13FSLFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
.lr.ph266.preheader.i.i.i.i.i:                    ; preds = %.noexc27.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !tbaa !715, !noalias !716
  %.pre288.i.i.i.i.i = load i32, ptr %.pre.i.i.i.i.i, align 4, !tbaa !3, !noalias !719
  br label %.lr.ph266.i.i.i.i.i

.lr.ph266.i.i.i.i.i:                              ; preds = %_ZN5arrow6StatusD2Ev.exit166.i.i.i.i.i, %.lr.ph266.preheader.i.i.i.i.i
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal13FSLFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.hr = phi i32 [ %i.gf, %.lr.ph266.i.i.i.i.i ], [ %i.hn, %bb.at ]
  %i.hs = add nuw nsw i64 %.0106265.i.i.i.i.i, 1  ; 2 uses
  %exitcond287.not.i.i.i.i.i = icmp eq i64 %i.hs, %i.ga
  br i1 %exitcond287.not.i.i.i.i.i, label %.critedge146.i.loopexit.i.i.i.i, label %.lr.ph266.i.i.i.i.i, !llvm.loop !722

_ZN5arrow6StatusD2Ev.exit168.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i
  %.0104261.i.i.i.i.i = phi i64 [ %i.hw, %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ]
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal13FSLFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.np, %i.kw
  br i1 %exitcond.not.i.i.i.i.i, label %.critedge146.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !752

.critedge146.i.loopexit.i.i.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit166.i.i.i.i.i
  store ptr null, ptr %24, align 8, !tbaa !115, !alias.scope !714, !noalias !655
  br label %.critedge146.i.i.i.i.i

.critedge146.i.i.i.i.i:                           ; preds = %bb.bc, %_ZN5arrow6StatusD2Ev.exit190.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit184.i.i.i.i.i, %bb.ax, %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i, %.critedge146.i.loopexit.i.i.i.i, %.preheader230.i.i.i.i.i, %.preheader233.i.i.i.i.i, %.preheader225.i.i.i.i.i, %.preheader227.i.i.i.i.i, %.noexc27.i.i.i, %.preheader.i.i.i.i.i, %bb.ao
  %.12.i.i.i.i.i = phi i64 [ %i.ku, %_ZN5arrow6StatusD2Ev.exit184.i.i.i.i.i ], [ %i.gg, %.critedge146.i.loopexit.i.i.i.i ], [ %i.ll, %_ZN5arrow6StatusD2Ev.exit190.i.i.i.i.i ], [ %i.ki, %bb.ax ], [ %i.fw, %bb.ao ], [ %i.hv, %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i ], [ %.0107268.i.i.i.i.i, %.noexc27.i.i.i ], [ %.0107268.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.0107268.i.i.i.i.i, %.preheader225.i.i.i.i.i ], [ %.0107268.i.i.i.i.i, %.preheader227.i.i.i.i.i ], [ %.0107268.i.i.i.i.i, %.preheader230.i.i.i.i.i ], [ %.0107268.i.i.i.i.i, %.preheader233.i.i.i.i.i ], [ %i.no, %bb.bc ] ; 2 uses
  %i.nq = load ptr, ptr %i.cm, align 8, !tbaa !705, !noalias !706, !nonnull !129, !align !242
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !135, !noalias !707
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_17FixedSizeListTypeEE11TakeAdapterIhEEEENS_6StatusEv:bb.a
  br i1 %.not140.i.i, label %.lr.ph.i.i, label %.critedge79.i.i

.lr.ph.i.i:                                       ; preds = %.noexc26
  br i1 %i.by, label %.lr.ph.split.i.i, label %_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i

_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i:     ; preds = %.lr.ph.i.i
  %i.cn = add i64 %.065153.i.i, %i.ci
  br label %..critedge79.loopexit138_crit_edge.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZN5arrow6StatusD2Ev.exit90.i.i
  %.064142.i.i = phi i64 [ %i.dp, %_ZN5arrow6StatusD2Ev.exit90.i.i ], [ 0, %.lr.ph.i.i ]
end_hunk_11
begin_hunk_12_@_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_17FixedSizeListTypeEE11TakeAdapterIhEEEENS_6StatusEv:bb.a
  %i.do = add nsw i64 %.166141.i.i, 1             ; 2 uses
  %i.dp = add nuw nsw i64 %.064142.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dp, %i.ci
  br i1 %exitcond.not.i.i, label %..critedge79.loopexit138_crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !2764

bb.q:                                             ; preds = %.noexc25
  %i.dq = icmp sgt i32 %i.cf, 0
end_hunk_12
begin_hunk_13_@_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_17FixedSizeListTypeEE11TakeAdapterIhEEEENS_6StatusEv:bb.a
  %i.hw = add nsw i64 %.065153.i.i, %i.dr
  br label %.critedge79.i.i

..critedge79.loopexit138_crit_edge.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit90.i.i, %_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i
  %.us-phi.i.i = phi i64 [ %i.cn, %_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i ], [ %i.do, %_ZN5arrow6StatusD2Ev.exit90.i.i ]
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !2759
  br label %.critedge79.i.i

.critedge79.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit100.i.i, %..critedge79.loopexit138_crit_edge.i.i, %.critedge82.i.i, %.preheader.i.i, %.noexc26
  %.570.i.i = phi i64 [ %i.hw, %.critedge82.i.i ], [ %.065153.i.i, %.noexc26 ], [ %.065153.i.i, %.preheader.i.i ], [ %.us-phi.i.i, %..critedge79.loopexit138_crit_edge.i.i ], [ %i.gx, %_ZN5arrow6StatusD2Ev.exit100.i.i ] ; 2 uses
  %i.hx = load ptr, ptr %i.au, align 8, !tbaa !705, !noalias !2759, !nonnull !129, !align !242
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !135, !noalias !2759
end_hunk_13
begin_hunk_14_@_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_17FixedSizeListTypeEE11TakeAdapterItEEEENS_6StatusEv:bb.a
  br i1 %.not140.i.i, label %.lr.ph.i.i, label %.critedge79.i.i

.lr.ph.i.i:                                       ; preds = %.noexc26
  br i1 %i.by, label %.lr.ph.split.i.i, label %_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i

_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i:     ; preds = %.lr.ph.i.i
  %i.cn = add i64 %.065153.i.i, %i.ci
  br label %..critedge79.loopexit138_crit_edge.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZN5arrow6StatusD2Ev.exit90.i.i
  %.064142.i.i = phi i64 [ %i.dp, %_ZN5arrow6StatusD2Ev.exit90.i.i ], [ 0, %.lr.ph.i.i ]
end_hunk_14
begin_hunk_15_@_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_17FixedSizeListTypeEE11TakeAdapterItEEEENS_6StatusEv:bb.a
  %i.do = add nsw i64 %.166141.i.i, 1             ; 2 uses
  %i.dp = add nuw nsw i64 %.064142.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dp, %i.ci
  br i1 %exitcond.not.i.i, label %..critedge79.loopexit138_crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !2803

bb.q:                                             ; preds = %.noexc25
  %i.dq = icmp sgt i32 %i.cf, 0
end_hunk_15
begin_hunk_16_@_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_17FixedSizeListTypeEE11TakeAdapterItEEEENS_6StatusEv:bb.a
  %i.hw = add nsw i64 %.065153.i.i, %i.dr
  br label %.critedge79.i.i

..critedge79.loopexit138_crit_edge.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit90.i.i, %_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i
  %.us-phi.i.i = phi i64 [ %i.cn, %_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i ], [ %i.do, %_ZN5arrow6StatusD2Ev.exit90.i.i ]
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !2798
  br label %.critedge79.i.i

.critedge79.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit100.i.i, %..critedge79.loopexit138_crit_edge.i.i, %.critedge82.i.i, %.preheader.i.i, %.noexc26
  %.570.i.i = phi i64 [ %i.hw, %.critedge82.i.i ], [ %.065153.i.i, %.noexc26 ], [ %.065153.i.i, %.preheader.i.i ], [ %.us-phi.i.i, %..critedge79.loopexit138_crit_edge.i.i ], [ %i.gx, %_ZN5arrow6StatusD2Ev.exit100.i.i ] ; 2 uses
  %i.hx = load ptr, ptr %i.au, align 8, !tbaa !705, !noalias !2798, !nonnull !129, !align !242
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !135, !noalias !2798
end_hunk_16
begin_hunk_17_@_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_17FixedSizeListTypeEE11TakeAdapterIjEEEENS_6StatusEv:bb.a
  br i1 %.not140.i.i, label %.lr.ph.i.i, label %.critedge79.i.i

.lr.ph.i.i:                                       ; preds = %.noexc26
  br i1 %i.by, label %.lr.ph.split.i.i, label %_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i

_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i:     ; preds = %.lr.ph.i.i
  %i.cn = add i64 %.065153.i.i, %i.ci
  br label %..critedge79.loopexit138_crit_edge.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZN5arrow6StatusD2Ev.exit90.i.i
  %.064142.i.i = phi i64 [ %i.dp, %_ZN5arrow6StatusD2Ev.exit90.i.i ], [ 0, %.lr.ph.i.i ]
end_hunk_17
begin_hunk_18_@_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_17FixedSizeListTypeEE11TakeAdapterIjEEEENS_6StatusEv:bb.a
  %i.do = add nsw i64 %.166141.i.i, 1             ; 2 uses
  %i.dp = add nuw nsw i64 %.064142.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dp, %i.ci
  br i1 %exitcond.not.i.i, label %..critedge79.loopexit138_crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !2841

bb.q:                                             ; preds = %.noexc25
  %i.dq = icmp sgt i32 %i.cf, 0
end_hunk_18
begin_hunk_19_@_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_17FixedSizeListTypeEE11TakeAdapterIjEEEENS_6StatusEv:bb.a
  %i.hw = add nsw i64 %.065153.i.i, %i.dr
  br label %.critedge79.i.i

..critedge79.loopexit138_crit_edge.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit90.i.i, %_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i
  %.us-phi.i.i = phi i64 [ %i.cn, %_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i ], [ %i.do, %_ZN5arrow6StatusD2Ev.exit90.i.i ]
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !2836
  br label %.critedge79.i.i

.critedge79.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit100.i.i, %..critedge79.loopexit138_crit_edge.i.i, %.critedge82.i.i, %.preheader.i.i, %.noexc26
  %.570.i.i = phi i64 [ %i.hw, %.critedge82.i.i ], [ %.065153.i.i, %.noexc26 ], [ %.065153.i.i, %.preheader.i.i ], [ %.us-phi.i.i, %..critedge79.loopexit138_crit_edge.i.i ], [ %i.gx, %_ZN5arrow6StatusD2Ev.exit100.i.i ] ; 2 uses
  %i.hx = load ptr, ptr %i.au, align 8, !tbaa !705, !noalias !2836, !nonnull !129, !align !242
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !135, !noalias !2836
end_hunk_19
begin_hunk_20_@_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_17FixedSizeListTypeEE11TakeAdapterImEEEENS_6StatusEv:bb.a
  br i1 %.not140.i.i, label %.lr.ph.i.i, label %.critedge79.i.i

.lr.ph.i.i:                                       ; preds = %.noexc26
  br i1 %i.by, label %.lr.ph.split.i.i, label %_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i

_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i:     ; preds = %.lr.ph.i.i
  %i.cn = add i64 %.065153.i.i, %i.ci
  br label %..critedge79.loopexit138_crit_edge.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZN5arrow6StatusD2Ev.exit90.i.i
  %.064142.i.i = phi i64 [ %i.do, %_ZN5arrow6StatusD2Ev.exit90.i.i ], [ 0, %.lr.ph.i.i ]
end_hunk_20
begin_hunk_21_@_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_17FixedSizeListTypeEE11TakeAdapterImEEEENS_6StatusEv:bb.a
  %i.dn = add nsw i64 %.166141.i.i, 1             ; 2 uses
  %i.do = add nuw nsw i64 %.064142.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.do, %i.ci
  br i1 %exitcond.not.i.i, label %..critedge79.loopexit138_crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !2879

bb.q:                                             ; preds = %.noexc25
  %i.dp = icmp sgt i32 %i.cf, 0
end_hunk_21
begin_hunk_22_@_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_17FixedSizeListTypeEE11TakeAdapterImEEEENS_6StatusEv:bb.a
  %i.ht = add nsw i64 %.065153.i.i, %i.dq
  br label %.critedge79.i.i

..critedge79.loopexit138_crit_edge.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit90.i.i, %_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i
  %.us-phi.i.i = phi i64 [ %i.cn, %_ZN5arrow6StatusD2Ev.exit90.us.preheader.i.i ], [ %i.dn, %_ZN5arrow6StatusD2Ev.exit90.i.i ]
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !2874
  br label %.critedge79.i.i

.critedge79.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit100.i.i, %..critedge79.loopexit138_crit_edge.i.i, %.critedge82.i.i, %.preheader.i.i, %.noexc26
  %.570.i.i = phi i64 [ %i.ht, %.critedge82.i.i ], [ %.065153.i.i, %.noexc26 ], [ %.065153.i.i, %.preheader.i.i ], [ %.us-phi.i.i, %..critedge79.loopexit138_crit_edge.i.i ], [ %i.gu, %_ZN5arrow6StatusD2Ev.exit100.i.i ] ; 2 uses
  %i.hu = load ptr, ptr %i.au, align 8, !tbaa !705, !noalias !2874, !nonnull !129, !align !242
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !135, !noalias !2874
end_hunk_22
begin_hunk_23_@_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_15SparseUnionTypeEE11TakeAdapterIhEEEENS_6StatusEv:bb.a
  br label %.critedge81.i.i

.critedge81.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.epil.preheader, %.critedge81.i.i.loopexit34.unr-lcssa, %bb.m, %.critedge82.i.i, %.preheader.i.i, %.noexc15
  %.570.i.i = phi i64 [ %i.fb, %.critedge82.i.i ], [ %.065141.i.i, %.preheader.i.i ], [ %i.ee, %bb.m ], [ %.065141.i.i, %.noexc15 ], [ %i.cd, %.critedge81.i.i.loopexit34.unr-lcssa ], [ %i.fm, %_ZN5arrow6StatusD2Ev.exit.i.i.epil.preheader ] ; 2 uses
  %i.fn = load ptr, ptr %i.t, align 8, !tbaa !1148, !noalias !3090, !nonnull !129, !align !242
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !135, !noalias !3090
end_hunk_23
begin_hunk_24_@_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_15SparseUnionTypeEE11TakeAdapterItEEEENS_6StatusEv:bb.a
  br label %.critedge81.i.i

.critedge81.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.epil.preheader, %.critedge81.i.i.loopexit34.unr-lcssa, %bb.m, %.critedge82.i.i, %.preheader.i.i, %.noexc15
  %.570.i.i = phi i64 [ %i.fb, %.critedge82.i.i ], [ %.065141.i.i, %.preheader.i.i ], [ %i.ee, %bb.m ], [ %.065141.i.i, %.noexc15 ], [ %i.cd, %.critedge81.i.i.loopexit34.unr-lcssa ], [ %i.fm, %_ZN5arrow6StatusD2Ev.exit.i.i.epil.preheader ] ; 2 uses
  %i.fn = load ptr, ptr %i.t, align 8, !tbaa !1148, !noalias !3108, !nonnull !129, !align !242
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !135, !noalias !3108
end_hunk_24
begin_hunk_25_@_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_15SparseUnionTypeEE11TakeAdapterIjEEEENS_6StatusEv:bb.a
  br label %.critedge81.i.i

.critedge81.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.epil.preheader, %.critedge81.i.i.loopexit34.unr-lcssa, %bb.m, %.critedge82.i.i, %.preheader.i.i, %.noexc15
  %.570.i.i = phi i64 [ %i.fb, %.critedge82.i.i ], [ %.065141.i.i, %.preheader.i.i ], [ %i.ee, %bb.m ], [ %.065141.i.i, %.noexc15 ], [ %i.cd, %.critedge81.i.i.loopexit34.unr-lcssa ], [ %i.fm, %_ZN5arrow6StatusD2Ev.exit.i.i.epil.preheader ] ; 2 uses
  %i.fn = load ptr, ptr %i.t, align 8, !tbaa !1148, !noalias !3126, !nonnull !129, !align !242
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !135, !noalias !3126
end_hunk_25
begin_hunk_26_@_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_15SparseUnionTypeEE11TakeAdapterImEEEENS_6StatusEv:bb.a
  br label %.critedge81.i.i

.critedge81.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.epil.preheader, %.critedge81.i.i.loopexit34.unr-lcssa, %bb.m, %.critedge82.i.i, %.preheader.i.i, %.noexc15
  %.570.i.i = phi i64 [ %i.ex, %.critedge82.i.i ], [ %.065141.i.i, %.preheader.i.i ], [ %i.ea, %bb.m ], [ %.065141.i.i, %.noexc15 ], [ %i.cb, %.critedge81.i.i.loopexit34.unr-lcssa ], [ %i.fh, %_ZN5arrow6StatusD2Ev.exit.i.i.epil.preheader ] ; 2 uses
  %i.fi = load ptr, ptr %i.t, align 8, !tbaa !1148, !noalias !3144, !nonnull !129, !align !242
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !135, !noalias !3144
end_hunk_26
begin_hunk_27_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterIhEEEENS_6StatusEv:bb.a
          to label %.noexc5 unwind label %.loopexit ; 3 uses

.noexc5:                                          ; preds = %bb.i
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.aw to i16 ; 4 uses
  %i.ax = ashr i32 %i.aw, 16                      ; 2 uses
  %sext.i.i = shl i32 %i.aw, 16
  %i.ay = ashr exact i32 %sext.i.i, 16
end_hunk_27
begin_hunk_28_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterIhEEEENS_6StatusEv:bb.a

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %or.cond7.not.i.i = and i1 %i.au, %i.az
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i
end_hunk_28
begin_hunk_29_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterIhEEEENS_6StatusEv:bb.a
  %i.cx = add nsw i64 %.36816.i.i, 1
  %i.cy = add nuw nsw i64 %.05719.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cy, %i.bi
  br i1 %exitcond.not.i.i, label %..critedge81.loopexit_crit_edge.i.i, label %bb.l, !llvm.loop !3192

.critedge82.i.i.a:                                ; preds = %bb.k
  %i.cz = load ptr, ptr %i.ar, align 8, !tbaa !235, !noalias !3191
end_hunk_29
begin_hunk_30_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterIhEEEENS_6StatusEv:bb.a
  %i.dd = shufflevector <2 x i64> %i.dc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.de = add nsw <2 x i64> %i.db, %i.dd
  store <2 x i64> %i.de, ptr %i.as, align 8, !tbaa !174, !noalias !3191
  %5 = add nsw i64 %.06521.i.i, %i.bi
  br label %.critedge81.i.i

..critedge81.loopexit_crit_edge.i.i:              ; preds = %bb.m
  %6 = add i64 %.06521.i.i, %i.bi
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !3191
  br label %.critedge81.i.i

.critedge81.i.i:                                  ; preds = %..critedge81.loopexit_crit_edge.i.i, %.noexc7, %.preheader.i.i, %.noexc6
  %.570.i.i = phi i64 [ %5, %.noexc7 ], [ %.06521.i.i, %.preheader.i.i ], [ %6, %..critedge81.loopexit_crit_edge.i.i ], [ %spec.select.i.i, %.noexc6 ] ; 2 uses
  %i.df = load ptr, ptr %i.t, align 8, !tbaa !1180, !noalias !3191, !nonnull !129, !align !242
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !135, !noalias !3191
end_hunk_30
begin_hunk_31_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterItEEEENS_6StatusEv:bb.a
          to label %.noexc5 unwind label %.loopexit ; 3 uses

.noexc5:                                          ; preds = %bb.i
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.aw to i16 ; 4 uses
  %i.ax = ashr i32 %i.aw, 16                      ; 2 uses
  %sext.i.i = shl i32 %i.aw, 16
  %i.ay = ashr exact i32 %sext.i.i, 16
end_hunk_31
begin_hunk_32_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterItEEEENS_6StatusEv:bb.a

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %or.cond7.not.i.i = and i1 %i.au, %i.az
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i
end_hunk_32
begin_hunk_33_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterItEEEENS_6StatusEv:bb.a
  %i.cx = add nsw i64 %.36816.i.i, 1
  %i.cy = add nuw nsw i64 %.05719.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cy, %i.bi
  br i1 %exitcond.not.i.i, label %..critedge81.loopexit_crit_edge.i.i, label %bb.l, !llvm.loop !3204

.critedge82.i.i.a:                                ; preds = %bb.k
  %i.cz = load ptr, ptr %i.ar, align 8, !tbaa !235, !noalias !3203
end_hunk_33
begin_hunk_34_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterItEEEENS_6StatusEv:bb.a
  %i.dd = shufflevector <2 x i64> %i.dc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.de = add nsw <2 x i64> %i.db, %i.dd
  store <2 x i64> %i.de, ptr %i.as, align 8, !tbaa !174, !noalias !3203
  %5 = add nsw i64 %.06521.i.i, %i.bi
  br label %.critedge81.i.i

..critedge81.loopexit_crit_edge.i.i:              ; preds = %bb.m
  %6 = add i64 %.06521.i.i, %i.bi
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !3203
  br label %.critedge81.i.i

.critedge81.i.i:                                  ; preds = %..critedge81.loopexit_crit_edge.i.i, %.noexc7, %.preheader.i.i, %.noexc6
  %.570.i.i = phi i64 [ %5, %.noexc7 ], [ %.06521.i.i, %.preheader.i.i ], [ %6, %..critedge81.loopexit_crit_edge.i.i ], [ %spec.select.i.i, %.noexc6 ] ; 2 uses
  %i.df = load ptr, ptr %i.t, align 8, !tbaa !1180, !noalias !3203, !nonnull !129, !align !242
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !135, !noalias !3203
end_hunk_34
begin_hunk_35_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterIjEEEENS_6StatusEv:bb.a
          to label %.noexc5 unwind label %.loopexit ; 3 uses

.noexc5:                                          ; preds = %bb.i
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.aw to i16 ; 4 uses
  %i.ax = ashr i32 %i.aw, 16                      ; 2 uses
  %sext.i.i = shl i32 %i.aw, 16
  %i.ay = ashr exact i32 %sext.i.i, 16
end_hunk_35
begin_hunk_36_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterIjEEEENS_6StatusEv:bb.a

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %or.cond7.not.i.i = and i1 %i.au, %i.az
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i
end_hunk_36
begin_hunk_37_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterIjEEEENS_6StatusEv:bb.a
  %i.cx = add nsw i64 %.36816.i.i, 1
  %i.cy = add nuw nsw i64 %.05719.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cy, %i.bi
  br i1 %exitcond.not.i.i, label %..critedge81.loopexit_crit_edge.i.i, label %bb.l, !llvm.loop !3216

.critedge82.i.i.a:                                ; preds = %bb.k
  %i.cz = load ptr, ptr %i.ar, align 8, !tbaa !235, !noalias !3215
end_hunk_37
begin_hunk_38_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterIjEEEENS_6StatusEv:bb.a
  %i.dd = shufflevector <2 x i64> %i.dc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.de = add nsw <2 x i64> %i.db, %i.dd
  store <2 x i64> %i.de, ptr %i.as, align 8, !tbaa !174, !noalias !3215
  %5 = add nsw i64 %.06521.i.i, %i.bi
  br label %.critedge81.i.i

..critedge81.loopexit_crit_edge.i.i:              ; preds = %bb.m
  %6 = add i64 %.06521.i.i, %i.bi
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !3215
  br label %.critedge81.i.i

.critedge81.i.i:                                  ; preds = %..critedge81.loopexit_crit_edge.i.i, %.noexc7, %.preheader.i.i, %.noexc6
  %.570.i.i = phi i64 [ %5, %.noexc7 ], [ %.06521.i.i, %.preheader.i.i ], [ %6, %..critedge81.loopexit_crit_edge.i.i ], [ %spec.select.i.i, %.noexc6 ] ; 2 uses
  %i.df = load ptr, ptr %i.t, align 8, !tbaa !1180, !noalias !3215, !nonnull !129, !align !242
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !135, !noalias !3215
end_hunk_38
begin_hunk_39_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterImEEEENS_6StatusEv:bb.a
          to label %.noexc5 unwind label %.loopexit ; 3 uses

.noexc5:                                          ; preds = %bb.i
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.aw to i16 ; 4 uses
  %i.ax = ashr i32 %i.aw, 16                      ; 2 uses
  %sext.i.i = shl i32 %i.aw, 16
  %i.ay = ashr exact i32 %sext.i.i, 16
end_hunk_39
begin_hunk_40_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterImEEEENS_6StatusEv:bb.a

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %or.cond7.not.i.i = and i1 %i.au, %i.az
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i
end_hunk_40
begin_hunk_41_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterImEEEENS_6StatusEv:bb.a
  %i.cw = add nsw i64 %.36816.i.i, 1
  %i.cx = add nuw nsw i64 %.05719.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cx, %i.bi
  br i1 %exitcond.not.i.i, label %..critedge81.loopexit_crit_edge.i.i, label %bb.l, !llvm.loop !3228

.critedge82.i.i.a:                                ; preds = %bb.k
  %i.cy = load ptr, ptr %i.ar, align 8, !tbaa !235, !noalias !3227
end_hunk_41
begin_hunk_42_@_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterImEEEENS_6StatusEv:bb.a
  %i.dc = shufflevector <2 x i64> %i.db, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dd = add nsw <2 x i64> %i.da, %i.dc
  store <2 x i64> %i.dd, ptr %i.as, align 8, !tbaa !174, !noalias !3227
  %5 = add nsw i64 %.06521.i.i, %i.bi
  br label %.critedge81.i.i

..critedge81.loopexit_crit_edge.i.i:              ; preds = %bb.m
  %6 = add i64 %.06521.i.i, %i.bi
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !3227
  br label %.critedge81.i.i

.critedge81.i.i:                                  ; preds = %..critedge81.loopexit_crit_edge.i.i, %.noexc7, %.preheader.i.i, %.noexc6
  %.570.i.i = phi i64 [ %5, %.noexc7 ], [ %.06521.i.i, %.preheader.i.i ], [ %6, %..critedge81.loopexit_crit_edge.i.i ], [ %spec.select.i.i, %.noexc6 ] ; 2 uses
  %i.de = load ptr, ptr %i.t, align 8, !tbaa !1180, !noalias !3227, !nonnull !129, !align !242
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !135, !noalias !3227
end_hunk_42
