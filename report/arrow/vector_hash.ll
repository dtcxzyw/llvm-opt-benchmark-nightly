inline.NumInlined: 10318
inline.NumDeleted: 3952
begin_hunk_0_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_11BooleanTypeENS2_17ValueCountsActionEbLb1EE6AppendERKNS_9ArraySpanE:bb.a
  br i1 %epil.iter.cmp.not, label %.critedge.i.i.i.i, label %.lr.ph158.i.us.i.i.i.epil, !llvm.loop !2894

.critedge.i.i.i.i:                                ; preds = %_ZN5arrow6StatusD2Ev.exit104.i.i.i.i, %.critedge.i.i.i.i.loopexit72.unr-lcssa, %.lr.ph158.i.us.i.i.i.epil, %_ZN5arrow6StatusD2Ev.exit84.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit78.i.i.i.i, %.preheader139.i.i.i.i, %.preheader142.i.i.i.i, %.preheader.i.i.i.i
  %.559.i.i.i.i = phi i64 [ %i.bl, %_ZN5arrow6StatusD2Ev.exit78.i.i.i.i ], [ %i.bq, %_ZN5arrow6StatusD2Ev.exit84.i.i.i.i ], [ %.054165.i.i.i.i, %.preheader.i.i.i.i ], [ %.054165.i.i.i.i, %.preheader139.i.i.i.i ], [ %.054165.i.i.i.i, %.preheader142.i.i.i.i ], [ %i.bq, %.critedge.i.i.i.i.loopexit72.unr-lcssa ], [ %i.bq, %.lr.ph158.i.us.i.i.i.epil ], [ %i.bo, %_ZN5arrow6StatusD2Ev.exit104.i.i.i.i ] ; 2 uses
  %i.gv = icmp slt i64 %.559.i.i.i.i, %i.h
  br i1 %i.gv, label %.lr.ph166.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2896

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_9UInt8TypeENS2_17ValueCountsActionEhLb1EE6AppendERKNS_9ArraySpanE:bb.a
  br i1 %epil.iter.cmp.not, label %.critedge.i.i.i.i, label %.lr.ph45.i.us.i.i.i.epil, !llvm.loop !2976

.critedge.i.i.i.i:                                ; preds = %_ZN5arrow6StatusD2Ev.exit117.i.i.i.i, %.critedge.i.i.i.i.loopexit94.unr-lcssa, %.lr.ph45.i.us.i.i.i.epil, %_ZN5arrow6StatusD2Ev.exit95.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i, %.preheader7.i.i.i.i, %.preheader15.i.i.i.i, %.preheader.i.i.i.i
  %.559.i.i.i.i = phi i64 [ %i.bf, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i ], [ %i.bk, %_ZN5arrow6StatusD2Ev.exit95.i.i.i.i ], [ %.05452.i.i.i.i, %.preheader.i.i.i.i ], [ %.05452.i.i.i.i, %.preheader7.i.i.i.i ], [ %.05452.i.i.i.i, %.preheader15.i.i.i.i ], [ %i.bk, %.critedge.i.i.i.i.loopexit94.unr-lcssa ], [ %i.bk, %.lr.ph45.i.us.i.i.i.epil ], [ %i.bi, %_ZN5arrow6StatusD2Ev.exit117.i.i.i.i ] ; 2 uses
  %i.hc = icmp slt i64 %.559.i.i.i.i, %i.i
  br i1 %i.hc, label %.lr.ph53.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2977

end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10UInt16TypeENS2_17ValueCountsActionEtLb1EE6AppendERKNS_9ArraySpanE:bb.a
  br i1 %i.ej, label %.lr.ph33.i.i.i.i, label %.lr.ph33.preheader.i.split.us.i.i.i

.lr.ph33.preheader.i.split.us.i.i.i:              ; preds = %.lr.ph33.preheader.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !137, !alias.scope !3016
  %i.ek = sext i32 %i.ei to i64
  %.val.val.i.i.i.us.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !950, !noalias !3045
  %i.el = getelementptr inbounds [8 x i8], ptr %.val.val.i.i.i.us.i.i.i, i64 %i.ek ; 10 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10UInt16TypeENS2_17ValueCountsActionEtLb1EE6AppendERKNS_9ArraySpanE:bb.a
  %exitcond.not.i.i.i.i = icmp eq i64 %i.if, %i.ed
  br i1 %exitcond.not.i.i.i.i, label %.critedge.i.i.i.i.sink.split, label %.lr.ph.i.i.i.i, !llvm.loop !3075

.critedge.i.i.i.i.sink.split:                     ; preds = %_ZN5arrow6StatusD2Ev.exit123.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i
  %.559.i.i.i.i.ph = phi i64 [ %i.ef, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i ], [ %i.ed, %_ZN5arrow6StatusD2Ev.exit123.i.i.i.i ]
  store ptr null, ptr %0, align 8
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa: ; preds = %.lr.ph33.i.us.i.i.i
  %i.ig = and i16 %.sroa.0.0.extract.trunc.i.i.i.i, 3
  %lcmp.mod.not = icmp eq i16 %i.ig, 0
  br i1 %lcmp.mod.not, label %.critedge.i.i.i.i, label %.lr.ph33.i.us.i.i.i.epil.preheader

.lr.ph33.i.us.i.i.i.epil.preheader:               ; preds = %.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa, %.lr.ph33.preheader.i.split.us.i.i.i
  %i.ih = and i16 %.sroa.0.0.extract.trunc.i.i.i.i, 3
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10UInt16TypeENS2_17ValueCountsActionEtLb1EE6AppendERKNS_9ArraySpanE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !3045
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.i.i.i.i, label %.lr.ph33.i.us.i.i.i.epil, !llvm.loop !3076

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa, %.lr.ph33.i.us.i.i.i.epil, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i, %.critedge.i.i.i.i.sink.split, %.preheader8.i.i.i.i, %.preheader11.i.i.i.i, %.preheader.i.i.i.i
  %.559.i.i.i.i = phi i64 [ %.559.i.i.i.i.ph, %.critedge.i.i.i.i.sink.split ], [ %i.ea, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i ], [ %.05440.i.i.i.i, %.preheader.i.i.i.i ], [ %.05440.i.i.i.i, %.preheader8.i.i.i.i ], [ %.05440.i.i.i.i, %.preheader11.i.i.i.i ], [ %i.ef, %.lr.ph33.i.us.i.i.i.epil ], [ %i.ef, %.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa ] ; 2 uses
  %i.ik = icmp slt i64 %.559.i.i.i.i, %i.i
  br i1 %i.ik, label %.lr.ph41.i.i.i.i, label %.loopexit.sink.split, !llvm.loop !3077

end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10UInt32TypeENS2_17ValueCountsActionEjLb1EE6AppendERKNS_9ArraySpanE:bb.a
  br i1 %i.ej, label %.lr.ph33.i.i.i.i, label %.lr.ph33.preheader.i.split.us.i.i.i

.lr.ph33.preheader.i.split.us.i.i.i:              ; preds = %.lr.ph33.preheader.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !137, !alias.scope !3116
  %i.ek = sext i32 %i.ei to i64
  %.val.val.i.i.i.us.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !950, !noalias !3144
  %i.el = getelementptr inbounds [8 x i8], ptr %.val.val.i.i.i.us.i.i.i, i64 %i.ek ; 10 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10UInt32TypeENS2_17ValueCountsActionEjLb1EE6AppendERKNS_9ArraySpanE:bb.a
  %exitcond.not.i.i.i.i = icmp eq i64 %i.if, %i.ed
  br i1 %exitcond.not.i.i.i.i, label %.critedge.i.i.i.i.sink.split, label %.lr.ph.i.i.i.i, !llvm.loop !3174

.critedge.i.i.i.i.sink.split:                     ; preds = %_ZN5arrow6StatusD2Ev.exit123.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i
  %.559.i.i.i.i.ph = phi i64 [ %i.ef, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i ], [ %i.ed, %_ZN5arrow6StatusD2Ev.exit123.i.i.i.i ]
  store ptr null, ptr %0, align 8
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa: ; preds = %.lr.ph33.i.us.i.i.i
  %i.ig = and i16 %.sroa.0.0.extract.trunc.i.i.i.i, 3
  %lcmp.mod.not = icmp eq i16 %i.ig, 0
  br i1 %lcmp.mod.not, label %.critedge.i.i.i.i, label %.lr.ph33.i.us.i.i.i.epil.preheader

.lr.ph33.i.us.i.i.i.epil.preheader:               ; preds = %.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa, %.lr.ph33.preheader.i.split.us.i.i.i
  %i.ih = and i16 %.sroa.0.0.extract.trunc.i.i.i.i, 3
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10UInt32TypeENS2_17ValueCountsActionEjLb1EE6AppendERKNS_9ArraySpanE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !3144
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.i.i.i.i, label %.lr.ph33.i.us.i.i.i.epil, !llvm.loop !3175

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa, %.lr.ph33.i.us.i.i.i.epil, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i, %.critedge.i.i.i.i.sink.split, %.preheader8.i.i.i.i, %.preheader11.i.i.i.i, %.preheader.i.i.i.i
  %.559.i.i.i.i = phi i64 [ %.559.i.i.i.i.ph, %.critedge.i.i.i.i.sink.split ], [ %i.ea, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i ], [ %.05440.i.i.i.i, %.preheader.i.i.i.i ], [ %.05440.i.i.i.i, %.preheader8.i.i.i.i ], [ %.05440.i.i.i.i, %.preheader11.i.i.i.i ], [ %i.ef, %.lr.ph33.i.us.i.i.i.epil ], [ %i.ef, %.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa ] ; 2 uses
  %i.ik = icmp slt i64 %.559.i.i.i.i, %i.i
  br i1 %i.ik, label %.lr.ph41.i.i.i.i, label %.loopexit.sink.split, !llvm.loop !3176

end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10UInt64TypeENS2_17ValueCountsActionEmLb1EE6AppendERKNS_9ArraySpanE:bb.a
  br i1 %i.ei, label %.lr.ph33.i.i.i.i, label %.lr.ph33.preheader.i.split.us.i.i.i

.lr.ph33.preheader.i.split.us.i.i.i:              ; preds = %.lr.ph33.preheader.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !137, !alias.scope !3215
  %i.ej = sext i32 %i.eh to i64
  %.val.val.i.i.i.us.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !950, !noalias !3243
  %i.ek = getelementptr inbounds [8 x i8], ptr %.val.val.i.i.i.us.i.i.i, i64 %i.ej ; 10 uses
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10UInt64TypeENS2_17ValueCountsActionEmLb1EE6AppendERKNS_9ArraySpanE:bb.a
  %exitcond.not.i.i.i.i = icmp eq i64 %i.id, %i.ec
  br i1 %exitcond.not.i.i.i.i, label %.critedge.i.i.i.i.sink.split, label %.lr.ph.i.i.i.i, !llvm.loop !3273

.critedge.i.i.i.i.sink.split:                     ; preds = %_ZN5arrow6StatusD2Ev.exit121.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i
  %.559.i.i.i.i.ph = phi i64 [ %i.ee, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i ], [ %i.ec, %_ZN5arrow6StatusD2Ev.exit121.i.i.i.i ]
  store ptr null, ptr %0, align 8
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa: ; preds = %.lr.ph33.i.us.i.i.i
  %i.ie = and i16 %.sroa.0.0.extract.trunc.i.i.i.i, 3
  %lcmp.mod.not = icmp eq i16 %i.ie, 0
  br i1 %lcmp.mod.not, label %.critedge.i.i.i.i, label %.lr.ph33.i.us.i.i.i.epil.preheader

.lr.ph33.i.us.i.i.i.epil.preheader:               ; preds = %.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa, %.lr.ph33.preheader.i.split.us.i.i.i
  %i.if = and i16 %.sroa.0.0.extract.trunc.i.i.i.i, 3
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10UInt64TypeENS2_17ValueCountsActionEmLb1EE6AppendERKNS_9ArraySpanE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !3243
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.i.i.i.i, label %.lr.ph33.i.us.i.i.i.epil, !llvm.loop !3274

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa, %.lr.ph33.i.us.i.i.i.epil, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i, %.critedge.i.i.i.i.sink.split, %.preheader8.i.i.i.i, %.preheader11.i.i.i.i, %.preheader.i.i.i.i
  %.559.i.i.i.i = phi i64 [ %.559.i.i.i.i.ph, %.critedge.i.i.i.i.sink.split ], [ %i.dz, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i ], [ %.05440.i.i.i.i, %.preheader.i.i.i.i ], [ %.05440.i.i.i.i, %.preheader8.i.i.i.i ], [ %.05440.i.i.i.i, %.preheader11.i.i.i.i ], [ %i.ee, %.lr.ph33.i.us.i.i.i.epil ], [ %i.ee, %.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa ] ; 2 uses
  %i.ii = icmp slt i64 %.559.i.i.i.i, %i.i
  br i1 %i.ii, label %.lr.ph41.i.i.i.i, label %.loopexit.sink.split, !llvm.loop !3275

end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_24MonthDayNanoIntervalTypeENS2_17ValueCountsActionENS4_13MonthDayNanosELb1EE6AppendERKNS_9ArraySpanE:bb.a
  br i1 %i.el, label %.lr.ph33.i.i.i.i, label %.lr.ph33.preheader.i.split.us.i.i.i

.lr.ph33.preheader.i.split.us.i.i.i:              ; preds = %.lr.ph33.preheader.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !137, !alias.scope !3644
  %i.em = sext i32 %i.ek to i64
  %.val.val.i.i.i.us.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !950, !noalias !3672
  %i.en = getelementptr inbounds [8 x i8], ptr %.val.val.i.i.i.us.i.i.i, i64 %i.em ; 10 uses
end_hunk_11
begin_hunk_12_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_24MonthDayNanoIntervalTypeENS2_17ValueCountsActionENS4_13MonthDayNanosELb1EE6AppendERKNS_9ArraySpanE:bb.a
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ij, %i.ef
  br i1 %exitcond.not.i.i.i.i, label %.critedge.i.i.i.i.sink.split, label %.lr.ph.i.i.i.i, !llvm.loop !3702

.critedge.i.i.i.i.sink.split:                     ; preds = %_ZN5arrow6StatusD2Ev.exit128.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i
  %.559.i.i.i.i.ph = phi i64 [ %i.eh, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i ], [ %i.ef, %_ZN5arrow6StatusD2Ev.exit128.i.i.i.i ]
  store ptr null, ptr %0, align 8
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa: ; preds = %.lr.ph33.i.us.i.i.i
  %i.ik = and i16 %.sroa.0.0.extract.trunc.i.i.i.i, 3
  %lcmp.mod.not = icmp eq i16 %i.ik, 0
  br i1 %lcmp.mod.not, label %.critedge.i.i.i.i, label %.lr.ph33.i.us.i.i.i.epil.preheader

.lr.ph33.i.us.i.i.i.epil.preheader:               ; preds = %.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa, %.lr.ph33.preheader.i.split.us.i.i.i
  %i.il = and i16 %.sroa.0.0.extract.trunc.i.i.i.i, 3
end_hunk_12
begin_hunk_13_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_24MonthDayNanoIntervalTypeENS2_17ValueCountsActionENS4_13MonthDayNanosELb1EE6AppendERKNS_9ArraySpanE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !3672
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.i.i.i.i, label %.lr.ph33.i.us.i.i.i.epil, !llvm.loop !3703

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa, %.lr.ph33.i.us.i.i.i.epil, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i, %.critedge.i.i.i.i.sink.split, %.preheader8.i.i.i.i, %.preheader11.i.i.i.i, %.preheader.i.i.i.i
  %.559.i.i.i.i = phi i64 [ %.559.i.i.i.i.ph, %.critedge.i.i.i.i.sink.split ], [ %i.ec, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i ], [ %.05440.i.i.i.i, %.preheader.i.i.i.i ], [ %.05440.i.i.i.i, %.preheader8.i.i.i.i ], [ %.05440.i.i.i.i, %.preheader11.i.i.i.i ], [ %i.eh, %.lr.ph33.i.us.i.i.i.epil ], [ %i.eh, %.critedge.i.i.i.i.sink.split.loopexit67.unr-lcssa ] ; 2 uses
  %i.io = icmp slt i64 %.559.i.i.i.i, %i.i
  br i1 %i.io, label %.lr.ph41.i.i.i.i, label %.loopexit.sink.split, !llvm.loop !3704

end_hunk_13
