inline.NumInlined: 35
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6icu_7813CollationData17makeReorderRangesEPKiiaRNS_9UVector32ER10UErrorCode:bb.a
  %.1120.3 = phi i32 [ %i.ez, %bb.o ], [ %.1120.2, %bb.n ] ; 4 uses
  %i.fa = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  %i.fc = load i16, ptr %i.fb, align 2            ; 2 uses
  %.not167.4 = icmp ne i16 %i.fc, 0
  %i.fd = and i32 %.0129.lcssa, 16
  %i.fe = icmp eq i32 %i.fd, 0
  %or.cond318 = select i1 %.not167.4, i1 %i.fe, i1 false
  br i1 %or.cond318, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ff = zext i16 %i.fc to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ff ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2
  %i.fi = zext i16 %i.fh to i32                   ; 2 uses
  %i.fj = and i32 %i.fi, 255
  %i.fk = and i32 %.1120.3, 255
  %i.fl = icmp samesign ult i32 %i.fj, %i.fk
  %i.fm = add nsw i32 %.1120.3, 256
  %spec.select.i.4 = select i1 %i.fl, i32 %i.fm, i32 %.1120.3 ; 2 uses
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
  %.1120.4 = phi i32 [ %i.fz, %bb.q ], [ %.1120.3, %bb.p ] ; 4 uses
  %i.ga = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.gb = getelementptr i8, ptr %i.ga, i64 10
  %i.gc = load i16, ptr %i.gb, align 2            ; 2 uses
  %.not167.5 = icmp ne i16 %i.gc, 0
  %i.gd = and i32 %.0129.lcssa, 32
  %i.ge = icmp eq i32 %i.gd, 0
  %or.cond320 = select i1 %.not167.5, i1 %i.ge, i1 false
  br i1 %or.cond320, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gf = zext i16 %i.gc to i64                   ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.gf ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = zext i16 %i.gh to i32                   ; 2 uses
  %i.gj = and i32 %i.gi, 255
  %i.gk = and i32 %.1120.4, 255
  %i.gl = icmp samesign ult i32 %i.gj, %i.gk
  %i.gm = add nsw i32 %.1120.4, 256
  %spec.select.i.5 = select i1 %i.gl, i32 %i.gm, i32 %.1120.4 ; 2 uses
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
  %.1120.5 = phi i32 [ %i.gz, %bb.s ], [ %.1120.4, %bb.r ] ; 4 uses
  %i.ha = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.hb = getelementptr i8, ptr %i.ha, i64 12
  %i.hc = load i16, ptr %i.hb, align 2            ; 2 uses
  %.not167.6 = icmp ne i16 %i.hc, 0
  %i.hd = and i32 %.0129.lcssa, 64
  %i.he = icmp eq i32 %i.hd, 0
  %or.cond322 = select i1 %.not167.6, i1 %i.he, i1 false
  br i1 %or.cond322, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hf = zext i16 %i.hc to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.hf ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 2
  %i.hi = zext i16 %i.hh to i32                   ; 2 uses
  %i.hj = and i32 %i.hi, 255
  %i.hk = and i32 %.1120.5, 255
  %i.hl = icmp samesign ult i32 %i.hj, %i.hk
  %i.hm = add nsw i32 %.1120.5, 256
  %spec.select.i.6 = select i1 %i.hl, i32 %i.hm, i32 %.1120.5 ; 2 uses
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
  %.1120.6 = phi i32 [ %i.hz, %bb.u ], [ %.1120.5, %bb.t ] ; 5 uses
  %i.ia = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.ib = getelementptr i8, ptr %i.ia, i64 14
  %i.ic = load i16, ptr %i.ib, align 2            ; 2 uses
  %.not167.7 = icmp eq i16 %i.ic, 0
  br i1 %.not167.7, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.id = and i32 %.0129.lcssa, 128
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.x, label %.thread295

bb.x:                                             ; preds = %bb.w
  %i.if = zext i16 %i.ic to i64                   ; 2 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.if ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = zext i16 %i.ih to i32                   ; 2 uses
  %i.ij = and i32 %i.ii, 255
  %i.ik = and i32 %.1120.6, 255
  %i.il = icmp samesign ult i32 %i.ij, %i.ik
  %i.im = add nsw i32 %.1120.6, 256
  %spec.select.i.7 = select i1 %i.il, i32 %i.im, i32 %.1120.6 ; 2 uses
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
  %.1120.7 = phi i32 [ %i.iz, %bb.x ], [ %.1120.6, %bb.v ] ; 3 uses
  %i.ja = icmp eq i32 %.0129.lcssa, 0
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
  %i.jk = sub nsw i32 %i.jj, %.1120.7
  %i.jl = and i32 %i.jk, 65280
  br label %.thread295

.thread295:                                       ; preds = %bb.w, %bb.aa, %bb.z, %bb.y
  %.0143 = phi i32 [ 0, %bb.z ], [ %i.jl, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.w ]
  %.2121 = phi i32 [ %.1120.7, %bb.z ], [ %i.jj, %bb.aa ], [ %.1120.7, %bb.y ], [ %.1120.6, %bb.w ] ; 2 uses
  br i1 %i.af, label %.lr.ph224.preheader, label %.thread182

.lr.ph224.preheader:                              ; preds = %.thread295
  %wide.trip.count261 = zext nneg i32 %2 to i64
  %invariant.op = add i32 %i.i, -4096
  br label %.lr.ph224

.lr.ph224:                                        ; preds = %.lr.ph224.preheader, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread
  %indvars.iv258 = phi i64 [ 0, %.lr.ph224.preheader ], [ %indvars.iv.next259, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %.3122222 = phi i32 [ %.2121, %.lr.ph224.preheader ], [ %.5, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 8 uses
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
  %i.jq = zext nneg i32 %2 to i64
  %sext = shl i64 %indvars.iv.next259, 32
  %6 = ashr exact i64 %sext, 32
  %invariant.op304 = add i32 %i.i, -4096
  br label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread
  %indvars.iv263 = phi i64 [ %i.jq, %.lr.ph229.preheader ], [ %indvars.iv.next264, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ]
  %.1125227 = phi i32 [ %i.ae, %.lr.ph229.preheader ], [ %.2126, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ] ; 6 uses
  %indvars.iv.next264 = add nsw i64 %indvars.iv263, -1 ; 3 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next264
  %i.js = load i32, ptr %i.jr, align 4            ; 6 uses
  switch i32 %i.js, label %bb.ac [
    i32 -1, label %bb.ab
    i32 103, label %bb.ab
  ]

bb.ab:                                            ; preds = %.lr.ph229, %.lr.ph229
  store i32 1, ptr %5, align 4
  br label %.thread182.thread

bb.ac:                                            ; preds = %.lr.ph229
  %i.jt = icmp slt i32 %i.js, 0
  br i1 %i.jt, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ju = icmp slt i32 %i.js, %i.i
  br i1 %i.ju, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jv = zext nneg i32 %i.js to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit

bb.af:                                            ; preds = %bb.ad
  %i.jw = and i32 %i.js, 2147483640
  %or.cond.i = icmp eq i32 %i.jw, 4096
  br i1 %or.cond.i, label %bb.ag, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

bb.ag:                                            ; preds = %bb.af
  %.reass305 = add i32 %i.js, %invariant.op304
  %i.jx = sext i32 %.reass305 to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit

_ZNK6icu_7813CollationData14getScriptIndexEi.exit: ; preds = %bb.ae, %bb.ag
  %.pn = phi i64 [ %i.jx, %bb.ag ], [ %i.jv, %bb.ae ]
  %.0.shrunk.i.in = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.pn
  %.0.shrunk.i = load i16, ptr %.0.shrunk.i.in, align 2 ; 2 uses
  %i.jy = icmp eq i16 %.0.shrunk.i, 0
  br i1 %i.jy, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, label %bb.ah, !llvm.loop !14

bb.ah:                                            ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit
  %i.jz = zext i16 %.0.shrunk.i to i64            ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jz ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1
  %.not160 = icmp eq i8 %i.kb, 0
  br i1 %.not160, label %bb.ai, label %.thread

.thread:                                          ; preds = %bb.ah
  store i32 1, ptr %5, align 4
  br label %.thread182.thread

bb.ai:                                            ; preds = %bb.ah
  %i.kc = getelementptr [2 x i8], ptr %i.u, i64 %i.jz ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 2
  %i.ke = load i16, ptr %i.kd, align 2
  %i.kf = zext i16 %i.ke to i32                   ; 2 uses
  %i.kg = and i32 %i.kf, 255
  %i.kh = and i32 %.1125227, 255
  %i.ki = icmp samesign ugt i32 %i.kg, %i.kh
  %i.kj = add i32 %.1125227, 65280
  %spec.select.i169 = select i1 %i.ki, i32 %i.kj, i32 %.1125227
  %i.kk = load i16, ptr %i.kc, align 2
  %i.kl = zext i16 %i.kk to i32                   ; 2 uses
  %i.km = and i32 %spec.select.i169, 65280
  %i.kn = and i32 %i.kf, 65280
  %i.ko = and i32 %i.kl, 65280
  %.neg.i = sub nsw i32 %i.ko, %i.kn
  %i.kp = add nsw i32 %i.km, %.neg.i              ; 2 uses
  %i.kq = and i32 %i.kl, 255
  %i.kr = or disjoint i32 %i.kp, %i.kq
  %i.ks = lshr exact i32 %i.kp, 8
  %i.kt = trunc i32 %i.ks to i8
  store i8 %i.kt, ptr %i.ka, align 1
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread: ; preds = %bb.ac, %bb.af, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit, %bb.ai
  %.2126 = phi i32 [ %i.kr, %bb.ai ], [ %.1125227, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit ], [ %.1125227, %bb.af ], [ %.1125227, %bb.ac ] ; 2 uses
  %i.ku = icmp slt i64 %6, %indvars.iv.next264
  br i1 %i.ku, label %.lr.ph229, label %.thread182

bb.aj:                                            ; preds = %.lr.ph224
  store i32 1, ptr %5, align 4
  br label %.thread182.thread

bb.ak:                                            ; preds = %.lr.ph224
  %i.kv = icmp slt i32 %i.jn, 0
  br i1 %i.kv, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kw = icmp slt i32 %i.jn, %i.i
  br i1 %i.kw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kx = zext nneg i32 %i.jn to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173

bb.an:                                            ; preds = %bb.al
  %i.ky = and i32 %i.jn, 2147483640
  %or.cond.i170 = icmp eq i32 %i.ky, 4096
  br i1 %or.cond.i170, label %bb.ao, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread

bb.ao:                                            ; preds = %bb.an
  %.reass = add i32 %i.jn, %invariant.op
  %i.kz = sext i32 %.reass to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173

_ZNK6icu_7813CollationData14getScriptIndexEi.exit173: ; preds = %bb.am, %bb.ao
  %.pn294 = phi i64 [ %i.kz, %bb.ao ], [ %i.kx, %bb.am ]
  %.0.shrunk.i171.in = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.pn294
  %.0.shrunk.i171 = load i16, ptr %.0.shrunk.i171.in, align 2 ; 2 uses
  %i.la = icmp eq i16 %.0.shrunk.i171, 0
  br i1 %i.la, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, label %bb.ap, !llvm.loop !15

bb.ap:                                            ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173
  %i.lb = zext i16 %.0.shrunk.i171 to i64         ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lb ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1
  %.not159 = icmp eq i8 %i.ld, 0
  br i1 %.not159, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 1, ptr %5, align 4
  br label %.thread182.thread

bb.ar:                                            ; preds = %bb.ap
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.lb ; 2 uses
  %i.lf = load i16, ptr %i.le, align 2
  %i.lg = zext i16 %i.lf to i32                   ; 2 uses
  %i.lh = and i32 %i.lg, 255
  %i.li = and i32 %.3122222, 255
  %i.lj = icmp samesign ult i32 %i.lh, %i.li
  %i.lk = add nsw i32 %.3122222, 256
  %spec.select.i174 = select i1 %i.lj, i32 %i.lk, i32 %.3122222 ; 2 uses
  %i.ll = lshr i32 %spec.select.i174, 8
  %i.lm = trunc i32 %i.ll to i8
  store i8 %i.lm, ptr %i.lc, align 1
  %i.ln = getelementptr i8, ptr %i.le, i64 2
  %i.lo = load i16, ptr %i.ln, align 2
  %i.lp = zext i16 %i.lo to i32                   ; 2 uses
  %i.lq = and i32 %spec.select.i174, 65280
  %i.lr = and i32 %i.lp, 65280
  %i.ls = and i32 %i.lg, 65280
  %i.lt = sub nsw i32 %i.lr, %i.ls
  %i.lu = and i32 %i.lp, 255
  %i.lv = or disjoint i32 %i.lt, %i.lu
  %i.lw = add nsw i32 %i.lv, %i.lq
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread

_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread: ; preds = %bb.ak, %bb.an, %bb.ar, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173
  %.5 = phi i32 [ %.3122222, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173 ], [ %i.lw, %bb.ar ], [ %.3122222, %bb.an ], [ %.3122222, %bb.ak ] ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count261
  br i1 %exitcond262.not, label %.thread182, label %.lr.ph224

.thread182:                                       ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, %.thread295, %.preheader200
  %.3122212 = phi i32 [ %.3122222, %.preheader200 ], [ %.3122222, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ %.2121, %.thread295 ], [ %.5, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %.not208 = phi i1 [ true, %.preheader200 ], [ true, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ false, %.thread295 ], [ false, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ]
  %.4128 = phi i32 [ %i.ae, %.preheader200 ], [ %.2126, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ %i.ae, %.thread295 ], [ %i.ae, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %i.lx = icmp sgt i32 %i.z, 2
  br i1 %i.lx, label %.lr.ph233.preheader, label %._crit_edge

.lr.ph233.preheader:                              ; preds = %.thread182
  %i.ly = add nsw i32 %i.z, -1
  %wide.trip.count269 = zext nneg i32 %i.ly to i64
  br label %.lr.ph233

._crit_edge:                                      ; preds = %bb.at, %.thread182
  %.7.lcssa = phi i32 [ %.3122212, %.thread182 ], [ %.9, %bb.at ] ; 2 uses
  %i.lz = icmp sgt i32 %.7.lcssa, %.4128
  br i1 %i.lz, label %bb.au, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ma = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.ax

.lr.ph233:                                        ; preds = %.lr.ph233.preheader, %bb.at
  %indvars.iv266 = phi i64 [ 1, %.lr.ph233.preheader ], [ %indvars.iv.next267, %bb.at ] ; 3 uses
  %.7232 = phi i32 [ %.3122212, %.lr.ph233.preheader ], [ %.9, %bb.at ] ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv266 ; 2 uses
  %i.me = load i8, ptr %i.md, align 1
  %.not165 = icmp eq i8 %i.me, 0
  br i1 %.not165, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph233
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv266 ; 2 uses
  %i.mg = load i16, ptr %i.mf, align 2
  %i.mh = zext i16 %i.mg to i32                   ; 3 uses
  %i.mi = tail call i32 @llvm.smax.i32(i32 %.7232, i32 %i.mh)
  %.8 = select i1 %.not208, i32 %.7232, i32 %i.mi ; 3 uses
  %i.mj = and i32 %i.mh, 255
  %i.mk = and i32 %.8, 255
  %i.ml = icmp samesign ult i32 %i.mj, %i.mk
  %i.mm = add nsw i32 %.8, 256
  %spec.select.i175 = select i1 %i.ml, i32 %i.mm, i32 %.8 ; 2 uses
  %i.mn = lshr i32 %spec.select.i175, 8
  %i.mo = trunc i32 %i.mn to i8
  store i8 %i.mo, ptr %i.md, align 1
  %i.mp = getelementptr i8, ptr %i.mf, i64 2
  %i.mq = load i16, ptr %i.mp, align 2
  %i.mr = zext i16 %i.mq to i32                   ; 2 uses
  %i.ms = and i32 %spec.select.i175, 65280
  %i.mt = and i32 %i.mr, 65280
  %i.mu = and i32 %i.mh, 65280
  %i.mv = sub nsw i32 %i.mt, %i.mu
  %i.mw = and i32 %i.mr, 255
  %i.mx = or disjoint i32 %i.mv, %i.mw
  %i.my = add nsw i32 %i.mx, %i.ms
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph233, %bb.as
  %.9 = phi i32 [ %i.my, %bb.as ], [ %.7232, %.lr.ph233 ] ; 2 uses
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge, label %.lr.ph233, !llvm.loop !16

bb.au:                                            ; preds = %._crit_edge
  %i.mz = sub nsw i32 %.7.lcssa, %.0143
  %.not164 = icmp sgt i32 %i.mz, %.4128
  br i1 %.not164, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @_ZNK6icu_7813CollationData17makeReorderRangesEPKiiaRNS_9UVector32ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %1, i32 noundef %2, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %.thread182.thread

bb.aw:                                            ; preds = %bb.au
  store i32 15, ptr %5, align 4
  br label %.thread182.thread

bb.ax:                                            ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, %.preheader
  %i.na = phi i32 [ %i.ok, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ], [ %i.z, %.preheader ]
  %.0117 = phi i32 [ %.3, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ], [ 0, %.preheader ] ; 6 uses
  %.0113 = phi i32 [ %i.om, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ], [ 1, %.preheader ] ; 3 uses
  %i.nb = add nsw i32 %i.na, -1                   ; 4 uses
  %i.nc = icmp slt i32 %.0113, %i.nb
  br i1 %i.nc, label %.lr.ph238.preheader, label %.thread188

.lr.ph238.preheader:                              ; preds = %bb.ax
  %i.nd = sext i32 %.0113 to i64
  %i.ne = sext i32 %i.nb to i64
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %bb.az
  %indvars.iv271 = phi i64 [ %i.nd, %.lr.ph238.preheader ], [ %indvars.iv.next272, %bb.az ] ; 4 uses
  %.0110236 = phi i32 [ %.0117, %.lr.ph238.preheader ], [ %.1111, %bb.az ]
  %i.nf = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv271
  %i.ng = load i8, ptr %i.nf, align 1             ; 2 uses
  %i.nh = icmp eq i8 %i.ng, -1
  br i1 %i.nh, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph238
  %i.ni = zext i8 %i.ng to i32
  %i.nj = load ptr, ptr %i.t, align 8
  %i.nk = getelementptr inbounds [2 x i8], ptr %i.nj, i64 %indvars.iv271
  %i.nl = load i16, ptr %i.nk, align 2
  %i.nm = lshr i16 %i.nl, 8
  %i.nn = zext nneg i16 %i.nm to i32
  %i.no = sub nsw i32 %i.ni, %i.nn                ; 2 uses
  %.not161 = icmp eq i32 %i.no, %.0117
  br i1 %.not161, label %bb.az, label %.thread188.loopexit.split.loop.exit

bb.az:                                            ; preds = %.lr.ph238, %bb.ay
  %.1111 = phi i32 [ %.0110236, %.lr.ph238 ], [ %.0117, %bb.ay ] ; 2 uses
  %indvars.iv.next272 = add nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next272, %i.ne
  br i1 %exitcond274.not, label %.thread188, label %.lr.ph238

.thread188.loopexit.split.loop.exit:              ; preds = %bb.ay
  %i.np = trunc nsw i64 %indvars.iv271 to i32
  br label %.thread188

.thread188:                                       ; preds = %bb.az, %.thread188.loopexit.split.loop.exit, %bb.ax
  %.1114.lcssa = phi i32 [ %.0113, %bb.ax ], [ %i.np, %.thread188.loopexit.split.loop.exit ], [ %i.nb, %bb.az ] ; 4 uses
  %.3 = phi i32 [ %.0117, %bb.ax ], [ %i.no, %.thread188.loopexit.split.loop.exit ], [ %.1111, %bb.az ]
  %.not162 = icmp ne i32 %.0117, 0
  %i.nq = icmp slt i32 %.1114.lcssa, %i.nb
  %or.cond197 = or i1 %.not162, %i.nq
  br i1 %or.cond197, label %bb.ba, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit
end_hunk_0
