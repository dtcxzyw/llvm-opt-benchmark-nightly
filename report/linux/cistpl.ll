inline.NumInlined: 81
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 25
begin_hunk_0_@pcmcia_parse_tuple:bb.a
  store i8 %.lobit.i, ptr %i.et, align 1
  %i.eu = load i8, ptr %.val38, align 1
  %i.ev = and i8 %i.eu, 7
  switch i8 %i.ev, label %parse_device.exit [
    i8 0, label %.loopexit.sink.split.i
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.at
    i8 4, label %bb.au
    i8 7, label %bb.av
  ]

bb.ar:                                            ; preds = %bb.aq
  br label %.loopexit.sink.split.i

bb.as:                                            ; preds = %bb.aq
  br label %.loopexit.sink.split.i

bb.at:                                            ; preds = %bb.aq
  br label %.loopexit.sink.split.i

bb.au:                                            ; preds = %bb.aq
  br label %.loopexit.sink.split.i

bb.av:                                            ; preds = %bb.aq
  %i.ew = icmp eq i8 %i.b, 1
  br i1 %i.ew, label %parse_device.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ex = getelementptr i8, ptr %.val38, i64 1    ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = lshr i32 %i.ez, 3
  %i.fb = and i32 %i.fa, 15
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr i8, ptr @mantissa, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 -1
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = zext i8 %i.ff to i32
  %i.fh = and i32 %i.ez, 7
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr [4 x i8], ptr @exponent, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = mul i32 %i.fk, %i.fg
  %i.fm = udiv i32 %i.fl, 10
  %i.fn = getelementptr i8, ptr %1, i64 8
  store i32 %i.fm, ptr %i.fn, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %.1.i = phi ptr [ %i.ex, %bb.aw ], [ %i.fp, %bb.ay ] ; 3 uses
  %i.fo = load i8, ptr %.1.i, align 1
  %.not.i = icmp sgt i8 %i.fo, -1
  br i1 %.not.i, label %.loopexit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fp = getelementptr i8, ptr %.1.i, i64 1      ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.j
  br i1 %i.fq, label %parse_device.exit, label %bb.ax, !llvm.loop !38

.loopexit.sink.split.i:                           ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.sink51.i = phi i32 [ 100, %bb.au ], [ 150, %bb.at ], [ 200, %bb.as ], [ 250, %bb.ar ], [ 0, %bb.aq ]
  %i.fr = getelementptr i8, ptr %1, i64 8
  store i32 %.sink51.i, ptr %i.fr, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ax, %.loopexit.sink.split.i
  %.2.i = phi ptr [ %.val38, %.loopexit.sink.split.i ], [ %.1.i, %bb.ax ] ; 3 uses
  %i.fs = getelementptr i8, ptr %.2.i, i64 1      ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.j
  br i1 %i.ft, label %parse_device.exit, label %bb.az

bb.az:                                            ; preds = %.loopexit.i
  %i.fu = load i8, ptr %i.fs, align 1             ; 3 uses
  %i.fv = icmp eq i8 %i.fu, -1
  br i1 %i.fv, label %parse_device.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fw = and i8 %i.fu, 7                         ; 2 uses
  %i.fx = icmp eq i8 %i.fw, 7
  br i1 %i.fx, label %parse_device.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fy = lshr i8 %i.fu, 3
  %narrow.i = add nuw nsw i8 %i.fy, 1
  %i.fz = zext nneg i8 %narrow.i to i32
  %i.ga = shl nuw nsw i8 %i.fw, 1
  %narrow56.i = add nuw nsw i8 %i.ga, 9
  %i.gb = zext nneg i8 %narrow56.i to i32
  %i.gc = shl nuw nsw i32 %i.fz, %i.gb
  %i.gd = getelementptr i8, ptr %1, i64 12
  store i32 %i.gc, ptr %i.gd, align 4
  store i8 1, ptr %1, align 4
  %i.ge = getelementptr i8, ptr %.2.i, i64 2      ; 5 uses
  %i.gf = icmp eq ptr %i.ge, %i.j
  br i1 %i.gf, label %parse_device.exit, label %bb.d

bb.bc:                                            ; preds = %bb.b
  %i.gg = icmp ult i8 %i.b, 5
  br i1 %i.gg, label %parse_device.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gh = getelementptr i8, ptr %0, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8            ; 3 uses
  %i.gj = getelementptr i8, ptr %0, i64 16
  %i.gk = load i32, ptr %i.gj, align 8
  %.val9.i = load i16, ptr %i.gi, align 1
  %i.gl = trunc i32 %i.gk to i16
  %i.gm = add i16 %i.gl, -2
  %i.gn = add i16 %i.gm, %.val9.i
  store i16 %i.gn, ptr %1, align 2
  %i.go = getelementptr i8, ptr %i.gi, i64 2
  %.val.i = load i16, ptr %i.go, align 1
  %i.gp = getelementptr i8, ptr %1, i64 2
  store i16 %.val.i, ptr %i.gp, align 2
  %i.gq = getelementptr i8, ptr %i.gi, i64 4
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = getelementptr i8, ptr %1, i64 4
  store i8 %i.gr, ptr %i.gs, align 2
  br label %parse_device.exit

bb.be:                                            ; preds = %bb.b, %bb.b
  %i.gt = icmp ult i8 %i.b, 4
  br i1 %i.gt, label %parse_device.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gu = getelementptr i8, ptr %0, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8
  %.val.i51 = load i32, ptr %i.gv, align 1
  store i32 %.val.i51, ptr %1, align 4
  br label %parse_device.exit

bb.bg:                                            ; preds = %bb.b
  %i.gw = getelementptr i8, ptr %0, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8            ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1             ; 5 uses
  store i8 %i.gy, ptr %1, align 4
  %i.gz = load i8, ptr %i.a, align 8
  %i.ha = zext i8 %i.gz to i32
  %i.hb = zext i8 %i.gy to i32
  %i.hc = mul nuw nsw i32 %i.hb, 5
  %.not.i53 = icmp samesign ult i32 %i.hc, %i.ha
  br i1 %.not.i53, label %bb.bh, label %parse_device.exit

bb.bh:                                            ; preds = %bb.bg
  %.not21.i = icmp eq i8 %i.gy, 0
  br i1 %.not21.i, label %parse_device.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bh
  %i.hd = getelementptr i8, ptr %i.gx, i64 1      ; 2 uses
  %i.he = getelementptr i8, ptr %1, i64 4         ; 5 uses
  %wide.trip.count.i = zext i8 %i.gy to i64       ; 2 uses
  %xtraiter564 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.hf = icmp ult i8 %i.gy, 4
  br i1 %i.hf, label %.epil.preheader563, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter568 = and i64 %wide.trip.count.i, 252
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.bi ] ; 5 uses
  %.01719.i = phi ptr [ %i.hd, %.lr.ph.i.new ], [ %i.ic, %bb.bi ] ; 9 uses
  %niter569 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter569.next.3, %bb.bi ]
  %i.hg = load i8, ptr %.01719.i, align 1
  %i.hh = getelementptr [8 x i8], ptr %i.he, i64 %indvars.iv.i ; 2 uses
  store i8 %i.hg, ptr %i.hh, align 4
  %i.hi = getelementptr i8, ptr %.01719.i, i64 1
  %.val.i55 = load i32, ptr %i.hi, align 1
  %i.hj = getelementptr i8, ptr %i.hh, i64 4
  store i32 %.val.i55, ptr %i.hj, align 4
  %i.hk = getelementptr i8, ptr %.01719.i, i64 5
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = getelementptr [8 x i8], ptr %i.he, i64 %indvars.iv.i ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 8
  store i8 %i.hl, ptr %i.hn, align 4
  %i.ho = getelementptr i8, ptr %.01719.i, i64 6
  %.val.i55.1 = load i32, ptr %i.ho, align 1
  %i.hp = getelementptr i8, ptr %i.hm, i64 12
  store i32 %.val.i55.1, ptr %i.hp, align 4
  %i.hq = getelementptr i8, ptr %.01719.i, i64 10
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = getelementptr [8 x i8], ptr %i.he, i64 %indvars.iv.i ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 16
  store i8 %i.hr, ptr %i.ht, align 4
  %i.hu = getelementptr i8, ptr %.01719.i, i64 11
  %.val.i55.2 = load i32, ptr %i.hu, align 1
  %i.hv = getelementptr i8, ptr %i.hs, i64 20
  store i32 %.val.i55.2, ptr %i.hv, align 4
  %i.hw = getelementptr i8, ptr %.01719.i, i64 15
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = getelementptr [8 x i8], ptr %i.he, i64 %indvars.iv.i ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 24
  store i8 %i.hx, ptr %i.hz, align 4
  %i.ia = getelementptr i8, ptr %.01719.i, i64 16
  %.val.i55.3 = load i32, ptr %i.ia, align 1
  %i.ib = getelementptr i8, ptr %i.hy, i64 28
  store i32 %.val.i55.3, ptr %i.ib, align 4
  %i.ic = getelementptr i8, ptr %.01719.i, i64 20 ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter569.next.3 = add nuw i64 %niter569, 4     ; 2 uses
  %niter569.ncmp.3 = icmp eq i64 %niter569.next.3, %unroll_iter568
  br i1 %niter569.ncmp.3, label %parse_device.exit.loopexit471.unr-lcssa, label %bb.bi, !llvm.loop !39

bb.bj:                                            ; preds = %bb.b
  %i.id = getelementptr i8, ptr %0, i64 32
  %.val40 = load ptr, ptr %i.id, align 8          ; 4 uses
  %i.ie = zext i8 %i.b to i64
  %i.if = getelementptr i8, ptr %.val40, i64 %i.ie ; 8 uses
  %i.ig = load i8, ptr %.val40, align 1
  store i8 %i.ig, ptr %1, align 1
  %i.ih = getelementptr i8, ptr %.val40, i64 1
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = getelementptr i8, ptr %1, i64 1
  store i8 %i.ii, ptr %i.ij, align 1
  %i.ik = getelementptr i8, ptr %.val40, i64 2    ; 3 uses
  %.not.i56 = icmp ult ptr %i.ik, %i.if
  br i1 %.not.i56, label %.preheader.preheader.i.i, label %parse_device.exit

.preheader.preheader.i.i:                         ; preds = %bb.bj
  %i.il = getelementptr i8, ptr %1, i64 7         ; 4 uses
  %i.im = getelementptr i8, ptr %1, i64 3
  %i.in = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %i.io = load i8, ptr %i.ik, align 1
  %i.ip = icmp eq i8 %i.io, -1
  br i1 %i.ip, label %bb.bz, label %bb.bk

bb.bk:                                            ; preds = %.preheader.preheader.i.i
  store i8 0, ptr %i.im, align 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  %.131.i.i = phi ptr [ %i.ik, %bb.bk ], [ %i.iw, %bb.bm ] ; 4 uses
  %.127.i.i = phi i32 [ 0, %bb.bk ], [ %i.is, %bb.bm ] ; 2 uses
  %i.iq = load i8, ptr %.131.i.i, align 1         ; 2 uses
  %i.ir = icmp eq i8 %i.iq, -1
  %spec.select.i.i = select i1 %i.ir, i8 0, i8 %i.iq
  %i.is = add i32 %.127.i.i, 1                    ; 3 uses
  %i.it = sext i32 %.127.i.i to i64
  %i.iu = getelementptr i8, ptr %i.il, i64 %i.it
  store i8 %spec.select.i.i, ptr %i.iu, align 1
  %i.iv = load i8, ptr %.131.i.i, align 1         ; 2 uses
  %.off.i.i = add i8 %i.iv, -1
  %switch.i.i = icmp ult i8 %.off.i.i, -2
  br i1 %switch.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.iw = getelementptr i8, ptr %.131.i.i, i64 1  ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.if
  br i1 %i.ix, label %parse_device.exit, label %bb.bl

bb.bn:                                            ; preds = %bb.bl
  %i.iy = icmp ne i8 %i.iv, -1
  %i.iz = getelementptr i8, ptr %.131.i.i, i64 1  ; 3 uses
  %i.ja = icmp ne ptr %i.iz, %i.if
  %or.cond.not52.i.i = and i1 %i.ja, %i.iy
  br i1 %or.cond.not52.i.i, label %.preheader.i.i.1, label %bb.bz

.preheader.i.i.1:                                 ; preds = %bb.bn
  %i.jb = load i8, ptr %i.iz, align 1
  %i.jc = icmp eq i8 %i.jb, -1
  br i1 %i.jc, label %bb.bz, label %bb.bo

bb.bo:                                            ; preds = %.preheader.i.i.1
  %i.jd = trunc i32 %i.is to i8
  %i.je = getelementptr i8, ptr %1, i64 4
  store i8 %i.jd, ptr %i.je, align 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.br, %bb.bo
  %.131.i.i.1 = phi ptr [ %i.iz, %bb.bo ], [ %i.jo, %bb.br ] ; 4 uses
  %.127.i.i.1 = phi i32 [ %i.is, %bb.bo ], [ %i.jh, %bb.br ] ; 2 uses
  %i.jf = load i8, ptr %.131.i.i.1, align 1       ; 2 uses
  %i.jg = icmp eq i8 %i.jf, -1
  %spec.select.i.i.1 = select i1 %i.jg, i8 0, i8 %i.jf
  %i.jh = add i32 %.127.i.i.1, 1                  ; 3 uses
  %i.ji = sext i32 %.127.i.i.1 to i64
  %i.jj = getelementptr i8, ptr %i.il, i64 %i.ji
  store i8 %spec.select.i.i.1, ptr %i.jj, align 1
  %i.jk = load i8, ptr %.131.i.i.1, align 1       ; 2 uses
  %.off.i.i.1 = add i8 %i.jk, -1
  %switch.i.i.1 = icmp ult i8 %.off.i.i.1, -2
  br i1 %switch.i.i.1, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jl = icmp ne i8 %i.jk, -1
  %i.jm = getelementptr i8, ptr %.131.i.i.1, i64 1 ; 3 uses
  %i.jn = icmp ne ptr %i.jm, %i.if
  %or.cond.not52.i.i.1 = and i1 %i.jn, %i.jl
  br i1 %or.cond.not52.i.i.1, label %.preheader.i.i.2, label %bb.bz

bb.br:                                            ; preds = %bb.bp
  %i.jo = getelementptr i8, ptr %.131.i.i.1, i64 1 ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.if
  br i1 %i.jp, label %parse_device.exit, label %bb.bp

.preheader.i.i.2:                                 ; preds = %bb.bq
  %i.jq = load i8, ptr %i.jm, align 1
  %i.jr = icmp eq i8 %i.jq, -1
  br i1 %i.jr, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %.preheader.i.i.2
  %i.js = trunc i32 %i.jh to i8
  %i.jt = getelementptr i8, ptr %1, i64 5
  store i8 %i.js, ptr %i.jt, align 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %.131.i.i.2 = phi ptr [ %i.jm, %bb.bs ], [ %i.kd, %bb.bv ] ; 4 uses
  %.127.i.i.2 = phi i32 [ %i.jh, %bb.bs ], [ %i.jw, %bb.bv ] ; 2 uses
  %i.ju = load i8, ptr %.131.i.i.2, align 1       ; 2 uses
  %i.jv = icmp eq i8 %i.ju, -1
  %spec.select.i.i.2 = select i1 %i.jv, i8 0, i8 %i.ju
  %i.jw = add i32 %.127.i.i.2, 1                  ; 3 uses
  %i.jx = sext i32 %.127.i.i.2 to i64
  %i.jy = getelementptr i8, ptr %i.il, i64 %i.jx
  store i8 %spec.select.i.i.2, ptr %i.jy, align 1
  %i.jz = load i8, ptr %.131.i.i.2, align 1       ; 2 uses
  %.off.i.i.2 = add i8 %i.jz, -1
  %switch.i.i.2 = icmp ult i8 %.off.i.i.2, -2
  br i1 %switch.i.i.2, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ka = icmp ne i8 %i.jz, -1
  %i.kb = getelementptr i8, ptr %.131.i.i.2, i64 1 ; 3 uses
  %i.kc = icmp ne ptr %i.kb, %i.if
  %or.cond.not52.i.i.2 = and i1 %i.kc, %i.ka
  br i1 %or.cond.not52.i.i.2, label %.preheader.i.i.3, label %bb.bz

bb.bv:                                            ; preds = %bb.bt
  %i.kd = getelementptr i8, ptr %.131.i.i.2, i64 1 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.if
  br i1 %i.ke, label %parse_device.exit, label %bb.bt

.preheader.i.i.3:                                 ; preds = %bb.bu
  %i.kf = load i8, ptr %i.kb, align 1
  %i.kg = icmp eq i8 %i.kf, -1
  br i1 %i.kg, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %.preheader.i.i.3
  %i.kh = trunc i32 %i.jw to i8
  %i.ki = getelementptr i8, ptr %1, i64 6
  store i8 %i.kh, ptr %i.ki, align 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.by, %bb.bw
  %.131.i.i.3 = phi ptr [ %i.kb, %bb.bw ], [ %i.kp, %bb.by ] ; 3 uses
  %.127.i.i.3 = phi i32 [ %i.jw, %bb.bw ], [ %i.ko, %bb.by ] ; 2 uses
  %i.kj = load i8, ptr %.131.i.i.3, align 1       ; 2 uses
  %i.kk = icmp eq i8 %i.kj, -1
  %spec.select.i.i.3 = select i1 %i.kk, i8 0, i8 %i.kj
  %i.kl = sext i32 %.127.i.i.3 to i64
  %i.km = getelementptr i8, ptr %i.il, i64 %i.kl
  store i8 %spec.select.i.i.3, ptr %i.km, align 1
  %i.kn = load i8, ptr %.131.i.i.3, align 1
  %.off.i.i.3 = add i8 %i.kn, -1
  %switch.i.i.3 = icmp ult i8 %.off.i.i.3, -2
  br i1 %switch.i.i.3, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ko = add i32 %.127.i.i.3, 1
  %i.kp = getelementptr i8, ptr %.131.i.i.3, i64 1 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.if
  br i1 %i.kq, label %parse_device.exit, label %bb.bx

bb.bz:                                            ; preds = %bb.bx, %.preheader.i.i.3, %bb.bu, %.preheader.i.i.2, %bb.bq, %.preheader.i.i.1, %bb.bn, %.preheader.preheader.i.i
  %i.kr = phi i32 [ -22, %.preheader.preheader.i.i ], [ -22, %bb.bn ], [ -22, %.preheader.i.i.1 ], [ -22, %bb.bq ], [ -22, %.preheader.i.i.2 ], [ -22, %bb.bu ], [ -22, %.preheader.i.i.3 ], [ 0, %bb.bx ]
  %.1.in.i.i = phi i8 [ 0, %.preheader.preheader.i.i ], [ 1, %bb.bn ], [ 1, %.preheader.i.i.1 ], [ 2, %bb.bq ], [ 2, %.preheader.i.i.2 ], [ 3, %bb.bu ], [ 3, %.preheader.i.i.3 ], [ 4, %bb.bx ]
  %.not.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i, label %parse_device.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i8 %.1.in.i.i, ptr %i.in, align 1
  br label %parse_device.exit

bb.cb:                                            ; preds = %bb.b
  %i.ks = getelementptr i8, ptr %0, i64 32
  %.val42 = load ptr, ptr %i.ks, align 8          ; 3 uses
  %i.kt = zext i8 %i.b to i64
  %i.ku = getelementptr i8, ptr %.val42, i64 %i.kt ; 7 uses
  %i.kv = getelementptr i8, ptr %1, i64 5         ; 4 uses
  %i.kw = getelementptr i8, ptr %1, i64 1
  %i.kx = icmp eq i8 %i.b, 0
  br i1 %i.kx, label %parse_device.exit, label %.preheader.i.i58

.preheader.i.i58:                                 ; preds = %bb.cb
  %i.ky = load i8, ptr %.val42, align 1
  %i.kz = icmp eq i8 %i.ky, -1
  br i1 %i.kz, label %bb.cr, label %bb.cc

bb.cc:                                            ; preds = %.preheader.i.i58
  store i8 0, ptr %i.kw, align 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ce, %bb.cc
  %.131.i.i63 = phi ptr [ %.val42, %bb.cc ], [ %i.lg, %bb.ce ] ; 4 uses
  %.127.i.i64 = phi i32 [ 0, %bb.cc ], [ %i.lc, %bb.ce ] ; 2 uses
  %i.la = load i8, ptr %.131.i.i63, align 1       ; 2 uses
  %i.lb = icmp eq i8 %i.la, -1
  %spec.select.i.i65 = select i1 %i.lb, i8 0, i8 %i.la
  %i.lc = add i32 %.127.i.i64, 1                  ; 3 uses
end_hunk_0
begin_hunk_1_@pcmcia_parse_tuple:bb.a
bb.cu:                                            ; preds = %.lr.ph.i72
  %i.no = load i8, ptr %i.nm, align 1
  %i.np = getelementptr i8, ptr %1, i64 3
  store i8 %i.no, ptr %i.np, align 1
  %i.nq = getelementptr i8, ptr %.val44, i64 3
  %i.nr = load i8, ptr %i.nq, align 1
  %i.ns = getelementptr i8, ptr %1, i64 4
  store i8 %i.nr, ptr %i.ns, align 1
  %i.nt = getelementptr i8, ptr %.val44, i64 4    ; 2 uses
  %i.nu = icmp ugt ptr %i.nt, %i.nf
  br i1 %i.nu, label %parse_jedec.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nv = load i8, ptr %i.nt, align 1
  %i.nw = getelementptr i8, ptr %1, i64 5
  store i8 %i.nv, ptr %i.nw, align 1
  %i.nx = getelementptr i8, ptr %.val44, i64 5
  %i.ny = load i8, ptr %i.nx, align 1
  %i.nz = getelementptr i8, ptr %1, i64 6
  store i8 %i.ny, ptr %i.nz, align 1
  %i.oa = getelementptr i8, ptr %.val44, i64 6    ; 2 uses
  %i.ob = icmp ugt ptr %i.oa, %i.nf
  br i1 %i.ob, label %parse_jedec.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.oc = load i8, ptr %i.oa, align 1
  %i.od = getelementptr i8, ptr %1, i64 7
  store i8 %i.oc, ptr %i.od, align 1
  %i.oe = getelementptr i8, ptr %.val44, i64 7
  %i.of = load i8, ptr %i.oe, align 1
  %i.og = getelementptr i8, ptr %1, i64 8
  store i8 %i.of, ptr %i.og, align 1
  br label %parse_jedec.exit

parse_jedec.exit:                                 ; preds = %.lr.ph.i72, %bb.cu, %bb.cv, %bb.cw, %bb.ct
  %.0.lcssa.i = phi i8 [ 0, %bb.ct ], [ 1, %.lr.ph.i72 ], [ 2, %bb.cu ], [ 3, %bb.cv ], [ 4, %bb.cw ]
  store i8 %.0.lcssa.i, ptr %1, align 1
  br label %parse_device.exit

bb.cx:                                            ; preds = %bb.b
  %i.oh = icmp ult i8 %i.b, 4
  br i1 %i.oh, label %parse_device.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.oi = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8
  %.val5.i = load i16, ptr %i.oj, align 1
  store i16 %.val5.i, ptr %1, align 2
  %i.ok = load ptr, ptr %i.oi, align 8
  %i.ol = getelementptr i8, ptr %i.ok, i64 2
  %.val.i75 = load i16, ptr %i.ol, align 1
  %i.om = getelementptr i8, ptr %1, i64 2
  store i16 %.val.i75, ptr %i.om, align 2
  br label %parse_device.exit

bb.cz:                                            ; preds = %bb.b
  %i.on = icmp ult i8 %i.b, 2
  br i1 %i.on, label %parse_device.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.oo = getelementptr i8, ptr %0, i64 32
  %i.op = load ptr, ptr %i.oo, align 8            ; 2 uses
  %i.oq = load i8, ptr %i.op, align 1
  store i8 %i.oq, ptr %1, align 1
  %i.or = getelementptr i8, ptr %i.op, i64 1
  %i.os = load i8, ptr %i.or, align 1
  %i.ot = getelementptr i8, ptr %1, i64 1
  store i8 %i.os, ptr %i.ot, align 1
  br label %parse_device.exit

bb.db:                                            ; preds = %bb.b
  %i.ou = icmp eq i8 %i.b, 0
  br i1 %i.ou, label %parse_device.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ov = getelementptr i8, ptr %0, i64 32
  %i.ow = load ptr, ptr %i.ov, align 8            ; 2 uses
  %i.ox = load i8, ptr %i.ow, align 1
  store i8 %i.ox, ptr %1, align 1
  %i.oy = load i8, ptr %i.a, align 8
  %i.oz = icmp ugt i8 %i.oy, 1
  br i1 %i.oz, label %.lr.ph.i79, label %parse_device.exit

.lr.ph.i79:                                       ; preds = %bb.dc, %.lr.ph.i79
  %indvars.iv.i80 = phi i64 [ %indvars.iv.next.i81, %.lr.ph.i79 ], [ 1, %bb.dc ] ; 3 uses
  %i.pa = getelementptr i8, ptr %i.ow, i64 %indvars.iv.i80
  %i.pb = load i8, ptr %i.pa, align 1
  %i.pc = getelementptr i8, ptr %1, i64 %indvars.iv.i80
  store i8 %i.pb, ptr %i.pc, align 1
  %indvars.iv.next.i81 = add nuw nsw i64 %indvars.iv.i80, 1 ; 2 uses
  %i.pd = load i8, ptr %i.a, align 8
  %i.pe = zext i8 %i.pd to i64
  %i.pf = icmp samesign ult i64 %indvars.iv.next.i81, %i.pe
  br i1 %i.pf, label %.lr.ph.i79, label %parse_device.exit, !llvm.loop !40

bb.dd:                                            ; preds = %bb.b
  %i.pg = getelementptr i8, ptr %0, i64 32
  %i.ph = load ptr, ptr %i.pg, align 8            ; 6 uses
  %i.pi = load i8, ptr %i.ph, align 1
  %i.pj = zext i8 %i.pi to i32                    ; 3 uses
  %i.pk = and i32 %i.pj, 3                        ; 4 uses
  %i.pl = lshr i32 %i.pj, 2
  %i.pm = and i32 %i.pl, 15                       ; 2 uses
  %i.pn = zext i8 %i.b to i32
  %i.po = or disjoint i32 %i.pk, 4
  %i.pp = add nuw nsw i32 %i.po, %i.pm            ; 2 uses
  %i.pq = icmp samesign ugt i32 %i.pp, %i.pn
  br i1 %i.pq, label %parse_device.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.pr = getelementptr i8, ptr %i.ph, i64 1
  %i.ps = load i8, ptr %i.pr, align 1
  store i8 %i.ps, ptr %1, align 4
  %i.pt = getelementptr i8, ptr %i.ph, i64 2      ; 2 uses
  %i.pu = getelementptr i8, ptr %1, i64 4         ; 5 uses
  store i32 0, ptr %i.pu, align 4
  %i.pv = add nuw nsw i32 %i.pk, 1                ; 2 uses
  %i.pw = load i8, ptr %i.pt, align 1
  %i.px = zext i8 %i.pw to i32                    ; 2 uses
  store i32 %i.px, ptr %i.pu, align 4
  %exitcond.not.i85 = icmp eq i32 %i.pk, 0
  br i1 %exitcond.not.i85, label %.preheader.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.py = getelementptr i8, ptr %i.ph, i64 3
  %i.pz = load i8, ptr %i.py, align 1
  %i.qa = zext i8 %i.pz to i32
  %i.qb = shl nuw nsw i32 %i.qa, 8
  %i.qc = or disjoint i32 %i.qb, %i.px            ; 2 uses
  store i32 %i.qc, ptr %i.pu, align 4
  %exitcond.not.i85.1 = icmp eq i32 %i.pv, 2
  br i1 %exitcond.not.i85.1, label %.preheader.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qd = getelementptr i8, ptr %i.ph, i64 4
  %i.qe = load i8, ptr %i.qd, align 1
  %i.qf = zext i8 %i.qe to i32
  %i.qg = shl nuw nsw i32 %i.qf, 16
  %i.qh = or disjoint i32 %i.qg, %i.qc            ; 2 uses
  store i32 %i.qh, ptr %i.pu, align 4
  %exitcond.not.i85.2 = icmp eq i32 %i.pv, 3
  br i1 %exitcond.not.i85.2, label %.preheader.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qi = getelementptr i8, ptr %i.ph, i64 5
  %i.qj = load i8, ptr %i.qi, align 1
  %i.qk = zext i8 %i.qj to i32
  %i.ql = shl nuw i32 %i.qk, 24
  %i.qm = or disjoint i32 %i.ql, %i.qh
  store i32 %i.qm, ptr %i.pu, align 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.dh, %bb.dg, %bb.df, %bb.de
  %i.qn = getelementptr i8, ptr %1, i64 8         ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %i.qn, i8 0, i64 16, i1 false)
  %i.qo = zext nneg i32 %i.pk to i64
  %i.qp = getelementptr i8, ptr %i.pt, i64 %i.qo
  %i.qq = getelementptr i8, ptr %i.qp, i64 1      ; 3 uses
  %i.qr = add nuw nsw i32 %i.pm, 1                ; 2 uses
  %wide.trip.count49.i = zext nneg i32 %i.qr to i64 ; 2 uses
  %xtraiter551 = and i64 %wide.trip.count49.i, 1
  %i.qs = and i32 %i.pj, 60
  %i.qt = icmp eq i32 %i.qs, 0
  br i1 %i.qt, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter555 = and i64 %wide.trip.count49.i, 30
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %.preheader.i.new
  %indvars.iv46.i = phi i64 [ 0, %.preheader.i.new ], [ %indvars.iv.next47.i.1, %bb.di ] ; 6 uses
  %niter556 = phi i64 [ 0, %.preheader.i.new ], [ %niter556.next.1, %bb.di ]
  %i.qu = getelementptr i8, ptr %i.qq, i64 %indvars.iv46.i
  %i.qv = load i8, ptr %i.qu, align 1
  %i.qw = zext i8 %i.qv to i32
  %indvars.iv46.tr.i = trunc i64 %indvars.iv46.i to i32
  %i.qx = shl i32 %indvars.iv46.tr.i, 3
  %i.qy = and i32 %i.qx, 16
  %i.qz = shl nuw nsw i32 %i.qw, %i.qy
  %i.ra = lshr i64 %indvars.iv46.i, 2
  %i.rb = and i64 %i.ra, 1073741823
  %i.rc = getelementptr [4 x i8], ptr %i.qn, i64 %i.rb ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4
  %i.re = add i32 %i.qz, %i.rd
  store i32 %i.re, ptr %i.rc, align 4
  %indvars.iv.next47.i = or disjoint i64 %indvars.iv46.i, 1 ; 2 uses
  %i.rf = getelementptr i8, ptr %i.qq, i64 %indvars.iv.next47.i
  %i.rg = load i8, ptr %i.rf, align 1
  %i.rh = zext i8 %i.rg to i32
  %indvars.iv46.tr.i.1 = trunc i64 %indvars.iv.next47.i to i32
  %i.ri = shl i32 %indvars.iv46.tr.i.1, 3
  %i.rj = and i32 %i.ri, 24
  %i.rk = shl nuw i32 %i.rh, %i.rj
  %i.rl = lshr i64 %indvars.iv46.i, 2
  %i.rm = and i64 %i.rl, 1073741823
  %i.rn = getelementptr [4 x i8], ptr %i.qn, i64 %i.rm ; 2 uses
  %i.ro = load i32, ptr %i.rn, align 4
  %i.rp = add i32 %i.rk, %i.ro
  store i32 %i.rp, ptr %i.rn, align 4
  %indvars.iv.next47.i.1 = add nuw nsw i64 %indvars.iv46.i, 2 ; 2 uses
  %niter556.next.1 = add nuw i64 %niter556, 2     ; 2 uses
  %niter556.ncmp.1 = icmp eq i64 %niter556.next.1, %unroll_iter555
  br i1 %niter556.ncmp.1, label %.unr-lcssa, label %bb.di, !llvm.loop !41

.unr-lcssa:                                       ; preds = %bb.di
  %lcmp.mod553.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod553.not, label %bb.dj, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i
  %indvars.iv46.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next47.i.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod554 = trunc i32 %i.qr to i1
  tail call void @llvm.assume(i1 %lcmp.mod554)
  %i.rq = getelementptr i8, ptr %i.qq, i64 %indvars.iv46.i.epil.init
  %i.rr = load i8, ptr %i.rq, align 1
  %i.rs = zext i8 %i.rr to i32
  %indvars.iv46.tr.i.epil = trunc i64 %indvars.iv46.i.epil.init to i32
  %i.rt = shl i32 %indvars.iv46.tr.i.epil, 3
  %i.ru = and i32 %i.rt, 24
  %i.rv = shl nuw i32 %i.rs, %i.ru
  %i.rw = lshr i64 %indvars.iv46.i.epil.init, 2
  %i.rx = and i64 %i.rw, 1073741823
  %i.ry = getelementptr [4 x i8], ptr %i.qn, i64 %i.rx ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4
  %i.sa = add i32 %i.rv, %i.rz
  store i32 %i.sa, ptr %i.ry, align 4
  br label %bb.dj

bb.dj:                                            ; preds = %.unr-lcssa, %.epil.preheader
  %i.sb = load i8, ptr %i.a, align 8
  %i.sc = trunc nuw nsw i32 %i.pp to i8
  %i.sd = sub i8 %i.sb, %i.sc
  %i.se = getelementptr i8, ptr %1, i64 24
  store i8 %i.sd, ptr %i.se, align 4
  br label %parse_device.exit

bb.dk:                                            ; preds = %bb.b
  %i.sf = getelementptr i8, ptr %0, i64 32
  %.val46 = load ptr, ptr %i.sf, align 8          ; 6 uses
  %i.sg = zext i8 %i.b to i64
  %i.sh = getelementptr i8, ptr %.val46, i64 %i.sg ; 57 uses
  %i.si = load i8, ptr %.val46, align 1
  %i.sj = and i8 %i.si, 63
  store i8 %i.sj, ptr %1, align 4
  %i.sk = getelementptr i8, ptr %1, i64 2         ; 8 uses
  store i16 0, ptr %i.sk, align 2
  %i.sl = load i8, ptr %.val46, align 1
  %i.sm = lshr i8 %i.sl, 6
  %.lobit.i86 = and i8 %i.sm, 1
  %spec.store.select.i = zext nneg i8 %.lobit.i86 to i16 ; 3 uses
  store i16 %spec.store.select.i, ptr %i.sk, align 2
  %i.sn = load i8, ptr %.val46, align 1
  %.not113.i = icmp sgt i8 %i.sn, -1
  br i1 %.not113.i, label %bb.dv, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.so = getelementptr i8, ptr %.val46, i64 1    ; 6 uses
  %i.sp = icmp eq i8 %i.b, 1
  br i1 %i.sp, label %parse_device.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sq = load i8, ptr %i.so, align 1             ; 2 uses
  %i.sr = and i8 %i.sq, 16
  %.not114.i = icmp eq i8 %i.sr, 0
  br i1 %.not114.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ss = or disjoint i16 %spec.store.select.i, 2 ; 2 uses
  store i16 %i.ss, ptr %i.sk, align 2
  %.pre.i = load i8, ptr %i.so, align 1
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.st = phi i16 [ %i.ss, %bb.dn ], [ %spec.store.select.i, %bb.dm ] ; 2 uses
  %i.su = phi i8 [ %.pre.i, %bb.dn ], [ %i.sq, %bb.dm ] ; 2 uses
  %i.sv = and i8 %i.su, 32
  %.not115.i = icmp eq i8 %i.sv, 0
  br i1 %.not115.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sw = or i16 %i.st, 4                         ; 2 uses
  store i16 %i.sw, ptr %i.sk, align 2
  %.pre83.i = load i8, ptr %i.so, align 1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.sx = phi i16 [ %i.sw, %bb.dp ], [ %i.st, %bb.do ] ; 2 uses
  %i.sy = phi i8 [ %.pre83.i, %bb.dp ], [ %i.su, %bb.do ] ; 2 uses
  %i.sz = and i8 %i.sy, 64
  %.not116.i = icmp eq i8 %i.sz, 0
  br i1 %.not116.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ta = or i16 %i.sx, 8                         ; 2 uses
  store i16 %i.ta, ptr %i.sk, align 2
  %.pr.i = load i8, ptr %i.so, align 1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.tb = phi i16 [ %i.ta, %bb.dr ], [ %i.sx, %bb.dq ]
  %i.tc = phi i8 [ %.pr.i, %bb.dr ], [ %i.sy, %bb.dq ] ; 2 uses
  %.not117.i = icmp sgt i8 %i.tc, -1
  br i1 %.not117.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.td = or i16 %i.tb, 16
  store i16 %i.td, ptr %i.sk, align 2
  %.pre84.i = load i8, ptr %i.so, align 1
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.te = phi i8 [ %.pre84.i, %bb.dt ], [ %i.tc, %bb.ds ]
  %i.tf = and i8 %i.te, 15
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dk
  %.sink.i87 = phi i8 [ %i.tf, %bb.du ], [ 0, %bb.dk ]
  %.0.i88 = phi ptr [ %i.so, %bb.du ], [ %.val46, %bb.dk ] ; 3 uses
  %i.tg = getelementptr i8, ptr %1, i64 4
  store i8 %.sink.i87, ptr %i.tg, align 4
  %i.th = getelementptr i8, ptr %.0.i88, i64 1    ; 2 uses
  %i.ti = icmp eq ptr %i.th, %i.sh
  br i1 %i.ti, label %parse_device.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.tj = load i8, ptr %i.th, align 1             ; 2 uses
  %i.tk = getelementptr i8, ptr %.0.i88, i64 2    ; 3 uses
  %i.tl = zext i8 %i.tj to i32                    ; 5 uses
  %i.tm = and i32 %i.tl, 3                        ; 3 uses
  %.not118.i = icmp eq i32 %i.tm, 0
  br i1 %.not118.i, label %.thread.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.tn = icmp eq ptr %i.tk, %i.sh
  br i1 %i.tn, label %parse_device.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.to = getelementptr i8, ptr %1, i64 8
  %i.tp = load i8, ptr %i.tk, align 1             ; 2 uses
  store i8 %i.tp, ptr %i.to, align 4
  %i.tq = getelementptr i8, ptr %1, i64 9         ; 5 uses
  store i8 0, ptr %i.tq, align 1
  %i.tr = getelementptr i8, ptr %.0.i88, i64 3
  %i.ts = zext i8 %i.tp to i32
  %i.tt = getelementptr i8, ptr %1, i64 12
  br label %bb.dz

bb.dz:                                            ; preds = %bb.ei, %bb.dy
  %indvars.iv.i.i89 = phi i64 [ 0, %bb.dy ], [ %indvars.iv.next.i.i91, %bb.ei ] ; 3 uses
  %.03546.i.i = phi ptr [ %i.tr, %bb.dy ], [ %.2.i.i, %bb.ei ] ; 6 uses
  %i.tu = trunc nuw nsw i64 %indvars.iv.i.i89 to i32
  %i.tv = shl nuw nsw i32 1, %i.tu
  %i.tw = and i32 %i.tv, %i.ts
  %.not.i.i90 = icmp eq i32 %i.tw, 0
  br i1 %.not.i.i90, label %bb.ei, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.tx = icmp eq ptr %.03546.i.i, %i.sh
  br i1 %i.tx, label %parse_device.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ty = load i8, ptr %.03546.i.i, align 1
  %i.tz = zext i8 %i.ty to i32                    ; 2 uses
  %i.ua = lshr i32 %i.tz, 3
  %i.ub = and i32 %i.ua, 15
  %i.uc = zext nneg i32 %i.ub to i64
  %i.ud = getelementptr i8, ptr @mantissa, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1
  %i.uf = zext i8 %i.ue to i32
  %i.ug = and i32 %i.tz, 7
  %i.uh = zext nneg i32 %i.ug to i64
  %i.ui = getelementptr [4 x i8], ptr @exponent, i64 %i.uh
  %i.uj = load i32, ptr %i.ui, align 4
  %i.uk = mul i32 %i.uj, %i.uf
  %i.ul = udiv i32 %i.uk, 10
  %i.um = getelementptr [4 x i8], ptr %i.tt, i64 %indvars.iv.i.i89 ; 4 uses
  store i32 %i.ul, ptr %i.um, align 4
  %i.un = load i8, ptr %.03546.i.i, align 1       ; 2 uses
  %i.uo = and i8 %i.un, 7
  %i.up = zext nneg i8 %i.uo to i64
  %i.uq = getelementptr [4 x i8], ptr @exponent, i64 %i.up
  %i.ur = load i32, ptr %i.uq, align 4
  %.not4144.i.i = icmp sgt i8 %i.un, -1
  br i1 %.not4144.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.eb
  %i.us = getelementptr i8, ptr %.03546.i.i, i64 1 ; 2 uses
  %i.ut = icmp eq ptr %i.us, %i.sh
  br i1 %i.ut, label %parse_device.exit, label %.lr.ph461

.lr.ph.i.i:                                       ; preds = %bb.eh
  %i.uu = getelementptr i8, ptr %i.uw, i64 1      ; 2 uses
  %i.uv = icmp eq ptr %i.uu, %i.sh
  br i1 %i.uv, label %parse_device.exit, label %.lr.ph461, !llvm.loop !42

.lr.ph461:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.uw = phi ptr [ %i.uu, %.lr.ph.i.i ], [ %i.us, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.ux = load i8, ptr %i.uw, align 1             ; 2 uses
  %i.uy = and i8 %i.ux, 127                       ; 2 uses
  %i.uz = icmp samesign ult i8 %i.uy, 100
  br i1 %i.uz, label %bb.ec, label %bb.ed

end_hunk_1
begin_hunk_2_@pcmcia_parse_tuple:bb.a
  %i.afq = getelementptr i8, ptr %i.afp, i64 4
  store i32 1, ptr %i.afq, align 4
  %i.afr = icmp eq ptr %.05376.us.i.i, %i.sh
  br i1 %i.afr, label %parse_device.exit, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph.us.i.i
  %i.afs = load i8, ptr %.05376.us.i.i, align 1
  %i.aft = zext i8 %i.afs to i32                  ; 2 uses
  store i32 %i.aft, ptr %i.afp, align 4
  %i.afu = getelementptr i8, ptr %.05376.us.i.i, i64 1 ; 3 uses
  br i1 %exitcond105.not.i.i, label %..preheader_crit_edge.us.i.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.afv = icmp eq ptr %i.afu, %i.sh
  br i1 %i.afv, label %parse_device.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.afw = load i8, ptr %i.afu, align 1
  %i.afx = zext i8 %i.afw to i32
  %i.afy = shl nuw nsw i32 %i.afx, 8
  %i.afz = or disjoint i32 %i.afy, %i.aft         ; 2 uses
  store i32 %i.afz, ptr %i.afp, align 4
  %i.aga = getelementptr i8, ptr %.05376.us.i.i, i64 2 ; 3 uses
  br i1 %exitcond105.not.i.i.1, label %..preheader_crit_edge.us.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.agb = icmp eq ptr %i.aga, %i.sh
  br i1 %i.agb, label %parse_device.exit, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.agc = load i8, ptr %i.aga, align 1
  %i.agd = zext i8 %i.agc to i32
  %i.age = shl nuw nsw i32 %i.agd, 16
  %i.agf = or disjoint i32 %i.age, %i.afz         ; 2 uses
  store i32 %i.agf, ptr %i.afp, align 4
  %i.agg = getelementptr i8, ptr %.05376.us.i.i, i64 3 ; 2 uses
  %i.agh = icmp eq ptr %i.agg, %i.sh
  br i1 %i.agh, label %parse_device.exit, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.agi = load i8, ptr %i.agg, align 1
  %i.agj = zext i8 %i.agi to i32
  %i.agk = shl nuw i32 %i.agj, 24
  %i.agl = or disjoint i32 %i.agk, %i.agf
  store i32 %i.agl, ptr %i.afp, align 4
  %i.agm = getelementptr i8, ptr %.05376.us.i.i, i64 4 ; 2 uses
  br i1 %i.add, label %..preheader_crit_edge.us.i.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.agn = icmp eq ptr %i.agm, %i.sh
  %i.ago = getelementptr i8, ptr %.05376.us.i.i, i64 5
  %i.agp = icmp eq ptr %i.ago, %i.sh
  %or.cond625 = or i1 %i.agn, %i.agp
  %i.agq = getelementptr i8, ptr %.05376.us.i.i, i64 6
  %i.agr = icmp eq ptr %i.agq, %i.sh
  %or.cond627 = or i1 %or.cond625, %i.agr
  br i1 %or.cond627, label %parse_device.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ags = getelementptr i8, ptr %.05376.us.i.i, i64 7
  br label %..preheader_crit_edge.us.i.i

..preheader_crit_edge.us.i.i:                     ; preds = %bb.gz, %bb.gx, %bb.gu, %bb.gs
  %.lcssa504 = phi ptr [ %i.afu, %bb.gs ], [ %i.aga, %bb.gu ], [ %i.ags, %bb.gz ], [ %i.agm, %bb.gx ] ; 2 uses
  %indvars.iv.next107.i.i = add nuw nsw i64 %indvars.iv106.i.i, 1 ; 2 uses
  %exitcond110.not.i.i = icmp eq i64 %indvars.iv.next107.i.i, %wide.trip.count120.i.i
  br i1 %exitcond110.not.i.i, label %parse_io.exit.i, label %.lr.ph.us.i.i, !llvm.loop !44

.split.i.i:                                       ; preds = %bb.gc
  br i1 %.not91.i.i, label %.preheader.i.i95.preheader, label %.preheader.us78.i.i.preheader

.preheader.us78.i.i.preheader:                    ; preds = %.split.i.i
  %exitcond111.not.i.i = icmp eq i8 %narrow63.fr.i.i, 1
  %exitcond111.not.i.i.1 = icmp eq i8 %narrow63.fr.i.i, 2
  %exitcond111.not.i.i.2 = icmp eq i8 %narrow63.fr.i.i, 3
  %exitcond111.not.i.i.3 = icmp eq i8 %narrow63.fr.i.i, 4
  %exitcond111.not.i.i.4 = icmp eq i8 %narrow63.fr.i.i, 5
  %exitcond111.not.i.i.5 = icmp eq i8 %narrow63.fr.i.i, 6
  br label %.preheader.us78.i.i

.preheader.i.i95.preheader:                       ; preds = %.split.i.i
  %i.agt = and i8 %i.acx, 15
  %xtraiter = and i64 %wide.trip.count120.i.i, 3  ; 3 uses
  %i.agu = icmp samesign ult i8 %i.agt, 3
  br i1 %i.agu, label %.preheader.i.i95.epil.preheader, label %.preheader.i.i95.preheader.new

.preheader.i.i95.preheader.new:                   ; preds = %.preheader.i.i95.preheader
  %unroll_iter = and i64 %wide.trip.count120.i.i, 28
  br label %.preheader.i.i95

.preheader.us78.i.i:                              ; preds = %.preheader.us78.i.i.preheader, %._crit_edge.us85.i.i
  %indvars.iv112.i.i = phi i64 [ %indvars.iv.next113.i.i, %._crit_edge.us85.i.i ], [ 0, %.preheader.us78.i.i.preheader ] ; 2 uses
  %.05376.us80.i.i = phi ptr [ %.lcssa501, %._crit_edge.us85.i.i ], [ %i.adg, %.preheader.us78.i.i.preheader ] ; 9 uses
  %i.agv = getelementptr [8 x i8], ptr %i.adh, i64 %indvars.iv112.i.i ; 2 uses
  store i32 0, ptr %i.agv, align 4
  %i.agw = getelementptr i8, ptr %i.agv, i64 4    ; 5 uses
  store i32 1, ptr %i.agw, align 4
  %i.agx = icmp eq ptr %.05376.us80.i.i, %i.sh
  br i1 %i.agx, label %parse_device.exit, label %bb.ha

bb.ha:                                            ; preds = %.preheader.us78.i.i
  %i.agy = load i8, ptr %.05376.us80.i.i, align 1
  %i.agz = zext i8 %i.agy to i32
  %i.aha = add nuw nsw i32 %i.agz, 1              ; 2 uses
  store i32 %i.aha, ptr %i.agw, align 4
  %i.ahb = getelementptr i8, ptr %.05376.us80.i.i, i64 1 ; 3 uses
  br i1 %exitcond111.not.i.i, label %._crit_edge.us85.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ahc = icmp eq ptr %i.ahb, %i.sh
  br i1 %i.ahc, label %parse_device.exit, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ahd = load i8, ptr %i.ahb, align 1
  %i.ahe = zext i8 %i.ahd to i32
  %i.ahf = shl nuw nsw i32 %i.ahe, 8
  %i.ahg = add nuw nsw i32 %i.ahf, %i.aha         ; 2 uses
  store i32 %i.ahg, ptr %i.agw, align 4
  %i.ahh = getelementptr i8, ptr %.05376.us80.i.i, i64 2 ; 3 uses
  br i1 %exitcond111.not.i.i.1, label %._crit_edge.us85.i.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ahi = icmp eq ptr %i.ahh, %i.sh
  br i1 %i.ahi, label %parse_device.exit, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ahj = load i8, ptr %i.ahh, align 1
  %i.ahk = zext i8 %i.ahj to i32
  %i.ahl = shl nuw nsw i32 %i.ahk, 16
  %i.ahm = add nuw nsw i32 %i.ahl, %i.ahg         ; 2 uses
  store i32 %i.ahm, ptr %i.agw, align 4
  %i.ahn = getelementptr i8, ptr %.05376.us80.i.i, i64 3 ; 3 uses
  br i1 %exitcond111.not.i.i.2, label %._crit_edge.us85.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aho = icmp eq ptr %i.ahn, %i.sh
  br i1 %i.aho, label %parse_device.exit, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ahp = load i8, ptr %i.ahn, align 1
  %i.ahq = zext i8 %i.ahp to i32
  %i.ahr = shl nuw i32 %i.ahq, 24
  %i.ahs = add i32 %i.ahr, %i.ahm
  store i32 %i.ahs, ptr %i.agw, align 4
  %i.aht = getelementptr i8, ptr %.05376.us80.i.i, i64 4 ; 2 uses
  br i1 %exitcond111.not.i.i.3, label %._crit_edge.us85.i.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.ahu = icmp eq ptr %i.aht, %i.sh
  br i1 %i.ahu, label %parse_device.exit, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ahv = getelementptr i8, ptr %.05376.us80.i.i, i64 5 ; 2 uses
  br i1 %exitcond111.not.i.i.4, label %._crit_edge.us85.i.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.ahw = icmp eq ptr %i.ahv, %i.sh
  br i1 %i.ahw, label %parse_device.exit, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ahx = getelementptr i8, ptr %.05376.us80.i.i, i64 6 ; 2 uses
  br i1 %exitcond111.not.i.i.5, label %._crit_edge.us85.i.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ahy = icmp eq ptr %i.ahx, %i.sh
  br i1 %i.ahy, label %parse_device.exit, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ahz = getelementptr i8, ptr %.05376.us80.i.i, i64 7
  br label %._crit_edge.us85.i.i

._crit_edge.us85.i.i:                             ; preds = %bb.hm, %bb.hk, %bb.hi, %bb.hg, %bb.he, %bb.hc, %bb.ha
  %.lcssa501 = phi ptr [ %i.ahb, %bb.ha ], [ %i.ahh, %bb.hc ], [ %i.ahn, %bb.he ], [ %i.aht, %bb.hg ], [ %i.ahv, %bb.hi ], [ %i.ahx, %bb.hk ], [ %i.ahz, %bb.hm ] ; 2 uses
  %indvars.iv.next113.i.i = add nuw nsw i64 %indvars.iv112.i.i, 1 ; 2 uses
  %exitcond116.not.i.i = icmp eq i64 %indvars.iv.next113.i.i, %wide.trip.count120.i.i
  br i1 %exitcond116.not.i.i, label %parse_io.exit.i, label %.preheader.us78.i.i, !llvm.loop !44

.preheader.i.i95:                                 ; preds = %.preheader.i.i95, %.preheader.i.i95.preheader.new
  %indvars.iv117.i.i = phi i64 [ 0, %.preheader.i.i95.preheader.new ], [ %indvars.iv.next118.i.i.3, %.preheader.i.i95 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i95.preheader.new ], [ %niter.next.3, %.preheader.i.i95 ]
  %i.aia = getelementptr [8 x i8], ptr %i.adh, i64 %indvars.iv117.i.i ; 2 uses
  store i32 0, ptr %i.aia, align 4
  %i.aib = getelementptr i8, ptr %i.aia, i64 4
  store i32 1, ptr %i.aib, align 4
  %i.aic = getelementptr [8 x i8], ptr %i.adh, i64 %indvars.iv117.i.i ; 2 uses
  %i.aid = getelementptr i8, ptr %i.aic, i64 8
  store i32 0, ptr %i.aid, align 4
  %i.aie = getelementptr i8, ptr %i.aic, i64 12
  store i32 1, ptr %i.aie, align 4
  %i.aif = getelementptr [8 x i8], ptr %i.adh, i64 %indvars.iv117.i.i ; 2 uses
  %i.aig = getelementptr i8, ptr %i.aif, i64 16
  store i32 0, ptr %i.aig, align 4
  %i.aih = getelementptr i8, ptr %i.aif, i64 20
  store i32 1, ptr %i.aih, align 4
  %i.aii = getelementptr [8 x i8], ptr %i.adh, i64 %indvars.iv117.i.i ; 2 uses
  %i.aij = getelementptr i8, ptr %i.aii, i64 24
  store i32 0, ptr %i.aij, align 4
  %i.aik = getelementptr i8, ptr %i.aii, i64 28
  store i32 1, ptr %i.aik, align 4
  %indvars.iv.next118.i.i.3 = add nuw nsw i64 %indvars.iv117.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %parse_io.exit.i.loopexit.unr-lcssa, label %.preheader.i.i95, !llvm.loop !44

parse_io.exit.i.loopexit.unr-lcssa:               ; preds = %.preheader.i.i95
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %parse_io.exit.i, label %.preheader.i.i95.epil.preheader

.preheader.i.i95.epil.preheader:                  ; preds = %parse_io.exit.i.loopexit.unr-lcssa, %.preheader.i.i95.preheader
  %indvars.iv117.i.i.epil.init = phi i64 [ 0, %.preheader.i.i95.preheader ], [ %indvars.iv.next118.i.i.3, %parse_io.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod533 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod533)
  br label %.preheader.i.i95.epil

.preheader.i.i95.epil:                            ; preds = %.preheader.i.i95.epil, %.preheader.i.i95.epil.preheader
  %indvars.iv117.i.i.epil = phi i64 [ %indvars.iv.next118.i.i.epil, %.preheader.i.i95.epil ], [ %indvars.iv117.i.i.epil.init, %.preheader.i.i95.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i95.epil ], [ 0, %.preheader.i.i95.epil.preheader ]
  %i.ail = getelementptr [8 x i8], ptr %i.adh, i64 %indvars.iv117.i.i.epil ; 2 uses
  store i32 0, ptr %i.ail, align 4
  %i.aim = getelementptr i8, ptr %i.ail, i64 4
  store i32 1, ptr %i.aim, align 4
  %indvars.iv.next118.i.i.epil = add nuw nsw i64 %indvars.iv117.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %parse_io.exit.i, label %.preheader.i.i95.epil, !llvm.loop !45

parse_io.exit.i:                                  ; preds = %._crit_edge.us.us.i.i, %..preheader_crit_edge.us.i.i, %._crit_edge.us85.i.i, %parse_io.exit.i.loopexit.unr-lcssa, %.preheader.i.i95.epil, %bb.ga
  %.052.i.i = phi ptr [ %i.acu, %bb.ga ], [ %.lcssa501, %._crit_edge.us85.i.i ], [ %i.adg, %parse_io.exit.i.loopexit.unr-lcssa ], [ %.lcssa504, %..preheader_crit_edge.us.i.i ], [ %i.adg, %.preheader.i.i95.epil ], [ %.lcssa509, %._crit_edge.us.us.i.i ] ; 2 uses
  %i.ain = icmp eq ptr %.052.i.i, null
  br i1 %i.ain, label %parse_device.exit, label %bb.ho

bb.hn:                                            ; preds = %bb.fx
  %i.aio = getelementptr i8, ptr %1, i64 129
  store i8 0, ptr %i.aio, align 1
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %parse_io.exit.i
  %.5.i = phi ptr [ %.052.i.i, %parse_io.exit.i ], [ %.4.i, %bb.hn ] ; 5 uses
  %i.aip = and i32 %i.tl, 16
  %.not121.i = icmp eq i32 %i.aip, 0
  br i1 %.not121.i, label %bb.ht, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aiq = icmp eq ptr %.5.i, %i.sh
  br i1 %i.aiq, label %parse_device.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.air = getelementptr i8, ptr %1, i64 260
  %i.ais = load i8, ptr %.5.i, align 1
  %i.ait = zext i8 %i.ais to i32                  ; 2 uses
  store i32 %i.ait, ptr %i.air, align 4
  %i.aiu = getelementptr i8, ptr %.5.i, i64 1     ; 2 uses
  %i.aiv = and i32 %i.ait, 16
  %.not.i163.i = icmp eq i32 %i.aiv, 0
  br i1 %.not.i163.i, label %parse_irq.exit.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.aiw = getelementptr i8, ptr %.5.i, i64 3     ; 2 uses
  %i.aix = icmp ugt ptr %i.aiw, %i.sh
  br i1 %i.aix, label %parse_device.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.aiy = load i16, ptr %i.aiu, align 1
  %i.aiz = zext i16 %i.aiy to i32
  %i.aja = getelementptr i8, ptr %1, i64 264
  store i32 %i.aiz, ptr %i.aja, align 4
  br label %parse_irq.exit.i

parse_irq.exit.i:                                 ; preds = %bb.hs, %bb.hq
  %.0.i164.i = phi ptr [ %i.aiw, %bb.hs ], [ %i.aiu, %bb.hq ] ; 2 uses
  %i.ajb = icmp eq ptr %.0.i164.i, null
  br i1 %i.ajb, label %parse_device.exit, label %bb.hu

bb.ht:                                            ; preds = %bb.ho
  %i.ajc = getelementptr i8, ptr %1, i64 260
  store i32 0, ptr %i.ajc, align 4
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %parse_irq.exit.i
  %.6.i = phi ptr [ %.0.i164.i, %parse_irq.exit.i ], [ %.5.i, %bb.ht ] ; 14 uses
  %i.ajd = lshr i32 %i.tl, 5
  %i.aje = and i32 %i.ajd, 3
  switch i32 %i.aje, label %default.unreachable [
    i32 0, label %bb.hv
    i32 1, label %bb.hw
    i32 2, label %bb.hx
    i32 3, label %bb.hy
  ]

bb.hv:                                            ; preds = %bb.hu
  %i.ajf = getelementptr i8, ptr %1, i64 269
  store i8 0, ptr %i.ajf, align 1
  br label %bb.iq

bb.hw:                                            ; preds = %bb.hu
  %i.ajg = getelementptr i8, ptr %1, i64 269
  store i8 1, ptr %i.ajg, align 1
  %.6.val124.i = load i16, ptr %.6.i, align 1
  %i.ajh = zext i16 %.6.val124.i to i32
  %i.aji = shl nuw nsw i32 %i.ajh, 8
  %i.ajj = getelementptr i8, ptr %1, i64 272
  store i32 %i.aji, ptr %i.ajj, align 4
  %i.ajk = getelementptr i8, ptr %1, i64 276
  store i32 0, ptr %i.ajk, align 4
  %i.ajl = getelementptr i8, ptr %1, i64 280
  store i32 0, ptr %i.ajl, align 4
  %i.ajm = getelementptr i8, ptr %.6.i, i64 2     ; 2 uses
  %i.ajn = icmp ugt ptr %i.ajm, %i.sh
  br i1 %i.ajn, label %parse_device.exit, label %bb.iq

bb.hx:                                            ; preds = %bb.hu
  %i.ajo = getelementptr i8, ptr %1, i64 269
  store i8 1, ptr %i.ajo, align 1
  %.6.val.i = load i16, ptr %.6.i, align 1
  %i.ajp = zext i16 %.6.val.i to i32
  %i.ajq = shl nuw nsw i32 %i.ajp, 8
  %i.ajr = getelementptr i8, ptr %1, i64 272
  store i32 %i.ajq, ptr %i.ajr, align 4
  %i.ajs = getelementptr i8, ptr %.6.i, i64 2
  %.val.i94 = load i16, ptr %i.ajs, align 1
  %i.ajt = zext i16 %.val.i94 to i32
  %i.aju = shl nuw nsw i32 %i.ajt, 8
  %i.ajv = getelementptr i8, ptr %1, i64 276
  store i32 %i.aju, ptr %i.ajv, align 4
  %i.ajw = getelementptr i8, ptr %1, i64 280
  store i32 0, ptr %i.ajw, align 4
  %i.ajx = getelementptr i8, ptr %.6.i, i64 4     ; 2 uses
  %i.ajy = icmp ugt ptr %i.ajx, %i.sh
  br i1 %i.ajy, label %parse_device.exit, label %bb.iq

bb.hy:                                            ; preds = %bb.hu
  %i.ajz = ptrtoaddr ptr %i.sh to i64             ; 28 uses
  %i.aka = icmp eq ptr %.6.i, %i.sh
  br i1 %i.aka, label %parse_device.exit, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.akb = load i8, ptr %.6.i, align 1
  %i.akc = and i8 %i.akb, 7                       ; 4 uses
  %narrow.i165.i = add nuw nsw i8 %i.akc, 1       ; 14 uses
  %i.akd = getelementptr i8, ptr %1, i64 269
  store i8 %narrow.i165.i, ptr %i.akd, align 1
  %i.ake = load i8, ptr %.6.i, align 1
  %.fr164.i.i = freeze i8 %i.ake                  ; 2 uses
  %i.akf = zext i8 %.fr164.i.i to i32             ; 2 uses
  %i.akg = lshr i32 %i.akf, 3
  %i.akh = and i32 %i.akg, 3                      ; 22 uses
  %i.aki = lshr i32 %i.akf, 5
  %i.akj = and i32 %i.aki, 3                      ; 56 uses
  %i.akk = getelementptr i8, ptr %.6.i, i64 1     ; 11 uses
  %i.akl = icmp eq ptr %i.akk, %i.sh
  br i1 %i.akl, label %parse_device.exit, label %.preheader68.i.i

.preheader68.i.i:                                 ; preds = %bb.hz
  %.not162.i.i = icmp eq i32 %i.akh, 0            ; 9 uses
  %.not163.i.i = icmp eq i32 %i.akj, 0            ; 10 uses
  %.not.i166.i = icmp sgt i8 %.fr164.i.i, -1
  %i.akm = getelementptr i8, ptr %1, i64 272      ; 4 uses
  br i1 %.not.i166.i, label %.preheader66.us.preheader.i.i, label %.preheader68.split.i.i

.preheader66.us.preheader.i.i:                    ; preds = %.preheader68.i.i
  %i.akn = add nsw i32 %i.akh, -1
  %i.ako = zext i32 %i.akn to i64                 ; 16 uses
  %i.akp = add nsw i32 %i.akj, -1
  %i.akq = zext i32 %i.akp to i64                 ; 16 uses
  %.05695.us227.i.i = ptrtoaddr ptr %i.akk to i64 ; 2 uses
  br i1 %.not162.i.i, label %.preheader64.us.i.i, label %.lr.ph.us.preheader.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %.preheader66.us.preheader.i.i
  %i.akr = sub i64 %i.ajz, %.05695.us227.i.i
  %.not252.i.i = icmp ugt i64 %i.akr, %i.ako
  br i1 %.not252.i.i, label %.lr.ph.us.i170.i, label %parse_device.exit

.lr.ph.us.i170.i:                                 ; preds = %.lr.ph.us.preheader.i.i
  %i.aks = load i8, ptr %i.akk, align 1
  %i.akt = zext i8 %i.aks to i32                  ; 2 uses
  %exitcond229.not.i.i = icmp eq i32 %i.akh, 1
  br i1 %exitcond229.not.i.i, label %.preheader64.us.loopexit.i.i, label %.lr.ph.us.i170.i.1

.lr.ph.us.i170.i.1:                               ; preds = %.lr.ph.us.i170.i
  %i.aku = getelementptr i8, ptr %.6.i, i64 2
  %i.akv = load i8, ptr %i.aku, align 1
  %i.akw = zext i8 %i.akv to i32
  %i.akx = shl nuw nsw i32 %i.akw, 8
  %i.aky = or disjoint i32 %i.akx, %i.akt         ; 2 uses
  %exitcond229.not.i.i.1 = icmp eq i32 %i.akh, 2
  br i1 %exitcond229.not.i.i.1, label %.preheader64.us.loopexit.i.i, label %.lr.ph.us.i170.i.2

.lr.ph.us.i170.i.2:                               ; preds = %.lr.ph.us.i170.i.1
  %i.akz = getelementptr i8, ptr %.6.i, i64 3
  %i.ala = load i8, ptr %i.akz, align 1
  %i.alb = zext i8 %i.ala to i32
  %i.alc = shl nuw nsw i32 %i.alb, 16
  %i.ald = or disjoint i32 %i.alc, %i.aky
  br label %.preheader64.us.loopexit.i.i

.lr.ph86.us.i.i.1:                                ; preds = %.lr.ph86.us.i.i.preheader
  %i.ale = getelementptr i8, ptr %.157.lcssa.us.i.i, i64 1
  %i.alf = load i8, ptr %i.ale, align 1
  %i.alg = zext i8 %i.alf to i32
  %i.alh = shl nuw nsw i32 %i.alg, 8
  %i.ali = or disjoint i32 %i.alh, %i.aut         ; 2 uses
end_hunk_2
begin_hunk_3_@pcmcia_parse_tuple:bb.a
  %i.atg = getelementptr i8, ptr %1, i64 348
  store i32 %.050.lcssa.us.i.i.6, ptr %i.atg, align 4
  %i.ath = getelementptr i8, ptr %1, i64 352
  store i32 0, ptr %i.ath, align 4
  %exitcond239.not.i.i.6 = icmp eq i8 %narrow.i165.i, 7
  br i1 %exitcond239.not.i.i.6, label %parse_mem.exit.i, label %.preheader66.us.i.i.7

.preheader66.us.i.i.7:                            ; preds = %._crit_edge.us.i.i.6
  %.05695.us227.i.i.7 = ptrtoaddr ptr %.258.lcssa.us.i.i.6 to i64 ; 2 uses
  br i1 %.not162.i.i, label %.preheader64.us.i.i.7, label %.lr.ph.us.preheader.i.i.7

.lr.ph.us.preheader.i.i.7:                        ; preds = %.preheader66.us.i.i.7
  %i.ati = sub i64 %i.ajz, %.05695.us227.i.i.7
  %.not252.i.i.7 = icmp ugt i64 %i.ati, %i.ako
  br i1 %.not252.i.i.7, label %.lr.ph.us.i170.i.7, label %parse_device.exit

.lr.ph.us.i170.i.7:                               ; preds = %.lr.ph.us.preheader.i.i.7
  %i.atj = load i8, ptr %.258.lcssa.us.i.i.6, align 1
  %i.atk = zext i8 %i.atj to i32                  ; 2 uses
  %exitcond229.not.i.i.7 = icmp eq i32 %i.akh, 1
  br i1 %exitcond229.not.i.i.7, label %.preheader64.us.loopexit.i.i.7, label %.lr.ph.us.i170.i.1.7

.lr.ph.us.i170.i.1.7:                             ; preds = %.lr.ph.us.i170.i.7
  %i.atl = getelementptr i8, ptr %.258.lcssa.us.i.i.6, i64 1
  %i.atm = load i8, ptr %i.atl, align 1
  %i.atn = zext i8 %i.atm to i32
  %i.ato = shl nuw nsw i32 %i.atn, 8
  %i.atp = or disjoint i32 %i.ato, %i.atk         ; 2 uses
  %exitcond229.not.i.i.1.7 = icmp eq i32 %i.akh, 2
  br i1 %exitcond229.not.i.i.1.7, label %.preheader64.us.loopexit.i.i.7, label %.lr.ph.us.i170.i.2.7

.lr.ph.us.i170.i.2.7:                             ; preds = %.lr.ph.us.i170.i.1.7
  %i.atq = getelementptr i8, ptr %.258.lcssa.us.i.i.6, i64 2
  %i.atr = load i8, ptr %i.atq, align 1
  %i.ats = zext i8 %i.atr to i32
  %i.att = shl nuw nsw i32 %i.ats, 16
  %i.atu = or disjoint i32 %i.att, %i.atp
  br label %.preheader64.us.loopexit.i.i.7

.preheader64.us.loopexit.i.i.7:                   ; preds = %.lr.ph.us.i170.i.2.7, %.lr.ph.us.i170.i.1.7, %.lr.ph.us.i170.i.7
  %.lcssa488.7 = phi i32 [ %i.atk, %.lr.ph.us.i170.i.7 ], [ %i.atp, %.lr.ph.us.i170.i.1.7 ], [ %i.atu, %.lr.ph.us.i170.i.2.7 ]
  %i.atv = getelementptr i8, ptr %.258.lcssa.us.i.i.6, i64 %i.ako
  %scevgep230.i.i.7 = getelementptr i8, ptr %i.atv, i64 1 ; 2 uses
  %.pre.i.i.7 = ptrtoaddr ptr %scevgep230.i.i.7 to i64
  %i.atw = shl i32 %.lcssa488.7, 8
  br label %.preheader64.us.i.i.7

.preheader64.us.i.i.7:                            ; preds = %.preheader64.us.loopexit.i.i.7, %.preheader66.us.i.i.7
  %.157.lcssa.us231.pre-phi.i.i.7 = phi i64 [ %.pre.i.i.7, %.preheader64.us.loopexit.i.i.7 ], [ %.05695.us227.i.i.7, %.preheader66.us.i.i.7 ]
  %.157.lcssa.us.i.i.7 = phi ptr [ %scevgep230.i.i.7, %.preheader64.us.loopexit.i.i.7 ], [ %.258.lcssa.us.i.i.6, %.preheader66.us.i.i.7 ] ; 5 uses
  %.051.lcssa.us.i.i.7 = phi i32 [ %i.atw, %.preheader64.us.loopexit.i.i.7 ], [ 0, %.preheader66.us.i.i.7 ]
  br i1 %.not163.i.i, label %._crit_edge.us.i.i.7, label %.lr.ph86.us.preheader.i.i.7

.lr.ph86.us.preheader.i.i.7:                      ; preds = %.preheader64.us.i.i.7
  %i.atx = sub i64 %i.ajz, %.157.lcssa.us231.pre-phi.i.i.7
  %.not253.i.i.7 = icmp ugt i64 %i.atx, %i.akq
  br i1 %.not253.i.i.7, label %.lr.ph86.us.i.i.7, label %parse_device.exit

.lr.ph86.us.i.i.7:                                ; preds = %.lr.ph86.us.preheader.i.i.7
  %i.aty = load i8, ptr %.157.lcssa.us.i.i.7, align 1
  %i.atz = zext i8 %i.aty to i32                  ; 2 uses
  %exitcond233.not.i.i.7 = icmp eq i32 %i.akj, 1
  br i1 %exitcond233.not.i.i.7, label %._crit_edge.us.loopexit.i.i.7, label %.lr.ph86.us.i.i.1.7

.lr.ph86.us.i.i.1.7:                              ; preds = %.lr.ph86.us.i.i.7
  %i.aua = getelementptr i8, ptr %.157.lcssa.us.i.i.7, i64 1
  %i.aub = load i8, ptr %i.aua, align 1
  %i.auc = zext i8 %i.aub to i32
  %i.aud = shl nuw nsw i32 %i.auc, 8
  %i.aue = or disjoint i32 %i.aud, %i.atz         ; 2 uses
  %exitcond233.not.i.i.1.7 = icmp eq i32 %i.akj, 2
  br i1 %exitcond233.not.i.i.1.7, label %._crit_edge.us.loopexit.i.i.7, label %.lr.ph86.us.i.i.2.7

.lr.ph86.us.i.i.2.7:                              ; preds = %.lr.ph86.us.i.i.1.7
  %i.auf = getelementptr i8, ptr %.157.lcssa.us.i.i.7, i64 2
  %i.aug = load i8, ptr %i.auf, align 1
  %i.auh = zext i8 %i.aug to i32
  %i.aui = shl nuw nsw i32 %i.auh, 16
  %i.auj = or disjoint i32 %i.aui, %i.aue
  br label %._crit_edge.us.loopexit.i.i.7

._crit_edge.us.loopexit.i.i.7:                    ; preds = %.lr.ph86.us.i.i.2.7, %.lr.ph86.us.i.i.1.7, %.lr.ph86.us.i.i.7
  %.lcssa489.7 = phi i32 [ %i.atz, %.lr.ph86.us.i.i.7 ], [ %i.aue, %.lr.ph86.us.i.i.1.7 ], [ %i.auj, %.lr.ph86.us.i.i.2.7 ]
  %i.auk = getelementptr i8, ptr %.157.lcssa.us.i.i.7, i64 %i.akq
  %scevgep234.i.i.7 = getelementptr i8, ptr %i.auk, i64 1
  %i.aul = shl i32 %.lcssa489.7, 8
  br label %._crit_edge.us.i.i.7

._crit_edge.us.i.i.7:                             ; preds = %._crit_edge.us.loopexit.i.i.7, %.preheader64.us.i.i.7
  %.258.lcssa.us.i.i.7 = phi ptr [ %.157.lcssa.us.i.i.7, %.preheader64.us.i.i.7 ], [ %scevgep234.i.i.7, %._crit_edge.us.loopexit.i.i.7 ]
  %.050.lcssa.us.i.i.7 = phi i32 [ 0, %.preheader64.us.i.i.7 ], [ %i.aul, %._crit_edge.us.loopexit.i.i.7 ]
  %i.aum = getelementptr i8, ptr %1, i64 356
  store i32 %.051.lcssa.us.i.i.7, ptr %i.aum, align 4
  %i.aun = getelementptr i8, ptr %1, i64 360
  store i32 %.050.lcssa.us.i.i.7, ptr %i.aun, align 4
  %i.auo = getelementptr i8, ptr %1, i64 364
  store i32 0, ptr %i.auo, align 4
  br label %parse_mem.exit.i

.preheader64.us.loopexit.i.i:                     ; preds = %.lr.ph.us.i170.i.2, %.lr.ph.us.i170.i.1, %.lr.ph.us.i170.i
  %.lcssa488 = phi i32 [ %i.akt, %.lr.ph.us.i170.i ], [ %i.aky, %.lr.ph.us.i170.i.1 ], [ %i.ald, %.lr.ph.us.i170.i.2 ]
  %i.aup = getelementptr i8, ptr %i.akk, i64 %i.ako
  %scevgep230.i.i = getelementptr i8, ptr %i.aup, i64 1 ; 2 uses
  %.pre.i.i = ptrtoaddr ptr %scevgep230.i.i to i64
  %i.auq = shl i32 %.lcssa488, 8
  br label %.preheader64.us.i.i

.preheader64.us.i.i:                              ; preds = %.preheader64.us.loopexit.i.i, %.preheader66.us.preheader.i.i
  %.157.lcssa.us231.pre-phi.i.i = phi i64 [ %.pre.i.i, %.preheader64.us.loopexit.i.i ], [ %.05695.us227.i.i, %.preheader66.us.preheader.i.i ]
  %.157.lcssa.us.i.i = phi ptr [ %scevgep230.i.i, %.preheader64.us.loopexit.i.i ], [ %i.akk, %.preheader66.us.preheader.i.i ] ; 5 uses
  %.051.lcssa.us.i.i = phi i32 [ %i.auq, %.preheader64.us.loopexit.i.i ], [ 0, %.preheader66.us.preheader.i.i ]
  br i1 %.not163.i.i, label %._crit_edge.us.i.i, label %.lr.ph86.us.preheader.i.i

.lr.ph86.us.preheader.i.i:                        ; preds = %.preheader64.us.i.i
  %i.aur = sub i64 %i.ajz, %.157.lcssa.us231.pre-phi.i.i
  %.not253.i.i = icmp ugt i64 %i.aur, %i.akq
  br i1 %.not253.i.i, label %.lr.ph86.us.i.i.preheader, label %parse_device.exit

.lr.ph86.us.i.i.preheader:                        ; preds = %.lr.ph86.us.preheader.i.i
  %i.aus = load i8, ptr %.157.lcssa.us.i.i, align 1
  %i.aut = zext i8 %i.aus to i32                  ; 2 uses
  %exitcond233.not.i.i = icmp eq i32 %i.akj, 1
  br i1 %exitcond233.not.i.i, label %._crit_edge.us.loopexit.i.i, label %.lr.ph86.us.i.i.1

.preheader68.split.i.i:                           ; preds = %.preheader68.i.i
  br i1 %.not162.i.i, label %.preheader68.split.split.i.i, label %.preheader66.us97.preheader.i.i

.preheader66.us97.preheader.i.i:                  ; preds = %.preheader68.split.i.i
  %i.auu = add nsw i32 %i.akh, -1
  %i.auv = zext nneg i32 %i.auu to i64            ; 3 uses
  %i.auw = zext nneg i32 %i.akh to i64
  %i.aux = xor i64 %i.auv, -1
  %i.auy = add i64 %i.aux, %i.ajz
  %i.auz = add nsw i32 %i.akj, -1                 ; 2 uses
  %i.ava = zext i32 %i.auz to i64                 ; 4 uses
  %wide.trip.count.i.i = zext nneg i8 %narrow.i165.i to i64
  %exitcond.not.i168.i = icmp eq i32 %i.akh, 1
  %exitcond.not.i168.i.1 = icmp eq i32 %i.akh, 2
  %exitcond195.not.i.i = icmp eq i32 %i.akj, 1
  %exitcond195.not.i.i.1 = icmp eq i32 %i.akj, 2
  %i.avb = icmp ult i32 %i.auz, 3
  br label %.preheader66.us97.i.i

.preheader66.us97.i.i:                            ; preds = %.loopexit.us.i.i, %.preheader66.us97.preheader.i.i
  %indvars.iv.i167.i = phi i64 [ 0, %.preheader66.us97.preheader.i.i ], [ %indvars.iv.next.i169.i, %.loopexit.us.i.i ] ; 2 uses
  %.05695.us99.i.i = phi ptr [ %i.akk, %.preheader66.us97.preheader.i.i ], [ %.3.lcssa.us.i.i, %.loopexit.us.i.i ] ; 6 uses
  %.05695.us99193.i.i = ptrtoaddr ptr %.05695.us99.i.i to i64 ; 2 uses
  %i.avc = sub i64 %i.ajz, %.05695.us99193.i.i
  %.not245.i.i = icmp ugt i64 %i.avc, %i.auv
  br i1 %.not245.i.i, label %.preheader66.us97.split.i.i, label %parse_device.exit

.preheader66.us97.split.i.i:                      ; preds = %.preheader66.us97.i.i
  %i.avd = load i8, ptr %.05695.us99.i.i, align 1
  %i.ave = zext i8 %i.avd to i32                  ; 2 uses
  br i1 %exitcond.not.i168.i, label %..preheader64_crit_edge.us112.i.i, label %.preheader66.us97.split.i.i.1

.preheader66.us97.split.i.i.1:                    ; preds = %.preheader66.us97.split.i.i
  %i.avf = getelementptr i8, ptr %.05695.us99.i.i, i64 1
  %i.avg = load i8, ptr %i.avf, align 1
  %i.avh = zext i8 %i.avg to i32
  %i.avi = shl nuw nsw i32 %i.avh, 8
  %i.avj = or disjoint i32 %i.avi, %i.ave         ; 2 uses
  br i1 %exitcond.not.i168.i.1, label %..preheader64_crit_edge.us112.i.i, label %.preheader66.us97.split.i.i.2

.preheader66.us97.split.i.i.2:                    ; preds = %.preheader66.us97.split.i.i.1
  %i.avk = getelementptr i8, ptr %.05695.us99.i.i, i64 2
  %i.avl = load i8, ptr %i.avk, align 1
  %i.avm = zext i8 %i.avl to i32
  %i.avn = shl nuw nsw i32 %i.avm, 16
  %i.avo = or disjoint i32 %i.avn, %i.avj
  br label %..preheader64_crit_edge.us112.i.i

.lr.ph86.us115.i.i.1:                             ; preds = %.lr.ph86.us115.i.i.preheader
  %i.avp = getelementptr i8, ptr %scevgep.i.i, i64 1
  %i.avq = load i8, ptr %i.avp, align 1
  %i.avr = zext i8 %i.avq to i32
  %i.avs = shl nuw nsw i32 %i.avr, 8
  %i.avt = or disjoint i32 %i.avs, %i.axs         ; 2 uses
  br i1 %exitcond195.not.i.i.1, label %.lr.ph92.us.preheader.i.i, label %.lr.ph86.us115.i.i.2

.lr.ph86.us115.i.i.2:                             ; preds = %.lr.ph86.us115.i.i.1
  %i.avu = getelementptr i8, ptr %scevgep.i.i, i64 2
  %i.avv = load i8, ptr %i.avu, align 1
  %i.avw = zext i8 %i.avv to i32
  %i.avx = shl nuw nsw i32 %i.avw, 16
  %i.avy = or disjoint i32 %i.avx, %i.avt
  br label %.lr.ph92.us.preheader.i.i

.lr.ph92.us.preheader.i.i:                        ; preds = %.lr.ph86.us115.i.i.2, %.lr.ph86.us115.i.i.1, %.lr.ph86.us115.i.i.preheader
  %.lcssa497 = phi i32 [ %i.axs, %.lr.ph86.us115.i.i.preheader ], [ %i.avt, %.lr.ph86.us115.i.i.1 ], [ %i.avy, %.lr.ph86.us115.i.i.2 ]
  %i.avz = getelementptr i8, ptr %.05695.us99.i.i, i64 %i.ava
  %i.awa = getelementptr i8, ptr %i.avz, i64 %i.auv
  %scevgep196.i.i = getelementptr i8, ptr %i.awa, i64 2 ; 4 uses
  %i.awb = shl i32 %.lcssa497, 8
  %.258.lcssa.us106197.i.i = ptrtoaddr ptr %scevgep196.i.i to i64
  %i.awc = sub i64 %i.ajz, %.258.lcssa.us106197.i.i
  %.not247.i.i = icmp ugt i64 %i.awc, %i.ava
  br i1 %.not247.i.i, label %.lr.ph92.us.i.i.preheader, label %parse_device.exit

.lr.ph92.us.i.i.preheader:                        ; preds = %.lr.ph92.us.preheader.i.i
  br i1 %i.avb, label %.lr.ph92.us.i.i.epil, label %.lr.ph92.us.i.i

.lr.ph92.us.i.i:                                  ; preds = %.lr.ph92.us.i.i.preheader, %.lr.ph92.us.i.i
  %.091.us.i.i = phi i32 [ %i.axa, %.lr.ph92.us.i.i ], [ 0, %.lr.ph92.us.i.i.preheader ]
  %.290.us.i.i = phi i32 [ %i.axb, %.lr.ph92.us.i.i ], [ 0, %.lr.ph92.us.i.i.preheader ] ; 4 uses
  %.389.us.i.i = phi ptr [ %i.axc, %.lr.ph92.us.i.i ], [ %scevgep196.i.i, %.lr.ph92.us.i.i.preheader ] ; 5 uses
  %i.awd = load i8, ptr %.389.us.i.i, align 1
  %i.awe = zext i8 %i.awd to i32
  %i.awf = add i32 %.091.us.i.i, %i.awe
  %i.awg = getelementptr i8, ptr %.389.us.i.i, i64 1
  %i.awh = load i8, ptr %i.awg, align 1
  %i.awi = zext i8 %i.awh to i32
  %i.awj = shl i32 %.290.us.i.i, 3
  %i.awk = or disjoint i32 %i.awj, 8
  %i.awl = shl i32 %i.awi, %i.awk
  %i.awm = add i32 %i.awl, %i.awf
  %i.awn = getelementptr i8, ptr %.389.us.i.i, i64 2
  %i.awo = load i8, ptr %i.awn, align 1
  %i.awp = zext i8 %i.awo to i32
  %i.awq = shl i32 %.290.us.i.i, 3
  %i.awr = or disjoint i32 %i.awq, 16
  %i.aws = shl i32 %i.awp, %i.awr
  %i.awt = add i32 %i.aws, %i.awm
  %i.awu = getelementptr i8, ptr %.389.us.i.i, i64 3
  %i.awv = load i8, ptr %i.awu, align 1
  %i.aww = zext i8 %i.awv to i32
  %i.awx = shl i32 %.290.us.i.i, 3
  %i.awy = or disjoint i32 %i.awx, 24
  %i.awz = shl i32 %i.aww, %i.awy
  %i.axa = add i32 %i.awz, %i.awt
  %i.axb = add nuw nsw i32 %.290.us.i.i, 4
  %i.axc = getelementptr i8, ptr %.389.us.i.i, i64 4
  br label %.lr.ph92.us.i.i, !llvm.loop !47

.lr.ph92.us.i.i.epil:                             ; preds = %.lr.ph92.us.i.i.preheader, %.lr.ph92.us.i.i.epil
  %.091.us.i.i.epil = phi i32 [ %i.axh, %.lr.ph92.us.i.i.epil ], [ 0, %.lr.ph92.us.i.i.preheader ]
  %.290.us.i.i.epil = phi i32 [ %i.axi, %.lr.ph92.us.i.i.epil ], [ 0, %.lr.ph92.us.i.i.preheader ] ; 2 uses
  %.389.us.i.i.epil = phi ptr [ %i.axj, %.lr.ph92.us.i.i.epil ], [ %scevgep196.i.i, %.lr.ph92.us.i.i.preheader ] ; 2 uses
  %epil.iter535 = phi i32 [ %epil.iter535.next, %.lr.ph92.us.i.i.epil ], [ 0, %.lr.ph92.us.i.i.preheader ]
  %i.axd = load i8, ptr %.389.us.i.i.epil, align 1
  %i.axe = zext i8 %i.axd to i32
  %i.axf = shl nuw nsw i32 %.290.us.i.i.epil, 3
  %i.axg = shl i32 %i.axe, %i.axf
  %i.axh = add i32 %i.axg, %.091.us.i.i.epil      ; 2 uses
  %i.axi = add nuw nsw i32 %.290.us.i.i.epil, 1
  %i.axj = getelementptr i8, ptr %.389.us.i.i.epil, i64 1
  %epil.iter535.next = add i32 %epil.iter535, 1   ; 2 uses
  %epil.iter535.cmp.not = icmp eq i32 %epil.iter535.next, %i.akj
  br i1 %epil.iter535.cmp.not, label %.loopexit.us.loopexit.i.i.epilog-lcssa, label %.lr.ph92.us.i.i.epil, !llvm.loop !48

.loopexit.us.loopexit.i.i.epilog-lcssa:           ; preds = %.lr.ph92.us.i.i.epil
  %i.axk = shl i32 %i.axh, 8
  %i.axl = getelementptr i8, ptr %scevgep196.i.i, i64 %i.ava
  %scevgep200.i.i = getelementptr i8, ptr %i.axl, i64 1
  br label %.loopexit.us.i.i

.loopexit.us.i.i:                                 ; preds = %..preheader64_crit_edge.us112.i.i, %.loopexit.us.loopexit.i.i.epilog-lcssa
  %.050.lcssa.us107256.i.i = phi i32 [ %i.awb, %.loopexit.us.loopexit.i.i.epilog-lcssa ], [ 0, %..preheader64_crit_edge.us112.i.i ]
  %.3.lcssa.us.i.i = phi ptr [ %scevgep200.i.i, %.loopexit.us.loopexit.i.i.epilog-lcssa ], [ %scevgep.i.i, %..preheader64_crit_edge.us112.i.i ] ; 2 uses
  %.0.lcssa.us.i.i = phi i32 [ %i.axk, %.loopexit.us.loopexit.i.i.epilog-lcssa ], [ 0, %..preheader64_crit_edge.us112.i.i ]
  %i.axm = shl i32 %.lcssa496, 8
  %i.axn = getelementptr [12 x i8], ptr %i.akm, i64 %indvars.iv.i167.i ; 3 uses
  store i32 %i.axm, ptr %i.axn, align 4
  %i.axo = getelementptr i8, ptr %i.axn, i64 4
  store i32 %.050.lcssa.us107256.i.i, ptr %i.axo, align 4
  %i.axp = getelementptr i8, ptr %i.axn, i64 8
  store i32 %.0.lcssa.us.i.i, ptr %i.axp, align 4
  %indvars.iv.next.i169.i = add nuw nsw i64 %indvars.iv.i167.i, 1 ; 2 uses
  %exitcond202.not.i.i = icmp eq i64 %indvars.iv.next.i169.i, %wide.trip.count.i.i
  br i1 %exitcond202.not.i.i, label %parse_mem.exit.i, label %.preheader66.us97.i.i, !llvm.loop !49

..preheader64_crit_edge.us112.i.i:                ; preds = %.preheader66.us97.split.i.i.2, %.preheader66.us97.split.i.i.1, %.preheader66.us97.split.i.i
  %.lcssa496 = phi i32 [ %i.ave, %.preheader66.us97.split.i.i ], [ %i.avj, %.preheader66.us97.split.i.i.1 ], [ %i.avo, %.preheader66.us97.split.i.i.2 ]
  %scevgep.i.i = getelementptr i8, ptr %.05695.us99.i.i, i64 %i.auw ; 4 uses
  br i1 %.not163.i.i, label %.loopexit.us.i.i, label %.lr.ph86.us115.preheader.i.i

.lr.ph86.us115.preheader.i.i:                     ; preds = %..preheader64_crit_edge.us112.i.i
  %i.axq = sub i64 %i.auy, %.05695.us99193.i.i
  %.not246.i.i = icmp ugt i64 %i.axq, %i.ava
  br i1 %.not246.i.i, label %.lr.ph86.us115.i.i.preheader, label %parse_device.exit

.lr.ph86.us115.i.i.preheader:                     ; preds = %.lr.ph86.us115.preheader.i.i
  %i.axr = load i8, ptr %scevgep.i.i, align 1
  %i.axs = zext i8 %i.axr to i32                  ; 2 uses
  br i1 %exitcond195.not.i.i, label %.lr.ph92.us.preheader.i.i, label %.lr.ph86.us115.i.i.1

.preheader68.split.split.i.i:                     ; preds = %.preheader68.split.i.i
  br i1 %.not163.i.i, label %.preheader66.preheader.i.i, label %.preheader66.us121.us.preheader.i.i

.preheader66.preheader.i.i:                       ; preds = %.preheader68.split.split.i.i
  %narrow250.i.i = mul nuw nsw i8 %i.akc, 12
  %narrow251.i.i = add nuw nsw i8 %narrow250.i.i, 12
  %i.axt = zext nneg i8 %narrow251.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 %i.akm, i8 0, i64 %i.axt, i1 false)
  br label %parse_mem.exit.i

.preheader66.us121.us.preheader.i.i:              ; preds = %.preheader68.split.split.i.i
  %i.axu = add nsw i32 %i.akj, -1
  %i.axv = zext nneg i32 %i.axu to i64            ; 18 uses
  %i.axw = zext nneg i32 %i.akj to i64            ; 8 uses
  %i.axx = xor i64 %i.axv, -1
  %i.axy = add i64 %i.axx, %i.ajz                 ; 8 uses
  %i.axz = shl nuw nsw i64 %i.axv, 1              ; 8 uses
  %.05695.us123.us203.i.i = ptrtoaddr ptr %i.akk to i64 ; 2 uses
  %i.aya = sub i64 %i.ajz, %.05695.us123.us203.i.i
  %.not248.i.i = icmp ugt i64 %i.aya, %i.axv
  br i1 %.not248.i.i, label %.preheader66.us121.us.split.i.i, label %parse_device.exit

.preheader66.us121.us.split.i.i:                  ; preds = %.preheader66.us121.us.preheader.i.i
  %i.ayb = load i8, ptr %i.akk, align 1
  %i.ayc = zext i8 %i.ayb to i32                  ; 2 uses
  %exitcond205.not.i.i = icmp eq i32 %i.akj, 1
  br i1 %exitcond205.not.i.i, label %._crit_edge.us137.us.i.i, label %.preheader66.us121.us.split.i.i.1

.preheader66.us121.us.split.i.i.1:                ; preds = %.preheader66.us121.us.split.i.i
  %i.ayd = getelementptr i8, ptr %.6.i, i64 2
  %i.aye = load i8, ptr %i.ayd, align 1
  %i.ayf = zext i8 %i.aye to i32
  %i.ayg = shl nuw nsw i32 %i.ayf, 8
  %i.ayh = or disjoint i32 %i.ayg, %i.ayc         ; 2 uses
  %exitcond205.not.i.i.1 = icmp eq i32 %i.akj, 2
  br i1 %exitcond205.not.i.i.1, label %._crit_edge.us137.us.i.i, label %.preheader66.us121.us.split.i.i.2

.preheader66.us121.us.split.i.i.2:                ; preds = %.preheader66.us121.us.split.i.i.1
  %i.ayi = getelementptr i8, ptr %.6.i, i64 3
  %i.ayj = load i8, ptr %i.ayi, align 1
  %i.ayk = zext i8 %i.ayj to i32
  %i.ayl = shl nuw nsw i32 %i.ayk, 16
  %i.aym = or disjoint i32 %i.ayl, %i.ayh
  br label %._crit_edge.us137.us.i.i

bb.ia:                                            ; preds = %._crit_edge.us137.us.split.i.i
  %i.ayn = getelementptr i8, ptr %scevgep206.i.i, i64 1
  %i.ayo = load i8, ptr %i.ayn, align 1
  %i.ayp = zext i8 %i.ayo to i32
  %i.ayq = shl nuw nsw i32 %i.ayp, 8
  %i.ayr = or disjoint i32 %i.ayq, %i.ayz         ; 2 uses
  %exitcond208.not.i.i.1 = icmp eq i32 %i.akj, 2
  br i1 %exitcond208.not.i.i.1, label %..loopexit_crit_edge.us141.us.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.ays = getelementptr i8, ptr %scevgep206.i.i, i64 2
  %i.ayt = load i8, ptr %i.ays, align 1
  %i.ayu = zext i8 %i.ayt to i32
  %i.ayv = shl nuw nsw i32 %i.ayu, 16
  %i.ayw = or disjoint i32 %i.ayv, %i.ayr
  br label %..loopexit_crit_edge.us141.us.i.i

._crit_edge.us137.us.i.i:                         ; preds = %.preheader66.us121.us.split.i.i.2, %.preheader66.us121.us.split.i.i.1, %.preheader66.us121.us.split.i.i
  %.lcssa492 = phi i32 [ %i.ayc, %.preheader66.us121.us.split.i.i ], [ %i.ayh, %.preheader66.us121.us.split.i.i.1 ], [ %i.aym, %.preheader66.us121.us.split.i.i.2 ]
  %i.ayx = sub i64 %i.axy, %.05695.us123.us203.i.i
  %.not249.i.i = icmp ugt i64 %i.ayx, %i.axv
  br i1 %.not249.i.i, label %._crit_edge.us137.us.split.i.i, label %parse_device.exit

._crit_edge.us137.us.split.i.i:                   ; preds = %._crit_edge.us137.us.i.i
  %scevgep206.i.i = getelementptr i8, ptr %i.akk, i64 %i.axw ; 3 uses
  %i.ayy = load i8, ptr %scevgep206.i.i, align 1
  %i.ayz = zext i8 %i.ayy to i32                  ; 2 uses
  %exitcond208.not.i.i = icmp eq i32 %i.akj, 1
  br i1 %exitcond208.not.i.i, label %..loopexit_crit_edge.us141.us.i.i, label %bb.ia

..loopexit_crit_edge.us141.us.i.i:                ; preds = %bb.ib, %bb.ia, %._crit_edge.us137.us.split.i.i
  %.lcssa493 = phi i32 [ %i.ayz, %._crit_edge.us137.us.split.i.i ], [ %i.ayr, %bb.ia ], [ %i.ayw, %bb.ib ]
  %i.aza = getelementptr i8, ptr %i.akk, i64 %i.axz ; 3 uses
  %scevgep209.i.i = getelementptr i8, ptr %i.aza, i64 2 ; 5 uses
  store i32 0, ptr %i.akm, align 4
  %i.azb = shl i32 %.lcssa492, 8
  %i.azc = getelementptr i8, ptr %1, i64 276
  store i32 %i.azb, ptr %i.azc, align 4
  %i.azd = shl i32 %.lcssa493, 8
  %i.aze = getelementptr i8, ptr %1, i64 280
  store i32 %i.azd, ptr %i.aze, align 4
  %exitcond214.not.i.i = icmp eq i8 %i.akc, 0
  br i1 %exitcond214.not.i.i, label %parse_mem.exit.i, label %.preheader66.us121.us.i.i.1

.preheader66.us121.us.i.i.1:                      ; preds = %..loopexit_crit_edge.us141.us.i.i
  %.05695.us123.us203.i.i.1 = ptrtoaddr ptr %scevgep209.i.i to i64 ; 2 uses
  %i.azf = sub i64 %i.ajz, %.05695.us123.us203.i.i.1
  %.not248.i.i.1 = icmp ugt i64 %i.azf, %i.axv
  br i1 %.not248.i.i.1, label %.preheader66.us121.us.split.i.i.1542, label %parse_device.exit

.preheader66.us121.us.split.i.i.1542:             ; preds = %.preheader66.us121.us.i.i.1
  %i.azg = load i8, ptr %scevgep209.i.i, align 1
  %i.azh = zext i8 %i.azg to i32                  ; 2 uses
  %exitcond205.not.i.i.1541 = icmp eq i32 %i.akj, 1
  br i1 %exitcond205.not.i.i.1541, label %._crit_edge.us137.us.i.i.1, label %.preheader66.us121.us.split.i.i.1.1

.preheader66.us121.us.split.i.i.1.1:              ; preds = %.preheader66.us121.us.split.i.i.1542
  %i.azi = getelementptr i8, ptr %i.aza, i64 3
  %i.azj = load i8, ptr %i.azi, align 1
  %i.azk = zext i8 %i.azj to i32
  %i.azl = shl nuw nsw i32 %i.azk, 8
  %i.azm = or disjoint i32 %i.azl, %i.azh         ; 2 uses
  %exitcond205.not.i.i.1.1 = icmp eq i32 %i.akj, 2
  br i1 %exitcond205.not.i.i.1.1, label %._crit_edge.us137.us.i.i.1, label %.preheader66.us121.us.split.i.i.2.1

.preheader66.us121.us.split.i.i.2.1:              ; preds = %.preheader66.us121.us.split.i.i.1.1
  %i.azn = getelementptr i8, ptr %i.aza, i64 4
  %i.azo = load i8, ptr %i.azn, align 1
  %i.azp = zext i8 %i.azo to i32
  %i.azq = shl nuw nsw i32 %i.azp, 16
  %i.azr = or disjoint i32 %i.azq, %i.azm
  br label %._crit_edge.us137.us.i.i.1

._crit_edge.us137.us.i.i.1:                       ; preds = %.preheader66.us121.us.split.i.i.2.1, %.preheader66.us121.us.split.i.i.1.1, %.preheader66.us121.us.split.i.i.1542
  %.lcssa492.1 = phi i32 [ %i.azh, %.preheader66.us121.us.split.i.i.1542 ], [ %i.azm, %.preheader66.us121.us.split.i.i.1.1 ], [ %i.azr, %.preheader66.us121.us.split.i.i.2.1 ]
  %i.azs = sub i64 %i.axy, %.05695.us123.us203.i.i.1
  %.not249.i.i.1 = icmp ugt i64 %i.azs, %i.axv
  br i1 %.not249.i.i.1, label %._crit_edge.us137.us.split.i.i.1, label %parse_device.exit

._crit_edge.us137.us.split.i.i.1:                 ; preds = %._crit_edge.us137.us.i.i.1
  %scevgep206.i.i.1 = getelementptr i8, ptr %scevgep209.i.i, i64 %i.axw ; 3 uses
  %i.azt = load i8, ptr %scevgep206.i.i.1, align 1
  %i.azu = zext i8 %i.azt to i32                  ; 2 uses
  %exitcond208.not.i.i.1543 = icmp eq i32 %i.akj, 1
  br i1 %exitcond208.not.i.i.1543, label %..loopexit_crit_edge.us141.us.i.i.1, label %bb.ic

bb.ic:                                            ; preds = %._crit_edge.us137.us.split.i.i.1
  %i.azv = getelementptr i8, ptr %scevgep206.i.i.1, i64 1
  %i.azw = load i8, ptr %i.azv, align 1
  %i.azx = zext i8 %i.azw to i32
  %i.azy = shl nuw nsw i32 %i.azx, 8
  %i.azz = or disjoint i32 %i.azy, %i.azu         ; 2 uses
  %exitcond208.not.i.i.1.1 = icmp eq i32 %i.akj, 2
  br i1 %exitcond208.not.i.i.1.1, label %..loopexit_crit_edge.us141.us.i.i.1, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.baa = getelementptr i8, ptr %scevgep206.i.i.1, i64 2
  %i.bab = load i8, ptr %i.baa, align 1
  %i.bac = zext i8 %i.bab to i32
  %i.bad = shl nuw nsw i32 %i.bac, 16
  %i.bae = or disjoint i32 %i.bad, %i.azz
  br label %..loopexit_crit_edge.us141.us.i.i.1

..loopexit_crit_edge.us141.us.i.i.1:              ; preds = %bb.id, %bb.ic, %._crit_edge.us137.us.split.i.i.1
  %.lcssa493.1 = phi i32 [ %i.azu, %._crit_edge.us137.us.split.i.i.1 ], [ %i.azz, %bb.ic ], [ %i.bae, %bb.id ]
  %i.baf = getelementptr i8, ptr %scevgep209.i.i, i64 %i.axz ; 3 uses
  %scevgep209.i.i.1 = getelementptr i8, ptr %i.baf, i64 2 ; 5 uses
  %i.bag = getelementptr i8, ptr %1, i64 284
end_hunk_3
begin_hunk_4_@pccard_validate_cis:bb.a
bb.s:                                             ; preds = %bb.r, %destroy_cis_cache.exit130
  %.2139 = phi i32 [ %.091146, %bb.r ], [ %.2138, %destroy_cis_cache.exit130 ]
  %.193 = phi i32 [ 0, %bb.r ], [ %.198137, %destroy_cis_cache.exit130 ]
  %.not117 = icmp eq ptr %1, null
  br i1 %.not117, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %.2139, ptr %1, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void @kfree(ptr noundef nonnull %i.m) #11
  tail call void @kfree(ptr noundef nonnull %i.q) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ -22, %bb.d ], [ -12, %bb.f ], [ -12, %bb.g ], [ %.193, %bb.u ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pccard_read_tuple(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pccard_show_cis(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i64 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %6 = alloca %struct.tuple_t, align 8            ; 15 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp sgt i64 %4, 511
  br i1 %i.b, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 1, ptr %i.a, align 4
  %i.c = add i64 %5, %4
  %i.d = icmp ugt i64 %i.c, 512
  %i.e = sub i64 512, %4
  %spec.select = select i1 %i.d, i64 %i.e, i64 %5
  %i.f = getelementptr i8, ptr %1, i64 -544       ; 5 uses
  %i.g = getelementptr i8, ptr %1, i64 -524       ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 -516
  %i.k = load i16, ptr %i.j, align 4
  %.not25 = icmp eq i16 %i.k, 0
  br i1 %.not25, label %bb.d, label %.thread38

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @pccard_validate_cis(ptr noundef %i.f, ptr noundef nonnull %i.a) #12
  %.not26 = icmp eq i32 %i.l, 0
  br i1 %.not26, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 4
  %i.m = icmp eq i32 %.pre, 0
  br i1 %i.m, label %.sink.split, label %.thread38

.thread38:                                        ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 64), align 16
  %i.o = call noalias align 8 dereferenceable_or_null(256) ptr @__kmalloc_cache_noprof(ptr noundef %i.n, i32 noundef 3264, i64 noundef range(i64 0, 4294967328) 256) #15 ; 6 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.r, label %_kmalloc_noprof.exit.i

_kmalloc_noprof.exit.i:                           ; preds = %.thread38
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 72), align 8
  %i.q = call noalias align 8 dereferenceable_or_null(258) ptr @__kmalloc_cache_noprof(ptr noundef %i.p, i32 noundef 3264, i64 noundef range(i64 0, 4294967328) 258) #15 ; 8 uses
  %.not65.i = icmp eq ptr %i.q, null
  br i1 %.not65.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %_kmalloc_noprof.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  store i32 3, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 -1, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 22
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %pccard_get_tuple_data.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.g, align 4
  %i.u = and i32 %i.t, 32776
  %or.cond.i.i = icmp eq i32 %i.u, 8
  br i1 %or.cond.i.i, label %pccard_get_first_tuple.exit.i, label %pccard_get_tuple_data.exit.thread.i

pccard_get_first_tuple.exit.i:                    ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 272, ptr %i.v, align 8
  %i.w = call i32 @pccard_get_next_tuple(ptr noundef nonnull %i.f, i32 noundef 255, ptr noundef nonnull %6) #12
  %i.x = icmp eq i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 21
  br i1 %i.x, label %.lr.ph86.split.preheader.i, label %pccard_get_tuple_data.exit.thread.i

.lr.ph86.split.preheader.i:                       ; preds = %pccard_get_first_tuple.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ae = getelementptr i8, ptr %i.q, i64 1
  %i.af = add i64 %spec.select, %4                ; 4 uses
  %scevgep.i = getelementptr nuw i8, ptr %i.q, i64 2
  br label %.lr.ph86.split.i

.lr.ph86.split.i:                                 ; preds = %bb.p, %.lr.ph86.split.preheader.i
  %.05885.i = phi i64 [ %i.av, %bb.p ], [ 0, %.lr.ph86.split.preheader.i ] ; 4 uses
  %.05984.i = phi i64 [ %.3.i, %bb.p ], [ 0, %.lr.ph86.split.preheader.i ] ; 4 uses
  store ptr %i.o, ptr %i.z, align 8
  store i8 -1, ptr %i.aa, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(255) %i.o, i8 0, i64 255, i1 false)
  %i.ag = load i8, ptr %i.y, align 1              ; 8 uses
  %i.ah = load i8, ptr %i.s, align 2              ; 4 uses
  %i.ai = icmp ult i8 %i.ag, %i.ah
  br i1 %i.ai, label %pccard_get_tuple_data.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph86.split.i
  store i8 %i.ag, ptr %i.ab, align 8
  %i.aj = icmp eq i8 %i.ag, %i.ah
  br i1 %i.aj, label %pccard_get_tuple_data.exit.thread77.i, label %pccard_get_tuple_data.exit.i

pccard_get_tuple_data.exit.i:                     ; preds = %bb.h
  %narrow.i.i = sub nuw i8 %i.ag, %i.ah
  %i.ak = load i16, ptr %i.v, align 8
  %i.al = lshr i16 %i.ak, 8
  %i.am = and i16 %i.al, 15
  %i.an = zext nneg i16 %i.am to i32
  %i.ao = load i32, ptr %i.ac, align 8
  %i.ap = zext i8 %i.ah to i32
  %i.aq = add i32 %i.ao, %i.ap
  %i.ar = zext i8 %narrow.i.i to i64
  %i.as = call fastcc i32 @read_cis_cache(ptr noundef %i.f, i32 noundef %i.an, i32 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull %i.o) #12, !srcloc !37
  %.not25.i.not.i = icmp eq i32 %i.as, 0
  br i1 %.not25.i.not.i, label %pccard_get_tuple_data.exit.thread77.i, label %pccard_get_tuple_data.exit.thread.i

pccard_get_tuple_data.exit.thread77.i:            ; preds = %pccard_get_tuple_data.exit.i, %bb.h
  %i.at = add i64 %.05885.i, 2
  %i.au = zext i8 %i.ag to i64                    ; 4 uses
  %i.av = add i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp slt i64 %4, %i.av
  %.pre.i = load i8, ptr %i.ad, align 4           ; 2 uses
  br i1 %i.aw, label %bb.i, label %.loopexit.i

bb.i:                                             ; preds = %pccard_get_tuple_data.exit.thread77.i
  store i8 %.pre.i, ptr %i.q, align 8
  store i8 %i.ag, ptr %i.ae, align 1
  %.not94.i = icmp eq i8 %i.ag, 0
  br i1 %.not94.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %scevgep.i, ptr nonnull align 8 %i.o, i64 %i.au, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.i
  %xtraiter = and i64 %i.au, 1
  %i.ax = add nuw nsw i64 %i.au, 2
  %unroll_iter = and i64 %i.ax, 510
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %bb.n ] ; 4 uses
  %.16081.i = phi i64 [ %.05984.i, %.preheader.i ], [ %.2.i.1, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i ], [ %niter.next.1, %bb.n ]
  %i.ay = add i64 %indvars.iv.i, %.05885.i        ; 2 uses
  %.not68.i = icmp sge i64 %i.ay, %4
  %i.az = icmp ult i64 %i.ay, %i.af
  %or.cond70.i = and i1 %.not68.i, %i.az
  br i1 %or.cond70.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr i8, ptr %i.q, i64 %indvars.iv.i
  %i.bb = load i8, ptr %i.ba, align 2
  %i.bc = getelementptr i8, ptr %3, i64 %.16081.i
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = add i64 %.16081.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.i = phi i64 [ %i.bd, %bb.k ], [ %.16081.i, %bb.j ] ; 3 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = add i64 %indvars.iv.next.i, %.05885.i   ; 2 uses
  %.not68.i.1 = icmp sge i64 %i.be, %4
  %i.bf = icmp ult i64 %i.be, %i.af
  %or.cond70.i.1 = and i1 %.not68.i.1, %i.bf
  br i1 %or.cond70.i.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr i8, ptr %i.q, i64 %indvars.iv.next.i
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr i8, ptr %3, i64 %.2.i
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = add i64 %.2.i, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2.i.1 = phi i64 [ %i.bj, %bb.m ], [ %.2.i, %bb.l ] ; 5 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.j, !llvm.loop !57

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa
  %lcmp.mod41 = trunc i8 %i.ag to i1
  call void @llvm.assume(i1 %lcmp.mod41)
  %i.bk = add i64 %indvars.iv.next.i.1, %.05885.i ; 2 uses
  %.not68.i.epil = icmp sge i64 %i.bk, %4
  %i.bl = icmp ult i64 %i.bk, %i.af
  %or.cond70.i.epil = and i1 %.not68.i.epil, %i.bl
  br i1 %or.cond70.i.epil, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %.epil.preheader
  %i.bm = getelementptr i8, ptr %i.q, i64 %indvars.iv.next.i.1
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = getelementptr i8, ptr %3, i64 %.2.i.1
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = add i64 %.2.i.1, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.o, %.epil.preheader, %pccard_get_tuple_data.exit.thread77.i
  %.3.i = phi i64 [ %.05984.i, %pccard_get_tuple_data.exit.thread77.i ], [ %.2.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %i.bp, %bb.o ], [ %.2.i.1, %.epil.preheader ] ; 3 uses
  %i.bq = icmp uge i64 %i.av, %i.af
  %i.br = icmp eq i8 %.pre.i, -1
  %or.cond.i = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond.i, label %pccard_get_tuple_data.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %.loopexit.i
  %i.bs = call i32 @pccard_get_next_tuple(ptr noundef nonnull %i.f, i32 noundef 255, ptr noundef nonnull %6) #12
  %.not66.i = icmp eq i32 %i.bs, 0
  br i1 %.not66.i, label %.lr.ph86.split.i, label %pccard_get_tuple_data.exit.thread.i, !llvm.loop !58

pccard_get_tuple_data.exit.thread.i:              ; preds = %bb.p, %.loopexit.i, %pccard_get_tuple_data.exit.i, %.lr.ph86.split.i, %pccard_get_first_tuple.exit.i, %bb.g, %bb.f
  %.4.i = phi i64 [ 0, %pccard_get_first_tuple.exit.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ %.3.i, %.loopexit.i ], [ %.3.i, %bb.p ], [ %.05984.i, %pccard_get_tuple_data.exit.i ], [ %.05984.i, %.lr.ph86.split.i ]
  call void @kfree(ptr noundef nonnull %i.q) #11
  br label %bb.q

bb.q:                                             ; preds = %pccard_get_tuple_data.exit.thread.i, %_kmalloc_noprof.exit.i
  %.5.i = phi i64 [ %.4.i, %pccard_get_tuple_data.exit.thread.i ], [ -12, %_kmalloc_noprof.exit.i ]
  call void @kfree(ptr noundef nonnull %i.o) #11
  br label %bb.r

bb.r:                                             ; preds = %.thread38, %bb.q
  %.0.i = phi i64 [ %.5.i, %bb.q ], [ -12, %.thread38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.b, %bb.d, %bb.r
  %.1.ph = phi i64 [ %.0.i, %bb.r ], [ -61, %bb.e ], [ -19, %bb.b ], [ -5, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i64 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @pccard_store_cis(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @security_locked_down(i32 noundef 11) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %i.a to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 -544       ; 2 uses
  %.not18 = icmp ne i64 %4, 0
  %i.d = icmp ugt i64 %5, 511
  %or.cond = or i1 %.not18, %i.d
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 -524
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 8
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @pcmcia_replace_cis(ptr noundef %i.c, ptr noundef %3, i64 noundef %5) #12
  %.not20 = icmp eq i32 %i.h, 0
  br i1 %.not20, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @pcmcia_parse_uevents(ptr noundef %i.c, i32 noundef 16) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.f, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ -5, %bb.e ], [ -22, %bb.c ], [ -19, %bb.d ], [ %5, %bb.f ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pcmcia_find_mem_region(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ioremap(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pcmcia_parse_uevents(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone "no-builtin-wcslen" }
attributes #13 = { nounwind }
attributes #14 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #15 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #16 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i64 3743}
!11 = !{i64 2156314342}
!12 = !{i64 2156311888}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{i64 4594}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = !{i64 5799}
!19 = distinct !{!19, !14}
!20 = !{i64 6486}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = !{!"auto-init"}
!26 = !{i64 13437}
!27 = !{i64 11802}
!28 = !{i64 12415}
!29 = distinct !{!29, !14}
!30 = !{i64 12723}
!31 = !{i64 13762}
!32 = !{i64 14242}
!33 = !{i64 14460}
!34 = !{i64 14896}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = !{i64 15990}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !46}
end_hunk_4
