Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeglsdec?download=true
inline.NumInlined: 14
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ff_jpegls_decode_picture:bb.a
bb.q:                                             ; preds = %bb.p
  tail call void @ff_jpegls_init_state(ptr noundef nonnull %.0290) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1302 = phi i32 [ 0, %bb.q ], [ %.0301420, %bb.p ] ; 2 uses
  %.1296 = phi ptr [ %i.x, %bb.q ], [ %.0295421, %bb.p ] ; 4 uses
  %i.cp = load i32, ptr %i.ab, align 4, !tbaa !110
  %i.cq = icmp slt i32 %i.cp, 9
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cr = tail call fastcc i32 @ls_decode_line(ptr noundef %.0290, ptr noundef nonnull %0, ptr noundef %.1296, ptr noundef %.0291422, i32 noundef %.1302, i32 noundef %i.ch, i32 noundef %i.cd, i32 noundef %.0.i, i32 noundef 8)
  %i.cs = load i8, ptr %.1296, align 1, !tbaa !13
  %i.ct = zext i8 %i.cs to i32
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cu = tail call fastcc i32 @ls_decode_line(ptr noundef %.0290, ptr noundef nonnull %0, ptr noundef %.1296, ptr noundef %.0291422, i32 noundef %.1302, i32 noundef %i.ch, i32 noundef %i.cd, i32 noundef %.0.i, i32 noundef 16)
  %i.cv = load i16, ptr %.1296, align 2, !tbaa !63
  %i.cw = zext i16 %i.cv to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2303 = phi i32 [ %i.ct, %bb.s ], [ %i.cw, %bb.t ]
  %.1284 = phi i32 [ %i.cr, %bb.s ], [ %i.cu, %bb.t ] ; 2 uses
  %i.cx = icmp slt i32 %.1284, 0
  br i1 %i.cx, label %.thread360, label %bb.w

.thread360:                                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit405

bb.v:                                             ; preds = %.lr.ph423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.cy = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !49
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %.0291422, i64 %i.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.dd = add nuw nsw i32 %.0305419, 1            ; 3 uses
  %i.de = load i32, ptr %i.l, align 4, !tbaa !108
  %i.df = icmp slt i32 %i.dd, %i.de
  br i1 %i.df, label %.lr.ph423, label %.loopexit405, !llvm.loop !88

bb.x:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.dh = load i32, ptr %i.dg, align 16, !tbaa !114
  %i.di = icmp sgt i32 %i.dh, 1
  %i.dj = select i1 %i.di, i32 3, i32 1           ; 4 uses
  %i.dk = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !49
  %i.dn = sext i32 %i.dm to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.dn, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.dp = load i32, ptr %i.do, align 16, !tbaa !112
  %i.dq = mul nsw i32 %i.dp, %i.dj
  %i.dr = load i32, ptr %i.l, align 4, !tbaa !108
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph, label %ff_mjpeg_handle_restart.exit.thread389

.lr.ph:                                           ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %wide.trip.count = zext nneg i32 %i.dj to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ae
  %.2293418 = phi ptr [ %i.z, %.lr.ph ], [ %i.eo, %bb.ae ] ; 3 uses
  %.3298417 = phi ptr [ %i.x, %.lr.ph ], [ %.2293418, %bb.ae ] ; 2 uses
  %.1306416 = phi i32 [ 0, %.lr.ph ], [ %i.ep, %bb.ae ] ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !64 ; 2 uses
  %.not.i.i = icmp eq i32 %i.du, 0
  %i.dv = load i32, ptr %i.bw, align 4, !tbaa !61 ; 3 uses
  br i1 %.not.i.i, label %bb.z, label %ff_mjpeg_should_restart.exit.i

bb.z:                                             ; preds = %bb.y
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %ff_mjpeg_should_restart.exit.thread10.i, label %.thread370

ff_mjpeg_should_restart.exit.thread10.i:          ; preds = %bb.z
  store i32 0, ptr %i.bw, align 4, !tbaa !61
  br label %bb.aa

ff_mjpeg_should_restart.exit.i:                   ; preds = %bb.y
  %i.dx = icmp slt i32 %i.dv, 1                   ; 2 uses
  %spec.select.i.i = select i1 %i.dx, i32 %i.du, i32 %i.dv
  %i.dy = add nsw i32 %spec.select.i.i, -1
  store i32 %i.dy, ptr %i.bw, align 4, !tbaa !61
  br i1 %i.dx, label %bb.aa, label %.thread370

bb.aa:                                            ; preds = %ff_mjpeg_should_restart.exit.i, %ff_mjpeg_should_restart.exit.thread10.i
  %i.dz = tail call i32 @ff_mjpeg_unescape_sos(ptr noundef nonnull %0) #9 ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, -1
  br i1 %i.ea, label %bb.ab, label %ff_mjpeg_handle_restart.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void @ff_jpegls_init_state(ptr noundef nonnull %.0290) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  br label %.thread370

.thread370:                                       ; preds = %ff_mjpeg_should_restart.exit.i, %bb.z, %bb.ab
  %.4299 = phi ptr [ %i.x, %bb.ab ], [ %.3298417, %bb.z ], [ %.3298417, %ff_mjpeg_should_restart.exit.i ]
  br label %bb.ac

bb.ac:                                            ; preds = %.thread370, %bb.ad
  %indvars.iv = phi i64 [ 0, %.thread370 ], [ %indvars.iv.next, %bb.ad ] ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.4299, i64 %indvars.iv ; 2 uses
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
  %smax = tail call i32 @llvm.smax.i32(i32 %.1282, i32 1)
  %i.fn = sext i32 %i.fj to i64
  %i.fo = sext i32 %i.fj to i64
  %i.fp = sext i32 %i.fj to i64
  %i.fq = sext i32 %i.fj to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph436, %.loopexit397
  %.0274434 = phi ptr [ %i.fi, %.lr.ph436 ], [ %i.je, %.loopexit397 ] ; 9 uses
  %.2307433 = phi i32 [ 0, %.lr.ph436 ], [ %i.jf, %.loopexit397 ]
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
  %indvars.iv476 = phi i64 [ %indvars.iv.next477, %.lr.ph432 ], [ %i.fl, %.preheader396 ] ; 3 uses
  %i.fs = phi i64 [ %i.gc, %.lr.ph432 ], [ %i.fq, %.preheader396 ]
  %i.ft = getelementptr i8, ptr %.0274434, i64 %indvars.iv476 ; 3 uses
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
  %indvars.iv.next477 = add nsw i64 %indvars.iv476, 3
  %i.gc = add nsw i64 %indvars.iv476, 5           ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.fm
  br i1 %i.gd, label %.lr.ph432, label %.loopexit397, !llvm.loop !91

.lr.ph430:                                        ; preds = %.preheader398, %.lr.ph430
  %indvars.iv473 = phi i64 [ %indvars.iv.next474, %.lr.ph430 ], [ %i.fl, %.preheader398 ] ; 3 uses
  %i.ge = phi i64 [ %i.gu, %.lr.ph430 ], [ %i.fp, %.preheader398 ]
  %i.gf = getelementptr i8, ptr %.0274434, i64 %indvars.iv473 ; 3 uses
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
  %indvars.iv.next474 = add nsw i64 %indvars.iv473, 3
  %i.gu = add nsw i64 %indvars.iv473, 5           ; 2 uses
  %i.gv = icmp slt i64 %i.gu, %i.fm
  br i1 %i.gv, label %.lr.ph430, label %.loopexit397, !llvm.loop !92

.lr.ph428:                                        ; preds = %.preheader400, %.lr.ph428
  %indvars.iv470 = phi i64 [ %indvars.iv.next471, %.lr.ph428 ], [ %i.fl, %.preheader400 ] ; 3 uses
  %i.gw = phi i64 [ %i.ho, %.lr.ph428 ], [ %i.fo, %.preheader400 ]
  %i.gx = getelementptr inbounds i8, ptr %.0274434, i64 %indvars.iv470 ; 3 uses
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
  %indvars.iv.next471 = add nsw i64 %indvars.iv470, 3
  %i.ho = add nsw i64 %indvars.iv470, 5           ; 2 uses
  %i.hp = icmp slt i64 %i.ho, %i.fm
  br i1 %i.hp, label %.lr.ph428, label %.loopexit397, !llvm.loop !93

.lr.ph426:                                        ; preds = %.preheader402, %.lr.ph426
  %indvars.iv467 = phi i64 [ %indvars.iv.next468, %.lr.ph426 ], [ %i.fl, %.preheader402 ] ; 3 uses
  %i.hq = phi i64 [ %i.iy, %.lr.ph426 ], [ %i.fn, %.preheader402 ]
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
  %i.ip = icmp ugt i32 %i.ib, 255
  %isnotneg.i346 = icmp sgt i32 %i.ib, -1
  %i.iq = sext i1 %isnotneg.i346 to i8
  %i.ir = trunc nuw i32 %i.ib to i8
  %.0.i347 = select i1 %i.ip, i8 %i.iq, i8 %i.ir
  store i8 %.0.i347, ptr %i.hr, align 1, !tbaa !13
  %i.is = icmp ugt i32 %i.ik, 255
  %isnotneg.i344 = icmp sgt i32 %i.ik, -1
  %i.it = sext i1 %isnotneg.i344 to i8
  %i.iu = trunc nuw i32 %i.ik to i8
  %.0.i345 = select i1 %i.is, i8 %i.it, i8 %i.iu
  store i8 %.0.i345, ptr %i.ic, align 1, !tbaa !13
  %i.iv = icmp ugt i32 %i.io, 255
  %isnotneg.i = icmp sgt i32 %i.io, -1
  %i.iw = sext i1 %isnotneg.i to i8
  %i.ix = trunc nuw i32 %i.io to i8
  %.0.i343 = select i1 %i.iv, i8 %i.iw, i8 %i.ix
  store i8 %.0.i343, ptr %i.hu, align 1, !tbaa !13
  %indvars.iv.next468 = add nsw i64 %indvars.iv467, 3
  %i.iy = add nsw i64 %indvars.iv467, 5           ; 2 uses
  %i.iz = icmp slt i64 %i.iy, %i.fm
  br i1 %i.iz, label %.lr.ph426, label %.loopexit397, !llvm.loop !94

.loopexit397:                                     ; preds = %.lr.ph426, %.lr.ph428, %.lr.ph430, %.lr.ph432, %.preheader402, %.preheader400, %.preheader398, %.preheader396, %bb.ak
  %i.ja = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 64
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !49
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds i8, ptr %.0274434, i64 %i.jd
  %i.jf = add nuw nsw i32 %.2307433, 1            ; 2 uses
  %exitcond479.not = icmp eq i32 %i.jf, %smax
  br i1 %exitcond479.not, label %.loopexit404, label %bb.ak, !llvm.loop !95

bb.al:                                            ; preds = %bb.ai
  %i.jg = load ptr, ptr %i.bd, align 8, !tbaa !32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.jg, ptr noundef nonnull @.str.10) #9
  br label %.loopexit404

.loopexit404:                                     ; preds = %.loopexit397, %bb.aj, %bb.al, %bb.ah, %.loopexit405
  %.not341 = icmp eq i32 %.0287, 0
  br i1 %.not341, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %.loopexit404
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ji = load i32, ptr %i.jh, align 16, !tbaa !112
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.jk = load i32, ptr %i.jj, align 16, !tbaa !114
  %i.jl = mul i32 %i.jk, %i.ji                    ; 6 uses
  %i.jm = load i32, ptr %i.ab, align 4, !tbaa !110
  %i.jn = icmp slt i32 %i.jm, 9
  br i1 %i.jn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jo = icmp ne i32 %.1282, 0
  %i.jp = icmp slt i32 %.0289, %i.jl
  %or.cond446 = select i1 %i.jo, i1 %i.jp, i1 false
  br i1 %or.cond446, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.an
  %i.jq = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !12
  %i.js = sext i32 %.0289 to i64                  ; 6 uses
  %i.jt = zext nneg i32 %.0288 to i64
  %i.ju = sext i32 %i.jl to i64                   ; 2 uses
  %smax490 = tail call i32 @llvm.smax.i32(i32 %.1282, i32 1)
  %i.jv = sub nsw i64 %i.ju, %i.js                ; 7 uses
  %min.iters.check556 = icmp ugt i64 %i.jv, 3
  %ident.check.not = icmp eq i32 %.0288, 1
  %or.cond586 = select i1 %min.iters.check556, i1 %ident.check.not, i1 false
  %min.iters.check558 = icmp ult i64 %i.jv, 16
  %i.jw = and i64 %i.jv, 12
  %n.vec560 = and i64 %i.jv, -16                  ; 4 uses
  %i.jx = add nsw i64 %n.vec560, %i.js
  %broadcast.splatinsert561 = insertelement <16 x i32> poison, i32 %.0287, i64 0
  %broadcast.splat562 = shufflevector <16 x i32> %broadcast.splatinsert561, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n568 = icmp eq i64 %i.jv, %n.vec560
  %min.epilog.iters.check574 = icmp eq i64 %i.jw, 0
  %n.vec576 = and i64 %i.jv, -4                   ; 3 uses
  %i.jy = add nsw i64 %n.vec576, %i.js
  %broadcast.splatinsert577 = insertelement <4 x i32> poison, i32 %.0287, i64 0
  %broadcast.splat578 = shufflevector <4 x i32> %broadcast.splatinsert577, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n584 = icmp eq i64 %i.jv, %n.vec576
  br label %iter.check571

iter.check571:                                    ; preds = %.preheader.preheader, %._crit_edge443
  %.0271445 = phi ptr [ %i.kr, %._crit_edge443 ], [ %i.jr, %.preheader.preheader ] ; 4 uses
  %.3308444 = phi i32 [ %i.ks, %._crit_edge443 ], [ 0, %.preheader.preheader ]
  br i1 %or.cond586, label %vector.main.loop.iter.check557, label %vec.epilog.scalar.ph572.preheader

vector.main.loop.iter.check557:                   ; preds = %iter.check571
  br i1 %min.iters.check558, label %vec.epilog.ph575, label %vector.ph559

vector.ph559:                                     ; preds = %vector.main.loop.iter.check557
  %invariant.gep = getelementptr i8, ptr %.0271445, i64 %i.js
  br label %vector.body563

vector.body563:                                   ; preds = %vector.body563, %vector.ph559
  %index564 = phi i64 [ 0, %vector.ph559 ], [ %index.next566, %vector.body563 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index564 ; 2 uses
  %wide.load565 = load <16 x i8>, ptr %gep, align 1, !tbaa !13
  %i.jz = zext <16 x i8> %wide.load565 to <16 x i32>
  %i.ka = shl nuw nsw <16 x i32> %i.jz, %broadcast.splat562
  %i.kb = trunc <16 x i32> %i.ka to <16 x i8>
  store <16 x i8> %i.kb, ptr %gep, align 1, !tbaa !13
  %index.next566 = add nuw i64 %index564, 16      ; 2 uses
  %i.kc = icmp eq i64 %index.next566, %n.vec560
  br i1 %i.kc, label %middle.block567, label %vector.body563, !llvm.loop !96

middle.block567:                                  ; preds = %vector.body563
  br i1 %cmp.n568, label %._crit_edge443, label %vec.epilog.iter.check573

vec.epilog.iter.check573:                         ; preds = %middle.block567
  br i1 %min.epilog.iters.check574, label %vec.epilog.scalar.ph572.preheader, label %vec.epilog.ph575, !prof !67

vec.epilog.ph575:                                 ; preds = %vector.main.loop.iter.check557, %vec.epilog.iter.check573
  %vec.epilog.resume.val569 = phi i64 [ %n.vec560, %vec.epilog.iter.check573 ], [ 0, %vector.main.loop.iter.check557 ]
  %invariant.gep616 = getelementptr i8, ptr %.0271445, i64 %i.js
  br label %vec.epilog.vector.body579

vec.epilog.vector.body579:                        ; preds = %vec.epilog.vector.body579, %vec.epilog.ph575
  %index580 = phi i64 [ %vec.epilog.resume.val569, %vec.epilog.ph575 ], [ %index.next582, %vec.epilog.vector.body579 ] ; 2 uses
  %gep617 = getelementptr i8, ptr %invariant.gep616, i64 %index580 ; 2 uses
  %wide.load581 = load <4 x i8>, ptr %gep617, align 1, !tbaa !13
  %i.kd = zext <4 x i8> %wide.load581 to <4 x i32>
  %i.ke = shl nuw nsw <4 x i32> %i.kd, %broadcast.splat578
  %i.kf = trunc <4 x i32> %i.ke to <4 x i8>
  store <4 x i8> %i.kf, ptr %gep617, align 1, !tbaa !13
  %index.next582 = add nuw i64 %index580, 4       ; 2 uses
  %i.kg = icmp eq i64 %index.next582, %n.vec576
  br i1 %i.kg, label %vec.epilog.middle.block583, label %vec.epilog.vector.body579, !llvm.loop !97

vec.epilog.middle.block583:                       ; preds = %vec.epilog.vector.body579
  br i1 %cmp.n584, label %._crit_edge443, label %vec.epilog.scalar.ph572.preheader

vec.epilog.scalar.ph572.preheader:                ; preds = %iter.check571, %vec.epilog.iter.check573, %vec.epilog.middle.block583
  %indvars.iv486.ph = phi i64 [ %i.js, %iter.check571 ], [ %i.jx, %vec.epilog.iter.check573 ], [ %i.jy, %vec.epilog.middle.block583 ]
  br label %vec.epilog.scalar.ph572

vec.epilog.scalar.ph572:                          ; preds = %vec.epilog.scalar.ph572.preheader, %vec.epilog.scalar.ph572
  %indvars.iv486 = phi i64 [ %indvars.iv.next487, %vec.epilog.scalar.ph572 ], [ %indvars.iv486.ph, %vec.epilog.scalar.ph572.preheader ] ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %.0271445, i64 %indvars.iv486 ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !13
  %i.kj = zext i8 %i.ki to i32
  %i.kk = shl nuw nsw i32 %i.kj, %.0287
  %i.kl = trunc i32 %i.kk to i8
  store i8 %i.kl, ptr %i.kh, align 1, !tbaa !13
  %indvars.iv.next487 = add nsw i64 %indvars.iv486, %i.jt ; 2 uses
  %i.km = icmp slt i64 %indvars.iv.next487, %i.ju
  br i1 %i.km, label %vec.epilog.scalar.ph572, label %._crit_edge443, !llvm.loop !98

._crit_edge443:                                   ; preds = %vec.epilog.scalar.ph572, %vec.epilog.middle.block583, %middle.block567
  %i.kn = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 64
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !49
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds i8, ptr %.0271445, i64 %i.kq
  %i.ks = add nuw nsw i32 %.3308444, 1            ; 2 uses
  %exitcond489.not = icmp eq i32 %i.ks, %smax490
  br i1 %exitcond489.not, label %.loopexit, label %iter.check571, !llvm.loop !99

bb.ao:                                            ; preds = %bb.am
  %.not448 = icmp eq i32 %.1282, 0
  br i1 %.not448, label %.loopexit, label %.preheader394.lr.ph

.preheader394.lr.ph:                              ; preds = %bb.ao
  %i.kt = load ptr, ptr %i.s, align 8, !tbaa !48  ; 2 uses
  %i.ku = icmp sgt i32 %i.jl, 0
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 64
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !49
  %i.kx = sdiv i32 %i.kw, 2
  %i.ky = sext i32 %i.kx to i64
  br i1 %i.ku, label %.preheader394.preheader, label %.loopexit

.preheader394.preheader:                          ; preds = %.preheader394.lr.ph
  %i.kz = load ptr, ptr %i.kt, align 8, !tbaa !12
  %smax485 = tail call i32 @llvm.smax.i32(i32 %.1282, i32 1)
  %wide.trip.count483 = zext nneg i32 %i.jl to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.jl, 4
  %min.iters.check547 = icmp ult i32 %i.jl, 16
  %i.la = and i64 %wide.trip.count483, 12
  %n.vec = and i64 %wide.trip.count483, 2147483632 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.0287, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count483
  %min.epilog.iters.check = icmp eq i64 %i.la, 0
  %n.vec549 = and i64 %wide.trip.count483, 2147483644 ; 3 uses
  %broadcast.splatinsert550 = insertelement <4 x i32> poison, i32 %.0287, i64 0
  %broadcast.splat551 = shufflevector <4 x i32> %broadcast.splatinsert550, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n555 = icmp eq i64 %n.vec549, %wide.trip.count483
  br label %iter.check

iter.check:                                       ; preds = %.preheader394.preheader, %._crit_edge
  %.0440 = phi ptr [ %i.lu, %._crit_edge ], [ %i.kz, %.preheader394.preheader ] ; 4 uses
  %.4309439 = phi i32 [ %i.lv, %._crit_edge ], [ 0, %.preheader394.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check547, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %.0440, i64 %index ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.lb, align 2, !tbaa !63
  %wide.load548 = load <8 x i16>, ptr %i.lc, align 2, !tbaa !63
  %i.ld = zext <8 x i16> %wide.load to <8 x i32>
  %i.le = zext <8 x i16> %wide.load548 to <8 x i32>
  %i.lf = shl nuw nsw <8 x i32> %i.ld, %broadcast.splat
  %i.lg = shl nuw nsw <8 x i32> %i.le, %broadcast.splat
  %i.lh = trunc <8 x i32> %i.lf to <8 x i16>
  %i.li = trunc <8 x i32> %i.lg to <8 x i16>
  store <8 x i16> %i.lh, ptr %i.lb, align 2, !tbaa !63
  store <8 x i16> %i.li, ptr %i.lc, align 2, !tbaa !63
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lj = icmp eq i64 %index.next, %n.vec
  br i1 %i.lj, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index552 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next554, %vec.epilog.vector.body ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %.0440, i64 %index552 ; 2 uses
  %wide.load553 = load <4 x i16>, ptr %i.lk, align 2, !tbaa !63
  %i.ll = zext <4 x i16> %wide.load553 to <4 x i32>
  %i.lm = shl nuw nsw <4 x i32> %i.ll, %broadcast.splat551
  %i.ln = trunc <4 x i32> %i.lm to <4 x i16>
  store <4 x i16> %i.ln, ptr %i.lk, align 2, !tbaa !63
  %index.next554 = add nuw i64 %index552, 4       ; 2 uses
  %i.lo = icmp eq i64 %index.next554, %n.vec549
  br i1 %i.lo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !101

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n555, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv480.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec549, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv480 = phi i64 [ %indvars.iv.next481, %vec.epilog.scalar.ph ], [ %indvars.iv480.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %.0440, i64 %indvars.iv480 ; 2 uses
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !63
  %i.lr = zext i16 %i.lq to i32
  %i.ls = shl nuw nsw i32 %i.lr, %.0287
  %i.lt = trunc i32 %i.ls to i16
  store i16 %i.lt, ptr %i.lp, align 2, !tbaa !63
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %exitcond484.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count483
  br i1 %exitcond484.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !102

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.lu = getelementptr inbounds [2 x i8], ptr %.0440, i64 %i.ky
  %i.lv = add nuw nsw i32 %.4309439, 1            ; 2 uses
  %exitcond485.not = icmp eq i32 %i.lv, %smax485
  br i1 %exitcond485.not, label %.loopexit, label %iter.check, !llvm.loop !103

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge443, %bb.ao, %.preheader394.lr.ph, %bb.an, %ff_mjpeg_handle_restart.exit, %bb.v, %bb.n, %bb.j, %bb.f, %bb.g, %bb.h, %bb.i, %.loopexit404, %bb.ag, %bb.af
  %.11 = phi i32 [ -1163346256, %bb.ag ], [ -1094995529, %bb.f ], [ -1094995529, %bb.j ], [ -1094995529, %bb.n ], [ %.10, %.loopexit404 ], [ %i.cm, %bb.v ], [ %i.dz, %ff_mjpeg_handle_restart.exit ], [ -1163346256, %bb.af ], [ -1094995529, %bb.i ], [ -1094995529, %bb.h ], [ -1094995529, %bb.g ], [ %.10, %bb.an ], [ %.10, %bb.ao ], [ %.10, %._crit_edge443 ], [ %.10, %.preheader394.lr.ph ], [ %.10, %._crit_edge ]
  tail call void @av_free(ptr noundef nonnull %i.x) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.e, %bb.c, %bb.a, %.loopexit
  %.0273 = phi i32 [ -1094995529, %bb.a ], [ %.11, %.loopexit ], [ -12, %bb.e ], [ -12, %bb.c ]
  ret i32 %.0273
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare void @ff_jpegls_reset_coding_parameters(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @ff_mjpeg_handle_restart(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !61   ; 3 uses
  br i1 %.not.i, label %bb.b, label %ff_mjpeg_should_restart.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %ff_mjpeg_should_restart.exit.thread10, label %ff_mjpeg_should_restart.exit.thread

ff_mjpeg_should_restart.exit.thread10:            ; preds = %bb.b
  store i32 0, ptr %i.c, align 4, !tbaa !61
  store i32 1, ptr %1, align 4, !tbaa !49
  br label %bb.c

ff_mjpeg_should_restart.exit.thread:              ; preds = %bb.b
  store i32 0, ptr %1, align 4, !tbaa !49
  br label %bb.d

ff_mjpeg_should_restart.exit:                     ; preds = %bb.a
  %i.f = icmp slt i32 %i.d, 1                     ; 3 uses
  %spec.select.i = select i1 %i.f, i32 %i.b, i32 %i.d
  %spec.select10.i = zext i1 %i.f to i32
  %i.g = add nsw i32 %spec.select.i, -1
  store i32 %i.g, ptr %i.c, align 4, !tbaa !61
  store i32 %spec.select10.i, ptr %1, align 4, !tbaa !49
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %ff_mjpeg_should_restart.exit.thread10, %ff_mjpeg_should_restart.exit
  %i.h = tail call i32 @ff_mjpeg_unescape_sos(ptr noundef nonnull %0) #9 ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ff_mjpeg_should_restart.exit.thread, %bb.c, %ff_mjpeg_should_restart.exit
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ %i.h, %bb.c ]
  ret i32 %.1
}

declare void @ff_jpegls_init_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @ls_decode_line(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 1, 4) %6, i32 noundef %7, i32 noundef range(i32 8, 17) %8) unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph346, label %.thread309

.lr.ph346:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 28
  %i.e = icmp eq i32 %8, 8                        ; 2 uses
  %i.f = sub nsw i32 %5, %6                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5908
  %i.j = sext i32 %7 to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5876
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5904 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2948 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5892 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5896 ; 2 uses
  %i.w = zext nneg i32 %6 to i64                  ; 20 uses
  %.not252296 = icmp sgt i32 %i.f, 0
  %ident.check480.not = icmp eq i32 %6, 1
  %ident.check.not = icmp eq i32 %6, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph346, %bb.cc
  %.0224344 = phi i32 [ 0, %.lr.ph346 ], [ %i.nx, %bb.cc ] ; 11 uses
  %.val = load i32, ptr %i.c, align 8, !tbaa !68
  %.val270 = load i32, ptr %i.d, align 4, !tbaa !69
  %.not324 = icmp sgt i32 %.val270, %.val
  br i1 %.not324, label %bb.c, label %.thread309

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %.0224344, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = sub nsw i32 %.0224344, %6
  %i.y = sext i32 %i.x to i64                     ; 4 uses
  %i.z = sext i32 %.0224344 to i64                ; 2 uses
  br i1 %i.e, label %bb.f, label %.thread

bb.e:                                             ; preds = %bb.c
  br i1 %i.e, label %.thread313, label %.thread295

.thread313:                                       ; preds = %bb.e
  %i.aa = load i8, ptr %2, align 1, !tbaa !13
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %3, i64 %i.y
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.z
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.y
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = zext i8 %i.aj to i32
  br label %bb.g

bb.g:                                             ; preds = %.thread313, %bb.f
  %i.al = phi i32 [ %i.ab, %.thread313 ], [ %i.ah, %bb.f ] ; 2 uses
  %i.am = phi i32 [ %i.ab, %.thread313 ], [ %i.ae, %bb.f ] ; 2 uses
  %i.an = phi i32 [ %4, %.thread313 ], [ %i.ak, %bb.f ] ; 2 uses
  %.not252 = icmp slt i32 %.0224344, %i.f
  br i1 %.not252, label %bb.i, label %bb.h

.thread:                                          ; preds = %bb.d
  %i.ao = getelementptr inbounds [2 x i8], ptr %3, i64 %i.y
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !63
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %2, i64 %i.z
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !63
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = getelementptr inbounds [2 x i8], ptr %2, i64 %i.y
  %i.av = load i16, ptr %i.au, align 2, !tbaa !63
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  %.not252409 = icmp slt i32 %.0224344, %i.f
  br i1 %.not252409, label %.thread298, label %.thread297

.thread295:                                       ; preds = %bb.e
  %i.ax = load i16, ptr %2, align 2, !tbaa !63
  %i.ay = zext i16 %i.ax to i32                   ; 4 uses
  br i1 %.not252296, label %.thread298, label %.thread297

bb.h:                                             ; preds = %bb.g
  %i.az = sext i32 %.0224344 to i64
  %i.ba = getelementptr inbounds i8, ptr %2, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.bc = zext i8 %i.bb to i32
  br label %bb.j

.thread297:                                       ; preds = %.thread, %.thread295
  %i.bd = phi i32 [ %i.ay, %.thread295 ], [ %i.at, %.thread ]
  %i.be = phi i32 [ %i.ay, %.thread295 ], [ %i.aq, %.thread ]
  %i.bf = phi i32 [ %4, %.thread295 ], [ %i.aw, %.thread ]
  %i.bg = sext i32 %.0224344 to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !63
  %i.bj = zext i16 %i.bi to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bk = add nsw i32 %.0224344, %6
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %2, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = zext i8 %i.bn to i32
  br label %bb.j

.thread298:                                       ; preds = %.thread, %.thread295
  %i.bp = phi i32 [ %i.ay, %.thread295 ], [ %i.at, %.thread ]
  %i.bq = phi i32 [ %i.ay, %.thread295 ], [ %i.aq, %.thread ]
  %i.br = phi i32 [ %4, %.thread295 ], [ %i.aw, %.thread ]
  %i.bs = add nsw i32 %.0224344, %6
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !63
  %i.bw = zext i16 %i.bv to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread298, %bb.h, %.thread297
  %i.bx = phi i32 [ %i.bf, %.thread297 ], [ %i.an, %bb.h ], [ %i.an, %bb.i ], [ %i.br, %.thread298 ] ; 5 uses
end_hunk_0
