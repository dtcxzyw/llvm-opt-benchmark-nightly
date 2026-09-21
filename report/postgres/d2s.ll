Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/d2s?download=true
inline.NumInlined: 35
inline.NumDeleted: 19
begin_hunk_0_@double_to_shortest_decimal_bufn:bb.a
._crit_edge244.loopexit.i:                        ; preds = %.lr.ph243.i
  %i.eo = xor i1 %i.ej, true
  br label %._crit_edge244.i

._crit_edge244.i:                                 ; preds = %._crit_edge244.loopexit.i, %.preheader.i
  %.1185.lcssa.i = phi i64 [ %.0184272.i, %.preheader.i ], [ %i.ee, %._crit_edge244.loopexit.i ]
  %.0141.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.el, %._crit_edge244.loopexit.i ]
  %.0135.lcssa.i = phi i8 [ 0, %.preheader.i ], [ %i.ek, %._crit_edge244.loopexit.i ] ; 2 uses
  %.4126.lcssa.i = phi i1 [ false, %.preheader.i ], [ %i.eo, %._crit_edge244.loopexit.i ]
  %.1117.lcssa.i = phi i64 [ %.0116274.i, %.preheader.i ], [ %i.eg, %._crit_edge244.loopexit.i ] ; 3 uses
  %i.ep = icmp ne i8 %.0135.lcssa.i, 5
  %or.cond4.i = select i1 %.4126.lcssa.i, i1 true, i1 %i.ep
  %i.eq = trunc i64 %.1117.lcssa.i to i1
  %or.cond.i22 = select i1 %or.cond4.i, i1 true, i1 %i.eq
  %i.er = icmp eq i64 %.1117.lcssa.i, %.1185.lcssa.i
  %i.es = icmp ugt i8 %.0135.lcssa.i, 4
  %i.et = select i1 %or.cond.i22, i1 %i.es, i1 false
  %i.eu = select i1 %i.er, i1 true, i1 %i.et
  %i.ev = zext i1 %i.eu to i64
  %i.ew = add i64 %.1117.lcssa.i, %i.ev
  br label %bb.t

.thread.i:                                        ; preds = %bb.p, %bb.o, %multipleOfPowerOf5.exit174.i, %multipleOfPowerOf5.exit.i, %bb.l
  %.0116202.i = phi i64 [ %i.dt, %bb.p ], [ %i.dt, %bb.o ], [ %i.bo, %multipleOfPowerOf5.exit174.i ], [ %i.bo, %bb.l ], [ %i.bo, %multipleOfPowerOf5.exit.i ] ; 3 uses
  %.0119201.i = phi i32 [ %i.cm, %bb.p ], [ %i.cm, %bb.o ], [ %i.af, %multipleOfPowerOf5.exit174.i ], [ %i.af, %bb.l ], [ %i.af, %multipleOfPowerOf5.exit.i ]
  %.0184199.i = phi i64 [ %i.dm, %bb.p ], [ %i.dm, %bb.o ], [ %i.bh, %multipleOfPowerOf5.exit174.i ], [ %i.bh, %bb.l ], [ %i.bh, %multipleOfPowerOf5.exit.i ] ; 2 uses
  %.0187198.i = phi i64 [ %i.dc, %bb.p ], [ %i.dc, %bb.o ], [ %i.cd, %multipleOfPowerOf5.exit174.i ], [ %i.ax, %bb.l ], [ %i.ax, %multipleOfPowerOf5.exit.i ] ; 2 uses
  %i.ex = udiv i64 %.0187198.i, 100               ; 2 uses
  %i.ey = udiv i64 %.0184199.i, 100               ; 2 uses
  %i.ez = icmp samesign ugt i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread.i
  %i.fa = udiv i64 %.0116202.i, 100               ; 2 uses
  %.neg162.i = mul i64 %i.fa, 4294967196
  %i.fb = add i64 %.neg162.i, %.0116202.i
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = icmp ugt i32 %i.fc, 49
  %i.fe = zext i1 %i.fd to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread.i
  %.3190.i = phi i64 [ %i.ex, %bb.q ], [ %.0187198.i, %.thread.i ]
  %.3.i = phi i64 [ %i.ey, %bb.q ], [ %.0184199.i, %.thread.i ] ; 2 uses
  %.5146.i = phi i32 [ 2, %bb.q ], [ 0, %.thread.i ] ; 2 uses
  %.6.i = phi i64 [ %i.fa, %bb.q ], [ %.0116202.i, %.thread.i ] ; 2 uses
  %.0115.i = phi i64 [ %i.fe, %bb.q ], [ 0, %.thread.i ]
  %i.ff = udiv i64 %.3190.i, 10                   ; 2 uses
  %i.fg = udiv i64 %.3.i, 10                      ; 2 uses
  %.not231.i = icmp samesign ugt i64 %i.ff, %i.fg
  br i1 %.not231.i, label %.lr.ph.i, label %bb.s

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %i.fh = phi i64 [ %i.fm, %.lr.ph.i ], [ %i.fg, %bb.r ] ; 2 uses
  %i.fi = phi i64 [ %i.fl, %.lr.ph.i ], [ %i.ff, %bb.r ]
  %.7233.i = phi i64 [ %i.fj, %.lr.ph.i ], [ %.6.i, %bb.r ] ; 2 uses
  %.6147232.i = phi i32 [ %i.fk, %.lr.ph.i ], [ %.5146.i, %bb.r ]
  %i.fj = udiv i64 %.7233.i, 10                   ; 3 uses
  %i.fk = add i32 %.6147232.i, 1                  ; 2 uses
  %i.fl = udiv i64 %i.fi, 10                      ; 2 uses
  %i.fm = udiv i64 %i.fh, 10                      ; 2 uses
  %.not.i21 = icmp samesign ugt i64 %i.fl, %i.fm
  br i1 %.not.i21, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.neg163.le.i = mul i64 %i.fj, 4294967286
  %i.fn = add i64 %.neg163.le.i, %.7233.i
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = icmp ugt i32 %i.fo, 4
  %i.fq = zext i1 %i.fp to i64
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i, %bb.r
  %.4.lcssa.i = phi i64 [ %i.fh, %._crit_edge.i ], [ %.3.i, %bb.r ]
  %.6147.lcssa.i = phi i32 [ %i.fk, %._crit_edge.i ], [ %.5146.i, %bb.r ]
  %.7.lcssa.i = phi i64 [ %i.fj, %._crit_edge.i ], [ %.6.i, %bb.r ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %i.fq, %._crit_edge.i ], [ %.0115.i, %bb.r ]
  %i.fr = icmp eq i64 %.7.lcssa.i, %.4.lcssa.i
  %i.fs = select i1 %i.fr, i64 1, i64 %.1.lcssa.i
  %i.ft = add i64 %i.fs, %.7.lcssa.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge244.i
  %.0119200.i = phi i32 [ %.0119273.i, %._crit_edge244.i ], [ %.0119201.i, %bb.s ]
  %.8149.i = phi i32 [ %.0141.lcssa.i, %._crit_edge244.i ], [ %.6147.lcssa.i, %bb.s ]
  %.0134.i = phi i64 [ %i.ew, %._crit_edge244.i ], [ %i.ft, %bb.s ] ; 3 uses
  %i.fu = add i32 %.8149.i, %.0119200.i           ; 2 uses
  %i.fv = icmp ugt i64 %.0134.i, 9999999999999999
  br i1 %i.fv, label %decimalLength.exit.i, label %bb.u

bb.u:                                             ; preds = %.thread33, %bb.t
  %.sroa.0.038 = phi i64 [ %i.s, %.thread33 ], [ %.0134.i, %bb.t ] ; 30 uses
  %.sroa.5.036 = phi i32 [ 0, %.thread33 ], [ %i.fu, %bb.t ] ; 15 uses
  %i.fw = icmp samesign ugt i64 %.sroa.0.038, 999999999999999
  br i1 %i.fw, label %decimalLength.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fx = icmp samesign ugt i64 %.sroa.0.038, 99999999999999
  br i1 %i.fx, label %decimalLength.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fy = icmp samesign ugt i64 %.sroa.0.038, 9999999999999
  br i1 %i.fy, label %decimalLength.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fz = icmp samesign ugt i64 %.sroa.0.038, 999999999999
  br i1 %i.fz, label %decimalLength.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ga = icmp samesign ugt i64 %.sroa.0.038, 99999999999
  br i1 %i.ga, label %decimalLength.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gb = icmp samesign ugt i64 %.sroa.0.038, 9999999999
  br i1 %i.gb, label %decimalLength.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gc = icmp samesign ugt i64 %.sroa.0.038, 999999999
  br i1 %i.gc, label %decimalLength.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gd = icmp samesign ugt i64 %.sroa.0.038, 99999999
  br i1 %i.gd, label %decimalLength.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ge = icmp samesign ugt i64 %.sroa.0.038, 9999999
  br i1 %i.ge, label %decimalLength.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gf = icmp samesign ugt i64 %.sroa.0.038, 999999
  br i1 %i.gf, label %decimalLength.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gg = icmp samesign ugt i64 %.sroa.0.038, 99999
  br i1 %i.gg, label %decimalLength.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gh = icmp samesign ugt i64 %.sroa.0.038, 9999
  br i1 %i.gh, label %decimalLength.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gi = icmp samesign ugt i64 %.sroa.0.038, 999
  br i1 %i.gi, label %decimalLength.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gj = icmp samesign ugt i64 %.sroa.0.038, 99
  br i1 %i.gj, label %decimalLength.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gk = icmp samesign ugt i64 %.sroa.0.038, 9
  %..i.i = select i1 %i.gk, i32 2, i32 1
  br label %decimalLength.exit.i

decimalLength.exit.i:                             ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.sroa.0.039 = phi i64 [ %.sroa.0.038, %bb.ah ], [ %.0134.i, %bb.t ], [ %.sroa.0.038, %bb.u ], [ %.sroa.0.038, %bb.v ], [ %.sroa.0.038, %bb.w ], [ %.sroa.0.038, %bb.x ], [ %.sroa.0.038, %bb.y ], [ %.sroa.0.038, %bb.z ], [ %.sroa.0.038, %bb.aa ], [ %.sroa.0.038, %bb.ab ], [ %.sroa.0.038, %bb.ac ], [ %.sroa.0.038, %bb.ad ], [ %.sroa.0.038, %bb.ae ], [ %.sroa.0.038, %bb.af ], [ %.sroa.0.038, %bb.ag ], [ %.sroa.0.038, %bb.ai ] ; 6 uses
  %.sroa.5.037 = phi i32 [ %.sroa.5.036, %bb.ah ], [ %i.fu, %bb.t ], [ %.sroa.5.036, %bb.u ], [ %.sroa.5.036, %bb.v ], [ %.sroa.5.036, %bb.w ], [ %.sroa.5.036, %bb.x ], [ %.sroa.5.036, %bb.y ], [ %.sroa.5.036, %bb.z ], [ %.sroa.5.036, %bb.aa ], [ %.sroa.5.036, %bb.ab ], [ %.sroa.5.036, %bb.ac ], [ %.sroa.5.036, %bb.ad ], [ %.sroa.5.036, %bb.ae ], [ %.sroa.5.036, %bb.af ], [ %.sroa.5.036, %bb.ag ], [ %.sroa.5.036, %bb.ai ] ; 5 uses
  %.0.i.i = phi i32 [ 3, %bb.ah ], [ 17, %bb.t ], [ 16, %bb.u ], [ 15, %bb.v ], [ 14, %bb.w ], [ 13, %bb.x ], [ 12, %bb.y ], [ 11, %bb.z ], [ 10, %bb.aa ], [ 9, %bb.ab ], [ 8, %bb.ac ], [ 7, %bb.ad ], [ 6, %bb.ae ], [ 5, %bb.af ], [ 4, %bb.ag ], [ %..i.i, %bb.ai ] ; 8 uses
  %i.gl = add i32 %.0.i.i, %.sroa.5.037           ; 11 uses
  %i.gm = add i32 %i.gl, -1                       ; 2 uses
  br i1 %i.b, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %decimalLength.exit.i
  store i8 45, ptr %1, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %decimalLength.exit.i
  %.0124.i = phi i32 [ 1, %bb.aj ], [ 0, %decimalLength.exit.i ] ; 7 uses
  %i.gn = add i32 %i.gl, 3
  %or.cond.i23 = icmp ult i32 %i.gn, 19
  br i1 %or.cond.i23, label %bb.al, label %bb.bi

bb.al:                                            ; preds = %bb.ak
  %i.go = zext nneg i32 %.0124.i to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 %i.go ; 13 uses
  %i.gq = icmp slt i32 %i.gl, 1
  br i1 %i.gq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gr = sub nsw i32 2, %i.gl
  store i64 3472328296227679792, ptr %i.gp, align 1
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.gs = icmp slt i32 %.sroa.5.037, 0
  br i1 %i.gs, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gp, i8 48, i64 16, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.0.i144.i = phi i32 [ %i.gr, %bb.am ], [ 0, %bb.ao ], [ 1, %bb.an ] ; 6 uses
  %.not.i.i = icmp ult i64 %.sroa.0.039, 4294967296
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gt = udiv i64 %.sroa.0.039, 100000000        ; 2 uses
  %.neg.i.i = mul i64 %i.gt, 4194967296
  %i.gu = add i64 %.neg.i.i, %.sroa.0.039
  %i.gv = trunc i64 %i.gu to i32                  ; 2 uses
  %2 = urem i32 %i.gv, 10000
  %3 = udiv i32 %i.gv, 10000
  %4 = urem i32 %3, 10000
  %.lhs.trunc123.i.i = trunc nuw nsw i32 %2 to i16 ; 2 uses
  %5 = urem i16 %.lhs.trunc123.i.i, 100
  %i.gw = shl nuw nsw i16 %5, 1
  %6 = udiv i16 %.lhs.trunc123.i.i, 100
  %7 = shl nuw nsw i16 %6, 1
  %.lhs.trunc127.i.i = trunc nuw nsw i32 %4 to i16 ; 2 uses
  %8 = urem i16 %.lhs.trunc127.i.i, 100
  %i.gx = shl nuw nsw i16 %8, 1
  %9 = udiv i16 %.lhs.trunc127.i.i, 100
  %i.gy = shl nuw nsw i16 %9, 1
  %i.gz = zext nneg i32 %.0.i144.i to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gz
  %i.hb = zext nneg i32 %.0.i.i to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hb ; 4 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -2
  %i.he = zext nneg i16 %i.gw to i64
  %i.hf = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.he
  %i.hg = load i16, ptr %i.hf, align 2
  store i16 %i.hg, ptr %i.hd, align 1
  %i.hh = getelementptr inbounds i8, ptr %i.hc, i64 -4
  %i.hi = zext nneg i16 %7 to i64
  %i.hj = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hi
  %i.hk = load i16, ptr %i.hj, align 2
  store i16 %i.hk, ptr %i.hh, align 1
  %i.hl = getelementptr inbounds i8, ptr %i.hc, i64 -6
  %i.hm = zext nneg i16 %i.gx to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2
  store i16 %i.ho, ptr %i.hl, align 1
  %i.hp = getelementptr inbounds i8, ptr %i.hc, i64 -8
  %i.hq = zext nneg i16 %i.gy to i64
  %i.hr = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hq
  %i.hs = load i16, ptr %i.hr, align 2
  store i16 %i.hs, ptr %i.hp, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0110.i.i = phi i32 [ 8, %bb.aq ], [ 0, %bb.ap ] ; 2 uses
  %.0109.i.i = phi i64 [ %i.gt, %bb.aq ], [ %.sroa.0.039, %bb.ap ]
  %i.ht = trunc i64 %.0109.i.i to i32             ; 3 uses
  %i.hu = icmp ugt i32 %i.ht, 9999
  br i1 %i.hu, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ar
  %i.hv = zext nneg i32 %.0.i144.i to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.hv
  %i.hx = zext nneg i32 %.0.i.i to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hx
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i.i
  %.1111132.i.i = phi i32 [ %.0110.i.i, %.lr.ph.i.i ], [ %i.iq, %bb.as ] ; 2 uses
  %.0113131.i.i = phi i32 [ %i.ht, %.lr.ph.i.i ], [ %i.hz, %bb.as ] ; 3 uses
  %i.hz = udiv i32 %.0113131.i.i, 10000           ; 3 uses
  %.neg120.i.i = mul i32 %i.hz, -10000
  %i.ia = add i32 %.neg120.i.i, %.0113131.i.i     ; 2 uses
  %i.ib = urem i32 %i.ia, 100
  %i.ic = shl nuw nsw i32 %i.ib, 1
  %i.id = udiv i32 %i.ia, 100
  %i.ie = shl nuw nsw i32 %i.id, 1
  %i.if = zext i32 %.1111132.i.i to i64
  %i.ig = sub nsw i64 0, %i.if
  %i.ih = getelementptr inbounds i8, ptr %i.hy, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -2
  %i.ij = zext nneg i32 %i.ic to i64
  %i.ik = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ij
  %i.il = load i16, ptr %i.ik, align 2
  store i16 %i.il, ptr %i.ii, align 1
  %i.im = getelementptr inbounds i8, ptr %i.ih, i64 -4
  %i.in = zext nneg i32 %i.ie to i64
  %i.io = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.in
  %i.ip = load i16, ptr %i.io, align 2
  store i16 %i.ip, ptr %i.im, align 1
  %i.iq = add i32 %.1111132.i.i, 4                ; 2 uses
  %i.ir = icmp ugt i32 %.0113131.i.i, 99999999
  br i1 %i.ir, label %bb.as, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %bb.as, %bb.ar
  %.0113.lcssa.i.i = phi i32 [ %i.ht, %bb.ar ], [ %i.hz, %bb.as ] ; 3 uses
  %.1111.lcssa.i.i = phi i32 [ %.0110.i.i, %bb.ar ], [ %i.iq, %bb.as ] ; 3 uses
  %i.is = icmp samesign ugt i32 %.0113.lcssa.i.i, 99
  br i1 %i.is, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i
  %.lhs.trunc.i.i = trunc nuw i32 %.0113.lcssa.i.i to i16 ; 2 uses
  %i.it = urem i16 %.lhs.trunc.i.i, 100
  %i.iu = shl nuw nsw i16 %i.it, 1
  %i.iv = udiv i16 %.lhs.trunc.i.i, 100
  %.zext122.i.i = zext nneg i16 %i.iv to i32
  %i.iw = zext nneg i32 %.0.i144.i to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.iw
  %i.iy = zext nneg i32 %.0.i.i to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iy
  %i.ja = zext i32 %.1111.lcssa.i.i to i64
  %i.jb = sub nsw i64 0, %i.ja
  %i.jc = getelementptr inbounds i8, ptr %i.iz, i64 %i.jb
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -2
  %i.je = zext nneg i16 %i.iu to i64
  %i.jf = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2
  store i16 %i.jg, ptr %i.jd, align 1
  %i.jh = or disjoint i32 %.1111.lcssa.i.i, 2
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i
  %.1114.i.i = phi i32 [ %.zext122.i.i, %bb.at ], [ %.0113.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.2112.i.i = phi i32 [ %i.jh, %bb.at ], [ %.1111.lcssa.i.i, %._crit_edge.i.i ]
  %i.ji = icmp samesign ugt i32 %.1114.i.i, 9
  br i1 %i.ji, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jj = shl nuw nsw i32 %.1114.i.i, 1
  %i.jk = zext nneg i32 %.0.i144.i to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.jk
  %i.jm = zext nneg i32 %.0.i.i to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jm
  %i.jo = zext i32 %.2112.i.i to i64
  %i.jp = sub nsw i64 0, %i.jo
  %i.jq = getelementptr inbounds i8, ptr %i.jn, i64 %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -2
  %i.js = zext nneg i32 %i.jj to i64
  %i.jt = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.js
  %i.ju = load i16, ptr %i.jt, align 2
  store i16 %i.ju, ptr %i.jr, align 1
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.jv = trunc nuw nsw i32 %.1114.i.i to i8
  %i.jw = or disjoint i8 %i.jv, 48
  %i.jx = zext nneg i32 %.0.i144.i to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.jx
  store i8 %i.jw, ptr %i.jy, align 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.jz = icmp eq i32 %.0.i144.i, 1
  br i1 %i.jz, label %bb.ay, label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.ka = and i32 %i.gl, 8
  %.not116.i.i = icmp eq i32 %i.ka, 0
  br i1 %.not116.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.kc = load i64, ptr %i.kb, align 1
  store i64 %i.kc, ptr %i.gp, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.1.i.i = phi i32 [ 9, %bb.az ], [ 1, %bb.ay ]  ; 3 uses
  %i.kd = and i32 %i.gl, 4
  %.not117.i.i = icmp eq i32 %i.kd, 0
  br i1 %.not117.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ke = zext nneg i32 %.1.i.i to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.ke ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -1
  %i.kh = load i32, ptr %i.kf, align 1
  store i32 %i.kh, ptr %i.kg, align 1
  %i.ki = or disjoint i32 %.1.i.i, 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.2.i.i = phi i32 [ %i.ki, %bb.bb ], [ %.1.i.i, %bb.ba ] ; 3 uses
  %i.kj = and i32 %i.gl, 2
  %.not118.i.i = icmp eq i32 %i.kj, 0
  br i1 %.not118.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kk = zext nneg i32 %.2.i.i to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -1
  %i.kn = load i16, ptr %i.kl, align 1
  store i16 %i.kn, ptr %i.km, align 1
  %i.ko = add nuw nsw i32 %.2.i.i, 2
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.3.i.i = phi i32 [ %i.ko, %bb.bd ], [ %.2.i.i, %bb.bc ]
  %i.kp = and i32 %i.gl, 1
  %.not119.i.i = icmp eq i32 %i.kp, 0
  br i1 %.not119.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kq = zext nneg i32 %.3.i.i to i64
  %i.kr = getelementptr i8, ptr %i.gp, i64 %i.kq  ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1
  %i.kt = getelementptr i8, ptr %i.kr, i64 -1
  store i8 %i.ks, ptr %i.kt, align 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ku = sext i32 %i.gl to i64
  %i.kv = getelementptr inbounds i8, ptr %i.gp, i64 %i.ku
  store i8 46, ptr %i.kv, align 1
  %i.kw = add nuw nsw i32 %.0.i.i, 1
  br label %to_chars_df.exit.i

bb.bh:                                            ; preds = %bb.ax
  %i.kx = sub i32 2, %.sroa.5.037
  %i.ky = icmp slt i32 %.sroa.5.037, 0
  %spec.select.i.i = select i1 %i.ky, i32 %i.kx, i32 %i.gl
  br label %to_chars_df.exit.i

to_chars_df.exit.i:                               ; preds = %bb.bh, %bb.bg
  %.4.i.i = phi i32 [ %i.kw, %bb.bg ], [ %spec.select.i.i, %bb.bh ]
  %.lobit = lshr i64 %i.a, 63
  %i.kz = trunc nuw nsw i64 %.lobit to i32
  %i.la = add i32 %.4.i.i, %i.kz
  br label %copy_special_str.exit

bb.bi:                                            ; preds = %bb.ak
  %i.lb = icmp eq i32 %.sroa.5.037, 0
  br i1 %i.lb, label %.preheader.i28, label %.loopexit.i

.preheader.i28:                                   ; preds = %bb.bi, %bb.bj
  %.0129.i = phi i32 [ %i.lh, %bb.bj ], [ %.0.i.i, %bb.bi ] ; 3 uses
  %.0125.i = phi i64 [ %i.le, %bb.bj ], [ %.sroa.0.039, %bb.bi ] ; 5 uses
  %i.lc = and i64 %.0125.i, 1
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %bb.bj, label %.loopexit.i

bb.bj:                                            ; preds = %.preheader.i28
  %i.le = udiv i64 %.0125.i, 10                   ; 2 uses
  %.neg.i29 = mul i64 %i.le, 4294967286
  %i.lf = add i64 %.neg.i29, %.0125.i
  %i.lg = and i64 %i.lf, 4294967294
  %.not.i30 = icmp eq i64 %i.lg, 0
  %i.lh = add i32 %.0129.i, -1
  br i1 %.not.i30, label %.preheader.i28, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bj, %.preheader.i28, %bb.bi
  %.2131.i = phi i32 [ %.0.i.i, %bb.bi ], [ %.0129.i, %.preheader.i28 ], [ %.0129.i, %bb.bj ] ; 6 uses
  %.2127.i = phi i64 [ %.sroa.0.039, %bb.bi ], [ %.0125.i, %.preheader.i28 ], [ %.0125.i, %bb.bj ] ; 4 uses
  %.not141.i = icmp ult i64 %.2127.i, 4294967296
  br i1 %.not141.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.i
  %i.li = udiv i64 %.2127.i, 100000000            ; 2 uses
  %.neg142.i = mul i64 %i.li, 4194967296
  %i.lj = add i64 %.neg142.i, %.2127.i
  %i.lk = trunc i64 %i.lj to i32                  ; 2 uses
  %10 = urem i32 %i.lk, 10000
  %11 = udiv i32 %i.lk, 10000
  %12 = urem i32 %11, 10000
  %.lhs.trunc147.i = trunc nuw nsw i32 %10 to i16 ; 2 uses
  %13 = urem i16 %.lhs.trunc147.i, 100
  %i.ll = shl nuw nsw i16 %13, 1
  %14 = udiv i16 %.lhs.trunc147.i, 100
  %15 = shl nuw nsw i16 %14, 1
  %.lhs.trunc151.i = trunc nuw nsw i32 %12 to i16 ; 2 uses
  %16 = urem i16 %.lhs.trunc151.i, 100
  %i.lm = shl nuw nsw i16 %16, 1
  %17 = udiv i16 %.lhs.trunc151.i, 100
  %i.ln = shl nuw nsw i16 %17, 1
  %i.lo = zext nneg i32 %.0124.i to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 %i.lo
  %i.lq = zext i32 %.2131.i to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lq ; 4 uses
  %i.ls = getelementptr inbounds i8, ptr %i.lr, i64 -1
  %i.lt = zext nneg i16 %i.ll to i64
  %i.lu = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.lt
  %i.lv = load i16, ptr %i.lu, align 2
  store i16 %i.lv, ptr %i.ls, align 1
  %i.lw = getelementptr inbounds i8, ptr %i.lr, i64 -3
  %i.lx = zext nneg i16 %15 to i64
  %i.ly = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.lx
  %i.lz = load i16, ptr %i.ly, align 2
  store i16 %i.lz, ptr %i.lw, align 1
  %i.ma = getelementptr inbounds i8, ptr %i.lr, i64 -5
  %i.mb = zext nneg i16 %i.lm to i64
  %i.mc = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.mb
  %i.md = load i16, ptr %i.mc, align 2
  store i16 %i.md, ptr %i.ma, align 1
  %i.me = getelementptr inbounds i8, ptr %i.lr, i64 -7
  %i.mf = zext nneg i16 %i.ln to i64
  %i.mg = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.mf
  %i.mh = load i16, ptr %i.mg, align 2
  store i16 %i.mh, ptr %i.me, align 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.loopexit.i
  %.0136.i = phi i32 [ 8, %bb.bk ], [ 0, %.loopexit.i ] ; 2 uses
  %.3128.i = phi i64 [ %i.li, %bb.bk ], [ %.2127.i, %.loopexit.i ]
  %i.mi = trunc i64 %.3128.i to i32               ; 3 uses
  %i.mj = icmp ugt i32 %i.mi, 9999
  br i1 %i.mj, label %.lr.ph.i27, label %._crit_edge.i24

.lr.ph.i27:                                       ; preds = %bb.bl
  %i.mk = zext nneg i32 %.0124.i to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 %i.mk
  %i.mm = zext i32 %.2131.i to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mm
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph.i27
  %.0134157.i = phi i32 [ %i.mi, %.lr.ph.i27 ], [ %i.mo, %bb.bm ] ; 3 uses
  %.1137156.i = phi i32 [ %.0136.i, %.lr.ph.i27 ], [ %i.nf, %bb.bm ] ; 2 uses
  %i.mo = udiv i32 %.0134157.i, 10000             ; 3 uses
  %.neg143.i = mul i32 %i.mo, -10000
  %i.mp = add i32 %.neg143.i, %.0134157.i         ; 2 uses
  %i.mq = urem i32 %i.mp, 100
  %i.mr = shl nuw nsw i32 %i.mq, 1
  %i.ms = udiv i32 %i.mp, 100
  %i.mt = shl nuw nsw i32 %i.ms, 1
  %i.mu = zext i32 %.1137156.i to i64
  %i.mv = sub nsw i64 0, %i.mu
  %i.mw = getelementptr inbounds i8, ptr %i.mn, i64 %i.mv ; 2 uses
  %i.mx = getelementptr inbounds i8, ptr %i.mw, i64 -1
  %i.my = zext nneg i32 %i.mr to i64
  %i.mz = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.my
  %i.na = load i16, ptr %i.mz, align 2
  store i16 %i.na, ptr %i.mx, align 1
  %i.nb = getelementptr inbounds i8, ptr %i.mw, i64 -3
  %i.nc = zext nneg i32 %i.mt to i64
  %i.nd = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.nc
  %i.ne = load i16, ptr %i.nd, align 2
  store i16 %i.ne, ptr %i.nb, align 1
  %i.nf = add i32 %.1137156.i, 4                  ; 2 uses
  %i.ng = icmp ugt i32 %.0134157.i, 99999999
  br i1 %i.ng, label %bb.bm, label %._crit_edge.i24, !llvm.loop !4

._crit_edge.i24:                                  ; preds = %bb.bm, %bb.bl
  %.1137.lcssa.i = phi i32 [ %.0136.i, %bb.bl ], [ %i.nf, %bb.bm ] ; 3 uses
  %.0134.lcssa.i = phi i32 [ %i.mi, %bb.bl ], [ %i.mo, %bb.bm ] ; 3 uses
  %i.nh = icmp samesign ugt i32 %.0134.lcssa.i, 99
  br i1 %i.nh, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %._crit_edge.i24
  %.lhs.trunc.i = trunc nuw i32 %.0134.lcssa.i to i16 ; 2 uses
  %i.ni = urem i16 %.lhs.trunc.i, 100
  %i.nj = shl nuw nsw i16 %i.ni, 1
  %i.nk = udiv i16 %.lhs.trunc.i, 100
  %.zext146.i = zext nneg i16 %i.nk to i32
  %i.nl = zext nneg i32 %.0124.i to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 %i.nl
  %i.nn = zext i32 %.2131.i to i64
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nn
  %i.np = zext i32 %.1137.lcssa.i to i64
  %i.nq = sub nsw i64 0, %i.np
  %i.nr = getelementptr inbounds i8, ptr %i.no, i64 %i.nq
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 -1
  %i.nt = zext nneg i16 %i.nj to i64
  %i.nu = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.nt
  %i.nv = load i16, ptr %i.nu, align 2
  store i16 %i.nv, ptr %i.ns, align 1
  %i.nw = or disjoint i32 %.1137.lcssa.i, 2
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge.i24
  %.2138.i = phi i32 [ %i.nw, %bb.bn ], [ %.1137.lcssa.i, %._crit_edge.i24 ]
  %.1135.i = phi i32 [ %.zext146.i, %bb.bn ], [ %.0134.lcssa.i, %._crit_edge.i24 ] ; 3 uses
  %i.nx = icmp samesign ugt i32 %.1135.i, 9
  br i1 %i.nx, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ny = shl nuw nsw i32 %.1135.i, 1
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.nz ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 1
  %i.oc = load i8, ptr %i.ob, align 1
  %i.od = add i32 %.2131.i, %.0124.i
  %i.oe = sub i32 %i.od, %.2138.i
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 %i.of
  store i8 %i.oc, ptr %i.og, align 1
  %i.oh = load i8, ptr %i.oa, align 2
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.oi = trunc nuw nsw i32 %.1135.i to i8
  %i.oj = or disjoint i8 %i.oi, 48
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sink.i = phi i8 [ %i.oj, %bb.bq ], [ %i.oh, %bb.bp ]
  %i.ok = zext nneg i32 %.0124.i to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 %i.ok ; 2 uses
  store i8 %.sink.i, ptr %i.ol, align 1
  %i.om = icmp ugt i32 %.2131.i, 1
  br i1 %i.om, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 1
  store i8 46, ptr %i.on, align 1
  %i.oo = add i32 %.2131.i, 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn.i = phi i32 [ %i.oo, %bb.bs ], [ 1, %bb.br ]
  %.1.i25 = add i32 %.pn.i, %.0124.i              ; 6 uses
  %i.op = add i32 %.1.i25, 1
  %i.oq = sext i32 %.1.i25 to i64
  %i.or = getelementptr inbounds i8, ptr %1, i64 %i.oq
  store i8 101, ptr %i.or, align 1
  %i.os = icmp slt i32 %i.gm, 0                   ; 2 uses
  %i.ot = sext i32 %i.op to i64
  %i.ou = getelementptr inbounds i8, ptr %1, i64 %i.ot
  %i.ov = sub i32 1, %i.gl
  %spec.select = select i1 %i.os, i8 45, i8 43
  %spec.select89 = select i1 %i.os, i32 %i.ov, i32 %i.gm ; 4 uses
  store i8 %spec.select, ptr %i.ou, align 1
  %.2.i = add i32 %.1.i25, 2                      ; 2 uses
  %i.ow = icmp sgt i32 %spec.select89, 99
  br i1 %i.ow, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ox = urem i32 %spec.select89, 10
  %i.oy = sext i32 %.2.i to i64
  %i.oz = getelementptr inbounds i8, ptr %1, i64 %i.oy
  %i.pa = udiv i32 %spec.select89, 10
  %i.pb = shl nuw nsw i32 %i.pa, 1
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.pc
  %i.pe = load i16, ptr %i.pd, align 2
  store i16 %i.pe, ptr %i.oz, align 1
  %i.pf = trunc nuw nsw i32 %i.ox to i8
  %i.pg = or disjoint i8 %i.pf, 48
  %i.ph = add i32 %.1.i25, 4
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds i8, ptr %1, i64 %i.pi
  store i8 %i.pg, ptr %i.pj, align 1
  %i.pk = add i32 %.1.i25, 5
  br label %copy_special_str.exit

bb.bv:                                            ; preds = %bb.bt
  %i.pl = sext i32 %.2.i to i64
  %i.pm = getelementptr inbounds i8, ptr %1, i64 %i.pl
  %i.pn = shl i32 %spec.select89, 1
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds i8, ptr @DIGIT_TABLE, i64 %i.po
  %i.pq = load i16, ptr %i.pp, align 2
  store i16 %i.pq, ptr %i.pm, align 1
  %i.pr = add i32 %.1.i25, 4
  br label %copy_special_str.exit

copy_special_str.exit:                            ; preds = %bb.bv, %bb.bu, %to_chars_df.exit.i, %bb.h, %bb.g, %bb.d
  %.0 = phi i32 [ %i.l, %bb.h ], [ 3, %bb.d ], [ %i.k, %bb.g ], [ %i.la, %to_chars_df.exit.i ], [ %i.pk, %bb.bu ], [ %i.pr, %bb.bv ]
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
  %i.a = tail call ptr @palloc(i64 noundef 25) #5 ; 3 uses
  %i.b = tail call i32 @double_to_shortest_decimal_bufn(double noundef %0, ptr noundef %i.a)
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  store i8 0, ptr %i.d, align 1
  ret ptr %i.a
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #3
end_hunk_0
