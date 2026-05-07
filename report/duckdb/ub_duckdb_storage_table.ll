inline.NumInlined: 22010
inline.NumDeleted: 8913
begin_hunk_0_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIsEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  br i1 %.not.i38, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i8 1, ptr %i.bx, align 1, !tbaa !2270
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader: ; preds = %.lr.ph.split.us
end_hunk_0
begin_hunk_1_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIsEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i16 %i.cn, ptr %i.bz, align 8, !tbaa !266, !alias.scope !4664, !noalias !4660
  store i16 %i.cm, ptr %i.ca, align 8, !tbaa !266, !alias.scope !4664, !noalias !4660
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader156

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader156: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader, %middle.block
  %.sroa.speculated.i.i.i4048.us.us.ph = phi i16 [ %.promoted46, %vector.memcheck ], [ %.promoted46, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader ], [ %i.cm, %middle.block ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIsEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %.sroa.speculated10.i.i.i3945.us.us.unr = phi i16 [ %.sroa.speculated10.i.i.i3945.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader156 ], [ %.sroa.speculated10.i.i.i39.us.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol ]
  %.03143.us.us.unr = phi i64 [ %.03143.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader156 ], [ %i.co, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol ]
  %i.ct = icmp eq i64 %3, %.neg
  br i1 %i.ct, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us
  %.sroa.speculated.i.i.i4048.us.us = phi i16 [ %.sroa.speculated.i.i.i40.us.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us ], [ %.sroa.speculated.i.i.i4048.us.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit ]
end_hunk_2
begin_hunk_3_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIsEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %.sroa.speculated.i.i.i40.us.us.1 = tail call i16 @llvm.smax.i16(i16 %i.dd, i16 %.sroa.speculated.i.i.i40.us.us) ; 2 uses
  store i16 %.sroa.speculated.i.i.i40.us.us.1, ptr %i.ca, align 8, !tbaa !266
  %exitcond77.not.1 = icmp eq i64 %i.cz, %3
  br i1 %exitcond77.not.1, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us, !llvm.loop !4666

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new
  %.sroa.speculated.i.i.i4048.us = phi i16 [ %.promoted46, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new ], [ %.sroa.speculated.i.i.i40.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us ]
end_hunk_3
begin_hunk_4_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIsEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i16 %.sroa.speculated.i.i.i40.us.1, ptr %i.ca, align 8, !tbaa !266
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit164.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, !llvm.loop !4667

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us53, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37
end_hunk_4
begin_hunk_5_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIsEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %exitcond.not = icmp eq i64 %i.eu, %3
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, !llvm.loop !4667

.loopexit.loopexit164.unr-lcssa:                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader: ; preds = %.loopexit.loopexit164.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader
  %.sroa.speculated.i.i.i4048.us.epil.init = phi i16 [ %.promoted46, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %.sroa.speculated.i.i.i40.us.1, %.loopexit.loopexit164.unr-lcssa ]
  %.sroa.speculated10.i.i.i3945.us.epil.init = phi i16 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %.sroa.speculated10.i.i.i39.us.1, %.loopexit.loopexit164.unr-lcssa ]
  %.03143.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %i.dp, %.loopexit.loopexit164.unr-lcssa ] ; 3 uses
  %lcmp.mod167 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.03143.us.epil.init
  %6 = load i32, ptr %5, align 4, !tbaa !3
  %7 = zext i32 %6 to i64
  %8 = trunc i64 %.03143.us.epil.init to i32
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.03143.us.epil.init
  store i32 %8, ptr %9, align 4, !tbaa !3
  %10 = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %7
  %11 = load i16, ptr %10, align 2, !tbaa !266    ; 2 uses
  %.sroa.speculated10.i.i.i39.us.epil = tail call i16 @llvm.smin.i16(i16 %.sroa.speculated10.i.i.i3945.us.epil.init, i16 %11)
  store i16 %.sroa.speculated10.i.i.i39.us.epil, ptr %i.bz, align 8, !tbaa !266
  %.sroa.speculated.i.i.i40.us.epil = tail call i16 @llvm.smax.i16(i16 %11, i16 %.sroa.speculated.i.i.i4048.us.epil.init)
  store i16 %.sroa.speculated.i.i.i40.us.epil, ptr %i.ca, align 8, !tbaa !266
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader, %.loopexit.loopexit164.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us, %middle.block, %bb.i, %_ZN6duckdb15SelectionVector10InitializeEPj.exit
  %.0 = phi i64 [ %3, %_ZN6duckdb15SelectionVector10InitializeEPj.exit ], [ 0, %bb.i ], [ %.1.us59, %bb.k ], [ %3, %middle.block ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us ], [ %3, %.loopexit.loopexit164.unr-lcssa ], [ %.1, %bb.m ]
  ret i64 %.0
}

end_hunk_5
begin_hunk_6_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIiEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %i.bs = load ptr, ptr %4, align 8               ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 16 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 16 uses
  br i1 %.not.i38, label %.lr.ph.split.us, label %..loopexit_crit_edge.split.us.loopexit.unr-lcssa

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i8 1, ptr %i.br, align 1, !tbaa !2270
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader: ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %3, 1
  %i.bv = icmp eq i64 %3, 1
  br i1 %i.bv, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader
  %unroll_iter = and i64 %3, -2
end_hunk_6
begin_hunk_7_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIiEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader: ; preds = %.lr.ph.split.us
  %xtraiter102 = and i64 %3, 1
  %i.bw = icmp eq i64 %3, 1
  br i1 %i.bw, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader
  %unroll_iter105 = and i64 %3, -2
end_hunk_7
begin_hunk_8_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIiEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i32 %.sroa.speculated.i.i.i40.us.us.1, ptr %i.bu, align 8, !tbaa !3
  %niter106.next.1 = add i64 %niter106, 2         ; 2 uses
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us, !llvm.loop !4676

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new
  %.03143.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new ], [ %i.cy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us ] ; 5 uses
end_hunk_8
begin_hunk_9_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIiEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i32 %.sroa.speculated.i.i.i40.us.1, ptr %i.bu, align 8, !tbaa !3
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit102.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, !llvm.loop !4676

..loopexit_crit_edge.split.us.loopexit.unr-lcssa: ; preds = %.lr.ph
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.epil.preheader.a, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us46

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.epil.preheader.a: ; preds = %..loopexit_crit_edge.split.us.loopexit.unr-lcssa, %..loopexit_crit_edge.split.us
  %.03143.us.us.epil.init.a = phi i64 [ %12, %..loopexit_crit_edge.split.us ], [ 0, %..loopexit_crit_edge.split.us.loopexit.unr-lcssa ] ; 5 uses
  %.03242.us45 = phi i64 [ %.1.us50, %..loopexit_crit_edge.split.us ], [ 0, %..loopexit_crit_edge.split.us.loopexit.unr-lcssa ] ; 3 uses
  %5 = lshr i64 %.03143.us.us.epil.init.a, 6
  %6 = and i64 %.03143.us.us.epil.init.a, 63
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %5
  %8 = load i64, ptr %7, align 8, !tbaa !24
  %9 = shl nuw i64 1, %6
  %10 = and i64 %8, %9
  %.not.us = icmp eq i64 %10, 0
  br i1 %.not.us, label %..loopexit_crit_edge.split.us.loopexit99.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader.a

..loopexit_crit_edge.split.us.loopexit99.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.epil.preheader.a
  store i8 1, ptr %i.bq, align 8, !tbaa !2267
  br label %..loopexit_crit_edge.split.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader.a: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.epil.preheader.a
  store i8 1, ptr %i.br, align 1, !tbaa !2270
  %11 = add i64 %.03242.us45, 1
  %i.df = trunc i64 %.03143.us.us.epil.init.a to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03242.us45
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !3
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.03143.us.us.epil.init.a
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 2 uses
  %i.dj = load i32, ptr %i.bt, align 8, !tbaa !3
  %.sroa.speculated10.i.i.i39.us.epil.a = tail call i32 @llvm.smin.i32(i32 %i.dj, i32 %i.di)
end_hunk_9
begin_hunk_10_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIiEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i32 %.sroa.speculated.i.i.i40.us.epil.a, ptr %i.bu, align 8, !tbaa !3
  br label %..loopexit_crit_edge.split.us

..loopexit_crit_edge.split.us:                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader.a, %..loopexit_crit_edge.split.us.loopexit99.unr-lcssa
  %.1.us50 = phi i64 [ %11, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader.a ], [ %.03242.us45, %..loopexit_crit_edge.split.us.loopexit99.unr-lcssa ] ; 2 uses
  %12 = add nuw i64 %.03143.us.us.epil.init.a, 1  ; 2 uses
  %exitcond66.not = icmp eq i64 %12, %3
  br i1 %exitcond66.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.epil.preheader.a, !llvm.loop !4676

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us46: ; preds = %..loopexit_crit_edge.split.us.loopexit.unr-lcssa, %bb.j
  %.03143.us44 = phi i64 [ %i.dy, %bb.j ], [ 0, %..loopexit_crit_edge.split.us.loopexit.unr-lcssa ] ; 3 uses
  %.03242.us45.a = phi i64 [ %.1.us50.a, %bb.j ], [ 0, %..loopexit_crit_edge.split.us.loopexit.unr-lcssa ] ; 3 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.03143.us44
  %14 = load i32, ptr %13, align 4, !tbaa !3
  %15 = zext i32 %14 to i64                       ; 3 uses
  %i.dl = lshr i64 %15, 6
  %i.dm = and i64 %15, 63
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.dl
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !24
  %i.dp = shl nuw i64 1, %i.dm
  %i.dq = and i64 %i.do, %i.dp
  %.not.us.a = icmp eq i64 %i.dq, 0
  br i1 %.not.us.a, label %16, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us47

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us47: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us46
  store i8 1, ptr %i.br, align 1, !tbaa !2270
end_hunk_10
begin_hunk_11_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIiEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %i.ds = trunc i64 %.03143.us44 to i32
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03242.us45.a
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !3
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %15
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3  ; 2 uses
  %i.dw = load i32, ptr %i.bt, align 8, !tbaa !3
  %.sroa.speculated10.i.i.i39.us48 = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.dv)
end_hunk_11
begin_hunk_12_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIiEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i32 %.sroa.speculated.i.i.i40.us49, ptr %i.bu, align 8, !tbaa !3
  br label %bb.j

16:                                               ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us46
  store i8 1, ptr %i.bq, align 8, !tbaa !2267
  br label %bb.j

bb.j:                                             ; preds = %16, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us47
  %.1.us50.a = phi i64 [ %i.dr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us47 ], [ %.03242.us45.a, %16 ] ; 2 uses
  %i.dy = add nuw i64 %.03143.us44, 1             ; 2 uses
  %exitcond65.not = icmp eq i64 %i.dy, %3
  br i1 %exitcond65.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us46, !llvm.loop !4676

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us
  %lcmp.mod107.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod107.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37

_ZNK6duckdb15SelectionVector9get_indexEm.exit37:  ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader
  %.03143 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader ], [ %i.ce, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod108 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %17 = trunc i64 %.03143 to i32
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03143
  store i32 %17, ptr %i.dz, align 4, !tbaa !3
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.03143
  %19 = load i32, ptr %18, align 4, !tbaa !3      ; 2 uses
  %20 = load i32, ptr %i.bt, align 8, !tbaa !3
  %.sroa.speculated10.i.i.i39.us.us.epil = tail call i32 @llvm.smin.i32(i32 %20, i32 %19)
  store i32 %.sroa.speculated10.i.i.i39.us.us.epil, ptr %i.bt, align 8, !tbaa !3
  %21 = load i32, ptr %i.bu, align 8, !tbaa !3
  %.sroa.speculated.i.i.i40.us.us.epil = tail call i32 @llvm.smax.i32(i32 %19, i32 %21)
  store i32 %.sroa.speculated.i.i.i40.us.us.epil, ptr %i.bu, align 8, !tbaa !3
  br label %.loopexit

.loopexit.loopexit102.unr-lcssa:                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %.loopexit.loopexit102.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader
  %.03143.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %i.cy, %.loopexit.loopexit102.unr-lcssa ] ; 3 uses
  %lcmp.mod105 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.03143.us.epil.init
  %23 = load i32, ptr %22, align 4, !tbaa !3
  %24 = zext i32 %23 to i64
  %i.ea = trunc i64 %.03143.us.epil.init to i32
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03143.us.epil.init
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !3
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %24
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3  ; 2 uses
  %i.ee = load i32, ptr %i.bt, align 8, !tbaa !3
  %.sroa.speculated10.i.i.i39 = tail call i32 @llvm.smin.i32(i32 %i.ee, i32 %i.ed)
end_hunk_12
begin_hunk_13_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIiEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %i.ef = load i32, ptr %i.bu, align 8, !tbaa !3
  %.sroa.speculated.i.i.i40 = tail call i32 @llvm.smax.i32(i32 %i.ed, i32 %i.ef)
  store i32 %.sroa.speculated.i.i.i40, ptr %i.bu, align 8, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %..loopexit_crit_edge.split.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %.loopexit.loopexit102.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, %.loopexit.loopexit.unr-lcssa, %bb.i, %_ZN6duckdb15SelectionVector10InitializeEPj.exit
  %.0 = phi i64 [ %3, %_ZN6duckdb15SelectionVector10InitializeEPj.exit ], [ 0, %bb.i ], [ %.1.us50, %..loopexit_crit_edge.split.us ], [ %3, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37 ], [ %3, %.loopexit.loopexit.unr-lcssa ], [ %3, %.loopexit.loopexit102.unr-lcssa ], [ %.1.us50.a, %bb.j ]
  ret i64 %.0
}

end_hunk_13
begin_hunk_14_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIlEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  br i1 %.not.i38, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i8 1, ptr %i.br, align 1, !tbaa !2270
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader: ; preds = %.lr.ph.split.us
end_hunk_14
begin_hunk_15_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIlEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i64 %i.ch, ptr %i.bt, align 8, !tbaa !24, !alias.scope !4689, !noalias !4685
  store i64 %i.cg, ptr %i.bu, align 8, !tbaa !24, !alias.scope !4689, !noalias !4685
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader140

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader140: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader, %middle.block
  %.sroa.speculated.i.i.i4048.us.us.ph = phi i64 [ %.promoted46, %vector.memcheck ], [ %.promoted46, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader ], [ %i.cg, %middle.block ] ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIlEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %.sroa.speculated10.i.i.i3945.us.us.unr = phi i64 [ %.sroa.speculated10.i.i.i3945.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader140 ], [ %.sroa.speculated10.i.i.i39.us.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol ]
  %.03143.us.us.unr = phi i64 [ %.03143.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader140 ], [ %i.ci, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol ]
  %i.cn = icmp eq i64 %3, %.neg
  br i1 %i.cn, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us
  %.sroa.speculated.i.i.i4048.us.us = phi i64 [ %.sroa.speculated.i.i.i40.us.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us ], [ %.sroa.speculated.i.i.i4048.us.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit ]
end_hunk_16
begin_hunk_17_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIlEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %.sroa.speculated.i.i.i40.us.us.1 = tail call i64 @llvm.smax.i64(i64 %i.cx, i64 %.sroa.speculated.i.i.i40.us.us) ; 2 uses
  store i64 %.sroa.speculated.i.i.i40.us.us.1, ptr %i.bu, align 8, !tbaa !24
  %exitcond77.not.1 = icmp eq i64 %i.ct, %3
  br i1 %exitcond77.not.1, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us, !llvm.loop !4691

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new
  %.sroa.speculated.i.i.i4048.us = phi i64 [ %.promoted46, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new ], [ %.sroa.speculated.i.i.i40.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us ]
end_hunk_17
begin_hunk_18_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIlEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i64 %.sroa.speculated.i.i.i40.us.1, ptr %i.bu, align 8, !tbaa !24
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit148.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, !llvm.loop !4692

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us53, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37
end_hunk_18
begin_hunk_19_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIlEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %exitcond.not = icmp eq i64 %i.eo, %3
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, !llvm.loop !4692

.loopexit.loopexit148.unr-lcssa:                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader: ; preds = %.loopexit.loopexit148.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader
  %.sroa.speculated.i.i.i4048.us.epil.init = phi i64 [ %.promoted46, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %.sroa.speculated.i.i.i40.us.1, %.loopexit.loopexit148.unr-lcssa ]
  %.sroa.speculated10.i.i.i3945.us.epil.init = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %.sroa.speculated10.i.i.i39.us.1, %.loopexit.loopexit148.unr-lcssa ]
  %.03143.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %i.dj, %.loopexit.loopexit148.unr-lcssa ] ; 3 uses
  %lcmp.mod151 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.03143.us.epil.init
  %6 = load i32, ptr %5, align 4, !tbaa !3
  %7 = zext i32 %6 to i64
  %8 = trunc i64 %.03143.us.epil.init to i32
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03143.us.epil.init
  store i32 %8, ptr %9, align 4, !tbaa !3
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %7
  %11 = load i64, ptr %10, align 8, !tbaa !24     ; 2 uses
  %.sroa.speculated10.i.i.i39.us.epil = tail call i64 @llvm.smin.i64(i64 %.sroa.speculated10.i.i.i3945.us.epil.init, i64 %11)
  store i64 %.sroa.speculated10.i.i.i39.us.epil, ptr %i.bt, align 8, !tbaa !24
  %.sroa.speculated.i.i.i40.us.epil = tail call i64 @llvm.smax.i64(i64 %11, i64 %.sroa.speculated.i.i.i4048.us.epil.init)
  store i64 %.sroa.speculated.i.i.i40.us.epil, ptr %i.bu, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader, %.loopexit.loopexit148.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us, %middle.block, %bb.i, %_ZN6duckdb15SelectionVector10InitializeEPj.exit
  %.0 = phi i64 [ %3, %_ZN6duckdb15SelectionVector10InitializeEPj.exit ], [ 0, %bb.i ], [ %.1.us59, %bb.k ], [ %3, %middle.block ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us ], [ %3, %.loopexit.loopexit148.unr-lcssa ], [ %.1, %bb.m ]
  ret i64 %.0
}

end_hunk_19
begin_hunk_20_@_ZN6duckdb32TemplatedUpdateNumericStatisticsItEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  br i1 %.not.i38, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i8 1, ptr %i.bx, align 1, !tbaa !2270
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader: ; preds = %.lr.ph.split.us
end_hunk_20
begin_hunk_21_@_ZN6duckdb32TemplatedUpdateNumericStatisticsItEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i16 %i.cn, ptr %i.bz, align 8, !tbaa !266, !alias.scope !4708, !noalias !4704
  store i16 %i.cm, ptr %i.ca, align 8, !tbaa !266, !alias.scope !4708, !noalias !4704
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader156

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader156: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader, %middle.block
  %.sroa.speculated.i.i.i4048.us.us.ph = phi i16 [ %.promoted46, %vector.memcheck ], [ %.promoted46, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader ], [ %i.cm, %middle.block ] ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN6duckdb32TemplatedUpdateNumericStatisticsItEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %.sroa.speculated10.i.i.i3945.us.us.unr = phi i16 [ %.sroa.speculated10.i.i.i3945.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader156 ], [ %.sroa.speculated10.i.i.i39.us.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol ]
  %.03143.us.us.unr = phi i64 [ %.03143.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader156 ], [ %i.co, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol ]
  %i.ct = icmp eq i64 %3, %.neg
  br i1 %i.ct, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us
  %.sroa.speculated.i.i.i4048.us.us = phi i16 [ %.sroa.speculated.i.i.i40.us.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us ], [ %.sroa.speculated.i.i.i4048.us.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit ]
end_hunk_22
begin_hunk_23_@_ZN6duckdb32TemplatedUpdateNumericStatisticsItEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %.sroa.speculated.i.i.i40.us.us.1 = tail call i16 @llvm.umax.i16(i16 %i.dd, i16 %.sroa.speculated.i.i.i40.us.us) ; 2 uses
  store i16 %.sroa.speculated.i.i.i40.us.us.1, ptr %i.ca, align 8, !tbaa !266
  %exitcond77.not.1 = icmp eq i64 %i.cz, %3
  br i1 %exitcond77.not.1, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us, !llvm.loop !4710

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new
  %.sroa.speculated.i.i.i4048.us = phi i16 [ %.promoted46, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new ], [ %.sroa.speculated.i.i.i40.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us ]
end_hunk_23
begin_hunk_24_@_ZN6duckdb32TemplatedUpdateNumericStatisticsItEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i16 %.sroa.speculated.i.i.i40.us.1, ptr %i.ca, align 8, !tbaa !266
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit164.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, !llvm.loop !4711

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us53, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37
end_hunk_24
begin_hunk_25_@_ZN6duckdb32TemplatedUpdateNumericStatisticsItEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %exitcond.not = icmp eq i64 %i.eu, %3
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, !llvm.loop !4711

.loopexit.loopexit164.unr-lcssa:                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader: ; preds = %.loopexit.loopexit164.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader
  %.sroa.speculated.i.i.i4048.us.epil.init = phi i16 [ %.promoted46, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %.sroa.speculated.i.i.i40.us.1, %.loopexit.loopexit164.unr-lcssa ]
  %.sroa.speculated10.i.i.i3945.us.epil.init = phi i16 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %.sroa.speculated10.i.i.i39.us.1, %.loopexit.loopexit164.unr-lcssa ]
  %.03143.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %i.dp, %.loopexit.loopexit164.unr-lcssa ] ; 3 uses
  %lcmp.mod167 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.03143.us.epil.init
  %6 = load i32, ptr %5, align 4, !tbaa !3
  %7 = zext i32 %6 to i64
  %8 = trunc i64 %.03143.us.epil.init to i32
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.03143.us.epil.init
  store i32 %8, ptr %9, align 4, !tbaa !3
  %10 = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %7
  %11 = load i16, ptr %10, align 2, !tbaa !266    ; 2 uses
  %.sroa.speculated10.i.i.i39.us.epil = tail call i16 @llvm.umin.i16(i16 %.sroa.speculated10.i.i.i3945.us.epil.init, i16 %11)
  store i16 %.sroa.speculated10.i.i.i39.us.epil, ptr %i.bz, align 8, !tbaa !266
  %.sroa.speculated.i.i.i40.us.epil = tail call i16 @llvm.umax.i16(i16 %11, i16 %.sroa.speculated.i.i.i4048.us.epil.init)
  store i16 %.sroa.speculated.i.i.i40.us.epil, ptr %i.ca, align 8, !tbaa !266
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader, %.loopexit.loopexit164.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us, %middle.block, %bb.i, %_ZN6duckdb15SelectionVector10InitializeEPj.exit
  %.0 = phi i64 [ %3, %_ZN6duckdb15SelectionVector10InitializeEPj.exit ], [ 0, %bb.i ], [ %.1.us59, %bb.k ], [ %3, %middle.block ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us ], [ %3, %.loopexit.loopexit164.unr-lcssa ], [ %.1, %bb.m ]
  ret i64 %.0
}

end_hunk_25
begin_hunk_26_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIjEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %i.bs = load ptr, ptr %4, align 8               ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 16 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 16 uses
  br i1 %.not.i38, label %.lr.ph.split.us, label %..loopexit_crit_edge.split.us.loopexit.unr-lcssa

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i8 1, ptr %i.br, align 1, !tbaa !2270
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader: ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %3, 1
  %i.bv = icmp eq i64 %3, 1
  br i1 %i.bv, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader
  %unroll_iter = and i64 %3, -2
end_hunk_26
begin_hunk_27_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIjEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader: ; preds = %.lr.ph.split.us
  %xtraiter102 = and i64 %3, 1
  %i.bw = icmp eq i64 %3, 1
  br i1 %i.bw, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader
  %unroll_iter105 = and i64 %3, -2
end_hunk_27
begin_hunk_28_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIjEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i32 %.sroa.speculated.i.i.i40.us.us.1, ptr %i.bu, align 8, !tbaa !3
  %niter106.next.1 = add i64 %niter106, 2         ; 2 uses
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us, !llvm.loop !4720

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new
  %.03143.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new ], [ %i.cy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us ] ; 5 uses
end_hunk_28
begin_hunk_29_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIjEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i32 %.sroa.speculated.i.i.i40.us.1, ptr %i.bu, align 8, !tbaa !3
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit102.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, !llvm.loop !4720

..loopexit_crit_edge.split.us.loopexit.unr-lcssa: ; preds = %.lr.ph
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.epil.preheader.a, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us46

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.epil.preheader.a: ; preds = %..loopexit_crit_edge.split.us.loopexit.unr-lcssa, %..loopexit_crit_edge.split.us
  %.03143.us.us.epil.init.a = phi i64 [ %12, %..loopexit_crit_edge.split.us ], [ 0, %..loopexit_crit_edge.split.us.loopexit.unr-lcssa ] ; 5 uses
  %.03242.us45 = phi i64 [ %.1.us50, %..loopexit_crit_edge.split.us ], [ 0, %..loopexit_crit_edge.split.us.loopexit.unr-lcssa ] ; 3 uses
  %5 = lshr i64 %.03143.us.us.epil.init.a, 6
  %6 = and i64 %.03143.us.us.epil.init.a, 63
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %5
  %8 = load i64, ptr %7, align 8, !tbaa !24
  %9 = shl nuw i64 1, %6
  %10 = and i64 %8, %9
  %.not.us = icmp eq i64 %10, 0
  br i1 %.not.us, label %..loopexit_crit_edge.split.us.loopexit99.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader.a

..loopexit_crit_edge.split.us.loopexit99.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.epil.preheader.a
  store i8 1, ptr %i.bq, align 8, !tbaa !2267
  br label %..loopexit_crit_edge.split.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader.a: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.epil.preheader.a
  store i8 1, ptr %i.br, align 1, !tbaa !2270
  %11 = add i64 %.03242.us45, 1
  %i.df = trunc i64 %.03143.us.us.epil.init.a to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03242.us45
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !3
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.03143.us.us.epil.init.a
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 2 uses
  %i.dj = load i32, ptr %i.bt, align 8, !tbaa !3
  %.sroa.speculated10.i.i.i39.us.epil.a = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 %i.di)
end_hunk_29
begin_hunk_30_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIjEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i32 %.sroa.speculated.i.i.i40.us.epil.a, ptr %i.bu, align 8, !tbaa !3
  br label %..loopexit_crit_edge.split.us

..loopexit_crit_edge.split.us:                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader.a, %..loopexit_crit_edge.split.us.loopexit99.unr-lcssa
  %.1.us50 = phi i64 [ %11, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader.a ], [ %.03242.us45, %..loopexit_crit_edge.split.us.loopexit99.unr-lcssa ] ; 2 uses
  %12 = add nuw i64 %.03143.us.us.epil.init.a, 1  ; 2 uses
  %exitcond66.not = icmp eq i64 %12, %3
  br i1 %exitcond66.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.epil.preheader.a, !llvm.loop !4720

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us46: ; preds = %..loopexit_crit_edge.split.us.loopexit.unr-lcssa, %bb.j
  %.03143.us44 = phi i64 [ %i.dy, %bb.j ], [ 0, %..loopexit_crit_edge.split.us.loopexit.unr-lcssa ] ; 3 uses
  %.03242.us45.a = phi i64 [ %.1.us50.a, %bb.j ], [ 0, %..loopexit_crit_edge.split.us.loopexit.unr-lcssa ] ; 3 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.03143.us44
  %14 = load i32, ptr %13, align 4, !tbaa !3
  %15 = zext i32 %14 to i64                       ; 3 uses
  %i.dl = lshr i64 %15, 6
  %i.dm = and i64 %15, 63
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.dl
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !24
  %i.dp = shl nuw i64 1, %i.dm
  %i.dq = and i64 %i.do, %i.dp
  %.not.us.a = icmp eq i64 %i.dq, 0
  br i1 %.not.us.a, label %16, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us47

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us47: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us46
  store i8 1, ptr %i.br, align 1, !tbaa !2270
end_hunk_30
begin_hunk_31_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIjEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %i.ds = trunc i64 %.03143.us44 to i32
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03242.us45.a
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !3
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %15
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3  ; 2 uses
  %i.dw = load i32, ptr %i.bt, align 8, !tbaa !3
  %.sroa.speculated10.i.i.i39.us48 = tail call i32 @llvm.umin.i32(i32 %i.dw, i32 %i.dv)
end_hunk_31
begin_hunk_32_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIjEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i32 %.sroa.speculated.i.i.i40.us49, ptr %i.bu, align 8, !tbaa !3
  br label %bb.j

16:                                               ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us46
  store i8 1, ptr %i.bq, align 8, !tbaa !2267
  br label %bb.j

bb.j:                                             ; preds = %16, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us47
  %.1.us50.a = phi i64 [ %i.dr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us47 ], [ %.03242.us45.a, %16 ] ; 2 uses
  %i.dy = add nuw i64 %.03143.us44, 1             ; 2 uses
  %exitcond65.not = icmp eq i64 %i.dy, %3
  br i1 %exitcond65.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us46, !llvm.loop !4720

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us
  %lcmp.mod107.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod107.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37

_ZNK6duckdb15SelectionVector9get_indexEm.exit37:  ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader
  %.03143 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader ], [ %i.ce, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod108 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %17 = trunc i64 %.03143 to i32
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03143
  store i32 %17, ptr %i.dz, align 4, !tbaa !3
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.03143
  %19 = load i32, ptr %18, align 4, !tbaa !3      ; 2 uses
  %20 = load i32, ptr %i.bt, align 8, !tbaa !3
  %.sroa.speculated10.i.i.i39.us.us.epil = tail call i32 @llvm.umin.i32(i32 %20, i32 %19)
  store i32 %.sroa.speculated10.i.i.i39.us.us.epil, ptr %i.bt, align 8, !tbaa !3
  %21 = load i32, ptr %i.bu, align 8, !tbaa !3
  %.sroa.speculated.i.i.i40.us.us.epil = tail call i32 @llvm.umax.i32(i32 %19, i32 %21)
  store i32 %.sroa.speculated.i.i.i40.us.us.epil, ptr %i.bu, align 8, !tbaa !3
  br label %.loopexit

.loopexit.loopexit102.unr-lcssa:                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %.loopexit.loopexit102.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader
  %.03143.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %i.cy, %.loopexit.loopexit102.unr-lcssa ] ; 3 uses
  %lcmp.mod105 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.03143.us.epil.init
  %23 = load i32, ptr %22, align 4, !tbaa !3
  %24 = zext i32 %23 to i64
  %i.ea = trunc i64 %.03143.us.epil.init to i32
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03143.us.epil.init
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !3
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %24
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3  ; 2 uses
  %i.ee = load i32, ptr %i.bt, align 8, !tbaa !3
  %.sroa.speculated10.i.i.i39 = tail call i32 @llvm.umin.i32(i32 %i.ee, i32 %i.ed)
end_hunk_32
begin_hunk_33_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIjEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %i.ef = load i32, ptr %i.bu, align 8, !tbaa !3
  %.sroa.speculated.i.i.i40 = tail call i32 @llvm.umax.i32(i32 %i.ed, i32 %i.ef)
  store i32 %.sroa.speculated.i.i.i40, ptr %i.bu, align 8, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %..loopexit_crit_edge.split.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %.loopexit.loopexit102.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, %.loopexit.loopexit.unr-lcssa, %bb.i, %_ZN6duckdb15SelectionVector10InitializeEPj.exit
  %.0 = phi i64 [ %3, %_ZN6duckdb15SelectionVector10InitializeEPj.exit ], [ 0, %bb.i ], [ %.1.us50, %..loopexit_crit_edge.split.us ], [ %3, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37 ], [ %3, %.loopexit.loopexit.unr-lcssa ], [ %3, %.loopexit.loopexit102.unr-lcssa ], [ %.1.us50.a, %bb.j ]
  ret i64 %.0
}

end_hunk_33
begin_hunk_34_@_ZN6duckdb32TemplatedUpdateNumericStatisticsImEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  br i1 %.not.i38, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i8 1, ptr %i.br, align 1, !tbaa !2270
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader: ; preds = %.lr.ph.split.us
end_hunk_34
begin_hunk_35_@_ZN6duckdb32TemplatedUpdateNumericStatisticsImEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i64 %i.ch, ptr %i.bt, align 8, !tbaa !24, !alias.scope !4733, !noalias !4729
  store i64 %i.cg, ptr %i.bu, align 8, !tbaa !24, !alias.scope !4733, !noalias !4729
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader140

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader140: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader, %middle.block
  %.sroa.speculated.i.i.i4048.us.us.ph = phi i64 [ %.promoted46, %vector.memcheck ], [ %.promoted46, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader ], [ %i.cg, %middle.block ] ; 2 uses
end_hunk_35
begin_hunk_36_@_ZN6duckdb32TemplatedUpdateNumericStatisticsImEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %.sroa.speculated10.i.i.i3945.us.us.unr = phi i64 [ %.sroa.speculated10.i.i.i3945.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader140 ], [ %.sroa.speculated10.i.i.i39.us.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol ]
  %.03143.us.us.unr = phi i64 [ %.03143.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader140 ], [ %i.ci, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol ]
  %i.cn = icmp eq i64 %3, %.neg
  br i1 %i.cn, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us
  %.sroa.speculated.i.i.i4048.us.us = phi i64 [ %.sroa.speculated.i.i.i40.us.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us ], [ %.sroa.speculated.i.i.i4048.us.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit ]
end_hunk_36
begin_hunk_37_@_ZN6duckdb32TemplatedUpdateNumericStatisticsImEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %.sroa.speculated.i.i.i40.us.us.1 = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 %.sroa.speculated.i.i.i40.us.us) ; 2 uses
  store i64 %.sroa.speculated.i.i.i40.us.us.1, ptr %i.bu, align 8, !tbaa !24
  %exitcond77.not.1 = icmp eq i64 %i.ct, %3
  br i1 %exitcond77.not.1, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us, !llvm.loop !4735

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new
  %.sroa.speculated.i.i.i4048.us = phi i64 [ %.promoted46, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new ], [ %.sroa.speculated.i.i.i40.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us ]
end_hunk_37
begin_hunk_38_@_ZN6duckdb32TemplatedUpdateNumericStatisticsImEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  store i64 %.sroa.speculated.i.i.i40.us.1, ptr %i.bu, align 8, !tbaa !24
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit148.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, !llvm.loop !4736

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us53, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37
end_hunk_38
begin_hunk_39_@_ZN6duckdb32TemplatedUpdateNumericStatisticsImEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a
  %exitcond.not = icmp eq i64 %i.eo, %3
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, !llvm.loop !4736

.loopexit.loopexit148.unr-lcssa:                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader: ; preds = %.loopexit.loopexit148.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader
  %.sroa.speculated.i.i.i4048.us.epil.init = phi i64 [ %.promoted46, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %.sroa.speculated.i.i.i40.us.1, %.loopexit.loopexit148.unr-lcssa ]
  %.sroa.speculated10.i.i.i3945.us.epil.init = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %.sroa.speculated10.i.i.i39.us.1, %.loopexit.loopexit148.unr-lcssa ]
  %.03143.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %i.dj, %.loopexit.loopexit148.unr-lcssa ] ; 3 uses
  %lcmp.mod151 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.03143.us.epil.init
  %6 = load i32, ptr %5, align 4, !tbaa !3
  %7 = zext i32 %6 to i64
  %8 = trunc i64 %.03143.us.epil.init to i32
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03143.us.epil.init
  store i32 %8, ptr %9, align 4, !tbaa !3
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %7
  %11 = load i64, ptr %10, align 8, !tbaa !24     ; 2 uses
  %.sroa.speculated10.i.i.i39.us.epil = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated10.i.i.i3945.us.epil.init, i64 %11)
  store i64 %.sroa.speculated10.i.i.i39.us.epil, ptr %i.bt, align 8, !tbaa !24
  %.sroa.speculated.i.i.i40.us.epil = tail call i64 @llvm.umax.i64(i64 %11, i64 %.sroa.speculated.i.i.i4048.us.epil.init)
  store i64 %.sroa.speculated.i.i.i40.us.epil, ptr %i.bu, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader, %.loopexit.loopexit148.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us, %middle.block, %bb.i, %_ZN6duckdb15SelectionVector10InitializeEPj.exit
  %.0 = phi i64 [ %3, %_ZN6duckdb15SelectionVector10InitializeEPj.exit ], [ 0, %bb.i ], [ %.1.us59, %bb.k ], [ %3, %middle.block ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.prol.loopexit ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader ], [ %3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us ], [ %3, %.loopexit.loopexit148.unr-lcssa ], [ %.1, %bb.m ]
  ret i64 %.0
}

end_hunk_39
