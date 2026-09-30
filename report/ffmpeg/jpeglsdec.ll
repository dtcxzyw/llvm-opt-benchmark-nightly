Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeglsdec?download=true
inline.NumInlined: 14
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ff_jpegls_decode_picture:bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %.2293418, i64 %indvars.iv
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !49
  %i.ef = trunc nuw nsw i64 %indvars.iv to i32
  %i.eg = tail call fastcc i32 @ls_decode_line(ptr noundef %.0290, ptr noundef %0, ptr noundef %i.eb, ptr noundef %i.ec, i32 noundef %i.ee, i32 noundef %i.dq, i32 noundef %i.dj, i32 noundef %i.ef, i32 noundef 8) ; 2 uses
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %ff_mjpeg_handle_restart.exit.thread389, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ei = load i8, ptr %i.eb, align 1, !tbaa !13
  %i.ej = zext i8 %i.ei to i32
  store i32 %i.ej, ptr %i.ed, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.ae, label %bb.ac, !llvm.loop !89

bb.ae:                                            ; preds = %bb.ad
  %i.ek = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.em = load i32, ptr %i.el, align 8, !tbaa !49
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %.2293418, i64 %i.en
  %i.ep = add nuw nsw i32 %.1306416, 1            ; 3 uses
  %i.eq = load i32, ptr %i.l, align 4, !tbaa !108
  %i.er = icmp slt i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.y, label %ff_mjpeg_handle_restart.exit.thread389, !llvm.loop !90

ff_mjpeg_handle_restart.exit.thread389:           ; preds = %bb.ae, %bb.ac, %bb.x
  %.1306414 = phi i32 [ %.1306416, %bb.ac ], [ 0, %bb.x ], [ %i.ep, %bb.ae ]
  %.9.ph = phi i32 [ %i.eg, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.loopexit405

ff_mjpeg_handle_restart.exit:                     ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.loopexit

bb.af:                                            ; preds = %bb.m
  %i.es = load ptr, ptr %i.bd, align 8, !tbaa !32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.es, ptr noundef nonnull @.str.8) #9
  br label %.loopexit

bb.ag:                                            ; preds = %bb.m
  %i.et = load ptr, ptr %i.bd, align 8, !tbaa !32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.et, ptr noundef nonnull @.str.9) #9
  br label %.loopexit

.loopexit405:                                     ; preds = %bb.w, %bb.o, %ff_mjpeg_handle_restart.exit.thread389, %.thread360
  %.0289 = phi i32 [ 0, %ff_mjpeg_handle_restart.exit.thread389 ], [ %.0.i, %.thread360 ], [ %.0.i, %bb.o ], [ %.0.i, %bb.w ] ; 4 uses
  %.0288 = phi i32 [ %i.dj, %ff_mjpeg_handle_restart.exit.thread389 ], [ %i.cd, %.thread360 ], [ %i.cd, %bb.o ], [ %i.cd, %bb.w ] ; 2 uses
  %.10 = phi i32 [ %.9.ph, %ff_mjpeg_handle_restart.exit.thread389 ], [ %.1284, %.thread360 ], [ 0, %bb.o ], [ 0, %bb.w ] ; 6 uses
  %.1282 = phi i32 [ %.1306414, %ff_mjpeg_handle_restart.exit.thread389 ], [ %.0305419, %.thread360 ], [ 0, %bb.o ], [ %i.dd, %bb.w ] ; 7 uses
  %i.eu = zext nneg i32 %.1282 to i64
  %i.ev = load i64, ptr %i.j, align 8, !tbaa !107
  %i.ew = add nsw i64 %i.ev, %i.eu
  store i64 %i.ew, ptr %i.j, align 8, !tbaa !107
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 956 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !115
  %.not340 = icmp eq i32 %i.ey, 0
  br i1 %.not340, label %.loopexit404, label %bb.ah

bb.ah:                                            ; preds = %.loopexit405
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.fa = load i32, ptr %i.ez, align 16, !tbaa !114
  %i.fb = icmp eq i32 %i.fa, 3
  br i1 %i.fb, label %bb.ai, label %.loopexit404

bb.ai:                                            ; preds = %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.fd = load i32, ptr %i.fc, align 16, !tbaa !112
  %i.fe = mul nsw i32 %i.fd, 3                    ; 2 uses
  %i.ff = load i32, ptr %i.ab, align 4, !tbaa !110
  %i.fg = icmp slt i32 %i.ff, 9
  br i1 %i.fg, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %.not447 = icmp eq i32 %.1282, 0
  br i1 %.not447, label %.loopexit404, label %.lr.ph436

.lr.ph436:                                        ; preds = %bb.aj
  %i.fh = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !12
  %i.fj = add nsw i32 %.0289, 2                   ; 5 uses
  %i.fk = icmp slt i32 %i.fj, %i.fe               ; 4 uses
  %i.fl = sext i32 %.0289 to i64                  ; 4 uses
  %i.fm = sext i32 %i.fe to i64                   ; 4 uses
  %i.fn = sext i32 %i.fj to i64
  %i.fo = sext i32 %i.fj to i64
  %i.fp = sext i32 %i.fj to i64
  %i.fq = sext i32 %i.fj to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph436, %.loopexit397
  %.0274434 = phi ptr [ %i.fi, %.lr.ph436 ], [ %i.iy, %.loopexit397 ] ; 9 uses
  %.2307433 = phi i32 [ 0, %.lr.ph436 ], [ %i.iz, %.loopexit397 ]
  %i.fr = load i32, ptr %i.ex, align 4, !tbaa !115
  switch i32 %i.fr, label %.loopexit397 [
    i32 1, label %.preheader396
    i32 2, label %.preheader398
    i32 3, label %.preheader400
    i32 4, label %.preheader402
  ]

.preheader402:                                    ; preds = %bb.ak
  br i1 %i.fk, label %.lr.ph426, label %.loopexit397

.preheader400:                                    ; preds = %bb.ak
  br i1 %i.fk, label %.lr.ph428, label %.loopexit397

.preheader398:                                    ; preds = %bb.ak
  br i1 %i.fk, label %.lr.ph430, label %.loopexit397

.preheader396:                                    ; preds = %bb.ak
  br i1 %i.fk, label %.lr.ph432, label %.loopexit397

.lr.ph432:                                        ; preds = %.preheader396, %.lr.ph432
  %indvars.iv476.a = phi i64 [ %indvars.iv.next477.a, %.lr.ph432 ], [ %i.fl, %.preheader396 ] ; 3 uses
  %i.fs = phi i64 [ %i.gc, %.lr.ph432 ], [ %i.fq, %.preheader396 ]
  %i.ft = getelementptr i8, ptr %.0274434, i64 %indvars.iv476.a ; 3 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !13
  %i.fw = xor i8 %i.fv, -128                      ; 2 uses
  %i.fx = load i8, ptr %i.ft, align 1, !tbaa !13
  %i.fy = add i8 %i.fw, %i.fx
  store i8 %i.fy, ptr %i.ft, align 1, !tbaa !13
  %i.fz = getelementptr inbounds i8, ptr %.0274434, i64 %i.fs ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !13
  %i.gb = add i8 %i.ga, %i.fw
  store i8 %i.gb, ptr %i.fz, align 1, !tbaa !13
  %indvars.iv.next477.a = add nsw i64 %indvars.iv476.a, 3
  %i.gc = add nsw i64 %indvars.iv476.a, 5         ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.fm
  br i1 %i.gd, label %.lr.ph432, label %.loopexit397, !llvm.loop !91

.lr.ph430:                                        ; preds = %.preheader398, %.lr.ph430
  %indvars.iv473.a = phi i64 [ %indvars.iv.next474.a, %.lr.ph430 ], [ %i.fl, %.preheader398 ] ; 3 uses
  %i.ge = phi i64 [ %i.gu, %.lr.ph430 ], [ %i.fp, %.preheader398 ]
  %i.gf = getelementptr i8, ptr %.0274434, i64 %indvars.iv473.a ; 3 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 1
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !13  ; 2 uses
  %i.gi = xor i8 %i.gh, -128
  %i.gj = load i8, ptr %i.gf, align 1, !tbaa !13
  %i.gk = add i8 %i.gi, %i.gj                     ; 2 uses
  store i8 %i.gk, ptr %i.gf, align 1, !tbaa !13
  %i.gl = zext i8 %i.gk to i16
  %i.gm = zext i8 %i.gh to i16
  %i.gn = add nuw nsw i16 %i.gl, %i.gm
  %i.go = lshr i16 %i.gn, 1
  %i.gp = getelementptr inbounds i8, ptr %.0274434, i64 %i.ge ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !13
  %i.gr = trunc nuw i16 %i.go to i8
  %i.gs = xor i8 %i.gr, -128
  %i.gt = add i8 %i.gs, %i.gq
  store i8 %i.gt, ptr %i.gp, align 1, !tbaa !13
  %indvars.iv.next474.a = add nsw i64 %indvars.iv473.a, 3
  %i.gu = add nsw i64 %indvars.iv473.a, 5         ; 2 uses
  %i.gv = icmp slt i64 %i.gu, %i.fm
  br i1 %i.gv, label %.lr.ph430, label %.loopexit397, !llvm.loop !92

.lr.ph428:                                        ; preds = %.preheader400, %.lr.ph428
  %indvars.iv470.a = phi i64 [ %indvars.iv.next471.a, %.lr.ph428 ], [ %i.fl, %.preheader400 ] ; 3 uses
  %i.gw = phi i64 [ %i.ho, %.lr.ph428 ], [ %i.fo, %.preheader400 ]
  %i.gx = getelementptr inbounds i8, ptr %.0274434, i64 %indvars.iv470.a ; 3 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !13
  %i.gz = getelementptr inbounds i8, ptr %.0274434, i64 %i.gw ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !13  ; 2 uses
  %i.hb = zext i8 %i.ha to i16
  %i.hc = getelementptr i8, ptr %i.gx, i64 1      ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !13  ; 2 uses
  %i.he = zext i8 %i.hd to i16
  %i.hf = add nuw nsw i16 %i.he, %i.hb
  %i.hg = lshr i16 %i.hf, 2
  %i.hh = trunc nuw nsw i16 %i.hg to i8
  %i.hi = sub i8 %i.gy, %i.hh
  %i.hj = add i8 %i.hi, 64                        ; 3 uses
  %i.hk = add i8 %i.hj, %i.ha
  %i.hl = xor i8 %i.hk, -128
  store i8 %i.hl, ptr %i.gx, align 1, !tbaa !13
  %i.hm = add i8 %i.hj, %i.hd
  %i.hn = xor i8 %i.hm, -128
  store i8 %i.hn, ptr %i.gz, align 1, !tbaa !13
  store i8 %i.hj, ptr %i.hc, align 1, !tbaa !13
  %indvars.iv.next471.a = add nsw i64 %indvars.iv470.a, 3
  %i.ho = add nsw i64 %indvars.iv470.a, 5         ; 2 uses
  %i.hp = icmp slt i64 %i.ho, %i.fm
  br i1 %i.hp, label %.lr.ph428, label %.loopexit397, !llvm.loop !93

.lr.ph426:                                        ; preds = %.preheader402, %.lr.ph426
  %indvars.iv467 = phi i64 [ %indvars.iv.next468, %.lr.ph426 ], [ %i.fl, %.preheader402 ] ; 3 uses
  %i.hq = phi i64 [ %i.is, %.lr.ph426 ], [ %i.fn, %.preheader402 ]
  %i.hr = getelementptr inbounds i8, ptr %.0274434, i64 %indvars.iv467 ; 3 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !13
  %i.ht = zext i8 %i.hs to i32                    ; 3 uses
  %i.hu = getelementptr inbounds i8, ptr %.0274434, i64 %i.hq ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !13
  %i.hw = zext i8 %i.hv to i32
  %i.hx = add nsw i32 %i.hw, -128                 ; 2 uses
  %i.hy = mul nsw i32 %i.hx, 359
  %i.hz = add nsw i32 %i.hy, 490
  %i.ia = ashr i32 %i.hz, 8
  %i.ib = sub nsw i32 %i.ht, %i.ia                ; 3 uses
  %i.ic = getelementptr i8, ptr %i.hr, i64 1      ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !13
  %i.ie = zext i8 %i.id to i32
  %i.if = add nsw i32 %i.ie, -128                 ; 2 uses
  %i.ig = mul nsw i32 %i.if, 88
  %.neg = mul nsw i32 %i.hx, -183
  %i.ih = add nsw i32 %.neg, 30
  %i.ii = add nsw i32 %i.ih, %i.ig
  %i.ij = ashr i32 %i.ii, 8
  %i.ik = sub nsw i32 %i.ht, %i.ij                ; 3 uses
  %i.il = mul nsw i32 %i.if, 454
  %i.im = add nsw i32 %i.il, 574
  %i.in = ashr i32 %i.im, 8
  %i.io = add nsw i32 %i.in, %i.ht                ; 3 uses
  %1 = icmp ugt i32 %i.ib, 255
  %isnotneg.i346 = icmp sgt i32 %i.ib, -1
  %2 = sext i1 %isnotneg.i346 to i8
  %i.ip = trunc nuw i32 %i.ib to i8
  %.0.i347 = select i1 %1, i8 %2, i8 %i.ip
  store i8 %.0.i347, ptr %i.hr, align 1, !tbaa !13
  %3 = icmp ugt i32 %i.ik, 255
  %isnotneg.i344 = icmp sgt i32 %i.ik, -1
  %4 = sext i1 %isnotneg.i344 to i8
  %i.iq = trunc nuw i32 %i.ik to i8
  %.0.i345 = select i1 %3, i8 %4, i8 %i.iq
  store i8 %.0.i345, ptr %i.ic, align 1, !tbaa !13
  %5 = icmp ugt i32 %i.io, 255
  %isnotneg.i = icmp sgt i32 %i.io, -1
  %6 = sext i1 %isnotneg.i to i8
  %i.ir = trunc nuw i32 %i.io to i8
  %.0.i343 = select i1 %5, i8 %6, i8 %i.ir
  store i8 %.0.i343, ptr %i.hu, align 1, !tbaa !13
  %indvars.iv.next468 = add nsw i64 %indvars.iv467, 3
  %i.is = add nsw i64 %indvars.iv467, 5           ; 2 uses
  %i.it = icmp slt i64 %i.is, %i.fm
  br i1 %i.it, label %.lr.ph426, label %.loopexit397, !llvm.loop !94

.loopexit397:                                     ; preds = %.lr.ph426, %.lr.ph428, %.lr.ph430, %.lr.ph432, %.preheader402, %.preheader400, %.preheader398, %.preheader396, %bb.ak
  %i.iu = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 64
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !49
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %.0274434, i64 %i.ix
  %i.iz = add nuw nsw i32 %.2307433, 1            ; 2 uses
  %exitcond479.not = icmp eq i32 %i.iz, %.1282
  br i1 %exitcond479.not, label %.loopexit404, label %bb.ak, !llvm.loop !95

bb.al:                                            ; preds = %bb.ai
  %i.ja = load ptr, ptr %i.bd, align 8, !tbaa !32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.ja, ptr noundef nonnull @.str.10) #9
  br label %.loopexit404

.loopexit404:                                     ; preds = %.loopexit397, %bb.aj, %bb.al, %bb.ah, %.loopexit405
  %.not341 = icmp eq i32 %.0287, 0
  br i1 %.not341, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %.loopexit404
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.jc = load i32, ptr %i.jb, align 16, !tbaa !112
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.je = load i32, ptr %i.jd, align 16, !tbaa !114
  %i.jf = mul i32 %i.je, %i.jc                    ; 6 uses
  %i.jg = load i32, ptr %i.ab, align 4, !tbaa !110
  %i.jh = icmp slt i32 %i.jg, 9
  br i1 %i.jh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ji = icmp ne i32 %.1282, 0
  %i.jj = icmp slt i32 %.0289, %i.jf
  %or.cond446 = select i1 %i.ji, i1 %i.jj, i1 false
  br i1 %or.cond446, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.an
  %i.jk = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !12
  %i.jm = sext i32 %.0289 to i64                  ; 6 uses
  %i.jn = zext nneg i32 %.0288 to i64
  %i.jo = sext i32 %i.jf to i64                   ; 2 uses
  %i.jp = sub nsw i64 %i.jo, %i.jm                ; 7 uses
  %min.iters.check556 = icmp ugt i64 %i.jp, 3
  %ident.check.not = icmp eq i32 %.0288, 1
  %or.cond586 = select i1 %min.iters.check556, i1 %ident.check.not, i1 false
  %min.iters.check558 = icmp ult i64 %i.jp, 16
  %i.jq = and i64 %i.jp, 12
  %n.vec560 = and i64 %i.jp, -16                  ; 4 uses
  %i.jr = add nsw i64 %n.vec560, %i.jm
  %broadcast.splatinsert561 = insertelement <16 x i32> poison, i32 %.0287, i64 0
  %broadcast.splat562 = shufflevector <16 x i32> %broadcast.splatinsert561, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n568 = icmp eq i64 %i.jp, %n.vec560
  %min.epilog.iters.check574 = icmp eq i64 %i.jq, 0
  %n.vec576 = and i64 %i.jp, -4                   ; 3 uses
  %i.js = add nsw i64 %n.vec576, %i.jm
  %broadcast.splatinsert577 = insertelement <4 x i32> poison, i32 %.0287, i64 0
  %broadcast.splat578 = shufflevector <4 x i32> %broadcast.splatinsert577, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n584 = icmp eq i64 %i.jp, %n.vec576
  br label %iter.check571

iter.check571:                                    ; preds = %.preheader.preheader, %._crit_edge443
  %.0271445 = phi ptr [ %i.kl, %._crit_edge443 ], [ %i.jl, %.preheader.preheader ] ; 4 uses
  %.3308444 = phi i32 [ %i.km, %._crit_edge443 ], [ 0, %.preheader.preheader ]
  br i1 %or.cond586, label %vector.main.loop.iter.check557, label %vec.epilog.scalar.ph572.preheader

vector.main.loop.iter.check557:                   ; preds = %iter.check571
  br i1 %min.iters.check558, label %vec.epilog.ph575, label %vector.ph559

vector.ph559:                                     ; preds = %vector.main.loop.iter.check557
  %invariant.gep = getelementptr i8, ptr %.0271445, i64 %i.jm
  br label %vector.body563

vector.body563:                                   ; preds = %vector.ph559, %vector.body563
  %index564 = phi i64 [ 0, %vector.ph559 ], [ %index.next566, %vector.body563 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index564 ; 2 uses
  %wide.load565 = load <16 x i8>, ptr %gep, align 1, !tbaa !13
  %i.jt = zext <16 x i8> %wide.load565 to <16 x i32>
  %i.ju = shl nuw nsw <16 x i32> %i.jt, %broadcast.splat562
  %i.jv = trunc <16 x i32> %i.ju to <16 x i8>
  store <16 x i8> %i.jv, ptr %gep, align 1, !tbaa !13
  %index.next566 = add nuw i64 %index564, 16      ; 2 uses
  %i.jw = icmp eq i64 %index.next566, %n.vec560
  br i1 %i.jw, label %middle.block567, label %vector.body563, !llvm.loop !96

middle.block567:                                  ; preds = %vector.body563
  br i1 %cmp.n568, label %._crit_edge443, label %vec.epilog.iter.check573

vec.epilog.iter.check573:                         ; preds = %middle.block567
  br i1 %min.epilog.iters.check574, label %vec.epilog.scalar.ph572.preheader, label %vec.epilog.ph575, !prof !67

vec.epilog.ph575:                                 ; preds = %vector.main.loop.iter.check557, %vec.epilog.iter.check573
  %vec.epilog.resume.val569 = phi i64 [ %n.vec560, %vec.epilog.iter.check573 ], [ 0, %vector.main.loop.iter.check557 ]
  %invariant.gep616 = getelementptr i8, ptr %.0271445, i64 %i.jm
  br label %vec.epilog.vector.body579

vec.epilog.vector.body579:                        ; preds = %vec.epilog.vector.body579, %vec.epilog.ph575
  %index580 = phi i64 [ %vec.epilog.resume.val569, %vec.epilog.ph575 ], [ %index.next582, %vec.epilog.vector.body579 ] ; 2 uses
  %gep617 = getelementptr i8, ptr %invariant.gep616, i64 %index580 ; 2 uses
  %wide.load581 = load <4 x i8>, ptr %gep617, align 1, !tbaa !13
  %i.jx = zext <4 x i8> %wide.load581 to <4 x i32>
  %i.jy = shl nuw nsw <4 x i32> %i.jx, %broadcast.splat578
  %i.jz = trunc <4 x i32> %i.jy to <4 x i8>
  store <4 x i8> %i.jz, ptr %gep617, align 1, !tbaa !13
  %index.next582 = add nuw i64 %index580, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next582, %n.vec576
  br i1 %i.ka, label %vec.epilog.middle.block583, label %vec.epilog.vector.body579, !llvm.loop !97

vec.epilog.middle.block583:                       ; preds = %vec.epilog.vector.body579
  br i1 %cmp.n584, label %._crit_edge443, label %vec.epilog.scalar.ph572.preheader

vec.epilog.scalar.ph572.preheader:                ; preds = %iter.check571, %vec.epilog.iter.check573, %vec.epilog.middle.block583
  %indvars.iv486.ph = phi i64 [ %i.jm, %iter.check571 ], [ %i.jr, %vec.epilog.iter.check573 ], [ %i.js, %vec.epilog.middle.block583 ]
  br label %vec.epilog.scalar.ph572

vec.epilog.scalar.ph572:                          ; preds = %vec.epilog.scalar.ph572.preheader, %vec.epilog.scalar.ph572
  %indvars.iv486 = phi i64 [ %indvars.iv.next487, %vec.epilog.scalar.ph572 ], [ %indvars.iv486.ph, %vec.epilog.scalar.ph572.preheader ] ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %.0271445, i64 %indvars.iv486 ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !13
  %i.kd = zext i8 %i.kc to i32
  %i.ke = shl nuw nsw i32 %i.kd, %.0287
  %i.kf = trunc i32 %i.ke to i8
  store i8 %i.kf, ptr %i.kb, align 1, !tbaa !13
  %indvars.iv.next487 = add nsw i64 %indvars.iv486, %i.jn ; 2 uses
  %i.kg = icmp slt i64 %indvars.iv.next487, %i.jo
  br i1 %i.kg, label %vec.epilog.scalar.ph572, label %._crit_edge443, !llvm.loop !98

._crit_edge443:                                   ; preds = %vec.epilog.scalar.ph572, %vec.epilog.middle.block583, %middle.block567
  %i.kh = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !49
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds i8, ptr %.0271445, i64 %i.kk
  %i.km = add nuw nsw i32 %.3308444, 1            ; 2 uses
  %exitcond489.not = icmp eq i32 %i.km, %.1282
  br i1 %exitcond489.not, label %.loopexit, label %iter.check571, !llvm.loop !99

bb.ao:                                            ; preds = %bb.am
  %.not448 = icmp eq i32 %.1282, 0
  br i1 %.not448, label %.loopexit, label %.preheader394.lr.ph

.preheader394.lr.ph:                              ; preds = %bb.ao
  %i.kn = load ptr, ptr %i.s, align 8, !tbaa !48  ; 2 uses
  %i.ko = icmp sgt i32 %i.jf, 0
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 64
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !49
  %i.kr = sdiv i32 %i.kq, 2
  %i.ks = sext i32 %i.kr to i64
  br i1 %i.ko, label %.preheader394.preheader, label %.loopexit

.preheader394.preheader:                          ; preds = %.preheader394.lr.ph
  %i.kt = load ptr, ptr %i.kn, align 8, !tbaa !12
  %wide.trip.count483 = zext nneg i32 %i.jf to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.jf, 4
  %min.iters.check547 = icmp ult i32 %i.jf, 16
  %i.ku = and i64 %wide.trip.count483, 12
  %n.vec = and i64 %wide.trip.count483, 2147483632 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.0287, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count483
  %min.epilog.iters.check = icmp eq i64 %i.ku, 0
  %n.vec549 = and i64 %wide.trip.count483, 2147483644 ; 3 uses
  %broadcast.splatinsert550 = insertelement <4 x i32> poison, i32 %.0287, i64 0
  %broadcast.splat551 = shufflevector <4 x i32> %broadcast.splatinsert550, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n555 = icmp eq i64 %n.vec549, %wide.trip.count483
  br label %iter.check

iter.check:                                       ; preds = %.preheader394.preheader, %._crit_edge
  %.0440 = phi ptr [ %i.lo, %._crit_edge ], [ %i.kt, %.preheader394.preheader ] ; 4 uses
  %.4309439 = phi i32 [ %i.lp, %._crit_edge ], [ 0, %.preheader394.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check547, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %.0440, i64 %index ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.kv, align 2, !tbaa !63
  %wide.load548 = load <8 x i16>, ptr %i.kw, align 2, !tbaa !63
  %i.kx = zext <8 x i16> %wide.load to <8 x i32>
  %i.ky = zext <8 x i16> %wide.load548 to <8 x i32>
  %i.kz = shl nuw nsw <8 x i32> %i.kx, %broadcast.splat
  %i.la = shl nuw nsw <8 x i32> %i.ky, %broadcast.splat
  %i.lb = trunc <8 x i32> %i.kz to <8 x i16>
  %i.lc = trunc <8 x i32> %i.la to <8 x i16>
  store <8 x i16> %i.lb, ptr %i.kv, align 2, !tbaa !63
  store <8 x i16> %i.lc, ptr %i.kw, align 2, !tbaa !63
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ld = icmp eq i64 %index.next, %n.vec
  br i1 %i.ld, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

end_hunk_0
