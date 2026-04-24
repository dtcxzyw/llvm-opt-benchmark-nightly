inline.NumInlined: 153
inline.NumDeleted: 18
begin_hunk_0_@date__strptime_internal:bb.a
bb.m:                                             ; preds = %.preheader.1
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 %i.bn
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  %i.br = icmp eq i8 %i.bq, 58                    ; 2 uses
  %spec.select2580 = select i1 %i.br, i64 3, i64 2
  %spec.select2581 = select i1 %i.br, i64 2, i64 1
  br label %.critedge63

.critedge63:                                      ; preds = %bb.m, %.preheader.1, %.preheader.preheader, %bb.l
  %.0910.lcssa = phi i64 [ 1, %.preheader.preheader ], [ %spec.select2580, %bb.m ], [ 1, %bb.l ], [ 2, %.preheader.1 ]
  %5 = phi i64 [ 0, %.preheader.preheader ], [ %spec.select2581, %bb.m ], [ 0, %bb.l ], [ 1, %.preheader.1 ]
  %i.bs = getelementptr i8, ptr %i.ay, i64 %.0910.lcssa
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = icmp eq i8 %i.bt, 122
  br i1 %i.bu, label %bb.o, label %bb.n
end_hunk_0
begin_hunk_1_@date__strptime_internal:bb.a
  br label %.thread1719

bb.o:                                             ; preds = %.critedge63
  %i.by = add i64 %i.ax, %5
  br label %.preheader1784.backedge

bb.p:                                             ; preds = %.preheader1784, %.preheader1784
end_hunk_1
