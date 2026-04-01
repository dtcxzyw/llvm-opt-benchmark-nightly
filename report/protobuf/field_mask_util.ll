begin_hunk_0

.lr.ph5.new:                                      ; preds = %.lr.ph5
  %unroll_iter = and i64 %i.ec, -2
  %invariant.op = sub i8 1, %1
  br label %bb.k

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
end_hunk_0
begin_hunk_1
  store ptr %2, ptr %i.fd, align 8, !tbaa !102
  %.val49.1 = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.fh = trunc i64 %indvars.iv7 to i8
  %i.fi = add i8 %i.fh, %invariant.op
  %i.fj = add i8 %i.fi, %.val49.1
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !102 ; 3 uses
end_hunk_1
