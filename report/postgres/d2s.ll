Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/d2s?download=true
inline.NumInlined: 35
inline.NumDeleted: 19
begin_hunk_0_@double_to_shortest_decimal_bufn:bb.a

._crit_edge244.loopexit.i:                        ; preds = %.lr.ph243.i
  %i.el = xor i1 %i.eg, true
  br label %._crit_edge244.i

._crit_edge244.i:                                 ; preds = %._crit_edge244.loopexit.i, %.preheader.i
  %.1185.lcssa.i = phi i64 [ %.0184272.i, %.preheader.i ], [ %i.eb, %._crit_edge244.loopexit.i ]
  %.0141.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.ei, %._crit_edge244.loopexit.i ]
  %.0135.lcssa.i = phi i8 [ 0, %.preheader.i ], [ %i.eh, %._crit_edge244.loopexit.i ] ; 2 uses
  %.4126.lcssa.i = phi i1 [ false, %.preheader.i ], [ %i.el, %._crit_edge244.loopexit.i ]
  %.1117.lcssa.i = phi i64 [ %.0116274.i, %.preheader.i ], [ %i.ed, %._crit_edge244.loopexit.i ] ; 3 uses
  %i.em = icmp ne i8 %.0135.lcssa.i, 5
  %or.cond4.i = select i1 %.4126.lcssa.i, i1 true, i1 %i.em
  %i.en = trunc i64 %.1117.lcssa.i to i1
  %or.cond.i22 = select i1 %or.cond4.i, i1 true, i1 %i.en
  %i.eo = icmp eq i64 %.1117.lcssa.i, %.1185.lcssa.i
  %i.ep = icmp ugt i8 %.0135.lcssa.i, 4
  %i.eq = select i1 %or.cond.i22, i1 %i.ep, i1 false
  %i.er = select i1 %i.eo, i1 true, i1 %i.eq
  %i.es = zext i1 %i.er to i64
  %i.et = add i64 %.1117.lcssa.i, %i.es
  br label %bb.t

.thread.i:                                        ; preds = %bb.p, %bb.o, %multipleOfPowerOf5.exit174.i, %multipleOfPowerOf5.exit.i, %bb.l
  %.0116202.i = phi i64 [ %i.dq, %bb.p ], [ %i.dq, %bb.o ], [ %i.bm, %multipleOfPowerOf5.exit174.i ], [ %i.bm, %bb.l ], [ %i.bm, %multipleOfPowerOf5.exit.i ] ; 3 uses
  %.0119201.i = phi i32 [ %i.ck, %bb.p ], [ %i.ck, %bb.o ], [ %i.ae, %multipleOfPowerOf5.exit174.i ], [ %i.ae, %bb.l ], [ %i.ae, %multipleOfPowerOf5.exit.i ]
  %.0184199.i = phi i64 [ %i.dj, %bb.p ], [ %i.dj, %bb.o ], [ %i.bf, %multipleOfPowerOf5.exit174.i ], [ %i.bf, %bb.l ], [ %i.bf, %multipleOfPowerOf5.exit.i ] ; 2 uses
  %.0187198.i = phi i64 [ %i.cz, %bb.p ], [ %i.cz, %bb.o ], [ %i.cb, %multipleOfPowerOf5.exit174.i ], [ %i.av, %bb.l ], [ %i.av, %multipleOfPowerOf5.exit.i ] ; 2 uses
  %i.eu = udiv i64 %.0187198.i, 100               ; 2 uses
  %i.ev = udiv i64 %.0184199.i, 100               ; 2 uses
  %i.ew = icmp samesign ugt i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread.i
  %i.ex = udiv i64 %.0116202.i, 100               ; 2 uses
  %.neg162.i = mul i64 %i.ex, 4294967196
  %i.ey = add i64 %.neg162.i, %.0116202.i
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = icmp ugt i32 %i.ez, 49
  %i.fb = zext i1 %i.fa to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread.i
  %.3190.i = phi i64 [ %i.eu, %bb.q ], [ %.0187198.i, %.thread.i ]
  %.3.i = phi i64 [ %i.ev, %bb.q ], [ %.0184199.i, %.thread.i ] ; 2 uses
  %.5146.i = phi i32 [ 2, %bb.q ], [ 0, %.thread.i ] ; 2 uses
  %.6.i = phi i64 [ %i.ex, %bb.q ], [ %.0116202.i, %.thread.i ] ; 2 uses
  %.0115.i = phi i64 [ %i.fb, %bb.q ], [ 0, %.thread.i ]
  %i.fc = udiv i64 %.3190.i, 10                   ; 2 uses
  %i.fd = udiv i64 %.3.i, 10                      ; 2 uses
  %.not231.i = icmp samesign ugt i64 %i.fc, %i.fd
  br i1 %.not231.i, label %.lr.ph.i, label %bb.s

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %i.fe = phi i64 [ %i.fj, %.lr.ph.i ], [ %i.fd, %bb.r ] ; 2 uses
  %i.ff = phi i64 [ %i.fi, %.lr.ph.i ], [ %i.fc, %bb.r ]
  %.7233.i = phi i64 [ %i.fg, %.lr.ph.i ], [ %.6.i, %bb.r ] ; 2 uses
  %.6147232.i = phi i32 [ %i.fh, %.lr.ph.i ], [ %.5146.i, %bb.r ]
  %i.fg = udiv i64 %.7233.i, 10                   ; 3 uses
  %i.fh = add i32 %.6147232.i, 1                  ; 2 uses
  %i.fi = udiv i64 %i.ff, 10                      ; 2 uses
  %i.fj = udiv i64 %i.fe, 10                      ; 2 uses
  %.not.i21 = icmp samesign ugt i64 %i.fi, %i.fj
  br i1 %.not.i21, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.neg163.le.i = mul i64 %i.fg, 4294967286
  %i.fk = add i64 %.neg163.le.i, %.7233.i
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = icmp ugt i32 %i.fl, 4
  %i.fn = zext i1 %i.fm to i64
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i, %bb.r
  %.4.lcssa.i = phi i64 [ %i.fe, %._crit_edge.i ], [ %.3.i, %bb.r ]
  %.6147.lcssa.i = phi i32 [ %i.fh, %._crit_edge.i ], [ %.5146.i, %bb.r ]
  %.7.lcssa.i = phi i64 [ %i.fg, %._crit_edge.i ], [ %.6.i, %bb.r ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %i.fn, %._crit_edge.i ], [ %.0115.i, %bb.r ]
  %i.fo = icmp eq i64 %.7.lcssa.i, %.4.lcssa.i
  %i.fp = select i1 %i.fo, i64 1, i64 %.1.lcssa.i
  %i.fq = add i64 %i.fp, %.7.lcssa.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge244.i
  %.0119200.i = phi i32 [ %.0119273.i, %._crit_edge244.i ], [ %.0119201.i, %bb.s ]
  %.8149.i = phi i32 [ %.0141.lcssa.i, %._crit_edge244.i ], [ %.6147.lcssa.i, %bb.s ]
  %.0134.i = phi i64 [ %i.et, %._crit_edge244.i ], [ %i.fq, %bb.s ] ; 3 uses
  %i.fr = add i32 %.8149.i, %.0119200.i           ; 2 uses
  %i.fs = icmp ugt i64 %.0134.i, 9999999999999999
  br i1 %i.fs, label %decimalLength.exit.i, label %bb.u

bb.u:                                             ; preds = %.thread33, %bb.t
  %.sroa.0.038 = phi i64 [ %i.s, %.thread33 ], [ %.0134.i, %bb.t ] ; 30 uses
  %.sroa.5.036 = phi i32 [ 0, %.thread33 ], [ %i.fr, %bb.t ] ; 15 uses
  %i.ft = icmp samesign ugt i64 %.sroa.0.038, 999999999999999
  br i1 %i.ft, label %decimalLength.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fu = icmp samesign ugt i64 %.sroa.0.038, 99999999999999
  br i1 %i.fu, label %decimalLength.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fv = icmp samesign ugt i64 %.sroa.0.038, 9999999999999
  br i1 %i.fv, label %decimalLength.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fw = icmp samesign ugt i64 %.sroa.0.038, 999999999999
  br i1 %i.fw, label %decimalLength.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fx = icmp samesign ugt i64 %.sroa.0.038, 99999999999
  br i1 %i.fx, label %decimalLength.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fy = icmp samesign ugt i64 %.sroa.0.038, 9999999999
  br i1 %i.fy, label %decimalLength.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fz = icmp samesign ugt i64 %.sroa.0.038, 999999999
  br i1 %i.fz, label %decimalLength.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ga = icmp samesign ugt i64 %.sroa.0.038, 99999999
  br i1 %i.ga, label %decimalLength.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gb = icmp samesign ugt i64 %.sroa.0.038, 9999999
  br i1 %i.gb, label %decimalLength.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gc = icmp samesign ugt i64 %.sroa.0.038, 999999
  br i1 %i.gc, label %decimalLength.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gd = icmp samesign ugt i64 %.sroa.0.038, 99999
  br i1 %i.gd, label %decimalLength.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ge = icmp samesign ugt i64 %.sroa.0.038, 9999
  br i1 %i.ge, label %decimalLength.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gf = icmp samesign ugt i64 %.sroa.0.038, 999
  br i1 %i.gf, label %decimalLength.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gg = icmp samesign ugt i64 %.sroa.0.038, 99
  br i1 %i.gg, label %decimalLength.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gh = icmp samesign ugt i64 %.sroa.0.038, 9
  %..i.i = select i1 %i.gh, i32 2, i32 1
  br label %decimalLength.exit.i

decimalLength.exit.i:                             ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.sroa.0.039 = phi i64 [ %.sroa.0.038, %bb.ah ], [ %.0134.i, %bb.t ], [ %.sroa.0.038, %bb.u ], [ %.sroa.0.038, %bb.v ], [ %.sroa.0.038, %bb.w ], [ %.sroa.0.038, %bb.x ], [ %.sroa.0.038, %bb.y ], [ %.sroa.0.038, %bb.z ], [ %.sroa.0.038, %bb.aa ], [ %.sroa.0.038, %bb.ab ], [ %.sroa.0.038, %bb.ac ], [ %.sroa.0.038, %bb.ad ], [ %.sroa.0.038, %bb.ae ], [ %.sroa.0.038, %bb.af ], [ %.sroa.0.038, %bb.ag ], [ %.sroa.0.038, %bb.ai ] ; 6 uses
  %.sroa.5.037 = phi i32 [ %.sroa.5.036, %bb.ah ], [ %i.fr, %bb.t ], [ %.sroa.5.036, %bb.u ], [ %.sroa.5.036, %bb.v ], [ %.sroa.5.036, %bb.w ], [ %.sroa.5.036, %bb.x ], [ %.sroa.5.036, %bb.y ], [ %.sroa.5.036, %bb.z ], [ %.sroa.5.036, %bb.aa ], [ %.sroa.5.036, %bb.ab ], [ %.sroa.5.036, %bb.ac ], [ %.sroa.5.036, %bb.ad ], [ %.sroa.5.036, %bb.ae ], [ %.sroa.5.036, %bb.af ], [ %.sroa.5.036, %bb.ag ], [ %.sroa.5.036, %bb.ai ] ; 5 uses
  %.0.i.i = phi i32 [ 3, %bb.ah ], [ 17, %bb.t ], [ 16, %bb.u ], [ 15, %bb.v ], [ 14, %bb.w ], [ 13, %bb.x ], [ 12, %bb.y ], [ 11, %bb.z ], [ 10, %bb.aa ], [ 9, %bb.ab ], [ 8, %bb.ac ], [ 7, %bb.ad ], [ 6, %bb.ae ], [ 5, %bb.af ], [ 4, %bb.ag ], [ %..i.i, %bb.ai ] ; 8 uses
  %i.gi = add i32 %.0.i.i, %.sroa.5.037           ; 11 uses
  %i.gj = add i32 %i.gi, -1                       ; 2 uses
  br i1 %i.b, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %decimalLength.exit.i
  store i8 45, ptr %1, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %decimalLength.exit.i
  %.0124.i = phi i32 [ 1, %bb.aj ], [ 0, %decimalLength.exit.i ] ; 7 uses
  %i.gk = add i32 %i.gi, 3
  %or.cond.i23 = icmp ult i32 %i.gk, 19
  br i1 %or.cond.i23, label %bb.al, label %bb.bi

bb.al:                                            ; preds = %bb.ak
  %i.gl = zext nneg i32 %.0124.i to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 %i.gl ; 13 uses
  %i.gn = icmp slt i32 %i.gi, 1
  br i1 %i.gn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.go = sub nsw i32 2, %i.gi
  store i64 3472328296227679792, ptr %i.gm, align 1
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.gp = icmp slt i32 %.sroa.5.037, 0
  br i1 %i.gp, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gm, i8 48, i64 16, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.0.i144.i = phi i32 [ %i.go, %bb.am ], [ 0, %bb.ao ], [ 1, %bb.an ] ; 6 uses
  %.not.i.i = icmp ult i64 %.sroa.0.039, 4294967296
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gq = udiv i64 %.sroa.0.039, 100000000        ; 2 uses
  %.neg.i.i = mul i64 %i.gq, 4194967296
  %i.gr = add i64 %.neg.i.i, %.sroa.0.039
  %i.gs = trunc i64 %i.gr to i32                  ; 2 uses
  %i.gt = udiv i32 %i.gs, 10000
  %i.gu = insertelement <2 x i32> poison, i32 %i.gs, i64 0
  %i.gv = insertelement <2 x i32> %i.gu, i32 %i.gt, i64 1
  %i.gw = urem <2 x i32> %i.gv, splat (i32 10000)
  %2 = trunc nuw nsw <2 x i32> %i.gw to <2 x i16>
  %.frozen = freeze <2 x i16> %2                  ; 2 uses
  %3 = udiv <2 x i16> %.frozen, splat (i16 100)   ; 3 uses
  %4 = extractelement <2 x i16> %3, i64 0
  %i.gx = shl nuw nsw i16 %4, 1
  %5 = mul <2 x i16> %3, splat (i16 100)
  %.decomposed = sub <2 x i16> %.frozen, %5       ; 2 uses
  %i.gy = extractelement <2 x i16> %.decomposed, i64 0
  %i.gz = shl nuw nsw i16 %i.gy, 1
  %i.ha = extractelement <2 x i16> %.decomposed, i64 1
  %i.hb = shl nuw nsw i16 %i.ha, 1
  %i.hc = extractelement <2 x i16> %3, i64 1
  %i.hd = shl nuw nsw i16 %i.hc, 1
  %i.he = zext nneg i32 %.0.i144.i to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.he
  %i.hg = zext nneg i32 %.0.i.i to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hg ; 4 uses
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -2
  %i.hj = zext nneg i16 %i.gz to i64
  %i.hk = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2
  store i16 %i.hl, ptr %i.hi, align 1
  %i.hm = getelementptr inbounds i8, ptr %i.hh, i64 -4
  %i.hn = zext nneg i16 %i.gx to i64
  %i.ho = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hn
  %i.hp = load i16, ptr %i.ho, align 2
  store i16 %i.hp, ptr %i.hm, align 1
  %i.hq = getelementptr inbounds i8, ptr %i.hh, i64 -6
  %i.hr = zext nneg i16 %i.hb to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2
  store i16 %i.ht, ptr %i.hq, align 1
  %i.hu = getelementptr inbounds i8, ptr %i.hh, i64 -8
  %i.hv = zext nneg i16 %i.hd to i64
  %i.hw = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2
  store i16 %i.hx, ptr %i.hu, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0110.i.i = phi i32 [ 8, %bb.aq ], [ 0, %bb.ap ] ; 2 uses
  %.0109.i.i = phi i64 [ %i.gq, %bb.aq ], [ %.sroa.0.039, %bb.ap ]
  %i.hy = trunc i64 %.0109.i.i to i32             ; 3 uses
  %i.hz = icmp ugt i32 %i.hy, 9999
  br i1 %i.hz, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ar
  %i.ia = zext nneg i32 %.0.i144.i to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ia
  %i.ic = zext nneg i32 %.0.i.i to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ic
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i.i
  %.1111132.i.i = phi i32 [ %.0110.i.i, %.lr.ph.i.i ], [ %i.iv, %bb.as ] ; 2 uses
  %.0113131.i.i = phi i32 [ %i.hy, %.lr.ph.i.i ], [ %i.ie, %bb.as ] ; 3 uses
  %i.ie = udiv i32 %.0113131.i.i, 10000           ; 3 uses
  %.neg120.i.i = mul i32 %i.ie, -10000
  %i.if = add i32 %.neg120.i.i, %.0113131.i.i     ; 2 uses
  %i.ig = urem i32 %i.if, 100
  %i.ih = shl nuw nsw i32 %i.ig, 1
  %i.ii = udiv i32 %i.if, 100
  %i.ij = shl nuw nsw i32 %i.ii, 1
  %i.ik = zext i32 %.1111132.i.i to i64
  %i.il = sub nsw i64 0, %i.ik
  %i.im = getelementptr inbounds i8, ptr %i.id, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -2
  %i.io = zext nneg i32 %i.ih to i64
  %i.ip = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2
  store i16 %i.iq, ptr %i.in, align 1
  %i.ir = getelementptr inbounds i8, ptr %i.im, i64 -4
  %i.is = zext nneg i32 %i.ij to i64
  %i.it = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2
  store i16 %i.iu, ptr %i.ir, align 1
  %i.iv = add i32 %.1111132.i.i, 4                ; 2 uses
  %i.iw = icmp ugt i32 %.0113131.i.i, 99999999
  br i1 %i.iw, label %bb.as, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %bb.as, %bb.ar
  %.0113.lcssa.i.i = phi i32 [ %i.hy, %bb.ar ], [ %i.ie, %bb.as ] ; 3 uses
  %.1111.lcssa.i.i = phi i32 [ %.0110.i.i, %bb.ar ], [ %i.iv, %bb.as ] ; 3 uses
  %i.ix = icmp samesign ugt i32 %.0113.lcssa.i.i, 99
  br i1 %i.ix, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i
  %.lhs.trunc.i.i = trunc nuw i32 %.0113.lcssa.i.i to i16 ; 2 uses
  %i.iy = urem i16 %.lhs.trunc.i.i, 100
  %i.iz = shl nuw nsw i16 %i.iy, 1
  %i.ja = udiv i16 %.lhs.trunc.i.i, 100
  %.zext122.i.i = zext nneg i16 %i.ja to i32
  %i.jb = zext nneg i32 %.0.i144.i to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.jb
  %i.jd = zext nneg i32 %.0.i.i to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jd
  %i.jf = zext i32 %.1111.lcssa.i.i to i64
  %i.jg = sub nsw i64 0, %i.jf
  %i.jh = getelementptr inbounds i8, ptr %i.je, i64 %i.jg
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -2
  %i.jj = zext nneg i16 %i.iz to i64
  %i.jk = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2
  store i16 %i.jl, ptr %i.ji, align 1
  %i.jm = or disjoint i32 %.1111.lcssa.i.i, 2
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i
  %.1114.i.i = phi i32 [ %.zext122.i.i, %bb.at ], [ %.0113.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.2112.i.i = phi i32 [ %i.jm, %bb.at ], [ %.1111.lcssa.i.i, %._crit_edge.i.i ]
  %i.jn = icmp samesign ugt i32 %.1114.i.i, 9
  br i1 %i.jn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jo = shl nuw nsw i32 %.1114.i.i, 1
  %i.jp = zext nneg i32 %.0.i144.i to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.jp
  %i.jr = zext nneg i32 %.0.i.i to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jr
  %i.jt = zext i32 %.2112.i.i to i64
  %i.ju = sub nsw i64 0, %i.jt
  %i.jv = getelementptr inbounds i8, ptr %i.js, i64 %i.ju
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -2
  %i.jx = zext nneg i32 %i.jo to i64
  %i.jy = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.jx
  %i.jz = load i16, ptr %i.jy, align 2
  store i16 %i.jz, ptr %i.jw, align 1
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.ka = trunc nuw nsw i32 %.1114.i.i to i8
  %i.kb = or disjoint i8 %i.ka, 48
  %i.kc = zext nneg i32 %.0.i144.i to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.kc
  store i8 %i.kb, ptr %i.kd, align 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ke = icmp eq i32 %.0.i144.i, 1
  br i1 %i.ke, label %bb.ay, label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.kf = and i32 %i.gi, 8
  %.not116.i.i = icmp eq i32 %i.kf, 0
  br i1 %.not116.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.kh = load i64, ptr %i.kg, align 1
  store i64 %i.kh, ptr %i.gm, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.1.i.i = phi i32 [ 9, %bb.az ], [ 1, %bb.ay ]  ; 3 uses
  %i.ki = and i32 %i.gi, 4
  %.not117.i.i = icmp eq i32 %i.ki, 0
  br i1 %.not117.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kj = zext nneg i32 %.1.i.i to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -1
  %i.km = load i32, ptr %i.kk, align 1
  store i32 %i.km, ptr %i.kl, align 1
  %i.kn = or disjoint i32 %.1.i.i, 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.2.i.i = phi i32 [ %i.kn, %bb.bb ], [ %.1.i.i, %bb.ba ] ; 3 uses
  %i.ko = and i32 %i.gi, 2
  %.not118.i.i = icmp eq i32 %i.ko, 0
  br i1 %.not118.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kp = zext nneg i32 %.2.i.i to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.kp ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 -1
  %i.ks = load i16, ptr %i.kq, align 1
  store i16 %i.ks, ptr %i.kr, align 1
  %i.kt = add nuw nsw i32 %.2.i.i, 2
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.3.i.i = phi i32 [ %i.kt, %bb.bd ], [ %.2.i.i, %bb.bc ]
  %i.ku = and i32 %i.gi, 1
  %.not119.i.i = icmp eq i32 %i.ku, 0
  br i1 %.not119.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kv = zext nneg i32 %.3.i.i to i64
  %i.kw = getelementptr i8, ptr %i.gm, i64 %i.kv  ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1
  %i.ky = getelementptr i8, ptr %i.kw, i64 -1
  store i8 %i.kx, ptr %i.ky, align 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.kz = sext i32 %i.gi to i64
  %i.la = getelementptr inbounds i8, ptr %i.gm, i64 %i.kz
  store i8 46, ptr %i.la, align 1
  %i.lb = add nuw nsw i32 %.0.i.i, 1
  br label %to_chars_df.exit.i

bb.bh:                                            ; preds = %bb.ax
  %i.lc = sub i32 2, %.sroa.5.037
  %i.ld = icmp slt i32 %.sroa.5.037, 0
  %spec.select.i.i = select i1 %i.ld, i32 %i.lc, i32 %i.gi
  br label %to_chars_df.exit.i

to_chars_df.exit.i:                               ; preds = %bb.bh, %bb.bg
  %.4.i.i = phi i32 [ %i.lb, %bb.bg ], [ %spec.select.i.i, %bb.bh ]
  %.lobit = lshr i64 %i.a, 63
  %i.le = trunc nuw nsw i64 %.lobit to i32
  %i.lf = add i32 %.4.i.i, %i.le
  br label %copy_special_str.exit

bb.bi:                                            ; preds = %bb.ak
  %i.lg = icmp eq i32 %.sroa.5.037, 0
  br i1 %i.lg, label %.preheader.i28, label %.loopexit.i

.preheader.i28:                                   ; preds = %bb.bi, %bb.bj
  %.0129.i = phi i32 [ %i.lm, %bb.bj ], [ %.0.i.i, %bb.bi ] ; 3 uses
  %.0125.i = phi i64 [ %i.lj, %bb.bj ], [ %.sroa.0.039, %bb.bi ] ; 5 uses
  %i.lh = and i64 %.0125.i, 1
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %bb.bj, label %.loopexit.i

bb.bj:                                            ; preds = %.preheader.i28
  %i.lj = udiv i64 %.0125.i, 10                   ; 2 uses
  %.neg.i29 = mul i64 %i.lj, 4294967286
  %i.lk = add i64 %.neg.i29, %.0125.i
  %i.ll = and i64 %i.lk, 4294967294
  %.not.i30 = icmp eq i64 %i.ll, 0
  %i.lm = add i32 %.0129.i, -1
  br i1 %.not.i30, label %.preheader.i28, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bj, %.preheader.i28, %bb.bi
  %.2131.i = phi i32 [ %.0.i.i, %bb.bi ], [ %.0129.i, %.preheader.i28 ], [ %.0129.i, %bb.bj ] ; 6 uses
  %.2127.i = phi i64 [ %.sroa.0.039, %bb.bi ], [ %.0125.i, %.preheader.i28 ], [ %.0125.i, %bb.bj ] ; 4 uses
  %.not141.i = icmp ult i64 %.2127.i, 4294967296
  br i1 %.not141.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.i
  %i.ln = udiv i64 %.2127.i, 100000000            ; 2 uses
  %.neg142.i = mul i64 %i.ln, 4194967296
  %i.lo = add i64 %.neg142.i, %.2127.i
  %i.lp = trunc i64 %i.lo to i32                  ; 2 uses
  %i.lq = udiv i32 %i.lp, 10000
  %i.lr = insertelement <2 x i32> poison, i32 %i.lp, i64 0
  %i.ls = insertelement <2 x i32> %i.lr, i32 %i.lq, i64 1
  %i.lt = urem <2 x i32> %i.ls, splat (i32 10000)
  %6 = trunc nuw nsw <2 x i32> %i.lt to <2 x i16>
  %.frozen124 = freeze <2 x i16> %6               ; 2 uses
  %7 = udiv <2 x i16> %.frozen124, splat (i16 100) ; 3 uses
  %8 = extractelement <2 x i16> %7, i64 0
  %i.lu = shl nuw nsw i16 %8, 1
  %9 = mul <2 x i16> %7, splat (i16 100)
  %.decomposed125 = sub <2 x i16> %.frozen124, %9 ; 2 uses
  %i.lv = extractelement <2 x i16> %.decomposed125, i64 0
  %i.lw = shl nuw nsw i16 %i.lv, 1
  %i.lx = extractelement <2 x i16> %.decomposed125, i64 1
  %i.ly = shl nuw nsw i16 %i.lx, 1
  %i.lz = extractelement <2 x i16> %7, i64 1
  %i.ma = shl nuw nsw i16 %i.lz, 1
  %i.mb = zext nneg i32 %.0124.i to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 %i.mb
  %i.md = zext i32 %.2131.i to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.md ; 4 uses
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 -1
  %i.mg = zext nneg i16 %i.lw to i64
  %i.mh = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.mg
  %i.mi = load i16, ptr %i.mh, align 2
  store i16 %i.mi, ptr %i.mf, align 1
  %i.mj = getelementptr inbounds i8, ptr %i.me, i64 -3
  %i.mk = zext nneg i16 %i.lu to i64
  %i.ml = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.mk
  %i.mm = load i16, ptr %i.ml, align 2
  store i16 %i.mm, ptr %i.mj, align 1
  %i.mn = getelementptr inbounds i8, ptr %i.me, i64 -5
  %i.mo = zext nneg i16 %i.ly to i64
  %i.mp = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.mo
  %i.mq = load i16, ptr %i.mp, align 2
  store i16 %i.mq, ptr %i.mn, align 1
  %i.mr = getelementptr inbounds i8, ptr %i.me, i64 -7
  %i.ms = zext nneg i16 %i.ma to i64
  %i.mt = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ms
  %i.mu = load i16, ptr %i.mt, align 2
  store i16 %i.mu, ptr %i.mr, align 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.loopexit.i
  %.0136.i = phi i32 [ 8, %bb.bk ], [ 0, %.loopexit.i ] ; 2 uses
  %.3128.i = phi i64 [ %i.ln, %bb.bk ], [ %.2127.i, %.loopexit.i ]
  %i.mv = trunc i64 %.3128.i to i32               ; 3 uses
  %i.mw = icmp ugt i32 %i.mv, 9999
  br i1 %i.mw, label %.lr.ph.i27, label %._crit_edge.i24

.lr.ph.i27:                                       ; preds = %bb.bl
  %i.mx = zext nneg i32 %.0124.i to i64
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 %i.mx
  %i.mz = zext i32 %.2131.i to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mz
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph.i27
  %.0134157.i = phi i32 [ %i.mv, %.lr.ph.i27 ], [ %i.nb, %bb.bm ] ; 3 uses
  %.1137156.i = phi i32 [ %.0136.i, %.lr.ph.i27 ], [ %i.ns, %bb.bm ] ; 2 uses
  %i.nb = udiv i32 %.0134157.i, 10000             ; 3 uses
  %.neg143.i = mul i32 %i.nb, -10000
  %i.nc = add i32 %.neg143.i, %.0134157.i         ; 2 uses
  %i.nd = urem i32 %i.nc, 100
  %i.ne = shl nuw nsw i32 %i.nd, 1
  %i.nf = udiv i32 %i.nc, 100
  %i.ng = shl nuw nsw i32 %i.nf, 1
  %i.nh = zext i32 %.1137156.i to i64
  %i.ni = sub nsw i64 0, %i.nh
  %i.nj = getelementptr inbounds i8, ptr %i.na, i64 %i.ni ; 2 uses
  %i.nk = getelementptr inbounds i8, ptr %i.nj, i64 -1
  %i.nl = zext nneg i32 %i.ne to i64
  %i.nm = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.nl
  %i.nn = load i16, ptr %i.nm, align 2
  store i16 %i.nn, ptr %i.nk, align 1
  %i.no = getelementptr inbounds i8, ptr %i.nj, i64 -3
  %i.np = zext nneg i32 %i.ng to i64
  %i.nq = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.np
  %i.nr = load i16, ptr %i.nq, align 2
  store i16 %i.nr, ptr %i.no, align 1
  %i.ns = add i32 %.1137156.i, 4                  ; 2 uses
  %i.nt = icmp ugt i32 %.0134157.i, 99999999
  br i1 %i.nt, label %bb.bm, label %._crit_edge.i24, !llvm.loop !4

._crit_edge.i24:                                  ; preds = %bb.bm, %bb.bl
  %.1137.lcssa.i = phi i32 [ %.0136.i, %bb.bl ], [ %i.ns, %bb.bm ] ; 3 uses
  %.0134.lcssa.i = phi i32 [ %i.mv, %bb.bl ], [ %i.nb, %bb.bm ] ; 3 uses
  %i.nu = icmp samesign ugt i32 %.0134.lcssa.i, 99
  br i1 %i.nu, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %._crit_edge.i24
  %.lhs.trunc.i = trunc nuw i32 %.0134.lcssa.i to i16 ; 2 uses
  %i.nv = urem i16 %.lhs.trunc.i, 100
  %i.nw = shl nuw nsw i16 %i.nv, 1
  %i.nx = udiv i16 %.lhs.trunc.i, 100
  %.zext146.i = zext nneg i16 %i.nx to i32
  %i.ny = zext nneg i32 %.0124.i to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ny
  %i.oa = zext i32 %.2131.i to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.oa
  %i.oc = zext i32 %.1137.lcssa.i to i64
  %i.od = sub nsw i64 0, %i.oc
  %i.oe = getelementptr inbounds i8, ptr %i.ob, i64 %i.od
  %i.of = getelementptr inbounds i8, ptr %i.oe, i64 -1
  %i.og = zext nneg i16 %i.nw to i64
  %i.oh = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.og
  %i.oi = load i16, ptr %i.oh, align 2
  store i16 %i.oi, ptr %i.of, align 1
  %i.oj = or disjoint i32 %.1137.lcssa.i, 2
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge.i24
  %.2138.i = phi i32 [ %i.oj, %bb.bn ], [ %.1137.lcssa.i, %._crit_edge.i24 ]
  %.1135.i = phi i32 [ %.zext146.i, %bb.bn ], [ %.0134.lcssa.i, %._crit_edge.i24 ] ; 3 uses
  %i.ok = icmp samesign ugt i32 %.1135.i, 9
  br i1 %i.ok, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ol = shl nuw nsw i32 %.1135.i, 1
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.om ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 1
  %i.op = load i8, ptr %i.oo, align 1
  %i.oq = add i32 %.2131.i, %.0124.i
  %i.or = sub i32 %i.oq, %.2138.i
  %i.os = zext i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 %i.os
  store i8 %i.op, ptr %i.ot, align 1
  %i.ou = load i8, ptr %i.on, align 2
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.ov = trunc nuw nsw i32 %.1135.i to i8
  %i.ow = or disjoint i8 %i.ov, 48
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sink.i = phi i8 [ %i.ow, %bb.bq ], [ %i.ou, %bb.bp ]
  %i.ox = zext nneg i32 %.0124.i to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 %i.ox ; 2 uses
  store i8 %.sink.i, ptr %i.oy, align 1
  %i.oz = icmp ugt i32 %.2131.i, 1
  br i1 %i.oz, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 1
  store i8 46, ptr %i.pa, align 1
  %i.pb = add i32 %.2131.i, 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn.i = phi i32 [ %i.pb, %bb.bs ], [ 1, %bb.br ]
  %.1.i25 = add i32 %.pn.i, %.0124.i              ; 6 uses
  %i.pc = add i32 %.1.i25, 1
  %i.pd = sext i32 %.1.i25 to i64
  %i.pe = getelementptr inbounds i8, ptr %1, i64 %i.pd
  store i8 101, ptr %i.pe, align 1
  %i.pf = icmp slt i32 %i.gj, 0                   ; 2 uses
  %i.pg = sext i32 %i.pc to i64
  %i.ph = getelementptr inbounds i8, ptr %1, i64 %i.pg
  %i.pi = sub i32 1, %i.gi
  %spec.select = select i1 %i.pf, i8 45, i8 43
  %spec.select90 = select i1 %i.pf, i32 %i.pi, i32 %i.gj ; 4 uses
  store i8 %spec.select, ptr %i.ph, align 1
  %.2.i = add i32 %.1.i25, 2                      ; 2 uses
  %i.pj = icmp sgt i32 %spec.select90, 99
  br i1 %i.pj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.pk = urem i32 %spec.select90, 10
  %i.pl = sext i32 %.2.i to i64
  %i.pm = getelementptr inbounds i8, ptr %1, i64 %i.pl
  %i.pn = udiv i32 %spec.select90, 10
  %i.po = shl nuw nsw i32 %i.pn, 1
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.pp
  %i.pr = load i16, ptr %i.pq, align 2
  store i16 %i.pr, ptr %i.pm, align 1
  %i.ps = trunc nuw nsw i32 %i.pk to i8
  %i.pt = or disjoint i8 %i.ps, 48
  %i.pu = add i32 %.1.i25, 4
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds i8, ptr %1, i64 %i.pv
  store i8 %i.pt, ptr %i.pw, align 1
  %i.px = add i32 %.1.i25, 5
  br label %copy_special_str.exit

bb.bv:                                            ; preds = %bb.bt
  %i.py = sext i32 %.2.i to i64
  %i.pz = getelementptr inbounds i8, ptr %1, i64 %i.py
  %i.qa = shl i32 %spec.select90, 1
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds i8, ptr @DIGIT_TABLE, i64 %i.qb
  %i.qd = load i16, ptr %i.qc, align 2
  store i16 %i.qd, ptr %i.pz, align 1
  %i.qe = add i32 %.1.i25, 4
  br label %copy_special_str.exit

copy_special_str.exit:                            ; preds = %bb.bv, %bb.bu, %to_chars_df.exit.i, %bb.h, %bb.g, %bb.d
  %.0 = phi i32 [ %i.l, %bb.h ], [ 3, %bb.d ], [ %i.k, %bb.g ], [ %i.lf, %to_chars_df.exit.i ], [ %i.px, %bb.bu ], [ %i.qe, %bb.bv ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @double_to_shortest_decimal_buf(double noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @double_to_shortest_decimal_bufn(double noundef %0, ptr noundef %1) ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  store i8 0, ptr %i.c, align 1
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @double_to_shortest_decimal(double noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 25) #6 ; 3 uses
  %i.b = tail call i32 @double_to_shortest_decimal_bufn(double noundef %0, ptr noundef %i.a)
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  store i8 0, ptr %i.d, align 1
  ret ptr %i.a
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #3
end_hunk_0
