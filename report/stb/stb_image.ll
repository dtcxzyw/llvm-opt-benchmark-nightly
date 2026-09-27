Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@load_jpeg_image:bb.a
  %i.dq = phi ptr [ %.pre, %.lr.ph392 ], [ %i.ov, %.loopexit ]
  %.0264391 = phi i32 [ 0, %.lr.ph392 ], [ %i.ou, %.loopexit ] ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !55
  %i.ds = mul i32 %.0264391, %i.w
  %i.dt = mul i32 %i.ds, %i.dr
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.du ; 12 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ay
  %indvars.iv417 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next418, %bb.ay ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv417 ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 36 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !419 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !425 ; 2 uses
  %i.eb = ashr i32 %i.ea, 1
  %.not289 = icmp slt i32 %i.dy, %i.eb            ; 2 uses
  %i.ec = load ptr, ptr %i.dw, align 16, !tbaa !424
  %i.ed = getelementptr inbounds nuw [96 x i8], ptr %i.ay, i64 %indvars.iv417 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !126
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 3 uses
  %.in = select i1 %.not289, ptr %i.eh, ptr %i.eg
  %i.ei = load ptr, ptr %.in, align 8, !tbaa !39
  %.in290 = select i1 %.not289, ptr %i.eg, ptr %i.eh
  %i.ej = load ptr, ptr %.in290, align 8, !tbaa !39
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.el = load i32, ptr %i.ek, align 16, !tbaa !420
  %i.em = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.en = load i32, ptr %i.em, align 8, !tbaa !426
  %i.eo = tail call ptr %i.ec(ptr noundef %i.ef, ptr noundef %i.ei, ptr noundef %i.ej, i32 noundef %i.el, i32 noundef %i.en) #37
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv417
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !39
  %i.eq = add nsw i32 %i.dy, 1                    ; 2 uses
  store i32 %i.eq, ptr %i.dx, align 4, !tbaa !419
  %.not291 = icmp slt i32 %i.eq, %i.ea
  br i1 %.not291, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph
  store i32 0, ptr %i.dx, align 4, !tbaa !419
  %i.er = load ptr, ptr %i.eg, align 16, !tbaa !422 ; 2 uses
  store ptr %i.er, ptr %i.eh, align 8, !tbaa !423
  %i.es = getelementptr inbounds nuw i8, ptr %i.dw, i64 40 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !421
  %i.eu = add nsw i32 %i.et, 1                    ; 2 uses
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !421
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !110
  %i.ex = icmp slt i32 %i.eu, %i.ew
  br i1 %i.ex, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !115
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.er, i64 %i.fa
  store ptr %i.fb, ptr %i.eg, align 16, !tbaa !422
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %.lr.ph
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count420
  br i1 %exitcond421.not, label %._crit_edge, label %.lr.ph, !llvm.loop !406

._crit_edge:                                      ; preds = %bb.ay
  br i1 %i.ai, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %._crit_edge
  %i.fc = load ptr, ptr %i.a, align 16, !tbaa !39 ; 5 uses
  %i.fd = load ptr, ptr %0, align 8, !tbaa !78    ; 9 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !64
  switch i32 %i.ff, label %.preheader [
    i32 3, label %bb.ba
    i32 4, label %bb.bc
  ]

.preheader:                                       ; preds = %bb.az
  %i.fg = load i32, ptr %i.fd, align 8, !tbaa !55
  %.not404 = icmp eq i32 %i.fg, 0
  br i1 %.not404, label %.loopexit, label %.lr.ph390

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ag, label %.preheader339, label %.loopexit.sink.split

.preheader339:                                    ; preds = %bb.ba
  %i.fh = load i32, ptr %i.fd, align 8, !tbaa !55
  %.not403 = icmp eq i32 %i.fh, 0
  br i1 %.not403, label %.loopexit, label %.lr.ph387

.lr.ph387:                                        ; preds = %.preheader339
  %i.fi = load ptr, ptr %i.dc, align 8, !tbaa !39
  %i.fj = load ptr, ptr %i.dd, align 16, !tbaa !39
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph387, %bb.bb
  %indvars.iv446 = phi i64 [ 0, %.lr.ph387 ], [ %indvars.iv.next447, %bb.bb ] ; 4 uses
  %.0260386 = phi ptr [ %i.dv, %.lr.ph387 ], [ %i.ft, %bb.bb ] ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv446
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !37
  store i8 %i.fl, ptr %.0260386, align 1, !tbaa !37
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv446
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !37
  %i.fo = getelementptr inbounds nuw i8, ptr %.0260386, i64 1
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !37
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv446
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !37
  %i.fr = getelementptr inbounds nuw i8, ptr %.0260386, i64 2
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !37
  %i.fs = getelementptr inbounds nuw i8, ptr %.0260386, i64 3
  store i8 -1, ptr %i.fs, align 1, !tbaa !37
  %i.ft = getelementptr inbounds nuw i8, ptr %.0260386, i64 %i.db
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %i.fu = load i32, ptr %i.fd, align 8, !tbaa !55
  %i.fv = zext i32 %i.fu to i64
  %i.fw = icmp samesign ult i64 %indvars.iv.next447, %i.fv
  br i1 %i.fw, label %bb.bb, label %.loopexit, !llvm.loop !407

bb.bc:                                            ; preds = %bb.az
  %i.fx = load i32, ptr %i.cy, align 4, !tbaa !82
  switch i32 %i.fx, label %.loopexit.sink.split [
    i32 0, label %.preheader341
    i32 2, label %bb.be
  ]

.preheader341:                                    ; preds = %bb.bc
  %i.fy = load i32, ptr %i.fd, align 8, !tbaa !55
  %.not402 = icmp eq i32 %i.fy, 0
  br i1 %.not402, label %.loopexit, label %.lr.ph384

.lr.ph384:                                        ; preds = %.preheader341
  %i.fz = load ptr, ptr %i.da, align 8, !tbaa !39
  %i.ga = load ptr, ptr %i.dc, align 8, !tbaa !39
  %i.gb = load ptr, ptr %i.dd, align 16, !tbaa !39
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph384, %bb.bd
  %indvars.iv443 = phi i64 [ 0, %.lr.ph384 ], [ %indvars.iv.next444, %bb.bd ] ; 5 uses
  %.1261383 = phi ptr [ %i.dv, %.lr.ph384 ], [ %i.hj, %bb.bd ] ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv443
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !37
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv443
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !37
  %i.gg = zext i8 %i.gf to i32
  %i.gh = zext i8 %i.gd to i32                    ; 3 uses
  %i.gi = mul nuw nsw i32 %i.gg, %i.gh
  %i.gj = add nuw nsw i32 %i.gi, 128              ; 2 uses
  %i.gk = lshr i32 %i.gj, 8
  %i.gl = add nuw nsw i32 %i.gk, %i.gj
  %i.gm = lshr i32 %i.gl, 8
  %i.gn = trunc nuw i32 %i.gm to i8
  store i8 %i.gn, ptr %.1261383, align 1, !tbaa !37
  %i.go = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv443
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !37
  %i.gq = zext i8 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.gq, %i.gh
  %i.gs = add nuw nsw i32 %i.gr, 128              ; 2 uses
  %i.gt = lshr i32 %i.gs, 8
  %i.gu = add nuw nsw i32 %i.gt, %i.gs
  %i.gv = lshr i32 %i.gu, 8
  %i.gw = trunc nuw i32 %i.gv to i8
  %i.gx = getelementptr inbounds nuw i8, ptr %.1261383, i64 1
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !37
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv443
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !37
  %i.ha = zext i8 %i.gz to i32
  %i.hb = mul nuw nsw i32 %i.ha, %i.gh
  %i.hc = add nuw nsw i32 %i.hb, 128              ; 2 uses
  %i.hd = lshr i32 %i.hc, 8
  %i.he = add nuw nsw i32 %i.hd, %i.hc
  %i.hf = lshr i32 %i.he, 8
  %i.hg = trunc nuw i32 %i.hf to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %.1261383, i64 2
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !37
  %i.hi = getelementptr inbounds nuw i8, ptr %.1261383, i64 3
  store i8 -1, ptr %i.hi, align 1, !tbaa !37
  %i.hj = getelementptr inbounds nuw i8, ptr %.1261383, i64 %i.db
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %i.hk = load i32, ptr %i.fd, align 8, !tbaa !55
  %i.hl = zext i32 %i.hk to i64
  %i.hm = icmp samesign ult i64 %indvars.iv.next444, %i.hl
  br i1 %i.hm, label %bb.bd, label %.loopexit, !llvm.loop !408

bb.be:                                            ; preds = %bb.bc
  %i.hn = load ptr, ptr %i.de, align 8, !tbaa !80
  %i.ho = load ptr, ptr %i.dc, align 8, !tbaa !39
  %i.hp = load ptr, ptr %i.dd, align 16, !tbaa !39
  %i.hq = load i32, ptr %i.fd, align 8, !tbaa !55
  tail call void %i.hn(ptr noundef nonnull %i.dv, ptr noundef %i.fc, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef %i.hq, i32 noundef %i.w) #37
  %i.hr = load ptr, ptr %0, align 8, !tbaa !78    ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !55
  %.not401 = icmp eq i32 %i.hs, 0
  br i1 %.not401, label %.loopexit, label %.lver.check

.lver.check:                                      ; preds = %bb.be
  %i.ht = load ptr, ptr %i.da, align 8, !tbaa !39
  br label %bb.bf

bb.bf:                                            ; preds = %.lver.check, %bb.bf
  %indvars.iv440.lver.orig = phi i64 [ 0, %.lver.check ], [ %indvars.iv.next441.lver.orig, %bb.bf ] ; 2 uses
  %.2262379.lver.orig = phi ptr [ %i.dv, %.lver.check ], [ %i.ja, %bb.bf ] ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv440.lver.orig
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !37
  %i.hw = load i8, ptr %.2262379.lver.orig, align 1, !tbaa !37
  %i.hx = xor i8 %i.hw, -1
  %i.hy = zext i8 %i.hx to i32
  %i.hz = zext i8 %i.hv to i32                    ; 3 uses
  %i.ia = mul nuw nsw i32 %i.hy, %i.hz
  %i.ib = add nuw nsw i32 %i.ia, 128              ; 2 uses
  %i.ic = lshr i32 %i.ib, 8
  %i.id = add nuw nsw i32 %i.ic, %i.ib
  %i.ie = lshr i32 %i.id, 8
  %i.if = trunc nuw i32 %i.ie to i8
  store i8 %i.if, ptr %.2262379.lver.orig, align 1, !tbaa !37
  %i.ig = getelementptr inbounds nuw i8, ptr %.2262379.lver.orig, i64 1 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !37
  %i.ii = xor i8 %i.ih, -1
  %i.ij = zext i8 %i.ii to i32
  %i.ik = mul nuw nsw i32 %i.ij, %i.hz
  %i.il = add nuw nsw i32 %i.ik, 128              ; 2 uses
  %i.im = lshr i32 %i.il, 8
  %i.in = add nuw nsw i32 %i.im, %i.il
  %i.io = lshr i32 %i.in, 8
  %i.ip = trunc nuw i32 %i.io to i8
  store i8 %i.ip, ptr %i.ig, align 1, !tbaa !37
  %i.iq = getelementptr inbounds nuw i8, ptr %.2262379.lver.orig, i64 2 ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !37
  %i.is = xor i8 %i.ir, -1
  %i.it = zext i8 %i.is to i32
  %i.iu = mul nuw nsw i32 %i.it, %i.hz
  %i.iv = add nuw nsw i32 %i.iu, 128              ; 2 uses
  %i.iw = lshr i32 %i.iv, 8
  %i.ix = add nuw nsw i32 %i.iw, %i.iv
  %i.iy = lshr i32 %i.ix, 8
  %i.iz = trunc nuw i32 %i.iy to i8
  store i8 %i.iz, ptr %i.iq, align 1, !tbaa !37
  %i.ja = getelementptr inbounds nuw i8, ptr %.2262379.lver.orig, i64 %i.db
  %indvars.iv.next441.lver.orig = add nuw nsw i64 %indvars.iv440.lver.orig, 1 ; 2 uses
  %i.jb = load i32, ptr %i.hr, align 8, !tbaa !55
  %i.jc = zext i32 %i.jb to i64
  %i.jd = icmp samesign ult i64 %indvars.iv.next441.lver.orig, %i.jc
  br i1 %i.jd, label %bb.bf, label %.loopexit, !llvm.loop !409

.lr.ph390:                                        ; preds = %.preheader, %.lr.ph390
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %.lr.ph390 ], [ 0, %.preheader ] ; 2 uses
  %.3263389 = phi ptr [ %i.jj, %.lr.ph390 ], [ %i.dv, %.preheader ] ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv449
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !37  ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.3263389, i64 2
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !37
  %i.jh = getelementptr inbounds nuw i8, ptr %.3263389, i64 1
  store i8 %i.jf, ptr %i.jh, align 1, !tbaa !37
  store i8 %i.jf, ptr %.3263389, align 1, !tbaa !37
  %i.ji = getelementptr inbounds nuw i8, ptr %.3263389, i64 3
  store i8 -1, ptr %i.ji, align 1, !tbaa !37
  %i.jj = getelementptr inbounds nuw i8, ptr %.3263389, i64 %i.db
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %i.jk = load i32, ptr %i.fd, align 8, !tbaa !55
  %i.jl = zext i32 %i.jk to i64
  %i.jm = icmp samesign ult i64 %indvars.iv.next450, %i.jl
  br i1 %i.jm, label %.lr.ph390, label %.loopexit, !llvm.loop !410

bb.bg:                                            ; preds = %._crit_edge
  %i.jn = load ptr, ptr %0, align 8, !tbaa !78    ; 11 uses
  br i1 %i.ag, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !55
  %.not400 = icmp eq i32 %i.jo, 0                 ; 2 uses
  br i1 %i.cz, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.bh
  br i1 %.not400, label %.loopexit, label %.lr.ph374

.lr.ph374:                                        ; preds = %.preheader346
  %i.jp = load ptr, ptr %i.a, align 16, !tbaa !39
  %i.jq = load ptr, ptr %i.dc, align 8, !tbaa !39
  %i.jr = load ptr, ptr %i.dd, align 16, !tbaa !39
  br label %bb.bj

.preheader344:                                    ; preds = %bb.bh
  br i1 %.not400, label %.loopexit, label %.lr.ph377

.lr.ph377:                                        ; preds = %.preheader344
  %i.js = load ptr, ptr %i.a, align 16, !tbaa !39
  %i.jt = load ptr, ptr %i.dc, align 8, !tbaa !39
  %i.ju = load ptr, ptr %i.dd, align 16, !tbaa !39
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph377, %bb.bi
  %indvars.iv437 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next438, %bb.bi ] ; 4 uses
  %.4376 = phi ptr [ %i.dv, %.lr.ph377 ], [ %i.kl, %bb.bi ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 %indvars.iv437
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !37
  %i.jx = zext i8 %i.jw to i16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv437
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !37
  %i.ka = zext i8 %i.jz to i16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 %indvars.iv437
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !37
  %i.kd = zext i8 %i.kc to i16
  %i.ke = mul nuw nsw i16 %i.jx, 77
  %i.kf = mul nuw i16 %i.ka, 150
  %i.kg = add nuw i16 %i.kf, %i.ke
  %i.kh = mul nuw nsw i16 %i.kd, 29
  %i.ki = add nuw i16 %i.kg, %i.kh
  %i.kj = lshr i16 %i.ki, 8
  %i.kk = trunc nuw i16 %i.kj to i8
  %i.kl = getelementptr inbounds nuw i8, ptr %.4376, i64 1
  store i8 %i.kk, ptr %.4376, align 1, !tbaa !37
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %i.km = load i32, ptr %i.jn, align 8, !tbaa !55
  %i.kn = zext i32 %i.km to i64
  %i.ko = icmp samesign ult i64 %indvars.iv.next438, %i.kn
  br i1 %i.ko, label %bb.bi, label %.loopexit, !llvm.loop !411

bb.bj:                                            ; preds = %.lr.ph374, %bb.bj
  %indvars.iv434 = phi i64 [ 0, %.lr.ph374 ], [ %indvars.iv.next435, %bb.bj ] ; 4 uses
  %.5373 = phi ptr [ %i.dv, %.lr.ph374 ], [ %i.lg, %bb.bj ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv434
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !37
  %i.kr = zext i8 %i.kq to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv434
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !37
  %i.ku = zext i8 %i.kt to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv434
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !37
  %i.kx = zext i8 %i.kw to i16
  %i.ky = mul nuw nsw i16 %i.kr, 77
  %i.kz = mul nuw i16 %i.ku, 150
  %i.la = add nuw i16 %i.kz, %i.ky
  %i.lb = mul nuw nsw i16 %i.kx, 29
  %i.lc = add nuw i16 %i.la, %i.lb
  %i.ld = lshr i16 %i.lc, 8
  %i.le = trunc nuw i16 %i.ld to i8
  store i8 %i.le, ptr %.5373, align 1, !tbaa !37
  %i.lf = getelementptr inbounds nuw i8, ptr %.5373, i64 1
  store i8 -1, ptr %i.lf, align 1, !tbaa !37
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.5373, i64 2
  %i.lh = load i32, ptr %i.jn, align 8, !tbaa !55
  %i.li = zext i32 %i.lh to i64
  %i.lj = icmp samesign ult i64 %indvars.iv.next435, %i.li
  br i1 %i.lj, label %bb.bj, label %.loopexit, !llvm.loop !412

bb.bk:                                            ; preds = %bb.bg
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !64
  %i.lm = icmp eq i32 %i.ll, 4
  br i1 %i.lm, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.ln = load i32, ptr %i.cy, align 4, !tbaa !82
  switch i32 %i.ln, label %bb.bo [
    i32 0, label %.preheader348
    i32 2, label %.preheader350
  ]

.preheader348:                                    ; preds = %bb.bl
  %i.lo = load i32, ptr %i.jn, align 8, !tbaa !55
  %.not398 = icmp eq i32 %i.lo, 0
  br i1 %.not398, label %.loopexit, label %.lr.ph371

.lr.ph371:                                        ; preds = %.preheader348
  %i.lp = load ptr, ptr %i.da, align 8, !tbaa !39
  %i.lq = load ptr, ptr %i.a, align 16, !tbaa !39
  %i.lr = load ptr, ptr %i.dc, align 8, !tbaa !39
  %i.ls = load ptr, ptr %i.dd, align 16, !tbaa !39
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph371, %bb.bm
  %indvars.iv431 = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next432, %bb.bm ] ; 5 uses
  %.6370 = phi ptr [ %i.dv, %.lr.ph371 ], [ %i.nc, %bb.bm ] ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 %indvars.iv431
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !37
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 %indvars.iv431
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !37
  %i.lx = zext i8 %i.lw to i32
  %i.ly = zext i8 %i.lu to i32                    ; 3 uses
  %i.lz = mul nuw nsw i32 %i.lx, %i.ly
  %i.ma = add nuw nsw i32 %i.lz, 128              ; 2 uses
  %i.mb = lshr i32 %i.ma, 8
  %i.mc = add nuw nsw i32 %i.mb, %i.ma
  %i.md = lshr i32 %i.mc, 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.lr, i64 %indvars.iv431
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !37
  %i.mg = zext i8 %i.mf to i32
  %i.mh = mul nuw nsw i32 %i.mg, %i.ly
  %i.mi = add nuw nsw i32 %i.mh, 128              ; 2 uses
  %i.mj = lshr i32 %i.mi, 8
  %i.mk = add nuw nsw i32 %i.mj, %i.mi
  %i.ml = lshr i32 %i.mk, 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ls, i64 %indvars.iv431
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !37
  %i.mo = zext i8 %i.mn to i32
  %i.mp = mul nuw nsw i32 %i.mo, %i.ly
  %i.mq = add nuw nsw i32 %i.mp, 128              ; 2 uses
  %i.mr = lshr i32 %i.mq, 8
  %i.ms = add nuw nsw i32 %i.mr, %i.mq
end_hunk_0
