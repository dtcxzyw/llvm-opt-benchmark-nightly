Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/f2s?download=true
inline.NumInlined: 28
inline.NumDeleted: 16
begin_hunk_0_@float_to_shortest_decimal_bufn:bb.a
  %i.ec = sub nsw i32 1, %i.cu                    ; 2 uses
  %i.ed = mul nuw nsw i32 %i.ec, 1217359
  %i.ee = lshr i32 %i.ed, 19
  %i.ef = zext i32 %i.ec to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr @FLOAT_POW5_SPLIT, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8            ; 2 uses
  %i.ei = lshr i64 %i.eh, 32
  %i.ej = and i64 %i.eh, 4294967295
  %i.ek = mul nuw nsw i64 %i.ej, %i.db
  %i.el = mul nuw nsw i64 %i.ei, %i.db
  %i.em = lshr i64 %i.ek, 32
  %i.en = add nuw nsw i64 %i.em, %i.el
  %i.eo = add nuw nsw i32 %i.ct, 27
  %i.ep = sub nsw i32 %i.eo, %i.ee
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = lshr i64 %i.en, %i.eq
  %i.es = trunc i64 %i.er to i32
  %i.et = urem i32 %i.es, 10
  %i.eu = trunc nuw nsw i32 %i.et to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1125.i = phi i8 [ %i.eu, %bb.s ], [ 0, %bb.r ] ; 4 uses
  %i.ev = icmp eq i32 %i.ct, 1
  br i1 %i.ev, label %.thread176.thread233.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ew = icmp samesign ult i32 %i.cs, 32505856
  br i1 %i.ew, label %.split.i, label %.thread176.thread.i

.split.i:                                         ; preds = %bb.u
  %i.ex = add nsw i32 %i.ct, -1
  %notmask.i.i = shl nsw i32 -1, %i.ex
  %i.ey = xor i32 %notmask.i.i, -1
  %i.ez = and i32 %i.v, %i.ey
  %i.fa = icmp eq i32 %i.ez, 0
  %.0148246.i = trunc i64 %i.dn to i32            ; 2 uses
  br i1 %i.fa, label %.preheader.i, label %.preheader183.i

.thread176.thread.i:                              ; preds = %bb.u, %multipleOfPowerOf5.exit173.i, %bb.o
  %.0148.in.ph.i = phi i64 [ %i.dn, %bb.u ], [ %i.ax, %multipleOfPowerOf5.exit173.i ], [ %i.ax, %bb.o ]
  %.2144.ph.i = phi i32 [ %i.dt, %bb.u ], [ %i.cr, %multipleOfPowerOf5.exit173.i ], [ %i.bd, %bb.o ]
  %.0137.ph.i = phi i32 [ %i.dz, %bb.u ], [ %i.bj, %multipleOfPowerOf5.exit173.i ], [ %i.bj, %bb.o ]
  %.0136.ph.i = phi i32 [ %i.cu, %bb.u ], [ %i.ae, %multipleOfPowerOf5.exit173.i ], [ %i.ae, %bb.o ]
  %.2126.ph.i = phi i8 [ %.1125.i, %bb.u ], [ %.0124175.i, %multipleOfPowerOf5.exit173.i ], [ %.0124.i, %bb.o ]
  %.0148223.i = trunc i64 %.0148.in.ph.i to i32
  br label %.preheader183.i

.thread176.thread233.i:                           ; preds = %bb.t, %bb.q
  %.2126.ph232.i = phi i8 [ %.1125.i, %bb.t ], [ 0, %bb.q ]
  %.0148240.i = trunc i64 %i.dn to i32
  br label %.preheader.i

.thread176.i:                                     ; preds = %.lr.ph.i.i.i
  %.not257.i = icmp ult i32 %i.ck, %i.ae
  %.0148.i = trunc i64 %i.ax to i32               ; 2 uses
  br i1 %.not257.i, label %.preheader183.i, label %.preheader.i

.preheader183.i:                                  ; preds = %.thread176.i, %.thread176.thread.i, %.split.i
  %.0148229.i = phi i32 [ %.0148223.i, %.thread176.thread.i ], [ %.0148.i, %.thread176.i ], [ %.0148246.i, %.split.i ] ; 2 uses
  %.2126228.i = phi i8 [ %.2126.ph.i, %.thread176.thread.i ], [ %.0124175.i, %.thread176.i ], [ %.1125.i, %.split.i ]
  %.0136227.i = phi i32 [ %.0136.ph.i, %.thread176.thread.i ], [ %i.ae, %.thread176.i ], [ %i.cu, %.split.i ]
  %.0137225.i = phi i32 [ %.0137.ph.i, %.thread176.thread.i ], [ %i.bj, %.thread176.i ], [ %i.dz, %.split.i ] ; 2 uses
  %.2144224.i = phi i32 [ %.2144.ph.i, %.thread176.thread.i ], [ %i.bd, %.thread176.i ], [ %i.dt, %.split.i ]
  %i.fb = insertelement <2 x i32> poison, i32 %.2144224.i, i64 0
  %i.fc = insertelement <2 x i32> %i.fb, i32 %.0137225.i, i64 1
  %i.fd = udiv <2 x i32> %i.fc, splat (i32 10)    ; 3 uses
  %i.fe = extractelement <2 x i32> %i.fd, i64 0
  %i.ff = extractelement <2 x i32> %i.fd, i64 1
  %i.fg = icmp samesign ugt i32 %i.fe, %i.ff
  br i1 %i.fg, label %.lr.ph.i, label %bb.v

.preheader.i:                                     ; preds = %.thread176.i, %.thread176.thread233.i, %.split.i
  %.0148245.i = phi i32 [ %.0148240.i, %.thread176.thread233.i ], [ %.0148.i, %.thread176.i ], [ %.0148246.i, %.split.i ] ; 2 uses
  %.2126244.i = phi i8 [ %.2126.ph232.i, %.thread176.thread233.i ], [ %.0124175.i, %.thread176.i ], [ %.1125.i, %.split.i ] ; 2 uses
  %.0136243.i = phi i32 [ %i.cu, %.thread176.thread233.i ], [ %i.ae, %.thread176.i ], [ %i.cu, %.split.i ]
  %.0137242.i = phi i32 [ %i.dz, %.thread176.thread233.i ], [ %i.bj, %.thread176.i ], [ %i.dz, %.split.i ] ; 2 uses
  %.2144241.i = phi i32 [ %.pre.i, %.thread176.thread233.i ], [ %i.bd, %.thread176.i ], [ %i.dt, %.split.i ]
  %i.fh = insertelement <2 x i32> poison, i32 %.2144241.i, i64 0
  %i.fi = insertelement <2 x i32> %i.fh, i32 %.0137242.i, i64 1
  %i.fj = udiv <2 x i32> %i.fi, splat (i32 10)    ; 3 uses
  %i.fk = extractelement <2 x i32> %i.fj, i64 0
  %i.fl = extractelement <2 x i32> %i.fj, i64 1
  %i.fm = icmp samesign ugt i32 %i.fk, %i.fl
  br i1 %i.fm, label %.lr.ph195.i, label %._crit_edge196.i

.lr.ph195.i:                                      ; preds = %.preheader.i, %.lr.ph195.i
  %.0122194.i = phi i32 [ %i.ft, %.lr.ph195.i ], [ 0, %.preheader.i ]
  %.3127193.i = phi i8 [ %i.fr, %.lr.ph195.i ], [ %.2126244.i, %.preheader.i ]
  %.3132192.i = phi i1 [ %i.fp, %.lr.ph195.i ], [ true, %.preheader.i ]
  %.1149191.i = phi i32 [ %i.fs, %.lr.ph195.i ], [ %.0148245.i, %.preheader.i ] ; 2 uses
  %i.fn = phi <2 x i32> [ %i.fu, %.lr.ph195.i ], [ %i.fj, %.preheader.i ] ; 2 uses
  %i.fo = icmp eq i8 %.3127193.i, 0
  %i.fp = select i1 %i.fo, i1 %.3132192.i, i1 false ; 2 uses
  %i.fq = urem i32 %.1149191.i, 10
  %i.fr = trunc nuw nsw i32 %i.fq to i8           ; 2 uses
  %i.fs = udiv i32 %.1149191.i, 10                ; 2 uses
  %i.ft = add i32 %.0122194.i, 1                  ; 2 uses
  %i.fu = udiv <2 x i32> %i.fn, splat (i32 10)    ; 3 uses
  %i.fv = extractelement <2 x i32> %i.fu, i64 0
  %i.fw = extractelement <2 x i32> %i.fu, i64 1
  %i.fx = icmp samesign ugt i32 %i.fv, %i.fw
  br i1 %i.fx, label %.lr.ph195.i, label %._crit_edge196.loopexit.i, !llvm.loop !4

._crit_edge196.loopexit.i:                        ; preds = %.lr.ph195.i
  %i.fy = xor i1 %i.fp, true
  %i.fz = extractelement <2 x i32> %i.fn, i64 1
  br label %._crit_edge196.i

._crit_edge196.i:                                 ; preds = %._crit_edge196.loopexit.i, %.preheader.i
  %.1149.lcssa.i = phi i32 [ %.0148245.i, %.preheader.i ], [ %i.fs, %._crit_edge196.loopexit.i ] ; 3 uses
  %.1138.lcssa.i = phi i32 [ %.0137242.i, %.preheader.i ], [ %i.fz, %._crit_edge196.loopexit.i ]
  %.3132.lcssa.i = phi i1 [ false, %.preheader.i ], [ %i.fy, %._crit_edge196.loopexit.i ]
  %.3127.lcssa.i = phi i8 [ %.2126244.i, %.preheader.i ], [ %i.fr, %._crit_edge196.loopexit.i ] ; 2 uses
  %.0122.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.ft, %._crit_edge196.loopexit.i ]
  %i.ga = icmp ne i8 %.3127.lcssa.i, 5
  %or.cond4.i = select i1 %.3132.lcssa.i, i1 true, i1 %i.ga
  %i.gb = trunc i32 %.1149.lcssa.i to i1
  %or.cond.i23 = select i1 %or.cond4.i, i1 true, i1 %i.gb
  %i.gc = icmp eq i32 %.1149.lcssa.i, %.1138.lcssa.i
  %i.gd = icmp samesign ugt i8 %.3127.lcssa.i, 4
  %i.ge = select i1 %or.cond.i23, i1 %i.gd, i1 false
  %i.gf = select i1 %i.gc, i1 true, i1 %i.ge
  br label %bb.w

.lr.ph.i:                                         ; preds = %.preheader183.i, %.lr.ph.i
  %.3186.i = phi i32 [ %i.gj, %.lr.ph.i ], [ 0, %.preheader183.i ]
  %.4152185.i = phi i32 [ %i.gh, %.lr.ph.i ], [ %.0148229.i, %.preheader183.i ] ; 2 uses
  %i.gg = phi <2 x i32> [ %i.gk, %.lr.ph.i ], [ %i.fd, %.preheader183.i ] ; 2 uses
  %i.gh = udiv i32 %.4152185.i, 10                ; 2 uses
  %i.gi = urem i32 %.4152185.i, 10
  %i.gj = add i32 %.3186.i, 1                     ; 2 uses
  %i.gk = udiv <2 x i32> %i.gg, splat (i32 10)    ; 3 uses
  %i.gl = extractelement <2 x i32> %i.gk, i64 0
  %i.gm = extractelement <2 x i32> %i.gk, i64 1
  %i.gn = icmp samesign ugt i32 %i.gl, %i.gm
  br i1 %i.gn, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.go = trunc nuw nsw i32 %i.gi to i8
  %i.gp = extractelement <2 x i32> %i.gg, i64 1
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %.preheader183.i
  %.4152.lcssa.i = phi i32 [ %i.gh, %._crit_edge.i ], [ %.0148229.i, %.preheader183.i ] ; 2 uses
  %.4141.lcssa.i = phi i32 [ %i.gp, %._crit_edge.i ], [ %.0137225.i, %.preheader183.i ]
  %.7.lcssa.i = phi i8 [ %i.go, %._crit_edge.i ], [ %.2126228.i, %.preheader183.i ]
  %.3.lcssa.i = phi i32 [ %i.gj, %._crit_edge.i ], [ 0, %.preheader183.i ]
  %i.gq = icmp eq i32 %.4152.lcssa.i, %.4141.lcssa.i
  %i.gr = icmp samesign ugt i8 %.7.lcssa.i, 4
  %i.gs = select i1 %i.gq, i1 true, i1 %i.gr
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge196.i
  %.sink256.i = phi i1 [ %i.gs, %bb.v ], [ %i.gf, %._crit_edge196.i ]
  %.4152.lcssa.sink.i = phi i32 [ %.4152.lcssa.i, %bb.v ], [ %.1149.lcssa.i, %._crit_edge196.i ]
  %.0136226.i = phi i32 [ %.0136227.i, %bb.v ], [ %.0136243.i, %._crit_edge196.i ]
  %.4.i = phi i32 [ %.3.lcssa.i, %bb.v ], [ %.0122.lcssa.i, %._crit_edge196.i ]
  %i.gt = zext i1 %.sink256.i to i32
  %i.gu = add i32 %.4152.lcssa.sink.i, %i.gt      ; 3 uses
  %i.gv = add i32 %.4.i, %.0136226.i              ; 3 uses
  %i.gw = zext i32 %i.gv to i64
  %i.gx = shl nuw i64 %i.gw, 32                   ; 2 uses
  %i.gy = icmp ugt i32 %i.gu, 99999999
  br i1 %i.gy, label %decimalLength.exit.i, label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w
  %.sroa.3.0.extract.trunc.i82 = phi i32 [ 0, %.thread ], [ %i.gv, %bb.w ] ; 7 uses
  %.sroa.0.080 = phi i32 [ %i.q, %.thread ], [ %i.gu, %bb.w ] ; 14 uses
  %.sroa.5.078 = phi i64 [ 0, %.thread ], [ %i.gx, %bb.w ] ; 7 uses
  %i.gz = icmp samesign ugt i32 %.sroa.0.080, 9999999
  br i1 %i.gz, label %decimalLength.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ha = icmp samesign ugt i32 %.sroa.0.080, 999999
  br i1 %i.ha, label %decimalLength.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hb = icmp samesign ugt i32 %.sroa.0.080, 99999
  br i1 %i.hb, label %decimalLength.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hc = icmp samesign ugt i32 %.sroa.0.080, 9999
  br i1 %i.hc, label %decimalLength.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hd = icmp samesign ugt i32 %.sroa.0.080, 999
  br i1 %i.hd, label %decimalLength.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.he = icmp samesign ugt i32 %.sroa.0.080, 99
  br i1 %i.he, label %decimalLength.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hf = icmp samesign ugt i32 %.sroa.0.080, 9
  %..i.i = select i1 %i.hf, i32 2, i32 1
  br label %decimalLength.exit.i

decimalLength.exit.i:                             ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.sroa.3.0.extract.trunc.i83 = phi i32 [ %.sroa.3.0.extract.trunc.i82, %bb.ac ], [ %i.gv, %bb.w ], [ %.sroa.3.0.extract.trunc.i82, %bb.x ], [ %.sroa.3.0.extract.trunc.i82, %bb.y ], [ %.sroa.3.0.extract.trunc.i82, %bb.z ], [ %.sroa.3.0.extract.trunc.i82, %bb.aa ], [ %.sroa.3.0.extract.trunc.i82, %bb.ab ], [ %.sroa.3.0.extract.trunc.i82, %bb.ad ] ; 2 uses
  %.sroa.0.081 = phi i32 [ %.sroa.0.080, %bb.ac ], [ %i.gu, %bb.w ], [ %.sroa.0.080, %bb.x ], [ %.sroa.0.080, %bb.y ], [ %.sroa.0.080, %bb.z ], [ %.sroa.0.080, %bb.aa ], [ %.sroa.0.080, %bb.ab ], [ %.sroa.0.080, %bb.ad ] ; 5 uses
  %.sroa.5.079 = phi i64 [ %.sroa.5.078, %bb.ac ], [ %i.gx, %bb.w ], [ %.sroa.5.078, %bb.x ], [ %.sroa.5.078, %bb.y ], [ %.sroa.5.078, %bb.z ], [ %.sroa.5.078, %bb.aa ], [ %.sroa.5.078, %bb.ab ], [ %.sroa.5.078, %bb.ad ] ; 3 uses
  %.0.i.i = phi i32 [ 3, %bb.ac ], [ 9, %bb.w ], [ 8, %bb.x ], [ 7, %bb.y ], [ 6, %bb.z ], [ 5, %bb.aa ], [ 4, %bb.ab ], [ %..i.i, %bb.ad ] ; 7 uses
  %i.hg = add i32 %.0.i.i, %.sroa.3.0.extract.trunc.i83 ; 10 uses
  %i.hh = add i32 %i.hg, -1                       ; 2 uses
  br i1 %i.b, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %decimalLength.exit.i
  store i8 45, ptr %1, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %decimalLength.exit.i
  %.080.i = phi i32 [ 1, %bb.ae ], [ 0, %decimalLength.exit.i ] ; 6 uses
  %i.hi = add i32 %i.hg, 3
  %or.cond.i24 = icmp ult i32 %i.hi, 10
  br i1 %or.cond.i24, label %bb.ag, label %bb.ay

bb.ag:                                            ; preds = %bb.af
  %i.hj = zext nneg i32 %.080.i to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %i.hj ; 10 uses
  %i.hl = icmp slt i32 %i.hg, 1
  br i1 %i.hl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hm = sub nsw i32 2, %i.hg
  br label %.sink.split.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.hn = icmp slt i64 %.sroa.5.079, 0
  br i1 %i.hn, label %bb.aj, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ai, %bb.ah
  %.sink.i.i = phi i64 [ 3472328296227679792, %bb.ah ], [ 3472328296227680304, %bb.ai ]
  %.0.ph.i.i = phi i32 [ %i.hm, %bb.ah ], [ 0, %bb.ai ]
  store i64 %.sink.i.i, ptr %i.hk, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i.i, %bb.ai
  %.0.i94.i = phi i32 [ 1, %bb.ai ], [ %.0.ph.i.i, %.sink.split.i.i ] ; 5 uses
  %i.ho = icmp ugt i32 %.sroa.0.081, 9999
  br i1 %i.ho, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj
  %i.hp = zext nneg i32 %.0.i94.i to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hp
  %i.hr = zext nneg i32 %.0.i.i to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hr
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i.i
  %.06979.i.i = phi i32 [ %.sroa.0.081, %.lr.ph.i.i ], [ %i.ht, %bb.ak ] ; 3 uses
  %.07178.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %5, %bb.ak ] ; 2 uses
  %i.ht = udiv i32 %.06979.i.i, 10000             ; 3 uses
  %.neg.i.i.a = mul i32 %i.ht, -10000
  %i.hu = add i32 %.neg.i.i.a, %.06979.i.i        ; 2 uses
  %i.hv = urem i32 %i.hu, 100
  %i.hw = shl nuw nsw i32 %i.hv, 1
  %i.hx = udiv i32 %i.hu, 100
  %i.hy = shl nuw nsw i32 %i.hx, 1
  %2 = zext i32 %.07178.i.i to i64
  %3 = sub nsw i64 0, %2
  %4 = getelementptr inbounds i8, ptr %i.hs, i64 %3 ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %4, i64 -2
  %i.ia = zext nneg i32 %i.hw to i64
  %i.ib = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ia
  %i.ic = load i16, ptr %i.ib, align 2
  store i16 %i.ic, ptr %i.hz, align 1
  %i.id = getelementptr inbounds i8, ptr %4, i64 -4
  %i.ie = zext nneg i32 %i.hy to i64
  %i.if = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2
  store i16 %i.ig, ptr %i.id, align 1
  %5 = add i32 %.07178.i.i, 4                     ; 2 uses
  %6 = icmp ugt i32 %.06979.i.i, 99999999
  br i1 %6, label %bb.ak, label %._crit_edge.i.i, !llvm.loop !6

._crit_edge.i.i:                                  ; preds = %bb.ak, %bb.aj
  %.071.lcssa.i.i = phi i32 [ 0, %bb.aj ], [ %5, %bb.ak ] ; 3 uses
  %.069.lcssa.i.i = phi i32 [ %.sroa.0.081, %bb.aj ], [ %i.ht, %bb.ak ] ; 3 uses
  %i.ih = icmp samesign ugt i32 %.069.lcssa.i.i, 99
  br i1 %i.ih, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i
  %.lhs.trunc.i.i = trunc nuw i32 %.069.lcssa.i.i to i16 ; 2 uses
  %i.ii = urem i16 %.lhs.trunc.i.i, 100
  %i.ij = shl nuw nsw i16 %i.ii, 1
  %i.ik = udiv i16 %.lhs.trunc.i.i, 100
  %.zext77.i.i = zext nneg i16 %i.ik to i32
  %i.il = zext nneg i32 %.0.i94.i to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.il
  %i.in = zext nneg i32 %.0.i.i to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.in
  %i.ip = zext i32 %.071.lcssa.i.i to i64
  %i.iq = sub nsw i64 0, %i.ip
  %i.ir = getelementptr inbounds i8, ptr %i.io, i64 %i.iq
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -2
  %i.it = zext nneg i16 %i.ij to i64
  %i.iu = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2
  store i16 %i.iv, ptr %i.is, align 1
  %i.iw = or disjoint i32 %.071.lcssa.i.i, 2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i.i
  %.172.i.i = phi i32 [ %i.iw, %bb.al ], [ %.071.lcssa.i.i, %._crit_edge.i.i ]
  %.170.i.i = phi i32 [ %.zext77.i.i, %bb.al ], [ %.069.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ix = icmp samesign ugt i32 %.170.i.i, 9
  br i1 %i.ix, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.iy = shl nuw nsw i32 %.170.i.i, 1
  %i.iz = zext nneg i32 %.0.i94.i to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.iz
  %i.jb = zext nneg i32 %.0.i.i to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb
  %i.jd = zext i32 %.172.i.i to i64
  %i.je = sub nsw i64 0, %i.jd
  %i.jf = getelementptr inbounds i8, ptr %i.jc, i64 %i.je
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -2
  %i.jh = zext nneg i32 %i.iy to i64
  %i.ji = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.jh
  %i.jj = load i16, ptr %i.ji, align 2
  store i16 %i.jj, ptr %i.jg, align 1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.jk = trunc nuw nsw i32 %.170.i.i to i8
  %i.jl = or disjoint i8 %i.jk, 48
  %i.jm = zext nneg i32 %.0.i94.i to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.jm
  store i8 %i.jl, ptr %i.jn, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jo = icmp eq i32 %.0.i94.i, 1
  br i1 %i.jo, label %bb.aq, label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.jp = and i32 %i.hg, 4
  %.not.i.i = icmp eq i32 %i.jp, 0
  br i1 %.not.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hk, i64 1
  %i.jr = load i32, ptr %i.jq, align 1
  store i32 %i.jr, ptr %i.hk, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1.i.i = phi i32 [ 5, %bb.ar ], [ 1, %bb.aq ]  ; 3 uses
  %i.js = and i32 %i.hg, 2
  %.not74.i.i = icmp eq i32 %i.js, 0
  br i1 %.not74.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jt = zext nneg i32 %.1.i.i to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.jt ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 -1
  %i.jw = load i16, ptr %i.ju, align 1
  store i16 %i.jw, ptr %i.jv, align 1
  %i.jx = or disjoint i32 %.1.i.i, 2
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.2.i.i = phi i32 [ %i.jx, %bb.at ], [ %.1.i.i, %bb.as ]
  %i.jy = and i32 %i.hg, 1
  %.not75.i.i = icmp eq i32 %i.jy, 0
  br i1 %.not75.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jz = zext nneg i32 %.2.i.i to i64
  %i.ka = getelementptr i8, ptr %i.hk, i64 %i.jz  ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1
  %i.kc = getelementptr i8, ptr %i.ka, i64 -1
  store i8 %i.kb, ptr %i.kc, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.kd = sext i32 %i.hg to i64
  %i.ke = getelementptr inbounds i8, ptr %i.hk, i64 %i.kd
  store i8 46, ptr %i.ke, align 1
  %i.kf = add nuw nsw i32 %.0.i.i, 1
  br label %to_chars_f.exit.i

bb.ax:                                            ; preds = %bb.ap
  %i.kg = sub i32 2, %.sroa.3.0.extract.trunc.i83
  %i.kh = icmp slt i64 %.sroa.5.079, 0
  %spec.select.i.i = select i1 %i.kh, i32 %i.kg, i32 %i.hg
  br label %to_chars_f.exit.i

to_chars_f.exit.i:                                ; preds = %bb.ax, %bb.aw
  %.3.i.i = phi i32 [ %i.kf, %bb.aw ], [ %spec.select.i.i, %bb.ax ]
  %.lobit = lshr i32 %i.a, 31
  %i.ki = add i32 %.3.i.i, %.lobit
  br label %copy_special_str.exit

bb.ay:                                            ; preds = %bb.af
  %i.kj = icmp eq i64 %.sroa.5.079, 0
  br i1 %i.kj, label %.preheader.i31, label %.loopexit.i

.preheader.i31:                                   ; preds = %bb.ay, %bb.az
  %.084.i = phi i32 [ %i.ko, %bb.az ], [ %.0.i.i, %bb.ay ] ; 3 uses
  %.081.i = phi i32 [ %i.km, %bb.az ], [ %.sroa.0.081, %bb.ay ] ; 5 uses
  %i.kk = and i32 %.081.i, 1
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.az, label %.loopexit.i

bb.az:                                            ; preds = %.preheader.i31
  %i.km = udiv i32 %.081.i, 10                    ; 2 uses
  %.neg.i32 = mul i32 %i.km, -10
  %i.kn = sub i32 0, %.081.i
  %.not.i33 = icmp eq i32 %.neg.i32, %i.kn
  %i.ko = add i32 %.084.i, -1
  br i1 %.not.i33, label %.preheader.i31, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.az, %.preheader.i31, %bb.ay
  %.286.i = phi i32 [ %.0.i.i, %bb.ay ], [ %.084.i, %.preheader.i31 ], [ %.084.i, %bb.az ] ; 5 uses
  %.283.i = phi i32 [ %.sroa.0.081, %bb.ay ], [ %.081.i, %.preheader.i31 ], [ %.081.i, %bb.az ] ; 3 uses
  %i.kp = icmp ugt i32 %.283.i, 9999
  br i1 %i.kp, label %.lr.ph.i30, label %._crit_edge.i25

.lr.ph.i30:                                       ; preds = %.loopexit.i
  %i.kq = zext nneg i32 %.080.i to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 %i.kq
  %i.ks = zext i32 %.286.i to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ks
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.lr.ph.i30
  %.399.i = phi i32 [ %.283.i, %.lr.ph.i30 ], [ %i.ku, %bb.ba ] ; 3 uses
  %.08898.i = phi i32 [ 0, %.lr.ph.i30 ], [ %10, %bb.ba ] ; 2 uses
  %i.ku = udiv i32 %.399.i, 10000                 ; 3 uses
  %.neg93.i.a = mul i32 %i.ku, -10000
  %i.kv = add i32 %.neg93.i.a, %.399.i            ; 2 uses
  %i.kw = urem i32 %i.kv, 100
  %i.kx = shl nuw nsw i32 %i.kw, 1
  %i.ky = udiv i32 %i.kv, 100
  %i.kz = shl nuw nsw i32 %i.ky, 1
  %7 = zext i32 %.08898.i to i64
  %8 = sub nsw i64 0, %7
  %9 = getelementptr inbounds i8, ptr %i.kt, i64 %8 ; 2 uses
  %i.la = getelementptr inbounds i8, ptr %9, i64 -1
  %i.lb = zext nneg i32 %i.kx to i64
  %i.lc = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.lb
  %i.ld = load i16, ptr %i.lc, align 2
  store i16 %i.ld, ptr %i.la, align 1
  %i.le = getelementptr inbounds i8, ptr %9, i64 -3
  %i.lf = zext nneg i32 %i.kz to i64
  %i.lg = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.lf
  %i.lh = load i16, ptr %i.lg, align 2
  store i16 %i.lh, ptr %i.le, align 1
  %10 = add i32 %.08898.i, 4                      ; 2 uses
  %11 = icmp ugt i32 %.399.i, 99999999
  br i1 %11, label %bb.ba, label %._crit_edge.i25, !llvm.loop !7

._crit_edge.i25:                                  ; preds = %bb.ba, %.loopexit.i
  %.088.lcssa.i = phi i32 [ 0, %.loopexit.i ], [ %10, %bb.ba ] ; 3 uses
  %.3.lcssa.i26 = phi i32 [ %.283.i, %.loopexit.i ], [ %i.ku, %bb.ba ] ; 3 uses
  %i.li = icmp samesign ugt i32 %.3.lcssa.i26, 99
  br i1 %i.li, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i25
  %.lhs.trunc.i = trunc nuw i32 %.3.lcssa.i26 to i16 ; 2 uses
  %i.lj = urem i16 %.lhs.trunc.i, 100
  %i.lk = shl nuw nsw i16 %i.lj, 1
  %i.ll = udiv i16 %.lhs.trunc.i, 100
  %.zext96.i = zext nneg i16 %i.ll to i32
  %i.lm = zext nneg i32 %.080.i to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 %i.lm
  %i.lo = zext i32 %.286.i to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lo
  %i.lq = zext i32 %.088.lcssa.i to i64
  %i.lr = sub nsw i64 0, %i.lq
  %i.ls = getelementptr inbounds i8, ptr %i.lp, i64 %i.lr
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -1
  %i.lu = zext nneg i16 %i.lk to i64
  %i.lv = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.lu
  %i.lw = load i16, ptr %i.lv, align 2
  store i16 %i.lw, ptr %i.lt, align 1
  %i.lx = or disjoint i32 %.088.lcssa.i, 2
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i25
  %.189.i = phi i32 [ %i.lx, %bb.bb ], [ %.088.lcssa.i, %._crit_edge.i25 ]
  %.4.i27 = phi i32 [ %.zext96.i, %bb.bb ], [ %.3.lcssa.i26, %._crit_edge.i25 ] ; 3 uses
  %i.ly = icmp samesign ugt i32 %.4.i27, 9
  br i1 %i.ly, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lz = shl nuw nsw i32 %.4.i27, 1
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ma ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 1
  %i.md = load i8, ptr %i.mc, align 1
  %i.me = add i32 %.286.i, %.080.i
  %i.mf = sub i32 %i.me, %.189.i
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 %i.mg
  store i8 %i.md, ptr %i.mh, align 1
  %i.mi = load i8, ptr %i.mb, align 2
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.mj = trunc nuw nsw i32 %.4.i27 to i8
  %i.mk = or disjoint i8 %i.mj, 48
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sink.i = phi i8 [ %i.mk, %bb.be ], [ %i.mi, %bb.bd ]
  %i.ml = zext nneg i32 %.080.i to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 %i.ml ; 2 uses
  store i8 %.sink.i, ptr %i.mm, align 1
  %i.mn = icmp ugt i32 %.286.i, 1
  br i1 %i.mn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 1
  store i8 46, ptr %i.mo, align 1
  %i.mp = add i32 %.286.i, 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn.i = phi i32 [ %i.mp, %bb.bg ], [ 1, %bb.bf ]
  %.1.i28 = add i32 %.pn.i, %.080.i               ; 4 uses
  %i.mq = add i32 %.1.i28, 1
  %i.mr = sext i32 %.1.i28 to i64
  %i.ms = getelementptr inbounds i8, ptr %1, i64 %i.mr
  store i8 101, ptr %i.ms, align 1
  %i.mt = icmp slt i32 %i.hh, 0                   ; 2 uses
  %i.mu = sext i32 %i.mq to i64
  %i.mv = getelementptr inbounds i8, ptr %1, i64 %i.mu
  %i.mw = sub i32 1, %i.hg
  %spec.select = select i1 %i.mt, i8 45, i8 43
  %spec.select97 = select i1 %i.mt, i32 %i.mw, i32 %i.hh
  store i8 %spec.select, ptr %i.mv, align 1
  %.2.i = add i32 %.1.i28, 2
  %i.mx = sext i32 %.2.i to i64
  %i.my = getelementptr inbounds i8, ptr %1, i64 %i.mx
  %i.mz = shl i32 %spec.select97, 1
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds i8, ptr @DIGIT_TABLE, i64 %i.na
  %i.nc = load i16, ptr %i.nb, align 2
  store i16 %i.nc, ptr %i.my, align 1
  %i.nd = add i32 %.1.i28, 4
  br label %copy_special_str.exit

copy_special_str.exit:                            ; preds = %bb.bh, %to_chars_f.exit.i, %bb.h, %bb.g, %bb.c
  %.0 = phi i32 [ %i.k, %bb.h ], [ 3, %bb.c ], [ %i.j, %bb.g ], [ %i.ki, %to_chars_f.exit.i ], [ %i.nd, %bb.bh ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @float_to_shortest_decimal_buf(float noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @float_to_shortest_decimal_bufn(float noundef %0, ptr noundef %1) ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  store i8 0, ptr %i.c, align 1
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @float_to_shortest_decimal(float noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 16) #4 ; 3 uses
  %i.b = tail call i32 @float_to_shortest_decimal_bufn(float noundef %0, ptr noundef %i.a)
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  store i8 0, ptr %i.d, align 1
  ret ptr %i.a
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !8}
!5 = distinct !{!5, !8}
!6 = distinct !{!6, !8}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
end_hunk_0
