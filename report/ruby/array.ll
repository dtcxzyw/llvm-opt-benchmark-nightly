inline.NumInlined: 1460
inline.NumDeleted: 143
begin_hunk_0_@rb_ary_subseq_step:bb.a
  %i.p = icmp slt i64 %.0.i, %i.o
  %or.cond = select i1 %i.n, i1 true, i1 %i.p
  %i.q = sub i64 %.0.i, %1
  %.027 = select i1 %or.cond, i64 %i.q, i64 %2    ; 6 uses
  %i.r = load i64, ptr @rb_cArray, align 8, !tbaa !15 ; 6 uses
  %i.s = icmp eq i64 %.027, 0
  br i1 %i.s, label %bb.e, label %bb.h
end_hunk_0
begin_hunk_1_@rb_ary_subseq_step:bb.a
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 range(i64 2, 0) %3, i64 %i.bh)
  %.069.i = select i1 %i.bg, i64 %spec.select.i, i64 %3 ; 4 uses
  %i.bi = tail call i64 @llvm.abs.i64(i64 %.069.i, i1 false) ; 2 uses
  %i.bj = add i64 %.027, %i.bi
  %i.bk = add i64 %i.bj, -1
  %i.bl = sdiv i64 %i.bk, %i.bi                   ; 8 uses
  %i.bm = icmp sgt i64 %.069.i, 0
  %4 = add i64 %.027, -1
  %i.bn = select i1 %i.bm, i64 0, i64 %4
  %i.bo = add i64 %i.bn, %1                       ; 2 uses
  %i.bp = tail call fastcc i64 @ary_new(i64 noundef %i.r, i64 noundef %i.bl) ; 6 uses
  %i.bq = inttoptr i64 %i.bp to ptr               ; 8 uses
end_hunk_1
begin_hunk_2_@rb_ary_values_at:bb.a

bb.q:                                             ; preds = %rb_ary_cat.exit.i
  %i.be = load i64, ptr %i.b, align 8, !tbaa !15
  %i.bf = add i64 %.0.i.i, %i.be
  %i.bg = add i64 %i.bf, -1
  call void @rb_ary_store(i64 noundef %i.n, i64 noundef %i.bg, i64 noundef 4)
  br label %append_values_at_single.exit

end_hunk_2
begin_hunk_3_@rb_ary_repeated_combination_size:bb.a
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.f, %bb.g
  %.0.i8 = phi i64 [ %i.p, %bb.f ], [ %i.q, %bb.g ] ; 4 uses
  %i.r = icmp eq i64 %.0.i8, 0
  br i1 %i.r, label %binomial_coefficient.exit, label %bb.h

bb.h:                                             ; preds = %rb_num2long_inline.exit
  %i.s = add i64 %.0.i, %.0.i8
  %i.t = add i64 %i.s, -1                         ; 3 uses
  %3 = sub i64 %i.t, %.0.i8
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %.0.i8, i64 %3) ; 4 uses
  %i.u = icmp slt i64 %spec.select.i, 0
  br i1 %i.u, label %binomial_coefficient.exit, label %bb.i

end_hunk_3
