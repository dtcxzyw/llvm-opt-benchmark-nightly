Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/collationdata?download=true
inline.NumInlined: 35
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6icu_7813CollationData17makeReorderRangesEPKiiaRNS_9UVector32ER10UErrorCode:bb.a
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
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !24 ; 2 uses
  %.not167.6 = icmp ne i16 %i.hc, 0
  %i.hd = and i32 %.0131.lcssa, 64
  %i.he = icmp eq i32 %i.hd, 0
  %or.cond318 = select i1 %.not167.6, i1 %i.he, i1 false
  br i1 %or.cond318, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hf = zext i16 %i.hc to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.hf ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !24
  %i.hi = zext i16 %i.hh to i32                   ; 2 uses
  %i.hj = and i32 %i.hi, 255
  %i.hk = and i32 %.1139.5, 255
  %i.hl = icmp samesign ult i32 %i.hj, %i.hk
  %i.hm = add nsw i32 %.1139.5, 256
  %spec.select.i.6 = select i1 %i.hl, i32 %i.hm, i32 %.1139.5 ; 2 uses
  %i.hn = lshr i32 %spec.select.i.6, 8
  %i.ho = trunc i32 %i.hn to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hf
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !30
  %i.hq = getelementptr i8, ptr %i.hg, i64 2
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !24
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
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !24 ; 2 uses
  %.not167.7 = icmp eq i16 %i.ic, 0
  br i1 %.not167.7, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.id = and i32 %.0131.lcssa, 128
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.x, label %.thread293

bb.x:                                             ; preds = %bb.w
  %i.if = zext i16 %i.ic to i64                   ; 2 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.if ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !24
  %i.ii = zext i16 %i.ih to i32                   ; 2 uses
  %i.ij = and i32 %i.ii, 255
  %i.ik = and i32 %.1139.6, 255
  %i.il = icmp samesign ult i32 %i.ij, %i.ik
  %i.im = add nsw i32 %.1139.6, 256
  %spec.select.i.7 = select i1 %i.il, i32 %i.im, i32 %.1139.6 ; 2 uses
  %i.in = lshr i32 %spec.select.i.7, 8
  %i.io = trunc i32 %i.in to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.if
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !30
  %i.iq = getelementptr i8, ptr %i.ig, i64 2
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !24
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
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !24
  %i.jg = zext i16 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !24
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
  %wide.trip.count262 = zext nneg i32 %2 to i64
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
  br i1 %i.jq, label %.lr.ph230, label %.thread182

.lr.ph230:                                        ; preds = %.preheader201
  %i.jr = zext nneg i32 %2 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph230, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread
  %indvars.iv264 = phi i64 [ %i.jr, %.lr.ph230 ], [ %indvars.iv.next265, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ]
  %.1134228 = phi i32 [ %i.ae, %.lr.ph230 ], [ %.2135, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ] ; 6 uses
  %indvars.iv.next265 = add nsw i64 %indvars.iv264, -1 ; 3 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next265
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !20 ; 6 uses
  switch i32 %i.jt, label %bb.ae [
    i32 -1, label %bb.ad
    i32 103, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  store i32 1, ptr %5, align 4, !tbaa !22
  br label %.thread182.thread

bb.ae:                                            ; preds = %bb.ac
  %i.ju = icmp slt i32 %i.jt, 0
  br i1 %i.ju, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jv = icmp slt i32 %i.jt, %i.i
  br i1 %i.jv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jw = zext nneg i32 %i.jt to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit

bb.ah:                                            ; preds = %bb.af
  %i.jx = and i32 %i.jt, 2147483640
  %or.cond.i = icmp eq i32 %i.jx, 4096
  br i1 %or.cond.i, label %bb.ai, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.jy = add i32 %i.jm, %i.jt
  %i.jz = sext i32 %i.jy to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit

_ZNK6icu_7813CollationData14getScriptIndexEi.exit: ; preds = %bb.ag, %bb.ai
  %.pn = phi i64 [ %i.jz, %bb.ai ], [ %i.jw, %bb.ag ]
  %.0.shrunk.i.in = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.pn
  %.0.shrunk.i = load i16, ptr %.0.shrunk.i.in, align 2, !tbaa !24 ; 2 uses
  %i.ka = icmp eq i16 %.0.shrunk.i, 0
  br i1 %i.ka, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, label %bb.aj, !llvm.loop !48

bb.aj:                                            ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit
  %i.kb = zext i16 %.0.shrunk.i to i64            ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kb ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !30
  %.not160 = icmp eq i8 %i.kd, 0
  br i1 %.not160, label %bb.ak, label %.thread

.thread:                                          ; preds = %bb.aj
  store i32 1, ptr %5, align 4, !tbaa !22
  br label %.thread182.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ke = getelementptr [2 x i8], ptr %i.u, i64 %i.kb ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 2
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !24
  %i.kh = zext i16 %i.kg to i32                   ; 2 uses
  %i.ki = and i32 %i.kh, 255
  %i.kj = and i32 %.1134228, 255
  %i.kk = icmp samesign ugt i32 %i.ki, %i.kj
  %i.kl = add i32 %.1134228, 65280
  %spec.select.i169 = select i1 %i.kk, i32 %i.kl, i32 %.1134228
  %i.km = load i16, ptr %i.ke, align 2, !tbaa !24
  %i.kn = zext i16 %i.km to i32                   ; 2 uses
  %i.ko = and i32 %spec.select.i169, 65280
  %i.kp = and i32 %i.kh, 65280
  %i.kq = and i32 %i.kn, 65280
  %.neg.i = sub nsw i32 %i.kq, %i.kp
  %i.kr = add nsw i32 %i.ko, %.neg.i              ; 2 uses
  %i.ks = and i32 %i.kn, 255
  %i.kt = or disjoint i32 %i.kr, %i.ks
  %i.ku = lshr exact i32 %i.kr, 8
  %i.kv = trunc i32 %i.ku to i8
  store i8 %i.kv, ptr %i.kc, align 1, !tbaa !30
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread: ; preds = %bb.ae, %bb.ah, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit, %bb.ak
  %.2135 = phi i32 [ %i.kt, %bb.ak ], [ %.1134228, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit ], [ %.1134228, %bb.ah ], [ %.1134228, %bb.ae ] ; 2 uses
  %i.kw = icmp slt i64 %indvars.iv.next260, %indvars.iv.next265
  br i1 %i.kw, label %bb.ac, label %.thread182

bb.al:                                            ; preds = %bb.ab
  store i32 1, ptr %5, align 4, !tbaa !22
  br label %.thread182.thread

bb.am:                                            ; preds = %bb.ab
  %i.kx = icmp slt i32 %i.jo, 0
  br i1 %i.kx, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ky = icmp slt i32 %i.jo, %i.i
  br i1 %i.ky, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kz = zext nneg i32 %i.jo to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173

bb.ap:                                            ; preds = %bb.an
  %i.la = and i32 %i.jo, 2147483640
  %or.cond.i170 = icmp eq i32 %i.la, 4096
  br i1 %or.cond.i170, label %bb.aq, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread

bb.aq:                                            ; preds = %bb.ap
  %i.lb = add i32 %i.jm, %i.jo
  %i.lc = sext i32 %i.lb to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173

_ZNK6icu_7813CollationData14getScriptIndexEi.exit173: ; preds = %bb.ao, %bb.aq
  %.pn198 = phi i64 [ %i.lc, %bb.aq ], [ %i.kz, %bb.ao ]
  %.0.shrunk.i171.in = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.pn198
  %.0.shrunk.i171 = load i16, ptr %.0.shrunk.i171.in, align 2, !tbaa !24 ; 2 uses
  %i.ld = icmp eq i16 %.0.shrunk.i171, 0
  br i1 %i.ld, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, label %bb.ar, !llvm.loop !49

bb.ar:                                            ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173
  %i.le = zext i16 %.0.shrunk.i171 to i64         ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.le ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !30
  %.not159 = icmp eq i8 %i.lg, 0
  br i1 %.not159, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 1, ptr %5, align 4, !tbaa !22
  br label %.thread182.thread

bb.at:                                            ; preds = %bb.ar
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.le ; 2 uses
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !24
  %i.lj = zext i16 %i.li to i32                   ; 2 uses
  %i.lk = and i32 %i.lj, 255
  %i.ll = and i32 %.3141222, 255
  %i.lm = icmp samesign ult i32 %i.lk, %i.ll
  %i.ln = add nsw i32 %.3141222, 256
  %spec.select.i174 = select i1 %i.lm, i32 %i.ln, i32 %.3141222 ; 2 uses
  %i.lo = lshr i32 %spec.select.i174, 8
  %i.lp = trunc i32 %i.lo to i8
  store i8 %i.lp, ptr %i.lf, align 1, !tbaa !30
  %i.lq = getelementptr i8, ptr %i.lh, i64 2
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !24
  %i.ls = zext i16 %i.lr to i32                   ; 2 uses
  %i.lt = and i32 %spec.select.i174, 65280
  %i.lu = and i32 %i.ls, 65280
  %i.lv = and i32 %i.lj, 65280
  %i.lw = sub nsw i32 %i.lu, %i.lv
  %i.lx = and i32 %i.ls, 255
  %i.ly = or disjoint i32 %i.lw, %i.lx
  %i.lz = add nsw i32 %i.ly, %i.lt
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread

_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread: ; preds = %bb.am, %bb.ap, %bb.at, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173
  %.5143 = phi i32 [ %.3141222, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173 ], [ %i.lz, %bb.at ], [ %.3141222, %bb.ap ], [ %.3141222, %bb.am ] ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %.thread182, label %bb.ab

.thread182:                                       ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, %.thread293, %.preheader201
  %.3141213 = phi i32 [ %.3141222, %.preheader201 ], [ %.3141222, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ %.2140, %.thread293 ], [ %.5143, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %.not209 = phi i1 [ true, %.preheader201 ], [ true, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ false, %.thread293 ], [ false, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ]
  %.4137 = phi i32 [ %i.ae, %.preheader201 ], [ %.2135, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ %i.ae, %.thread293 ], [ %i.ae, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %i.ma = icmp sgt i32 %i.z, 2
  br i1 %i.ma, label %.lr.ph234.preheader, label %._crit_edge

.lr.ph234.preheader:                              ; preds = %.thread182
  %i.mb = add nsw i32 %i.z, -1
  %wide.trip.count270 = zext nneg i32 %i.mb to i64
  br label %.lr.ph234

._crit_edge:                                      ; preds = %bb.av, %.thread182
  %.7.lcssa = phi i32 [ %.3141213, %.thread182 ], [ %.9, %bb.av ] ; 2 uses
  %i.mc = icmp sgt i32 %.7.lcssa, %.4137
  br i1 %i.mc, label %bb.aw, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.az

.lr.ph234:                                        ; preds = %.lr.ph234.preheader, %bb.av
  %indvars.iv267 = phi i64 [ 1, %.lr.ph234.preheader ], [ %indvars.iv.next268, %bb.av ] ; 3 uses
  %.7232 = phi i32 [ %.3141213, %.lr.ph234.preheader ], [ %.9, %bb.av ] ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv267 ; 2 uses
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !30
  %.not165 = icmp eq i8 %i.mh, 0
  br i1 %.not165, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph234
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv267 ; 2 uses
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !24
  %i.mk = zext i16 %i.mj to i32                   ; 3 uses
  %i.ml = tail call i32 @llvm.smax.i32(i32 %.7232, i32 %i.mk)
  %.8 = select i1 %.not209, i32 %.7232, i32 %i.ml ; 3 uses
  %i.mm = and i32 %i.mk, 255
  %i.mn = and i32 %.8, 255
  %i.mo = icmp samesign ult i32 %i.mm, %i.mn
  %i.mp = add nsw i32 %.8, 256
  %spec.select.i175 = select i1 %i.mo, i32 %i.mp, i32 %.8 ; 2 uses
  %i.mq = lshr i32 %spec.select.i175, 8
  %i.mr = trunc i32 %i.mq to i8
  store i8 %i.mr, ptr %i.mg, align 1, !tbaa !30
  %i.ms = getelementptr i8, ptr %i.mi, i64 2
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !24
  %i.mu = zext i16 %i.mt to i32                   ; 2 uses
  %i.mv = and i32 %spec.select.i175, 65280
  %i.mw = and i32 %i.mu, 65280
  %i.mx = and i32 %i.mk, 65280
  %i.my = sub nsw i32 %i.mw, %i.mx
  %i.mz = and i32 %i.mu, 255
  %i.na = or disjoint i32 %i.my, %i.mz
  %i.nb = add nsw i32 %i.na, %i.mv
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph234, %bb.au
  %.9 = phi i32 [ %i.nb, %bb.au ], [ %.7232, %.lr.ph234 ] ; 2 uses
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %._crit_edge, label %.lr.ph234, !llvm.loop !50

bb.aw:                                            ; preds = %._crit_edge
  %i.nc = sub nsw i32 %.7.lcssa, %.0128
  %.not164 = icmp sgt i32 %i.nc, %.4137
  br i1 %.not164, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZNK6icu_7813CollationData17makeReorderRangesEPKiiaRNS_9UVector32ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %1, i32 noundef %2, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %.thread182.thread

bb.ay:                                            ; preds = %bb.aw
  store i32 15, ptr %5, align 4, !tbaa !22
  br label %.thread182.thread

bb.az:                                            ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, %.preheader
  %i.nd = phi i32 [ %i.on, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ], [ %i.z, %.preheader ]
  %.0114 = phi i32 [ %.3, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ], [ 0, %.preheader ] ; 6 uses
  %.0110 = phi i32 [ %i.op, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ], [ 1, %.preheader ] ; 3 uses
  %i.ne = add nsw i32 %i.nd, -1                   ; 4 uses
  %i.nf = icmp slt i32 %.0110, %i.ne
  br i1 %i.nf, label %.lr.ph239.preheader, label %.thread188

.lr.ph239.preheader:                              ; preds = %bb.az
  %i.ng = sext i32 %.0110 to i64
  %i.nh = sext i32 %i.ne to i64
  br label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %bb.bb
  %indvars.iv272 = phi i64 [ %i.ng, %.lr.ph239.preheader ], [ %indvars.iv.next273, %bb.bb ] ; 4 uses
  %.0237 = phi i32 [ %.0114, %.lr.ph239.preheader ], [ %.1, %bb.bb ]
  %i.ni = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv272
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !30  ; 2 uses
  %i.nk = icmp eq i8 %i.nj, -1
  br i1 %i.nk, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph239
  %i.nl = zext i8 %i.nj to i32
  %i.nm = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.nn = getelementptr inbounds [2 x i8], ptr %i.nm, i64 %indvars.iv272
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !24
  %i.np = lshr i16 %i.no, 8
  %i.nq = zext nneg i16 %i.np to i32
  %i.nr = sub nsw i32 %i.nl, %i.nq                ; 2 uses
  %.not161 = icmp eq i32 %i.nr, %.0114
  br i1 %.not161, label %bb.bb, label %.thread188.loopexit.split.loop.exit

bb.bb:                                            ; preds = %.lr.ph239, %bb.ba
  %.1 = phi i32 [ %.0237, %.lr.ph239 ], [ %.0114, %bb.ba ] ; 2 uses
  %indvars.iv.next273 = add nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next273, %i.nh
  br i1 %exitcond275.not, label %.thread188, label %.lr.ph239

.thread188.loopexit.split.loop.exit:              ; preds = %bb.ba
  %i.ns = trunc nsw i64 %indvars.iv272 to i32
  br label %.thread188

.thread188:                                       ; preds = %bb.bb, %.thread188.loopexit.split.loop.exit, %bb.az
  %.1111.lcssa = phi i32 [ %.0110, %bb.az ], [ %i.ns, %.thread188.loopexit.split.loop.exit ], [ %i.ne, %bb.bb ] ; 4 uses
  %.3 = phi i32 [ %.0114, %bb.az ], [ %i.nr, %.thread188.loopexit.split.loop.exit ], [ %.1, %bb.bb ]
  %.not162 = icmp ne i32 %.0114, 0
  %i.nt = icmp slt i32 %.1111.lcssa, %i.ne
  %or.cond197 = or i1 %.not162, %i.nt
  br i1 %or.cond197, label %bb.bc, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit

bb.bc:                                            ; preds = %.thread188
  %i.nu = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.nv = sext i32 %.1111.lcssa to i64
  %i.nw = getelementptr inbounds [2 x i8], ptr %i.nu, i64 %i.nv
  %i.nx = load i16, ptr %i.nw, align 2, !tbaa !24
  %i.ny = zext i16 %i.nx to i32
  %i.nz = shl nuw i32 %i.ny, 16
  %i.oa = and i32 %.0114, 65535
  %i.ob = or disjoint i32 %i.nz, %i.oa
  %i.oc = load i32, ptr %i.md, align 8, !tbaa !56 ; 4 uses
  %i.od = icmp slt i32 %i.oc, -1
  %i.oe = load i32, ptr %i.me, align 4
  %.not.i.i = icmp sle i32 %i.oe, %i.oc
  %or.cond.i.i = select i1 %i.od, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i: ; preds = %bb.bc
  %i.of = add nsw i32 %i.oc, 1
  %i.og = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.of, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %.not.i = icmp eq i8 %i.og, 0
  br i1 %.not.i, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i
  %.pre.i = load i32, ptr %i.md, align 8, !tbaa !56
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i, %bb.bc
  %i.oh = phi i32 [ %.pre.i, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i ], [ %i.oc, %bb.bc ]
  %i.oi = load ptr, ptr %i.mf, align 8, !tbaa !57
  %i.oj = sext i32 %i.oh to i64
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.oj
  store i32 %i.ob, ptr %i.ok, align 4, !tbaa !20
  %i.ol = load i32, ptr %i.md, align 8, !tbaa !56
  %i.om = add nsw i32 %i.ol, 1
  store i32 %i.om, ptr %i.md, align 8, !tbaa !56
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit: ; preds = %.thread188, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i
  %i.on = load i32, ptr %i.y, align 8, !tbaa !29  ; 2 uses
  %i.oo = add nsw i32 %i.on, -1
  %.not163 = icmp eq i32 %.1111.lcssa, %i.oo
  %i.op = add nsw i32 %.1111.lcssa, 1
  br i1 %.not163, label %.thread182.thread, label %bb.az, !llvm.loop !51

.thread182.thread:                                ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, %bb.ad, %.thread, %bb.al, %bb.as, %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.b, %bb.c, %bb.a, %.thread182.thread
  ret void
}

declare void @_ZN6icu_789UVector3217removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6icu_7813CollationData17addLowScriptRangeEPhii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = sext i32 %2 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !24
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = and i32 %i.f, 255
  %i.h = and i32 %3, 255
  %i.i = icmp samesign ult i32 %i.g, %i.h
  %i.j = add nsw i32 %3, 256
  %spec.select = select i1 %i.i, i32 %i.j, i32 %3 ; 2 uses
  %i.k = lshr i32 %spec.select, 8
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.c
  store i8 %i.l, ptr %i.m, align 1, !tbaa !30
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.o = getelementptr [2 x i8], ptr %i.n, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !24
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = and i32 %spec.select, 65280
  %i.t = and i32 %i.r, 65280
  %i.u = and i32 %i.f, 65280
  %i.v = sub nsw i32 %i.t, %i.u
  %i.w = add nsw i32 %i.v, %i.s
  %i.x = and i32 %i.r, 255
  %i.y = or disjoint i32 %i.w, %i.x
  ret i32 %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6icu_7813CollationData18addHighScriptRangeEPhii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr [2 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !24
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = and i32 %i.g, 255
  %i.i = and i32 %3, 255
  %i.j = icmp samesign ugt i32 %i.h, %i.i
  %i.k = add i32 %3, 65280
  %spec.select = select i1 %i.j, i32 %i.k, i32 %3
  %i.l = load i16, ptr %i.d, align 2, !tbaa !24
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = and i32 %spec.select, 65280
  %i.o = and i32 %i.g, 65280
  %i.p = and i32 %i.m, 65280
  %.neg = sub nsw i32 %i.p, %i.o
  %i.q = add nsw i32 %i.n, %.neg                  ; 2 uses
  %i.r = and i32 %i.m, 255
  %i.s = or disjoint i32 %i.q, %i.r
  %i.t = lshr exact i32 %i.q, 8
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.c
  store i8 %i.u, ptr %i.v, align 1, !tbaa !30
  ret i32 %i.s
}

declare noundef i32 @_ZN6icu_789Collation32getThreeBytePrimaryForOffsetDataEil(i32 noundef, i64 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN6icu_789Collation30unassignedPrimaryFromCodePointEi(i32 noundef) local_unnamed_addr #4

declare noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6UTrie2", !8, i64 0}
!10 = !{!"p1 int", !8, i64 0}
!11 = !{!"p1 long", !8, i64 0}
!12 = !{!"p1 char16_t", !8, i64 0}
!13 = !{!"p1 _ZTSN6icu_7813CollationDataE", !8, i64 0}
!14 = !{!"p1 _ZTSN6icu_7815Normalizer2ImplE", !8, i64 0}
!15 = !{!"p1 omnipotent char", !8, i64 0}
!16 = !{!"p1 _ZTSN6icu_7810UnicodeSetE", !8, i64 0}
!17 = !{!"p1 short", !8, i64 0}
!18 = !{!"_ZTSN6icu_7813CollationDataE", !9, i64 0, !10, i64 8, !11, i64 16, !12, i64 24, !13, i64 32, !10, i64 40, !14, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !15, i64 72, !16, i64 80, !17, i64 88, !5, i64 96, !5, i64 100, !17, i64 104, !17, i64 112, !5, i64 120, !10, i64 128, !5, i64 136}
!19 = !{!18, !10, i64 8}
!20 = !{!5, !5, i64 0}
!21 = !{!"_ZTS10UErrorCode", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"short", !4, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!18, !5, i64 100}
!27 = !{!18, !17, i64 104}
!28 = !{!18, !17, i64 112}
!29 = !{!18, !5, i64 120}
!30 = !{!4, !4, i64 0}
!31 = distinct !{!31, !25}
!32 = !{!18, !9, i64 0}
!33 = !{!"p1 _ZTS9UNewTrie2", !8, i64 0}
!34 = !{!"_ZTS6UTrie2", !17, i64 0, !17, i64 8, !10, i64 16, !5, i64 24, !5, i64 28, !23, i64 32, !23, i64 34, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !8, i64 56, !5, i64 64, !4, i64 68, !4, i64 69, !23, i64 70, !33, i64 72}
!35 = !{!34, !10, i64 16}
!36 = !{!34, !5, i64 44}
!37 = !{!34, !5, i64 48}
!38 = !{!34, !17, i64 0}
!39 = !{!18, !13, i64 32}
!40 = !{!18, !11, i64 16}
!41 = !{!"long", !4, i64 0}
!42 = !{!41, !41, i64 0}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !25}
!45 = distinct !{!45, !25}
!46 = distinct !{!46, !25, !52, !53}
!47 = distinct !{!47, !25, !53, !52}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = !{!"llvm.loop.isvectorized", i32 1}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = !{!"_ZTSN6icu_787UObjectE"}
!55 = !{!"_ZTSN6icu_789UVector32E", !54, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24}
!56 = !{!55, !5, i64 8}
!57 = !{!55, !10, i64 24}
end_hunk_0
