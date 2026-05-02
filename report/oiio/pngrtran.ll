inline.NumInlined: 44
inline.NumDeleted: 22
begin_hunk_0_@png_do_read_transformations:bb.a
  %i.cot = load i32, ptr %i.a, align 16, !tbaa !3 ; 3 uses
  %i.cou = icmp sgt i32 %i.cot, 0
  %.not97.i = icmp slt i32 %i.cot, %i.cnw
  %or.cond.i258 = select i1 %i.cou, i1 %.not97.i, i1 false ; 3 uses
  %spec.store.select98.i = select i1 %or.cond.i258, i32 %i.cot, i32 0
  store i32 %spec.store.select98.i, ptr %i.a, align 16
  %exitcond.not.i259 = icmp eq i32 %.1.i257, 1
  br i1 %exitcond.not.i259, label %bb.io, label %bb.il

end_hunk_0
begin_hunk_1_@png_do_read_transformations:bb.a
  %or.cond.i258.1 = select i1 %i.cox, i1 %.not97.i.1, i1 false ; 2 uses
  %spec.store.select98.i.1 = select i1 %or.cond.i258.1, i32 %i.cow, i32 0
  store i32 %spec.store.select98.i.1, ptr %i.cov, align 4
  %spec.select.i.1 = select i1 %or.cond.i258.1, i1 true, i1 %or.cond.i258 ; 2 uses
  %exitcond.not.i259.1 = icmp eq i32 %.1.i257, 2
  br i1 %exitcond.not.i259.1, label %bb.io, label %bb.im

end_hunk_1
begin_hunk_2_@png_do_read_transformations:bb.a
  %or.cond.i258.2 = select i1 %i.cpa, i1 %.not97.i.2, i1 false ; 2 uses
  %spec.store.select98.i.2 = select i1 %or.cond.i258.2, i32 %i.coz, i32 0
  store i32 %spec.store.select98.i.2, ptr %i.coy, align 8
  %spec.select.i.2 = select i1 %or.cond.i258.2, i1 true, i1 %spec.select.i.1 ; 2 uses
  %exitcond.not.i259.2 = icmp eq i32 %.1.i257, 3
  br i1 %exitcond.not.i259.2, label %bb.io, label %bb.in

end_hunk_2
begin_hunk_3_@png_do_read_transformations:bb.a
  %or.cond.i258.3 = select i1 %i.cpd, i1 %.not97.i.3, i1 false ; 2 uses
  %spec.store.select98.i.3 = select i1 %or.cond.i258.3, i32 %i.cpc, i32 0
  store i32 %spec.store.select98.i.3, ptr %i.cpb, align 4
  %spec.select.i.3 = select i1 %or.cond.i258.3, i1 true, i1 %spec.select.i.2
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im, %bb.il, %bb.ik
  %spec.select.i.lcssa = phi i1 [ %or.cond.i258, %bb.ik ], [ %spec.select.i.1, %bb.il ], [ %spec.select.i.2, %bb.im ], [ %spec.select.i.3, %bb.in ]
  %i.cpe = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.cnw)
  %i.cpf = icmp eq i32 %i.cpe, 1
  %or.cond125.i = select i1 %spec.select.i.lcssa, i1 %i.cpf, i1 false
  br i1 %or.cond125.i, label %.split.i261, label %.sink.split.i260

.split.i261:                                      ; preds = %bb.io
end_hunk_3
