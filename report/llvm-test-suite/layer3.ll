inline.NumInlined: 29
inline.NumDeleted: 6
begin_hunk_0_@do_layer3:bb.a
bb.br:                                            ; preds = %bb.bq, %III_antialias.exit
  %.080.i = phi ptr [ %i.ans, %bb.bq ], [ %i.ank, %III_antialias.exit ] ; 4 uses
  %.075.i = phi ptr [ %i.anr, %bb.bq ], [ %i.ang, %III_antialias.exit ] ; 4 uses
  %.070.i.a = phi i32 [ 2, %bb.bq ], [ 0, %III_antialias.exit ] ; 5 uses
  %.069.i = phi ptr [ %i.ant, %bb.bq ], [ %i.amy, %III_antialias.exit ] ; 4 uses
  %i.anu = load i32, ptr %i.aem, align 8, !tbaa !44 ; 2 uses
  %i.anv = icmp eq i32 %i.anu, 2
end_hunk_0
begin_hunk_1_@do_layer3:bb.a
  %i.anz = sext i32 %i.anu to i64                 ; 2 uses
  %i.aoa = getelementptr inbounds [288 x i8], ptr @win, i64 %i.anz
  %i.aob = getelementptr inbounds [288 x i8], ptr @win1, i64 %i.anz
  %4 = zext nneg i32 %.070.i.a to i64
  br label %bb.bs

.preheader86.i:                                   ; preds = %bb.br
  br i1 %i.any, label %.lr.ph100.preheader.i, label %.preheader.i160.preheader

.lr.ph100.preheader.i:                            ; preds = %.preheader86.i
  %5 = zext nneg i32 %.070.i.a to i64
  br label %.lr.ph100.i

.lr.ph100.i:                                      ; preds = %.lr.ph100.i, %.lr.ph100.preheader.i
  %indvars.iv123.i = phi i64 [ %5, %.lr.ph100.preheader.i ], [ %indvars.iv.next124.i, %.lr.ph100.i ] ; 2 uses
  %.199.i = phi ptr [ %.069.i, %.lr.ph100.preheader.i ], [ %i.aoh, %.lr.ph100.i ] ; 3 uses
  %.17697.i = phi ptr [ %.075.i, %.lr.ph100.preheader.i ], [ %i.aoi, %.lr.ph100.i ] ; 3 uses
  %.18196.i = phi ptr [ %.080.i, %.lr.ph100.preheader.i ], [ %i.aoj, %.lr.ph100.i ] ; 3 uses
  %i.aoc = getelementptr inbounds nuw [144 x i8], ptr %i.ael, i64 %indvars.iv123.i ; 2 uses
  call fastcc void @dct12(ptr noundef nonnull %i.aoc, ptr noundef nonnull %.17697.i, ptr noundef nonnull %.18196.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @win, i64 576), ptr noundef nonnull %.199.i)
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 144
end_hunk_1
begin_hunk_2_@do_layer3:bb.a
  br i1 %i.aom, label %.lr.ph100.i, label %.loopexit.i166, !llvm.loop !78

bb.bs:                                            ; preds = %bb.bs, %.lr.ph.i163
  %indvars.iv.i164 = phi i64 [ %4, %.lr.ph.i163 ], [ %indvars.iv.next.i165, %bb.bs ] ; 2 uses
  %.292.i = phi ptr [ %.069.i, %.lr.ph.i163 ], [ %i.aos, %bb.bs ] ; 3 uses
  %.27790.i = phi ptr [ %.075.i, %.lr.ph.i163 ], [ %i.aot, %bb.bs ] ; 3 uses
  %.28289.i = phi ptr [ %.080.i, %.lr.ph.i163 ], [ %i.aou, %bb.bs ] ; 3 uses
end_hunk_2
begin_hunk_3_@III_get_scale_factors_2:bb.a
bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !45
  %.not47 = icmp eq i32 %i.l, 0
  %spec.select.a = select i1 %.not47, i64 1, i64 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.038.a = phi i64 [ 0, %bb.a ], [ %spec.select.a, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr @III_get_scale_factors_2.stab, i64 %.038.a
  %i.n = lshr i32 %.039, 12
  %i.o = and i32 %i.n, 7
  %i.p = zext nneg i32 %i.o to i64
end_hunk_3
begin_hunk_4_@III_get_scale_factors_2:bb.a
.loopexit.3:                                      ; preds = %.lr.ph56.preheader.3, %.preheader.3, %._crit_edge.3
  %.137.3 = phi i32 [ %i.bt, %._crit_edge.3 ], [ %.137.2, %.preheader.3 ], [ %.137.2, %.lr.ph56.preheader.3 ]
  %.3.3 = phi ptr [ %.1.lcssa.3, %._crit_edge.3 ], [ %.3.2, %.preheader.3 ], [ %scevgep67.3, %.lr.ph56.preheader.3 ]
  %3 = shl nuw nsw i64 %.038.a, 3
  %4 = or disjoint i64 %3, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.3.3, i8 0, i64 %4, i1 false), !tbaa !4
  ret i32 %.137.3
}

end_hunk_4
