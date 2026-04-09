inline.NumInlined: 28
inline.NumDeleted: 13
begin_hunk_0_@cli_unarj_extract_file:bb.a

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.preheader.sink.split.i.i.i, %bb.n
  %.3.i.i.i = phi i16 [ 1, %bb.n ], [ %i.ce, %.lr.ph.preheader.sink.split.i.i.i ] ; 3 uses
  %i.cf = sext i16 %.25269.i.i.i to i64           ; 4 uses
  %i.cg = add i16 %.3.i.i.i, -1
  %i.ch = zext i16 %i.cg to i64
  %i.ci = sub nsw i64 510, %i.cf
  %umin = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.ci) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 32
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph61
end_hunk_0
begin_hunk_1_@cli_unarj_extract_file:bb.a
.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.q
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.q ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.in.i.i.i = phi i16 [ %i.cq, %bb.q ], [ %.in.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %exitcond.i.i.i = icmp eq i64 %indvars.iv.i.i.i, 510
  br i1 %exitcond.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.i
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.30) #11
end_hunk_1
begin_hunk_2_@llvm.umin.i16
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
end_hunk_2
