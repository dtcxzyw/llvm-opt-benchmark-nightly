begin_hunk_0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.az
  br i1 %i.bv, label %.lr.ph505.preheader, label %.critedge

.lr.ph505.preheader:                              ; preds = %bb.l
  %invariant.op = sub i64 1, %i.an
  %invariant.op526 = sub i64 1, %i.an
  %invariant.op527 = sub i64 1, %i.an
  %invariant.op528 = sub i64 1, %i.an
  %invariant.op529 = sub i64 1, %i.an
  br label %.lr.ph494

.lr.ph494:                                        ; preds = %.lr.ph505.preheader, %select.unfold
  %i.bw = phi i64 [ %i.iq, %select.unfold ], [ %i.bu, %.lr.ph505.preheader ] ; 3 uses
  %i.bx = phi ptr [ %i.ip, %select.unfold ], [ %i.bt, %.lr.ph505.preheader ] ; 3 uses
  %i.by = phi ptr [ %i.io, %select.unfold ], [ %i.bs, %.lr.ph505.preheader ] ; 3 uses
  %.0305397493 = phi i64 [ %.3308, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 31 uses
  %.0296398492 = phi i64 [ %.11, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 30 uses
  %.0293399491 = phi i8 [ %.2295, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 37 uses
  %.0184400490 = phi i64 [ %.13, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 27 uses
  %.0179401489 = phi i8 [ %.4183, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 32 uses
  %.0172402488 = phi i8 [ %.6178, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 31 uses
  %.0161404487 = phi i8 [ %.5166, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 35 uses
  %.0153405486 = phi i64 [ %.4157, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 35 uses
  %.0148406485 = phi i32 [ %.4152, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 32 uses
  %.0144407484 = phi i8 [ %.3147, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1
  %i.bz = load ptr, ptr %i.by, align 8
end_hunk_0
begin_hunk_1
  %i.dw = load ptr, ptr %i.bh, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = add i64 %i.dy, %invariant.op529
  %i.ea = add i64 %.0296398492, 8
  br label %select.unfold

end_hunk_1
begin_hunk_2
  %i.ei = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = add i64 %i.ek, %invariant.op528         ; 2 uses
  %i.em = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef null) #18 ; 2 uses
  %.fca.1.extract37 = extractvalue { i64, i8 } %i.em, 1
  %i.en = trunc nuw i8 %.fca.1.extract37 to i1
end_hunk_2
begin_hunk_3
  %i.et = load ptr, ptr %i.bh, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = add i64 %i.ev, %invariant.op527
  %i.ex = shl nuw nsw i8 %i.ck, 3
  %narrow = add nuw i8 %i.ex, 8
  %i.ey = zext i8 %narrow to i64
end_hunk_3
begin_hunk_4
  %i.fn = load ptr, ptr %i.bh, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = add i64 %i.fp, %invariant.op526         ; 2 uses
  %i.fr = add i64 %i.fk, %.4300393                ; 2 uses
  %i.fs = add nuw nsw i64 %.0167395, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.fs, %i.fh
end_hunk_4
begin_hunk_5
  %i.hx = load ptr, ptr %i.bh, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = add i64 %i.hz, %invariant.op
  br label %bb.be

bb.be:                                            ; preds = %bb.ax, %bb.bd
end_hunk_5
begin_hunk_6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.az
  br i1 %i.bp, label %.lr.ph234.preheader, label %.critedge

.lr.ph234.preheader:                              ; preds = %bb.l
  %invariant.op = sub i64 1, %i.an
  %invariant.op235 = sub i64 1, %i.an
  %invariant.op236 = sub i64 1, %i.an
  %invariant.op237 = sub i64 1, %i.an
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph234.preheader, %.loopexit
  %i.bq = phi i64 [ %i.fc, %.loopexit ], [ %i.bo, %.lr.ph234.preheader ] ; 3 uses
  %i.br = phi ptr [ %i.fb, %.loopexit ], [ %i.bn, %.lr.ph234.preheader ] ; 3 uses
  %i.bs = phi ptr [ %i.fa, %.loopexit ], [ %i.bm, %.lr.ph234.preheader ] ; 3 uses
  %.0131195225 = phi i64 [ %.4135, %.loopexit ], [ 0, %.lr.ph234.preheader ] ; 16 uses
  %.0123197224 = phi i8 [ %.4127, %.loopexit ], [ 0, %.lr.ph234.preheader ] ; 21 uses
  %.0119198223 = phi i64 [ %.3122, %.loopexit ], [ 0, %.lr.ph234.preheader ] ; 20 uses
  %.0115199222 = phi i64 [ %.7, %.loopexit ], [ 0, %.lr.ph234.preheader ] ; 19 uses
  %.0112200221 = phi i8 [ %.3, %.loopexit ], [ 0, %.lr.ph234.preheader ] ; 20 uses
  %.0111201220 = phi i8 [ %.2, %.loopexit ], [ 0, %.lr.ph234.preheader ] ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1
  %i.bt = load ptr, ptr %i.bs, align 8
end_hunk_6
begin_hunk_7
  %i.dh = load ptr, ptr %i.bh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = add i64 %i.dj, %invariant.op237
  %i.dl = add i64 %.0115199222, 8
  br label %.loopexit

end_hunk_7
begin_hunk_8
  %i.do = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = add i64 %i.dq, %invariant.op236         ; 2 uses
  %i.ds = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef null) #18 ; 2 uses
  %.fca.1.extract13 = extractvalue { i64, i8 } %i.ds, 1
  %i.dt = trunc nuw i8 %.fca.1.extract13 to i1
end_hunk_8
begin_hunk_9
  %i.dz = load ptr, ptr %i.bh, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = add i64 %i.eb, %invariant.op235
  %i.ed = shl nuw nsw i8 %i.ce, 3
  %narrow = add nuw i8 %i.ed, 8
  %i.ee = zext i8 %narrow to i64
end_hunk_9
begin_hunk_10
  %i.et = load ptr, ptr %i.bh, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = add i64 %i.ev, %invariant.op            ; 2 uses
  %i.ex = add i64 %i.eq, %.4192                   ; 2 uses
  %i.ey = add nuw nsw i64 %.0106193, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ey, %i.en
end_hunk_10
begin_hunk_11
.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %invariant.op = sub i64 1, %i.an
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.ag
end_hunk_11
begin_hunk_12
  %i.dl = load ptr, ptr %i.bh, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = add i64 %i.dn, %invariant.op
  %i.dp = add i64 %.062131, 8
  br label %bb.ag

end_hunk_12
begin_hunk_13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.az
  br i1 %i.bv, label %.lr.ph505.preheader, label %.critedge

.lr.ph505.preheader:                              ; preds = %bb.l
  %invariant.op = sub i64 1, %i.an
  %invariant.op526 = sub i64 1, %i.an
  %invariant.op527 = sub i64 1, %i.an
  %invariant.op528 = sub i64 1, %i.an
  %invariant.op529 = sub i64 1, %i.an
  br label %.lr.ph494

.lr.ph494:                                        ; preds = %.lr.ph505.preheader, %select.unfold
  %i.bw = phi i64 [ %i.iq, %select.unfold ], [ %i.bu, %.lr.ph505.preheader ] ; 3 uses
  %i.bx = phi ptr [ %i.ip, %select.unfold ], [ %i.bt, %.lr.ph505.preheader ] ; 3 uses
  %i.by = phi ptr [ %i.io, %select.unfold ], [ %i.bs, %.lr.ph505.preheader ] ; 3 uses
  %.0305397493 = phi i64 [ %.3308, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 31 uses
  %.0296398492 = phi i64 [ %.11, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 30 uses
  %.0293399491 = phi i8 [ %.2295, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 37 uses
  %.0184400490 = phi i64 [ %.13, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 27 uses
  %.0179401489 = phi i8 [ %.4183, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 32 uses
  %.0172402488 = phi i8 [ %.6178, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 31 uses
  %.0161404487 = phi i8 [ %.5166, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 35 uses
  %.0153405486 = phi i64 [ %.4157, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 35 uses
  %.0148406485 = phi i32 [ %.4152, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 32 uses
  %.0144407484 = phi i8 [ %.3147, %select.unfold ], [ 0, %.lr.ph505.preheader ] ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1
  %i.bz = load ptr, ptr %i.by, align 8
end_hunk_13
begin_hunk_14
  %i.dw = load ptr, ptr %i.bh, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = add i64 %i.dy, %invariant.op529
  %i.ea = add i64 %.0296398492, 4
  br label %select.unfold

end_hunk_14
begin_hunk_15
  %i.ei = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = add i64 %i.ek, %invariant.op528         ; 2 uses
  %i.em = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef null) #18 ; 2 uses
  %.fca.1.extract37 = extractvalue { i64, i8 } %i.em, 1
  %i.en = trunc nuw i8 %.fca.1.extract37 to i1
end_hunk_15
begin_hunk_16
  %i.et = load ptr, ptr %i.bh, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = add i64 %i.ev, %invariant.op527
  %i.ex = shl nuw nsw i8 %i.ck, 2
  %narrow = add nuw nsw i8 %i.ex, 4
  %i.ey = zext nneg i8 %narrow to i64
end_hunk_16
begin_hunk_17
  %i.fn = load ptr, ptr %i.bh, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = add i64 %i.fp, %invariant.op526         ; 2 uses
  %i.fr = add i64 %i.fk, %.4300393                ; 2 uses
  %i.fs = add nuw nsw i64 %.0167395, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.fs, %i.fh
end_hunk_17
begin_hunk_18
  %i.hx = load ptr, ptr %i.bh, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = add i64 %i.hz, %invariant.op
  br label %bb.be

bb.be:                                            ; preds = %bb.ax, %bb.bd
end_hunk_18
begin_hunk_19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.az
  br i1 %i.bp, label %.lr.ph234.preheader, label %.critedge

.lr.ph234.preheader:                              ; preds = %bb.l
  %invariant.op = sub i64 1, %i.an
  %invariant.op235 = sub i64 1, %i.an
  %invariant.op236 = sub i64 1, %i.an
  %invariant.op237 = sub i64 1, %i.an
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph234.preheader, %.loopexit
  %i.bq = phi i64 [ %i.fc, %.loopexit ], [ %i.bo, %.lr.ph234.preheader ] ; 3 uses
  %i.br = phi ptr [ %i.fb, %.loopexit ], [ %i.bn, %.lr.ph234.preheader ] ; 3 uses
  %i.bs = phi ptr [ %i.fa, %.loopexit ], [ %i.bm, %.lr.ph234.preheader ] ; 3 uses
  %.0131195225 = phi i64 [ %.4135, %.loopexit ], [ 0, %.lr.ph234.preheader ] ; 16 uses
  %.0123197224 = phi i8 [ %.4127, %.loopexit ], [ 0, %.lr.ph234.preheader ] ; 21 uses
  %.0119198223 = phi i64 [ %.3122, %.loopexit ], [ 0, %.lr.ph234.preheader ] ; 20 uses
  %.0115199222 = phi i64 [ %.7, %.loopexit ], [ 0, %.lr.ph234.preheader ] ; 19 uses
  %.0112200221 = phi i8 [ %.3, %.loopexit ], [ 0, %.lr.ph234.preheader ] ; 20 uses
  %.0111201220 = phi i8 [ %.2, %.loopexit ], [ 0, %.lr.ph234.preheader ] ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1
  %i.bt = load ptr, ptr %i.bs, align 8
end_hunk_19
begin_hunk_20
  %i.dh = load ptr, ptr %i.bh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = add i64 %i.dj, %invariant.op237
  %i.dl = add i64 %.0115199222, 4
  br label %.loopexit

end_hunk_20
begin_hunk_21
  %i.do = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = add i64 %i.dq, %invariant.op236         ; 2 uses
  %i.ds = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef null) #18 ; 2 uses
  %.fca.1.extract13 = extractvalue { i64, i8 } %i.ds, 1
  %i.dt = trunc nuw i8 %.fca.1.extract13 to i1
end_hunk_21
begin_hunk_22
  %i.dz = load ptr, ptr %i.bh, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = add i64 %i.eb, %invariant.op235
  %i.ed = shl nuw nsw i8 %i.ce, 2
  %narrow = add nuw nsw i8 %i.ed, 4
  %i.ee = zext nneg i8 %narrow to i64
end_hunk_22
begin_hunk_23
  %i.et = load ptr, ptr %i.bh, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = add i64 %i.ev, %invariant.op            ; 2 uses
  %i.ex = add i64 %i.eq, %.4192                   ; 2 uses
  %i.ey = add nuw nsw i64 %.0106193, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ey, %i.en
end_hunk_23
begin_hunk_24
.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %invariant.op = sub i64 1, %i.an
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.ag
end_hunk_24
begin_hunk_25
  %i.dl = load ptr, ptr %i.bh, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = add i64 %i.dn, %invariant.op
  %i.dp = add i64 %.062131, 4
  br label %bb.ag

end_hunk_25
