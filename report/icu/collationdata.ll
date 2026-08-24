Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/collationdata?download=true
inline.NumInlined: 35
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6icu_7813CollationData17makeReorderRangesEPKiiaRNS_9UVector32ER10UErrorCode:bb.a
  %i.ek = and i32 %.1139.2, 255
  %i.el = icmp samesign ult i32 %i.ej, %i.ek
  %i.em = add nsw i32 %.1139.2, 256
  %spec.select.i.3 = select i1 %i.el, i32 %i.em, i32 %.1139.2 ; 2 uses
  %i.en = lshr i32 %spec.select.i.3, 8
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ef
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !45
  %i.eq = getelementptr i8, ptr %i.eg, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !31
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
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !31 ; 2 uses
  %.not167.4 = icmp ne i16 %i.fc, 0
  %i.fd = and i32 %.0131.lcssa, 16
  %i.fe = icmp eq i32 %i.fd, 0
  %or.cond314 = select i1 %.not167.4, i1 %i.fe, i1 false
  br i1 %or.cond314, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ff = zext i16 %i.fc to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ff ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !31
  %i.fi = zext i16 %i.fh to i32                   ; 2 uses
  %i.fj = and i32 %i.fi, 255
  %i.fk = and i32 %.1139.3, 255
  %i.fl = icmp samesign ult i32 %i.fj, %i.fk
  %i.fm = add nsw i32 %.1139.3, 256
  %spec.select.i.4 = select i1 %i.fl, i32 %i.fm, i32 %.1139.3 ; 2 uses
  %i.fn = lshr i32 %spec.select.i.4, 8
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ff
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !45
  %i.fq = getelementptr i8, ptr %i.fg, i64 2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !31
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
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !31 ; 2 uses
  %.not167.5 = icmp ne i16 %i.gc, 0
  %i.gd = and i32 %.0131.lcssa, 32
  %i.ge = icmp eq i32 %i.gd, 0
  %or.cond316 = select i1 %.not167.5, i1 %i.ge, i1 false
  br i1 %or.cond316, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gf = zext i16 %i.gc to i64                   ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.gf ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !31
  %i.gi = zext i16 %i.gh to i32                   ; 2 uses
  %i.gj = and i32 %i.gi, 255
  %i.gk = and i32 %.1139.4, 255
  %i.gl = icmp samesign ult i32 %i.gj, %i.gk
  %i.gm = add nsw i32 %.1139.4, 256
  %spec.select.i.5 = select i1 %i.gl, i32 %i.gm, i32 %.1139.4 ; 2 uses
  %i.gn = lshr i32 %spec.select.i.5, 8
  %i.go = trunc i32 %i.gn to i8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gf
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !45
  %i.gq = getelementptr i8, ptr %i.gg, i64 2
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !31
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
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !31 ; 2 uses
  %.not167.6 = icmp ne i16 %i.hc, 0
  %i.hd = and i32 %.0131.lcssa, 64
  %i.he = icmp eq i32 %i.hd, 0
  %or.cond318 = select i1 %.not167.6, i1 %i.he, i1 false
  br i1 %or.cond318, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hf = zext i16 %i.hc to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.hf ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !31
  %i.hi = zext i16 %i.hh to i32                   ; 2 uses
  %i.hj = and i32 %i.hi, 255
  %i.hk = and i32 %.1139.5, 255
  %i.hl = icmp samesign ult i32 %i.hj, %i.hk
  %i.hm = add nsw i32 %.1139.5, 256
  %spec.select.i.6 = select i1 %i.hl, i32 %i.hm, i32 %.1139.5 ; 2 uses
  %i.hn = lshr i32 %spec.select.i.6, 8
  %i.ho = trunc i32 %i.hn to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hf
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !45
  %i.hq = getelementptr i8, ptr %i.hg, i64 2
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !31
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
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !31 ; 2 uses
  %.not167.7 = icmp eq i16 %i.ic, 0
  br i1 %.not167.7, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.id = and i32 %.0131.lcssa, 128
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.x, label %.thread293

bb.x:                                             ; preds = %bb.w
  %i.if = zext i16 %i.ic to i64                   ; 2 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.if ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !31
  %i.ii = zext i16 %i.ih to i32                   ; 2 uses
  %i.ij = and i32 %i.ii, 255
  %i.ik = and i32 %.1139.6, 255
  %i.il = icmp samesign ult i32 %i.ij, %i.ik
  %i.im = add nsw i32 %.1139.6, 256
  %spec.select.i.7 = select i1 %i.il, i32 %i.im, i32 %.1139.6 ; 2 uses
  %i.in = lshr i32 %spec.select.i.7, 8
  %i.io = trunc i32 %i.in to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.if
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !45
  %i.iq = getelementptr i8, ptr %i.ig, i64 2
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !31
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
  br i1 %i.ja, label %bb.z, label %.thread293

bb.z:                                             ; preds = %bb.y
  %i.jb = load i32, ptr %1, align 4, !tbaa !20
  %i.jc = icmp ne i32 %i.jb, 25
  %i.jd = icmp ne i8 %3, 0
  %or.cond4 = or i1 %i.jd, %i.jc
  br i1 %or.cond4, label %.thread293, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.je = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !31
  %i.jg = zext i16 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !31
  %i.jj = zext i16 %i.ji to i32                   ; 2 uses
  %i.jk = sub nsw i32 %i.jj, %.1139.7
  %i.jl = and i32 %i.jk, 65280
  br label %.thread293

.thread293:                                       ; preds = %bb.w, %bb.aa, %bb.z, %bb.y
  %.2140 = phi i32 [ %.1139.7, %bb.z ], [ %i.jj, %bb.aa ], [ %.1139.7, %bb.y ], [ %.1139.6, %bb.w ] ; 2 uses
  %.0128 = phi i32 [ 0, %bb.z ], [ %i.jl, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.w ]
  br i1 %i.af, label %.lr.ph225, label %.thread182

.lr.ph225:                                        ; preds = %.thread293
  %i.jm = add i32 %i.i, -4096                     ; 2 uses
  %wide.trip.count262 = zext nneg i32 %2 to i64   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph225, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread
  %indvars.iv259 = phi i64 [ 0, %.lr.ph225 ], [ %indvars.iv.next260, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %.3141222 = phi i32 [ %.2140, %.lr.ph225 ], [ %.5143, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 8 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 4 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv259
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !20 ; 6 uses
  switch i32 %i.jo, label %bb.am [
    i32 103, label %.preheader201
    i32 -1, label %bb.al
  ]

.preheader201:                                    ; preds = %bb.ab
  %i.jp = trunc nuw nsw i64 %indvars.iv.next260 to i32
  %i.jq = icmp sgt i32 %2, %i.jp
  br i1 %i.jq, label %bb.ac, label %.thread182

bb.ac:                                            ; preds = %.preheader201, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ %wide.trip.count262, %.preheader201 ]
  %.1134228 = phi i32 [ %.2135, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ %i.ae, %.preheader201 ] ; 6 uses
  %indvars.iv.next265 = add nsw i64 %indvars.iv264, -1 ; 3 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next265
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !20 ; 6 uses
  switch i32 %i.js, label %bb.ae [
    i32 -1, label %bb.ad
    i32 103, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  store i32 1, ptr %5, align 4, !tbaa !21
  br label %.thread182.thread

bb.ae:                                            ; preds = %bb.ac
  %i.jt = icmp slt i32 %i.js, 0
  br i1 %i.jt, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ju = icmp slt i32 %i.js, %i.i
  br i1 %i.ju, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jv = zext nneg i32 %i.js to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit

bb.ah:                                            ; preds = %bb.af
  %i.jw = and i32 %i.js, 2147483640
  %or.cond.i = icmp eq i32 %i.jw, 4096
  br i1 %or.cond.i, label %bb.ai, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.jx = add i32 %i.jm, %i.js
  %i.jy = sext i32 %i.jx to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit

_ZNK6icu_7813CollationData14getScriptIndexEi.exit: ; preds = %bb.ag, %bb.ai
  %.pn = phi i64 [ %i.jy, %bb.ai ], [ %i.jv, %bb.ag ]
  %.0.shrunk.i.in = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.pn
  %.0.shrunk.i = load i16, ptr %.0.shrunk.i.in, align 2, !tbaa !31 ; 2 uses
  %i.jz = icmp eq i16 %.0.shrunk.i, 0
  br i1 %i.jz, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, label %bb.aj, !llvm.loop !50

bb.aj:                                            ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit
  %i.ka = zext i16 %.0.shrunk.i to i64            ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ka ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !45
  %.not160 = icmp eq i8 %i.kc, 0
  br i1 %.not160, label %bb.ak, label %.thread

.thread:                                          ; preds = %bb.aj
  store i32 1, ptr %5, align 4, !tbaa !21
  br label %.thread182.thread

bb.ak:                                            ; preds = %bb.aj
  %i.kd = getelementptr [2 x i8], ptr %i.u, i64 %i.ka ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 2
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !31
  %i.kg = zext i16 %i.kf to i32                   ; 2 uses
  %i.kh = and i32 %i.kg, 255
  %i.ki = and i32 %.1134228, 255
  %i.kj = icmp samesign ugt i32 %i.kh, %i.ki
  %i.kk = add i32 %.1134228, 65280
  %spec.select.i169 = select i1 %i.kj, i32 %i.kk, i32 %.1134228
  %i.kl = load i16, ptr %i.kd, align 2, !tbaa !31
  %i.km = zext i16 %i.kl to i32                   ; 2 uses
  %i.kn = and i32 %spec.select.i169, 65280
  %i.ko = and i32 %i.kg, 65280
  %i.kp = and i32 %i.km, 65280
  %.neg.i = sub nsw i32 %i.kp, %i.ko
  %i.kq = add nsw i32 %i.kn, %.neg.i              ; 2 uses
  %i.kr = and i32 %i.km, 255
  %i.ks = or disjoint i32 %i.kq, %i.kr
  %i.kt = lshr exact i32 %i.kq, 8
  %i.ku = trunc i32 %i.kt to i8
  store i8 %i.ku, ptr %i.kb, align 1, !tbaa !45
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread: ; preds = %bb.ae, %bb.ah, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit, %bb.ak
  %.2135 = phi i32 [ %i.ks, %bb.ak ], [ %.1134228, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit ], [ %.1134228, %bb.ah ], [ %.1134228, %bb.ae ] ; 2 uses
  %i.kv = icmp slt i64 %indvars.iv.next260, %indvars.iv.next265
  br i1 %i.kv, label %bb.ac, label %.thread182

bb.al:                                            ; preds = %bb.ab
  store i32 1, ptr %5, align 4, !tbaa !21
  br label %.thread182.thread

bb.am:                                            ; preds = %bb.ab
  %i.kw = icmp slt i32 %i.jo, 0
  br i1 %i.kw, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kx = icmp slt i32 %i.jo, %i.i
  br i1 %i.kx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ky = zext nneg i32 %i.jo to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173

bb.ap:                                            ; preds = %bb.an
  %i.kz = and i32 %i.jo, 2147483640
  %or.cond.i170 = icmp eq i32 %i.kz, 4096
  br i1 %or.cond.i170, label %bb.aq, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread

bb.aq:                                            ; preds = %bb.ap
  %i.la = add i32 %i.jm, %i.jo
  %i.lb = sext i32 %i.la to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173

_ZNK6icu_7813CollationData14getScriptIndexEi.exit173: ; preds = %bb.ao, %bb.aq
  %.pn198 = phi i64 [ %i.lb, %bb.aq ], [ %i.ky, %bb.ao ]
  %.0.shrunk.i171.in = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.pn198
  %.0.shrunk.i171 = load i16, ptr %.0.shrunk.i171.in, align 2, !tbaa !31 ; 2 uses
  %i.lc = icmp eq i16 %.0.shrunk.i171, 0
  br i1 %i.lc, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, label %bb.ar, !llvm.loop !51

bb.ar:                                            ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173
  %i.ld = zext i16 %.0.shrunk.i171 to i64         ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ld ; 2 uses
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !45
  %.not159 = icmp eq i8 %i.lf, 0
  br i1 %.not159, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 1, ptr %5, align 4, !tbaa !21
  br label %.thread182.thread

bb.at:                                            ; preds = %bb.ar
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ld ; 2 uses
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !31
  %i.li = zext i16 %i.lh to i32                   ; 2 uses
  %i.lj = and i32 %i.li, 255
  %i.lk = and i32 %.3141222, 255
  %i.ll = icmp samesign ult i32 %i.lj, %i.lk
  %i.lm = add nsw i32 %.3141222, 256
  %spec.select.i174 = select i1 %i.ll, i32 %i.lm, i32 %.3141222 ; 2 uses
  %i.ln = lshr i32 %spec.select.i174, 8
  %i.lo = trunc i32 %i.ln to i8
  store i8 %i.lo, ptr %i.le, align 1, !tbaa !45
  %i.lp = getelementptr i8, ptr %i.lg, i64 2
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !31
  %i.lr = zext i16 %i.lq to i32                   ; 2 uses
  %i.ls = and i32 %spec.select.i174, 65280
  %i.lt = and i32 %i.lr, 65280
  %i.lu = and i32 %i.li, 65280
  %i.lv = sub nsw i32 %i.lt, %i.lu
  %i.lw = and i32 %i.lr, 255
  %i.lx = or disjoint i32 %i.lv, %i.lw
  %i.ly = add nsw i32 %i.lx, %i.ls
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread

_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread: ; preds = %bb.am, %bb.ap, %bb.at, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173
  %.5143 = phi i32 [ %.3141222, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173 ], [ %i.ly, %bb.at ], [ %.3141222, %bb.ap ], [ %.3141222, %bb.am ] ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %.thread182, label %bb.ab

.thread182:                                       ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, %.thread293, %.preheader201
  %.3141213 = phi i32 [ %.3141222, %.preheader201 ], [ %.3141222, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ %.2140, %.thread293 ], [ %.5143, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %.not209 = phi i1 [ true, %.preheader201 ], [ true, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ false, %.thread293 ], [ false, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ]
  %.4137 = phi i32 [ %i.ae, %.preheader201 ], [ %.2135, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ %i.ae, %.thread293 ], [ %i.ae, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %i.lz = icmp sgt i32 %i.z, 2
  br i1 %i.lz, label %.lr.ph234.preheader, label %._crit_edge

.lr.ph234.preheader:                              ; preds = %.thread182
  %i.ma = add nsw i32 %i.z, -1
  %wide.trip.count270 = zext nneg i32 %i.ma to i64
  br label %.lr.ph234

._crit_edge:                                      ; preds = %bb.av, %.thread182
  %.7.lcssa = phi i32 [ %.3141213, %.thread182 ], [ %.9, %bb.av ] ; 2 uses
  %i.mb = icmp sgt i32 %.7.lcssa, %.4137
  br i1 %i.mb, label %bb.aw, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.az

.lr.ph234:                                        ; preds = %.lr.ph234.preheader, %bb.av
  %indvars.iv267 = phi i64 [ 1, %.lr.ph234.preheader ], [ %indvars.iv.next268, %bb.av ] ; 3 uses
  %.7232 = phi i32 [ %.3141213, %.lr.ph234.preheader ], [ %.9, %bb.av ] ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv267 ; 2 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !45
  %.not165 = icmp eq i8 %i.mg, 0
  br i1 %.not165, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph234
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv267 ; 2 uses
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !31
  %i.mj = zext i16 %i.mi to i32                   ; 3 uses
  %i.mk = tail call i32 @llvm.smax.i32(i32 %.7232, i32 %i.mj)
  %.8 = select i1 %.not209, i32 %.7232, i32 %i.mk ; 3 uses
  %i.ml = and i32 %i.mj, 255
  %i.mm = and i32 %.8, 255
  %i.mn = icmp samesign ult i32 %i.ml, %i.mm
  %i.mo = add nsw i32 %.8, 256
  %spec.select.i175 = select i1 %i.mn, i32 %i.mo, i32 %.8 ; 2 uses
  %i.mp = lshr i32 %spec.select.i175, 8
  %i.mq = trunc i32 %i.mp to i8
  store i8 %i.mq, ptr %i.mf, align 1, !tbaa !45
  %i.mr = getelementptr i8, ptr %i.mh, i64 2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !31
  %i.mt = zext i16 %i.ms to i32                   ; 2 uses
end_hunk_0
