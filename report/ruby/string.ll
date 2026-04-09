inline.NumInlined: 2336
inline.NumDeleted: 196
begin_hunk_0_@rb_str_count:bb.a
  br label %RSTRING_PTR.exit73

RSTRING_PTR.exit73:                               ; preds = %bb.k, %bb.l
  %i.bk = phi ptr [ %i.bj, %bb.l ], [ %i.bi, %bb.k ] ; 7 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %.not64 = icmp eq ptr %i.bk, null
  br i1 %.not64, label %bb.q, label %bb.m
end_hunk_0
begin_hunk_1_@rb_str_count:bb.a

RSTRING_END.exit:                                 ; preds = %bb.n, %bb.o
  %i.bq = phi ptr [ %i.bp, %bb.o ], [ %i.bi, %bb.n ] ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bn
  %i.bs = icmp ult ptr %i.bk, %i.br
  br i1 %i.bs, label %.lr.ph, label %._crit_edge.thread

end_hunk_1
begin_hunk_2_@rb_str_count:bb.a
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = trunc i32 %i.bf to i8                   ; 2 uses
  %i.bv = add i64 %i.bn, %i.bt
  %i.bw = sub i64 %i.bv, %i.bl                    ; 4 uses
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.bw
  %min.iters.check = icmp ult i64 %i.bw, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

end_hunk_2
begin_hunk_3_@rb_str_count:bb.a
  %i.cj = icmp eq i8 %i.ci, %i.bu
  %i.ck = zext i1 %i.cj to i64
  %spec.select = add i64 %.054111, %i.ck          ; 2 uses
  %exitcond.not = icmp eq ptr %i.ch, %scevgep
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !218

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i64 [ %i.cg, %middle.block ], [ %spec.select, %scalar.ph ] ; 3 uses
end_hunk_3
begin_hunk_4_@rb_str_squeeze_bang:bb.a

RSTRING_PTR.exit:                                 ; preds = %.loopexit131, %bb.f
  %i.al = phi ptr [ %i.ak, %bb.f ], [ %i.aj, %.loopexit131 ] ; 15 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 3 uses
  %.not93 = icmp eq ptr %i.al, null
  br i1 %.not93, label %bb.av, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit
  %i.an = getelementptr i8, ptr %i.ag, i64 16     ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !14 ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.av, label %bb.h

end_hunk_4
begin_hunk_5_@rb_str_squeeze_bang:bb.a

RSTRING_END.exit:                                 ; preds = %bb.h, %bb.i
  %i.ar = phi ptr [ %i.aq, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.ao  ; 3 uses
  %i.au = getelementptr i8, ptr %.1, i64 20
  %.val.i = load i32, ptr %i.au, align 4, !tbaa !16
end_hunk_5
begin_hunk_6_@rb_str_squeeze_bang:bb.a

.lr.ph138:                                        ; preds = %.preheader128
  %i.ax = icmp sgt i32 %0, 0
  %3 = add i64 %i.ao, %i.as
  %4 = sub i64 %3, %i.am                          ; 5 uses
  br i1 %i.ax, label %.lr.ph138.split.us.preheader, label %.lr.ph138.split.preheader

.lr.ph138.split.preheader:                        ; preds = %.lr.ph138
  %i.ay = add i64 %i.ao, %i.as
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.az = sub i64 %i.am, %i.ay
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %.lr.ph138.split.epil.preheader, label %.lr.ph138.split.preheader.new

.lr.ph138.split.preheader.new:                    ; preds = %.lr.ph138.split.preheader
  %unroll_iter = and i64 %4, -4
  br label %.lr.ph138.split

.lr.ph138.split.us.preheader:                     ; preds = %.lr.ph138
  %i.bb = add i64 %i.ao, %i.as
  %.neg = add i64 %i.am, 1
  %xtraiter174 = and i64 %4, 1
  %i.bc = icmp eq i64 %i.bb, %.neg
end_hunk_6
