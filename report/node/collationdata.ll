Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/collationdata?download=true
inline.NumInlined: 35
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6icu_7813CollationData17makeReorderRangesEPKiiaRNS_9UVector32ER10UErrorCode:bb.a
  %i.ej = and i32 %i.ei, 255
  %i.ek = and i32 %.1139.2, 255
  %i.el = icmp samesign ult i32 %i.ej, %i.ek
  %i.em = add nsw i32 %.1139.2, 256
  %spec.select.i.3 = select i1 %i.el, i32 %i.em, i32 %.1139.2 ; 2 uses
  %i.en = lshr i32 %spec.select.i.3, 8
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ef
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = getelementptr i8, ptr %i.eg, i64 2
  %i.er = load i16, ptr %i.eq, align 2
  %i.es = zext i16 %i.er to i32                   ; 2 uses
  %i.et = and i32 %spec.select.i.3, 65280
  %i.eu = and i32 %i.es, 65280
  %i.ev = and i32 %i.ei, 65280
  %i.ew = sub nsw i32 %i.eu, %i.ev
  %i.ex = and i32 %i.es, 255
  %i.ey = or disjoint i32 %i.ew, %i.ex
  %i.ez = add nsw i32 %i.ey, %i.et
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1139.3 = phi i32 [ %i.ez, %bb.o ], [ %.1139.2, %bb.n ] ; 4 uses
  %i.fa = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  %i.fc = load i16, ptr %i.fb, align 2            ; 2 uses
  %.not167.4 = icmp ne i16 %i.fc, 0
  %i.fd = and i32 %.0131.lcssa, 16
  %i.fe = icmp eq i32 %i.fd, 0
  %or.cond318 = select i1 %.not167.4, i1 %i.fe, i1 false
  br i1 %or.cond318, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ff = zext i16 %i.fc to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ff ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2
  %i.fi = zext i16 %i.fh to i32                   ; 2 uses
  %i.fj = and i32 %i.fi, 255
  %i.fk = and i32 %.1139.3, 255
  %i.fl = icmp samesign ult i32 %i.fj, %i.fk
  %i.fm = add nsw i32 %.1139.3, 256
  %spec.select.i.4 = select i1 %i.fl, i32 %i.fm, i32 %.1139.3 ; 2 uses
  %i.fn = lshr i32 %spec.select.i.4, 8
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ff
  store i8 %i.fo, ptr %i.fp, align 1
  %i.fq = getelementptr i8, ptr %i.fg, i64 2
  %i.fr = load i16, ptr %i.fq, align 2
  %i.fs = zext i16 %i.fr to i32                   ; 2 uses
  %i.ft = and i32 %spec.select.i.4, 65280
  %i.fu = and i32 %i.fs, 65280
  %i.fv = and i32 %i.fi, 65280
  %i.fw = sub nsw i32 %i.fu, %i.fv
  %i.fx = and i32 %i.fs, 255
  %i.fy = or disjoint i32 %i.fw, %i.fx
  %i.fz = add nsw i32 %i.fy, %i.ft
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1139.4 = phi i32 [ %i.fz, %bb.q ], [ %.1139.3, %bb.p ] ; 4 uses
  %i.ga = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.gb = getelementptr i8, ptr %i.ga, i64 10
  %i.gc = load i16, ptr %i.gb, align 2            ; 2 uses
  %.not167.5 = icmp ne i16 %i.gc, 0
  %i.gd = and i32 %.0131.lcssa, 32
  %i.ge = icmp eq i32 %i.gd, 0
  %or.cond320 = select i1 %.not167.5, i1 %i.ge, i1 false
  br i1 %or.cond320, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gf = zext i16 %i.gc to i64                   ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.gf ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = zext i16 %i.gh to i32                   ; 2 uses
  %i.gj = and i32 %i.gi, 255
  %i.gk = and i32 %.1139.4, 255
  %i.gl = icmp samesign ult i32 %i.gj, %i.gk
  %i.gm = add nsw i32 %.1139.4, 256
  %spec.select.i.5 = select i1 %i.gl, i32 %i.gm, i32 %.1139.4 ; 2 uses
  %i.gn = lshr i32 %spec.select.i.5, 8
  %i.go = trunc i32 %i.gn to i8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gf
  store i8 %i.go, ptr %i.gp, align 1
  %i.gq = getelementptr i8, ptr %i.gg, i64 2
  %i.gr = load i16, ptr %i.gq, align 2
  %i.gs = zext i16 %i.gr to i32                   ; 2 uses
  %i.gt = and i32 %spec.select.i.5, 65280
  %i.gu = and i32 %i.gs, 65280
  %i.gv = and i32 %i.gi, 65280
  %i.gw = sub nsw i32 %i.gu, %i.gv
  %i.gx = and i32 %i.gs, 255
  %i.gy = or disjoint i32 %i.gw, %i.gx
  %i.gz = add nsw i32 %i.gy, %i.gt
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1139.5 = phi i32 [ %i.gz, %bb.s ], [ %.1139.4, %bb.r ] ; 4 uses
  %i.ha = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.hb = getelementptr i8, ptr %i.ha, i64 12
  %i.hc = load i16, ptr %i.hb, align 2            ; 2 uses
  %.not167.6 = icmp ne i16 %i.hc, 0
  %i.hd = and i32 %.0131.lcssa, 64
  %i.he = icmp eq i32 %i.hd, 0
  %or.cond322 = select i1 %.not167.6, i1 %i.he, i1 false
  br i1 %or.cond322, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hf = zext i16 %i.hc to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.hf ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 2
  %i.hi = zext i16 %i.hh to i32                   ; 2 uses
  %i.hj = and i32 %i.hi, 255
  %i.hk = and i32 %.1139.5, 255
  %i.hl = icmp samesign ult i32 %i.hj, %i.hk
  %i.hm = add nsw i32 %.1139.5, 256
  %spec.select.i.6 = select i1 %i.hl, i32 %i.hm, i32 %.1139.5 ; 2 uses
  %i.hn = lshr i32 %spec.select.i.6, 8
  %i.ho = trunc i32 %i.hn to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hf
  store i8 %i.ho, ptr %i.hp, align 1
  %i.hq = getelementptr i8, ptr %i.hg, i64 2
  %i.hr = load i16, ptr %i.hq, align 2
  %i.hs = zext i16 %i.hr to i32                   ; 2 uses
  %i.ht = and i32 %spec.select.i.6, 65280
  %i.hu = and i32 %i.hs, 65280
  %i.hv = and i32 %i.hi, 65280
  %i.hw = sub nsw i32 %i.hu, %i.hv
  %i.hx = and i32 %i.hs, 255
  %i.hy = or disjoint i32 %i.hw, %i.hx
  %i.hz = add nsw i32 %i.hy, %i.ht
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1139.6 = phi i32 [ %i.hz, %bb.u ], [ %.1139.5, %bb.t ] ; 5 uses
  %i.ia = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.ib = getelementptr i8, ptr %i.ia, i64 14
  %i.ic = load i16, ptr %i.ib, align 2            ; 2 uses
  %.not167.7 = icmp eq i16 %i.ic, 0
  br i1 %.not167.7, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.id = and i32 %.0131.lcssa, 128
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.x, label %.thread295

bb.x:                                             ; preds = %bb.w
  %i.if = zext i16 %i.ic to i64                   ; 2 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.if ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = zext i16 %i.ih to i32                   ; 2 uses
  %i.ij = and i32 %i.ii, 255
  %i.ik = and i32 %.1139.6, 255
  %i.il = icmp samesign ult i32 %i.ij, %i.ik
  %i.im = add nsw i32 %.1139.6, 256
  %spec.select.i.7 = select i1 %i.il, i32 %i.im, i32 %.1139.6 ; 2 uses
  %i.in = lshr i32 %spec.select.i.7, 8
  %i.io = trunc i32 %i.in to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.if
  store i8 %i.io, ptr %i.ip, align 1
  %i.iq = getelementptr i8, ptr %i.ig, i64 2
  %i.ir = load i16, ptr %i.iq, align 2
  %i.is = zext i16 %i.ir to i32                   ; 2 uses
  %i.it = and i32 %spec.select.i.7, 65280
  %i.iu = and i32 %i.is, 65280
  %i.iv = and i32 %i.ii, 65280
  %i.iw = sub nsw i32 %i.iu, %i.iv
  %i.ix = and i32 %i.is, 255
  %i.iy = or disjoint i32 %i.iw, %i.ix
  %i.iz = add nsw i32 %i.iy, %i.it
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.1139.7 = phi i32 [ %i.iz, %bb.x ], [ %.1139.6, %bb.v ] ; 3 uses
  %i.ja = icmp eq i32 %.0131.lcssa, 0
  br i1 %i.ja, label %bb.z, label %.thread295

bb.z:                                             ; preds = %bb.y
  %i.jb = load i32, ptr %1, align 4
  %i.jc = icmp ne i32 %i.jb, 25
  %i.jd = icmp ne i8 %3, 0
  %or.cond4 = or i1 %i.jd, %i.jc
  br i1 %or.cond4, label %.thread295, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.je = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %i.jf = load i16, ptr %i.je, align 2
  %i.jg = zext i16 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2
  %i.jj = zext i16 %i.ji to i32                   ; 2 uses
  %i.jk = sub nsw i32 %i.jj, %.1139.7
  %i.jl = and i32 %i.jk, 65280
  br label %.thread295

.thread295:                                       ; preds = %bb.w, %bb.aa, %bb.z, %bb.y
  %.2140 = phi i32 [ %.1139.7, %bb.z ], [ %i.jj, %bb.aa ], [ %.1139.7, %bb.y ], [ %.1139.6, %bb.w ] ; 2 uses
  %.0128 = phi i32 [ 0, %bb.z ], [ %i.jl, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.w ]
  br i1 %i.af, label %.lr.ph224.preheader, label %.thread182

.lr.ph224.preheader:                              ; preds = %.thread295
  %wide.trip.count261 = zext nneg i32 %2 to i64   ; 2 uses
  %invariant.op = add i32 %i.i, -4096
  br label %.lr.ph224

.lr.ph224:                                        ; preds = %.lr.ph224.preheader, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread
  %indvars.iv258 = phi i64 [ 0, %.lr.ph224.preheader ], [ %indvars.iv.next259, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %.3141221 = phi i32 [ %.2140, %.lr.ph224.preheader ], [ %.5143, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 8 uses
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 4 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv258
  %i.jn = load i32, ptr %i.jm, align 4            ; 6 uses
  switch i32 %i.jn, label %bb.ak [
    i32 103, label %.preheader200
    i32 -1, label %bb.aj
  ]

.preheader200:                                    ; preds = %.lr.ph224
  %i.jo = trunc nuw nsw i64 %indvars.iv.next259 to i32
  %i.jp = icmp sgt i32 %2, %i.jo
  br i1 %i.jp, label %.lr.ph229.preheader, label %.thread182

.lr.ph229.preheader:                              ; preds = %.preheader200
  %invariant.op304 = add i32 %i.i, -4096
  br label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread
  %indvars.iv263 = phi i64 [ %wide.trip.count261, %.lr.ph229.preheader ], [ %indvars.iv.next264, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ]
  %.1134227 = phi i32 [ %i.ae, %.lr.ph229.preheader ], [ %.2135, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ] ; 6 uses
  %indvars.iv.next264 = add nsw i64 %indvars.iv263, -1 ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next264
  %i.jr = load i32, ptr %i.jq, align 4            ; 6 uses
  switch i32 %i.jr, label %bb.ac [
    i32 -1, label %bb.ab
    i32 103, label %bb.ab
  ]

bb.ab:                                            ; preds = %.lr.ph229, %.lr.ph229
  store i32 1, ptr %5, align 4
  br label %.thread182.thread

bb.ac:                                            ; preds = %.lr.ph229
  %i.js = icmp slt i32 %i.jr, 0
  br i1 %i.js, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jt = icmp slt i32 %i.jr, %i.i
  br i1 %i.jt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ju = zext nneg i32 %i.jr to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit

bb.af:                                            ; preds = %bb.ad
  %i.jv = and i32 %i.jr, 2147483640
  %or.cond.i = icmp eq i32 %i.jv, 4096
  br i1 %or.cond.i, label %bb.ag, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

bb.ag:                                            ; preds = %bb.af
  %.reass305 = add i32 %i.jr, %invariant.op304
  %i.jw = sext i32 %.reass305 to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit

_ZNK6icu_7813CollationData14getScriptIndexEi.exit: ; preds = %bb.ae, %bb.ag
  %.pn = phi i64 [ %i.jw, %bb.ag ], [ %i.ju, %bb.ae ]
  %.0.shrunk.i.in = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.pn
  %.0.shrunk.i = load i16, ptr %.0.shrunk.i.in, align 2 ; 2 uses
  %i.jx = icmp eq i16 %.0.shrunk.i, 0
  br i1 %i.jx, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, label %bb.ah, !llvm.loop !14

bb.ah:                                            ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit
  %i.jy = zext i16 %.0.shrunk.i to i64            ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jy ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1
  %.not160 = icmp eq i8 %i.ka, 0
  br i1 %.not160, label %bb.ai, label %.thread

.thread:                                          ; preds = %bb.ah
  store i32 1, ptr %5, align 4
  br label %.thread182.thread

bb.ai:                                            ; preds = %bb.ah
  %i.kb = getelementptr [2 x i8], ptr %i.u, i64 %i.jy ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 2
  %i.kd = load i16, ptr %i.kc, align 2
  %i.ke = zext i16 %i.kd to i32                   ; 2 uses
  %i.kf = and i32 %i.ke, 255
  %i.kg = and i32 %.1134227, 255
  %i.kh = icmp samesign ugt i32 %i.kf, %i.kg
  %i.ki = add i32 %.1134227, 65280
  %spec.select.i169 = select i1 %i.kh, i32 %i.ki, i32 %.1134227
  %i.kj = load i16, ptr %i.kb, align 2
  %i.kk = zext i16 %i.kj to i32                   ; 2 uses
  %i.kl = and i32 %spec.select.i169, 65280
  %i.km = and i32 %i.ke, 65280
  %i.kn = and i32 %i.kk, 65280
  %.neg.i = sub nsw i32 %i.kn, %i.km
  %i.ko = add nsw i32 %i.kl, %.neg.i              ; 2 uses
  %i.kp = and i32 %i.kk, 255
  %i.kq = or disjoint i32 %i.ko, %i.kp
  %i.kr = lshr exact i32 %i.ko, 8
  %i.ks = trunc i32 %i.kr to i8
  store i8 %i.ks, ptr %i.jz, align 1
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread: ; preds = %bb.ac, %bb.af, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit, %bb.ai
  %.2135 = phi i32 [ %i.kq, %bb.ai ], [ %.1134227, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit ], [ %.1134227, %bb.af ], [ %.1134227, %bb.ac ] ; 2 uses
  %i.kt = icmp slt i64 %indvars.iv.next259, %indvars.iv.next264
  br i1 %i.kt, label %.lr.ph229, label %.thread182

bb.aj:                                            ; preds = %.lr.ph224
  store i32 1, ptr %5, align 4
  br label %.thread182.thread

bb.ak:                                            ; preds = %.lr.ph224
  %i.ku = icmp slt i32 %i.jn, 0
  br i1 %i.ku, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kv = icmp slt i32 %i.jn, %i.i
  br i1 %i.kv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kw = zext nneg i32 %i.jn to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173

bb.an:                                            ; preds = %bb.al
  %i.kx = and i32 %i.jn, 2147483640
  %or.cond.i170 = icmp eq i32 %i.kx, 4096
  br i1 %or.cond.i170, label %bb.ao, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread

bb.ao:                                            ; preds = %bb.an
  %.reass = add i32 %i.jn, %invariant.op
  %i.ky = sext i32 %.reass to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173

_ZNK6icu_7813CollationData14getScriptIndexEi.exit173: ; preds = %bb.am, %bb.ao
  %.pn294 = phi i64 [ %i.ky, %bb.ao ], [ %i.kw, %bb.am ]
  %.0.shrunk.i171.in = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.pn294
  %.0.shrunk.i171 = load i16, ptr %.0.shrunk.i171.in, align 2 ; 2 uses
  %i.kz = icmp eq i16 %.0.shrunk.i171, 0
  br i1 %i.kz, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, label %bb.ap, !llvm.loop !15

bb.ap:                                            ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173
  %i.la = zext i16 %.0.shrunk.i171 to i64         ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.la ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1
  %.not159 = icmp eq i8 %i.lc, 0
  br i1 %.not159, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 1, ptr %5, align 4
  br label %.thread182.thread

bb.ar:                                            ; preds = %bb.ap
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.la ; 2 uses
  %i.le = load i16, ptr %i.ld, align 2
  %i.lf = zext i16 %i.le to i32                   ; 2 uses
  %i.lg = and i32 %i.lf, 255
  %i.lh = and i32 %.3141221, 255
  %i.li = icmp samesign ult i32 %i.lg, %i.lh
  %i.lj = add nsw i32 %.3141221, 256
  %spec.select.i174 = select i1 %i.li, i32 %i.lj, i32 %.3141221 ; 2 uses
  %i.lk = lshr i32 %spec.select.i174, 8
  %i.ll = trunc i32 %i.lk to i8
  store i8 %i.ll, ptr %i.lb, align 1
  %i.lm = getelementptr i8, ptr %i.ld, i64 2
  %i.ln = load i16, ptr %i.lm, align 2
  %i.lo = zext i16 %i.ln to i32                   ; 2 uses
  %i.lp = and i32 %spec.select.i174, 65280
  %i.lq = and i32 %i.lo, 65280
  %i.lr = and i32 %i.lf, 65280
  %i.ls = sub nsw i32 %i.lq, %i.lr
  %i.lt = and i32 %i.lo, 255
  %i.lu = or disjoint i32 %i.ls, %i.lt
  %i.lv = add nsw i32 %i.lu, %i.lp
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread

_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread: ; preds = %bb.ak, %bb.an, %bb.ar, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173
  %.5143 = phi i32 [ %.3141221, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173 ], [ %i.lv, %bb.ar ], [ %.3141221, %bb.an ], [ %.3141221, %bb.ak ] ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count261
  br i1 %exitcond262.not, label %.thread182, label %.lr.ph224

.thread182:                                       ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, %.thread295, %.preheader200
  %.3141212 = phi i32 [ %.3141221, %.preheader200 ], [ %.3141221, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ %.2140, %.thread295 ], [ %.5143, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %.not208 = phi i1 [ true, %.preheader200 ], [ true, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ false, %.thread295 ], [ false, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ]
  %.4137 = phi i32 [ %i.ae, %.preheader200 ], [ %.2135, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ %i.ae, %.thread295 ], [ %i.ae, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %i.lw = icmp sgt i32 %i.z, 2
  br i1 %i.lw, label %.lr.ph233.preheader, label %._crit_edge

.lr.ph233.preheader:                              ; preds = %.thread182
  %i.lx = add nsw i32 %i.z, -1
  %wide.trip.count269 = zext nneg i32 %i.lx to i64
  br label %.lr.ph233

._crit_edge:                                      ; preds = %bb.at, %.thread182
  %.7.lcssa = phi i32 [ %.3141212, %.thread182 ], [ %.9, %bb.at ] ; 2 uses
  %i.ly = icmp sgt i32 %.7.lcssa, %.4137
  br i1 %i.ly, label %bb.au, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.ax

.lr.ph233:                                        ; preds = %.lr.ph233.preheader, %bb.at
  %indvars.iv266 = phi i64 [ 1, %.lr.ph233.preheader ], [ %indvars.iv.next267, %bb.at ] ; 3 uses
  %.7231 = phi i32 [ %.3141212, %.lr.ph233.preheader ], [ %.9, %bb.at ] ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv266 ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1
  %.not165 = icmp eq i8 %i.md, 0
  br i1 %.not165, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph233
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv266 ; 2 uses
  %i.mf = load i16, ptr %i.me, align 2
  %i.mg = zext i16 %i.mf to i32                   ; 3 uses
  %i.mh = tail call i32 @llvm.smax.i32(i32 %.7231, i32 %i.mg)
  %.8 = select i1 %.not208, i32 %.7231, i32 %i.mh ; 3 uses
  %i.mi = and i32 %i.mg, 255
  %i.mj = and i32 %.8, 255
  %i.mk = icmp samesign ult i32 %i.mi, %i.mj
  %i.ml = add nsw i32 %.8, 256
  %spec.select.i175 = select i1 %i.mk, i32 %i.ml, i32 %.8 ; 2 uses
  %i.mm = lshr i32 %spec.select.i175, 8
  %i.mn = trunc i32 %i.mm to i8
  store i8 %i.mn, ptr %i.mc, align 1
  %i.mo = getelementptr i8, ptr %i.me, i64 2
  %i.mp = load i16, ptr %i.mo, align 2
  %i.mq = zext i16 %i.mp to i32                   ; 2 uses
end_hunk_0
