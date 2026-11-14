Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/d2s?download=true
inline.NumInlined: 35
inline.NumDeleted: 19
begin_hunk_0_@double_to_shortest_decimal_bufn:bb.a
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
  %i.gs = trunc i64 %i.gr to i32                  ; 3 uses
  %i.gt = udiv i32 %i.gs, 10000
  %i.gu = insertelement <2 x i32> poison, i32 %i.gs, i64 0
  %i.gv = insertelement <2 x i32> %i.gu, i32 %i.gt, i64 1
  %i.gw = urem <2 x i32> %i.gv, splat (i32 10000)
  %i.gx = urem i32 %i.gs, 10000
  %i.gy = trunc nuw nsw <2 x i32> %i.gw to <2 x i16> ; 2 uses
  %.lhs.trunc123.i.i = trunc nuw nsw i32 %i.gx to i16
  %i.gz = urem i16 %.lhs.trunc123.i.i, 100
  %i.ha = shl nuw nsw i16 %i.gz, 1
  %i.hb = udiv <2 x i16> %i.gy, splat (i16 100)   ; 2 uses
  %i.hc = extractelement <2 x i16> %i.hb, i64 0
  %i.hd = shl nuw nsw i16 %i.hc, 1
  %i.he = extractelement <2 x i16> %i.gy, i64 1
  %i.hf = urem i16 %i.he, 100
  %i.hg = shl nuw nsw i16 %i.hf, 1
  %i.hh = extractelement <2 x i16> %i.hb, i64 1
  %i.hi = shl nuw nsw i16 %i.hh, 1
  %i.hj = zext nneg i32 %.0.i144.i to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hj
  %i.hl = zext nneg i32 %.0.i.i to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hl ; 4 uses
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -2
  %i.ho = zext nneg i16 %i.ha to i64
  %i.hp = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2
  store i16 %i.hq, ptr %i.hn, align 1
  %i.hr = getelementptr inbounds i8, ptr %i.hm, i64 -4
  %i.hs = zext nneg i16 %i.hd to i64
  %i.ht = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hs
  %i.hu = load i16, ptr %i.ht, align 2
  store i16 %i.hu, ptr %i.hr, align 1
  %i.hv = getelementptr inbounds i8, ptr %i.hm, i64 -6
  %i.hw = zext nneg i16 %i.hg to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2
  store i16 %i.hy, ptr %i.hv, align 1
  %i.hz = getelementptr inbounds i8, ptr %i.hm, i64 -8
  %i.ia = zext nneg i16 %i.hi to i64
  %i.ib = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ia
  %i.ic = load i16, ptr %i.ib, align 2
  store i16 %i.ic, ptr %i.hz, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0110.i.i = phi i32 [ 8, %bb.aq ], [ 0, %bb.ap ] ; 2 uses
  %.0109.i.i = phi i64 [ %i.gq, %bb.aq ], [ %.sroa.0.039, %bb.ap ]
  %i.id = trunc i64 %.0109.i.i to i32             ; 3 uses
  %i.ie = icmp ugt i32 %i.id, 9999
  br i1 %i.ie, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ar
  %i.if = zext nneg i32 %.0.i144.i to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.if
  %i.ih = zext nneg i32 %.0.i.i to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ih
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i.i
  %.1111132.i.i = phi i32 [ %.0110.i.i, %.lr.ph.i.i ], [ %i.iz, %bb.as ] ; 2 uses
  %.0113131.i.i = phi i32 [ %i.id, %.lr.ph.i.i ], [ %i.ij, %bb.as ] ; 3 uses
  %i.ij = udiv i32 %.0113131.i.i, 10000           ; 3 uses
  %.neg120.i.i.a = mul i32 %i.ij, -10000
  %i.ik = add i32 %.neg120.i.i.a, %.0113131.i.i   ; 2 uses
  %i.il = urem i32 %i.ik, 100
  %i.im = shl nuw nsw i32 %i.il, 1
  %i.in = udiv i32 %i.ik, 100
  %i.io = shl nuw nsw i32 %i.in, 1
  %2 = zext i32 %.1111132.i.i to i64
  %i.ip = sub nsw i64 0, %2
  %i.iq = getelementptr inbounds i8, ptr %i.ii, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 -2
  %i.is = zext nneg i32 %i.im to i64
  %i.it = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2
  store i16 %i.iu, ptr %i.ir, align 1
  %i.iv = getelementptr inbounds i8, ptr %i.iq, i64 -4
  %i.iw = zext nneg i32 %i.io to i64
  %i.ix = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 2
  store i16 %i.iy, ptr %i.iv, align 1
  %i.iz = add i32 %.1111132.i.i, 4                ; 2 uses
  %3 = icmp ugt i32 %.0113131.i.i, 99999999
  br i1 %3, label %bb.as, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %bb.as, %bb.ar
  %.0113.lcssa.i.i = phi i32 [ %i.id, %bb.ar ], [ %i.ij, %bb.as ] ; 3 uses
  %.1111.lcssa.i.i = phi i32 [ %.0110.i.i, %bb.ar ], [ %i.iz, %bb.as ] ; 3 uses
  %i.ja = icmp samesign ugt i32 %.0113.lcssa.i.i, 99
  br i1 %i.ja, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i
  %.lhs.trunc.i.i = trunc nuw i32 %.0113.lcssa.i.i to i16 ; 2 uses
  %i.jb = urem i16 %.lhs.trunc.i.i, 100
  %i.jc = shl nuw nsw i16 %i.jb, 1
  %i.jd = udiv i16 %.lhs.trunc.i.i, 100
  %.zext122.i.i = zext nneg i16 %i.jd to i32
  %i.je = zext nneg i32 %.0.i144.i to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.je
  %i.jg = zext nneg i32 %.0.i.i to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jg
  %i.ji = zext i32 %.1111.lcssa.i.i to i64
  %i.jj = sub nsw i64 0, %i.ji
  %i.jk = getelementptr inbounds i8, ptr %i.jh, i64 %i.jj
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -2
  %i.jm = zext nneg i16 %i.jc to i64
  %i.jn = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.jm
  %i.jo = load i16, ptr %i.jn, align 2
  store i16 %i.jo, ptr %i.jl, align 1
  %i.jp = or disjoint i32 %.1111.lcssa.i.i, 2
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i
  %.1114.i.i = phi i32 [ %.zext122.i.i, %bb.at ], [ %.0113.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.2112.i.i = phi i32 [ %i.jp, %bb.at ], [ %.1111.lcssa.i.i, %._crit_edge.i.i ]
  %i.jq = icmp samesign ugt i32 %.1114.i.i, 9
  br i1 %i.jq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jr = shl nuw nsw i32 %.1114.i.i, 1
  %i.js = zext nneg i32 %.0.i144.i to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.js
  %i.ju = zext nneg i32 %.0.i.i to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.ju
  %i.jw = zext i32 %.2112.i.i to i64
  %i.jx = sub nsw i64 0, %i.jw
  %i.jy = getelementptr inbounds i8, ptr %i.jv, i64 %i.jx
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -2
  %i.ka = zext nneg i32 %i.jr to i64
  %i.kb = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2
  store i16 %i.kc, ptr %i.jz, align 1
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.kd = trunc nuw nsw i32 %.1114.i.i to i8
  %i.ke = or disjoint i8 %i.kd, 48
  %i.kf = zext nneg i32 %.0.i144.i to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.kf
  store i8 %i.ke, ptr %i.kg, align 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.kh = icmp eq i32 %.0.i144.i, 1
  br i1 %i.kh, label %bb.ay, label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.ki = and i32 %i.gi, 8
  %.not116.i.i = icmp eq i32 %i.ki, 0
  br i1 %.not116.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.kk = load i64, ptr %i.kj, align 1
  store i64 %i.kk, ptr %i.gm, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.1.i.i = phi i32 [ 9, %bb.az ], [ 1, %bb.ay ]  ; 3 uses
  %i.kl = and i32 %i.gi, 4
  %.not117.i.i = icmp eq i32 %i.kl, 0
  br i1 %.not117.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.km = zext nneg i32 %.1.i.i to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.km ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 -1
  %i.kp = load i32, ptr %i.kn, align 1
  store i32 %i.kp, ptr %i.ko, align 1
  %i.kq = or disjoint i32 %.1.i.i, 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.2.i.i = phi i32 [ %i.kq, %bb.bb ], [ %.1.i.i, %bb.ba ] ; 3 uses
  %i.kr = and i32 %i.gi, 2
  %.not118.i.i = icmp eq i32 %i.kr, 0
  br i1 %.not118.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ks = zext nneg i32 %.2.i.i to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ks ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 -1
  %i.kv = load i16, ptr %i.kt, align 1
  store i16 %i.kv, ptr %i.ku, align 1
  %i.kw = add nuw nsw i32 %.2.i.i, 2
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.3.i.i = phi i32 [ %i.kw, %bb.bd ], [ %.2.i.i, %bb.bc ]
  %i.kx = and i32 %i.gi, 1
  %.not119.i.i = icmp eq i32 %i.kx, 0
  br i1 %.not119.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ky = zext nneg i32 %.3.i.i to i64
  %i.kz = getelementptr i8, ptr %i.gm, i64 %i.ky  ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = getelementptr i8, ptr %i.kz, i64 -1
  store i8 %i.la, ptr %i.lb, align 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.lc = sext i32 %i.gi to i64
  %i.ld = getelementptr inbounds i8, ptr %i.gm, i64 %i.lc
  store i8 46, ptr %i.ld, align 1
  %i.le = add nuw nsw i32 %.0.i.i, 1
  br label %to_chars_df.exit.i

bb.bh:                                            ; preds = %bb.ax
  %i.lf = sub i32 2, %.sroa.5.037
  %i.lg = icmp slt i32 %.sroa.5.037, 0
  %spec.select.i.i = select i1 %i.lg, i32 %i.lf, i32 %i.gi
  br label %to_chars_df.exit.i

to_chars_df.exit.i:                               ; preds = %bb.bh, %bb.bg
  %.4.i.i = phi i32 [ %i.le, %bb.bg ], [ %spec.select.i.i, %bb.bh ]
  %.lobit = lshr i64 %i.a, 63
  %i.lh = trunc nuw nsw i64 %.lobit to i32
  %i.li = add i32 %.4.i.i, %i.lh
  br label %copy_special_str.exit

bb.bi:                                            ; preds = %bb.ak
  %i.lj = icmp eq i32 %.sroa.5.037, 0
  br i1 %i.lj, label %.preheader.i28, label %.loopexit.i

.preheader.i28:                                   ; preds = %bb.bi, %bb.bj
  %.0129.i = phi i32 [ %i.lp, %bb.bj ], [ %.0.i.i, %bb.bi ] ; 3 uses
  %.0125.i = phi i64 [ %i.lm, %bb.bj ], [ %.sroa.0.039, %bb.bi ] ; 5 uses
  %i.lk = and i64 %.0125.i, 1
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %bb.bj, label %.loopexit.i

bb.bj:                                            ; preds = %.preheader.i28
  %i.lm = udiv i64 %.0125.i, 10                   ; 2 uses
  %.neg.i29 = mul i64 %i.lm, 4294967286
  %i.ln = add i64 %.neg.i29, %.0125.i
  %i.lo = and i64 %i.ln, 4294967294
  %.not.i30 = icmp eq i64 %i.lo, 0
  %i.lp = add i32 %.0129.i, -1
  br i1 %.not.i30, label %.preheader.i28, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bj, %.preheader.i28, %bb.bi
  %.2131.i = phi i32 [ %.0.i.i, %bb.bi ], [ %.0129.i, %.preheader.i28 ], [ %.0129.i, %bb.bj ] ; 6 uses
  %.2127.i = phi i64 [ %.sroa.0.039, %bb.bi ], [ %.0125.i, %.preheader.i28 ], [ %.0125.i, %bb.bj ] ; 4 uses
  %.not141.i = icmp ult i64 %.2127.i, 4294967296
  br i1 %.not141.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.i
  %i.lq = udiv i64 %.2127.i, 100000000            ; 2 uses
  %.neg142.i = mul i64 %i.lq, 4194967296
  %i.lr = add i64 %.neg142.i, %.2127.i
  %i.ls = trunc i64 %i.lr to i32                  ; 3 uses
  %i.lt = udiv i32 %i.ls, 10000
  %i.lu = insertelement <2 x i32> poison, i32 %i.ls, i64 0
  %i.lv = insertelement <2 x i32> %i.lu, i32 %i.lt, i64 1
  %i.lw = urem <2 x i32> %i.lv, splat (i32 10000)
  %i.lx = urem i32 %i.ls, 10000
  %i.ly = trunc nuw nsw <2 x i32> %i.lw to <2 x i16> ; 2 uses
  %.lhs.trunc147.i = trunc nuw nsw i32 %i.lx to i16
  %i.lz = urem i16 %.lhs.trunc147.i, 100
  %i.ma = shl nuw nsw i16 %i.lz, 1
  %i.mb = udiv <2 x i16> %i.ly, splat (i16 100)   ; 2 uses
  %i.mc = extractelement <2 x i16> %i.mb, i64 0
  %i.md = shl nuw nsw i16 %i.mc, 1
  %i.me = extractelement <2 x i16> %i.ly, i64 1
  %i.mf = urem i16 %i.me, 100
  %i.mg = shl nuw nsw i16 %i.mf, 1
  %i.mh = extractelement <2 x i16> %i.mb, i64 1
  %i.mi = shl nuw nsw i16 %i.mh, 1
  %i.mj = zext nneg i32 %.0124.i to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 %i.mj
  %i.ml = zext i32 %.2131.i to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ml ; 4 uses
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 -1
  %i.mo = zext nneg i16 %i.ma to i64
  %i.mp = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.mo
  %i.mq = load i16, ptr %i.mp, align 2
  store i16 %i.mq, ptr %i.mn, align 1
  %i.mr = getelementptr inbounds i8, ptr %i.mm, i64 -3
  %i.ms = zext nneg i16 %i.md to i64
  %i.mt = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ms
  %i.mu = load i16, ptr %i.mt, align 2
  store i16 %i.mu, ptr %i.mr, align 1
  %i.mv = getelementptr inbounds i8, ptr %i.mm, i64 -5
  %i.mw = zext nneg i16 %i.mg to i64
  %i.mx = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.mw
  %i.my = load i16, ptr %i.mx, align 2
  store i16 %i.my, ptr %i.mv, align 1
  %i.mz = getelementptr inbounds i8, ptr %i.mm, i64 -7
  %i.na = zext nneg i16 %i.mi to i64
  %i.nb = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.na
  %i.nc = load i16, ptr %i.nb, align 2
  store i16 %i.nc, ptr %i.mz, align 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.loopexit.i
  %.0136.i = phi i32 [ 8, %bb.bk ], [ 0, %.loopexit.i ] ; 2 uses
  %.3128.i = phi i64 [ %i.lq, %bb.bk ], [ %.2127.i, %.loopexit.i ]
  %i.nd = trunc i64 %.3128.i to i32               ; 3 uses
  %i.ne = icmp ugt i32 %i.nd, 9999
  br i1 %i.ne, label %.lr.ph.i27, label %._crit_edge.i24

.lr.ph.i27:                                       ; preds = %bb.bl
  %i.nf = zext nneg i32 %.0124.i to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 %i.nf
  %i.nh = zext i32 %.2131.i to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nh
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph.i27
  %.0134157.i = phi i32 [ %i.nd, %.lr.ph.i27 ], [ %i.nj, %bb.bm ] ; 3 uses
  %.1137156.i = phi i32 [ %.0136.i, %.lr.ph.i27 ], [ %i.nz, %bb.bm ] ; 2 uses
  %i.nj = udiv i32 %.0134157.i, 10000             ; 3 uses
  %.neg143.i.a = mul i32 %i.nj, -10000
  %i.nk = add i32 %.neg143.i.a, %.0134157.i       ; 2 uses
  %i.nl = urem i32 %i.nk, 100
  %i.nm = shl nuw nsw i32 %i.nl, 1
  %i.nn = udiv i32 %i.nk, 100
  %i.no = shl nuw nsw i32 %i.nn, 1
  %4 = zext i32 %.1137156.i to i64
  %i.np = sub nsw i64 0, %4
  %i.nq = getelementptr inbounds i8, ptr %i.ni, i64 %i.np ; 2 uses
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 -1
  %i.ns = zext nneg i32 %i.nm to i64
  %i.nt = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ns
  %i.nu = load i16, ptr %i.nt, align 2
  store i16 %i.nu, ptr %i.nr, align 1
  %i.nv = getelementptr inbounds i8, ptr %i.nq, i64 -3
  %i.nw = zext nneg i32 %i.no to i64
  %i.nx = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.nw
  %i.ny = load i16, ptr %i.nx, align 2
  store i16 %i.ny, ptr %i.nv, align 1
  %i.nz = add i32 %.1137156.i, 4                  ; 2 uses
  %5 = icmp ugt i32 %.0134157.i, 99999999
  br i1 %5, label %bb.bm, label %._crit_edge.i24, !llvm.loop !4

._crit_edge.i24:                                  ; preds = %bb.bm, %bb.bl
  %.1137.lcssa.i = phi i32 [ %.0136.i, %bb.bl ], [ %i.nz, %bb.bm ] ; 3 uses
  %.0134.lcssa.i = phi i32 [ %i.nd, %bb.bl ], [ %i.nj, %bb.bm ] ; 3 uses
  %i.oa = icmp samesign ugt i32 %.0134.lcssa.i, 99
  br i1 %i.oa, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %._crit_edge.i24
  %.lhs.trunc.i = trunc nuw i32 %.0134.lcssa.i to i16 ; 2 uses
  %i.ob = urem i16 %.lhs.trunc.i, 100
  %i.oc = shl nuw nsw i16 %i.ob, 1
  %i.od = udiv i16 %.lhs.trunc.i, 100
  %.zext146.i = zext nneg i16 %i.od to i32
  %i.oe = zext nneg i32 %.0124.i to i64
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 %i.oe
  %i.og = zext i32 %.2131.i to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.og
  %i.oi = zext i32 %.1137.lcssa.i to i64
  %i.oj = sub nsw i64 0, %i.oi
  %i.ok = getelementptr inbounds i8, ptr %i.oh, i64 %i.oj
  %i.ol = getelementptr inbounds i8, ptr %i.ok, i64 -1
  %i.om = zext nneg i16 %i.oc to i64
  %i.on = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.om
  %i.oo = load i16, ptr %i.on, align 2
  store i16 %i.oo, ptr %i.ol, align 1
  %i.op = or disjoint i32 %.1137.lcssa.i, 2
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge.i24
  %.2138.i = phi i32 [ %i.op, %bb.bn ], [ %.1137.lcssa.i, %._crit_edge.i24 ]
  %.1135.i = phi i32 [ %.zext146.i, %bb.bn ], [ %.0134.lcssa.i, %._crit_edge.i24 ] ; 3 uses
  %i.oq = icmp samesign ugt i32 %.1135.i, 9
  br i1 %i.oq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.or = shl nuw nsw i32 %.1135.i, 1
  %i.os = zext nneg i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.os ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  %i.ov = load i8, ptr %i.ou, align 1
  %i.ow = add i32 %.2131.i, %.0124.i
  %i.ox = sub i32 %i.ow, %.2138.i
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 %i.oy
  store i8 %i.ov, ptr %i.oz, align 1
  %i.pa = load i8, ptr %i.ot, align 2
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.pb = trunc nuw nsw i32 %.1135.i to i8
  %i.pc = or disjoint i8 %i.pb, 48
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sink.i = phi i8 [ %i.pc, %bb.bq ], [ %i.pa, %bb.bp ]
  %i.pd = zext nneg i32 %.0124.i to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 %i.pd ; 2 uses
  store i8 %.sink.i, ptr %i.pe, align 1
  %i.pf = icmp ugt i32 %.2131.i, 1
  br i1 %i.pf, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  store i8 46, ptr %i.pg, align 1
  %i.ph = add i32 %.2131.i, 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn.i = phi i32 [ %i.ph, %bb.bs ], [ 1, %bb.br ]
  %.1.i25 = add i32 %.pn.i, %.0124.i              ; 6 uses
  %i.pi = add i32 %.1.i25, 1
  %i.pj = sext i32 %.1.i25 to i64
  %i.pk = getelementptr inbounds i8, ptr %1, i64 %i.pj
  store i8 101, ptr %i.pk, align 1
  %i.pl = icmp slt i32 %i.gj, 0                   ; 2 uses
  %i.pm = sext i32 %i.pi to i64
  %i.pn = getelementptr inbounds i8, ptr %1, i64 %i.pm
  %i.po = sub i32 1, %i.gi
  %spec.select = select i1 %i.pl, i8 45, i8 43
  %spec.select90 = select i1 %i.pl, i32 %i.po, i32 %i.gj ; 4 uses
  store i8 %spec.select, ptr %i.pn, align 1
  %.2.i = add i32 %.1.i25, 2                      ; 2 uses
  %i.pp = icmp sgt i32 %spec.select90, 99
  br i1 %i.pp, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.pq = urem i32 %spec.select90, 10
  %i.pr = sext i32 %.2.i to i64
  %i.ps = getelementptr inbounds i8, ptr %1, i64 %i.pr
  %i.pt = udiv i32 %spec.select90, 10
  %i.pu = shl nuw nsw i32 %i.pt, 1
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.pv
  %i.px = load i16, ptr %i.pw, align 2
  store i16 %i.px, ptr %i.ps, align 1
  %i.py = trunc nuw nsw i32 %i.pq to i8
  %i.pz = or disjoint i8 %i.py, 48
  %i.qa = add i32 %.1.i25, 4
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds i8, ptr %1, i64 %i.qb
  store i8 %i.pz, ptr %i.qc, align 1
  %i.qd = add i32 %.1.i25, 5
  br label %copy_special_str.exit

bb.bv:                                            ; preds = %bb.bt
  %i.qe = sext i32 %.2.i to i64
  %i.qf = getelementptr inbounds i8, ptr %1, i64 %i.qe
  %i.qg = shl i32 %spec.select90, 1
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds i8, ptr @DIGIT_TABLE, i64 %i.qh
  %i.qj = load i16, ptr %i.qi, align 2
  store i16 %i.qj, ptr %i.qf, align 1
  %i.qk = add i32 %.1.i25, 4
  br label %copy_special_str.exit

copy_special_str.exit:                            ; preds = %bb.bv, %bb.bu, %to_chars_df.exit.i, %bb.h, %bb.g, %bb.d
  %.0 = phi i32 [ %i.l, %bb.h ], [ 3, %bb.d ], [ %i.k, %bb.g ], [ %i.li, %to_chars_df.exit.i ], [ %i.qd, %bb.bu ], [ %i.qk, %bb.bv ]
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #5

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = distinct !{!3, !5}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
end_hunk_0
