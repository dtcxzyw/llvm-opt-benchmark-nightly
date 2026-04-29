begin_hunk_0_@asearch1:bb.a
._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.i
  %.0188.lcssa = phi i32 [ %i.r, %bb.i ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil ]
  %i.ao = xor i32 %.0188.lcssa, -1                ; 2 uses
  %i.ap = add i32 %2, 1                           ; 2 uses
  %i.aq = shl i32 %2, 1                           ; 4 uses
  %.not265 = icmp eq i32 %2, 0
  br i1 %.not265, label %.lr.ph225, label %.preheader213
end_hunk_0
begin_hunk_1_@asearch1:bb.a
  br label %vector.body457

vector.body457:                                   ; preds = %vector.body457, %vector.ph448
  %index458 = phi i64 [ 0, %vector.ph448 ], [ %index.next469, %vector.body457 ] ; 2 uses
  %offset.idx459 = add i64 %index458, %i.bp       ; 3 uses
  %i.ec = trunc i64 %offset.idx459 to i32         ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %offset.idx459 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load461 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !4 ; 2 uses
end_hunk_1
begin_hunk_2_@asearch1:bb.a
  %i.ei = lshr <4 x i32> %wide.load462, splat (i32 1)
  %i.ej = and <4 x i32> %i.eh, %broadcast.splat454
  %i.ek = and <4 x i32> %i.ei, %broadcast.splat454
  %i.el = sub i32 %i.ec, %i.dq
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load463 = load <4 x i32>, ptr %i.en, align 4, !tbaa !4
  %wide.load464 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !4
  %i.ep = sub i32 %i.ec, %i.dr
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load465 = load <4 x i32>, ptr %i.er, align 4, !tbaa !4
  %wide.load466 = load <4 x i32>, ptr %i.es, align 4, !tbaa !4
  %i.et = sub i32 %i.ec, %i.ds
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
end_hunk_2
begin_hunk_3_@asearch1:bb.a
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph401
  %index411 = phi i64 [ 0, %vector.ph401 ], [ %index.next422, %vector.body410 ] ; 2 uses
  %offset.idx412 = add i64 %index411, %i.bp       ; 3 uses
  %i.id = trunc i64 %offset.idx412 to i32         ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %offset.idx412 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %wide.load414.a = load <4 x i32>, ptr %i.ie, align 4, !tbaa !4 ; 2 uses
end_hunk_3
begin_hunk_4_@asearch1:bb.a
  %i.ij = lshr <4 x i32> %wide.load415, splat (i32 1)
  %i.ik = and <4 x i32> %i.ii, %broadcast.splat407
  %i.il = and <4 x i32> %i.ij, %broadcast.splat407
  %i.im = sub i32 %i.id, %i.hr
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %wide.load416 = load <4 x i32>, ptr %i.io, align 4, !tbaa !4
  %wide.load417 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !4
  %i.iq = sub i32 %i.id, %i.hs
  %i.ir = zext i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %wide.load418 = load <4 x i32>, ptr %i.is, align 4, !tbaa !4
  %wide.load419 = load <4 x i32>, ptr %i.it, align 4, !tbaa !4
  %i.iu = sub i32 %i.id, %i.ht
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
end_hunk_4
begin_hunk_5_@asearch1:bb.a
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph369
  %index379 = phi i64 [ 0, %vector.ph369 ], [ %index.next390, %vector.body378 ] ; 2 uses
  %offset.idx380 = add i64 %index379, %i.bp       ; 3 uses
  %i.ll = trunc i64 %offset.idx380 to i32         ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %offset.idx380 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %wide.load382.a = load <4 x i32>, ptr %i.lm, align 4, !tbaa !4 ; 2 uses
end_hunk_5
begin_hunk_6_@asearch1:bb.a
  %i.lr = lshr <4 x i32> %wide.load383.a, splat (i32 1)
  %i.ls = and <4 x i32> %i.lq, %broadcast.splat375
  %i.lt = and <4 x i32> %i.lr, %broadcast.splat375
  %i.lu = sub i32 %i.ll, %i.kz
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lv ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %wide.load384.a = load <4 x i32>, ptr %i.lw, align 4, !tbaa !4
  %wide.load385 = load <4 x i32>, ptr %i.lx, align 4, !tbaa !4
  %i.ly = sub i32 %i.ll, %i.la
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %wide.load386 = load <4 x i32>, ptr %i.ma, align 4, !tbaa !4
  %wide.load387 = load <4 x i32>, ptr %i.mb, align 4, !tbaa !4
  %i.mc = sub i32 %i.ll, %i.lb
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
end_hunk_6
begin_hunk_7_@asearch1:bb.a
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph323
  %index333 = phi i64 [ 0, %vector.ph323 ], [ %index.next343, %vector.body332 ] ; 2 uses
  %offset.idx334 = add i64 %index333, %i.bp       ; 3 uses
  %i.pm = trunc i64 %offset.idx334 to i32         ; 3 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %offset.idx334 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %wide.load = load <4 x i32>, ptr %i.pn, align 4, !tbaa !4 ; 2 uses
end_hunk_7
begin_hunk_8_@asearch1:bb.a
  %i.ps = lshr <4 x i32> %wide.load336.a, splat (i32 1)
  %i.pt = and <4 x i32> %i.pr, %broadcast.splat329
  %i.pu = and <4 x i32> %i.ps, %broadcast.splat329
  %i.pv = sub i32 %i.pm, %i.pa
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pw ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %wide.load337.a = load <4 x i32>, ptr %i.px, align 4, !tbaa !4
  %wide.load338.a = load <4 x i32>, ptr %i.py, align 4, !tbaa !4
  %i.pz = sub i32 %i.pm, %i.pb
  %i.qa = zext i32 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.qa ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %wide.load339.a = load <4 x i32>, ptr %i.qb, align 4, !tbaa !4
  %wide.load340.a = load <4 x i32>, ptr %i.qc, align 4, !tbaa !4
  %i.qd = sub i32 %i.pm, %i.pc
  %i.qe = zext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qe ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
end_hunk_8
