Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ubidi?download=true
inline.NumInlined: 71
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ubidi_setPara_78:bb.a

bb.o:                                             ; preds = %bb.n
  %i.ad = tail call ptr @ubidi_getLevels_78(ptr noundef nonnull %0, ptr noundef nonnull %5), !inline_history !111
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !50 ; 3 uses
  %i.ag = sext i32 %i.af to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.ad, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !52
  %i.al = tail call i32 @ubidi_writeReordered_78(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef %.0237, i16 noundef zeroext 2, ptr noundef nonnull %5), !inline_history !111
  tail call void @ubidi_getVisualMap_78(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %5), !inline_history !111
  %i.am = load i32, ptr %5, align 4, !tbaa !26
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %bb.p, label %bb.am

bb.p:                                             ; preds = %bb.o
  store i32 %i.w, ptr %i.v, align 8, !tbaa !37
  store i32 5, ptr %i.l, align 4, !tbaa !36
  %i.ao = xor i8 %i.aa, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !24
  store i8 0, ptr %i.ap, align 8, !tbaa !24
  tail call void @ubidi_setPara_78(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef %i.al, i8 noundef zeroext %i.ao, ptr noundef null, ptr noundef nonnull %5), !inline_history !111
  store i8 %i.aq, ptr %i.ap, align 8, !tbaa !24
  %i.ar = tail call signext i8 @ubidi_getRuns_78(ptr noundef nonnull %0, ptr noundef nonnull %5), !inline_history !111 ; 0 uses
  %i.as = load i32, ptr %5, align 4, !tbaa !26
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !131 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !132 ; 3 uses
  %i.ay = icmp sgt i32 %i.av, 0
  br i1 %i.ay, label %.lr.ph434.preheader, label %.loopexit

.lr.ph434.preheader:                              ; preds = %bb.q
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %.lr.ph434

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %.loopexit338
  %indvars.iv541 = phi i64 [ 0, %.lr.ph434.preheader ], [ %indvars.iv.next542, %.loopexit338 ] ; 2 uses
  %.0241.i433 = phi i32 [ 0, %.lr.ph434.preheader ], [ %.3.i, %.loopexit338 ] ; 2 uses
  %.0244.i432 = phi i32 [ 0, %.lr.ph434.preheader ], [ %i.bb, %.loopexit338 ]
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %indvars.iv541 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !134 ; 2 uses
  %i.bc = sub nsw i32 %i.bb, %.0244.i432          ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 2
  br i1 %i.bd, label %.loopexit338, label %bb.r

bb.r:                                             ; preds = %.lr.ph434
  %i.be = load i32, ptr %i.az, align 4, !tbaa !135 ; 2 uses
  %i.bf = and i32 %i.be, 2147483647
  %i.bg = add nuw nsw i32 %i.bf, %i.bc
  %i.bh = and i32 %i.be, 2147483647
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.v
  %indvars.iv536 = phi i64 [ %i.bi, %bb.r ], [ %indvars.iv.next537, %bb.v ] ; 2 uses
  %indvars.iv534 = phi i64 [ %i.bj, %bb.r ], [ %indvars.iv.next535, %bb.v ] ; 2 uses
  %.1242.i429 = phi i32 [ %.0241.i433, %bb.r ], [ %.2243.i, %bb.v ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv534
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !28 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv536
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !28 ; 2 uses
  %i.bo = sub nsw i32 %i.bl, %i.bn
  %i.bp = tail call i32 @llvm.abs.i32(i32 %i.bo, i1 true)
  %.not284.i = icmp eq i32 %i.bp, 1
  br i1 %.not284.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = sext i32 %i.bl to i64
  %i.br = getelementptr inbounds i8, ptr %i.u, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !53
  %i.bt = sext i32 %i.bn to i64
  %i.bu = getelementptr inbounds i8, ptr %i.u, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !53
  %.not285.i = icmp eq i8 %i.bs, %i.bv
  br i1 %.not285.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bw = add nsw i32 %.1242.i429, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2243.i = phi i32 [ %i.bw, %bb.u ], [ %.1242.i429, %bb.t ] ; 2 uses
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv.next535 to i32
  %i.by = icmp sgt i32 %i.bg, %i.bx
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1
  br i1 %i.by, label %bb.s, label %.loopexit338, !llvm.loop !112

.loopexit338:                                     ; preds = %bb.v, %.lr.ph434
  %.3.i = phi i32 [ %.0241.i433, %.lr.ph434 ], [ %.2243.i, %bb.v ] ; 5 uses
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %exitcond544.not = icmp eq i64 %indvars.iv.next542, %wide.trip.count
  br i1 %exitcond544.not, label %._crit_edge, label %.lr.ph434, !llvm.loop !113

._crit_edge:                                      ; preds = %.loopexit338
  %.not274.i = icmp eq i32 %.3.i, 0
  br i1 %.not274.i, label %.lr.ph450, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !25
  %i.cd = add nsw i32 %.3.i, %i.av
  %i.ce = mul i32 %i.cd, 12
  %i.cf = tail call signext i8 @ubidi_getMemory_78(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.ca, i8 noundef signext %i.cc, i32 noundef %i.ce), !inline_history !111
  %.not275.i = icmp eq i8 %i.cf, 0
  br i1 %.not275.i, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = icmp eq i32 %i.av, 1
  br i1 %i.cg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ch, ptr noundef nonnull align 4 dereferenceable(12) %i.ax, i64 12, i1 false), !tbaa.struct !136
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !33 ; 2 uses
  store ptr %i.ci, ptr %i.aw, align 8, !tbaa !132
  %i.cj = load i32, ptr %i.au, align 8, !tbaa !131
  %i.ck = add nsw i32 %i.cj, %.3.i
  store i32 %i.ck, ptr %i.au, align 8, !tbaa !131
  br label %.lr.ph450

.lr.ph450:                                        ; preds = %._crit_edge, %bb.z
  %.0241.i.lcssa618 = phi i32 [ %.3.i, %bb.z ], [ 0, %._crit_edge ]
  %.0249.i = phi ptr [ %i.ci, %bb.z ], [ %i.ax, %._crit_edge ] ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0249.i, i64 4
  %i.cm = zext nneg i32 %i.av to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph450, %bb.al
  %indvars.iv548 = phi i64 [ %i.cm, %.lr.ph450 ], [ %indvars.iv.next549, %bb.al ] ; 3 uses
  %.4.i447 = phi i32 [ %.0241.i.lcssa618, %.lr.ph450 ], [ %.7.i, %bb.al ] ; 4 uses
  %indvars.iv.next549 = add nsw i64 %indvars.iv548, -1 ; 9 uses
  %i.cn = icmp eq i64 %indvars.iv.next549, 0
  br i1 %i.cn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !134
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %.0249.i, i64 %indvars.iv.next549
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !134
  %i.cs = getelementptr [12 x i8], ptr %.0249.i, i64 %indvars.iv548
  %i.ct = getelementptr i8, ptr %i.cs, i64 -20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !134
  %i.cv = sub nsw i32 %i.cr, %i.cu
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cw = phi i32 [ %i.co, %bb.ab ], [ %i.cv, %bb.ac ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %.0249.i, i64 %indvars.iv.next549 ; 5 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !135 ; 3 uses
  %i.cz = lshr i32 %i.cy, 31                      ; 2 uses
  %i.da = and i32 %i.cy, 2147483647               ; 4 uses
  %i.db = icmp slt i32 %i.cw, 2
  br i1 %i.db, label %bb.ae, label %.lr.ph441

bb.ae:                                            ; preds = %bb.ad
  %.not282.i = icmp eq i32 %.4.i447, 0
  br i1 %.not282.i, label %._crit_edge557, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = sext i32 %.4.i447 to i64
  %i.dd = add nsw i64 %indvars.iv.next549, %i.dc  ; 2 uses
  %i.de = getelementptr inbounds [12 x i8], ptr %.0249.i, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.de, ptr noundef nonnull align 4 dereferenceable(12) %i.cx, i64 12, i1 false), !tbaa.struct !136
  br label %._crit_edge557

._crit_edge557:                                   ; preds = %bb.ae, %bb.af
  %.pre-phi560 = phi i64 [ %i.dd, %bb.af ], [ %indvars.iv.next549, %bb.ae ]
  %i.df = zext nneg i32 %i.da to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !28
  br label %bb.al

.lr.ph441:                                        ; preds = %bb.ad
  %.not276.i = icmp sgt i32 %i.cy, -1             ; 3 uses
  %i.di = add nsw i32 %i.cw, -1
  %i.dj = add nuw i32 %i.di, %i.da                ; 2 uses
  %.0239.i = select i1 %.not276.i, i32 %i.da, i32 %i.dj ; 2 uses
  %.0.i = select i1 %.not276.i, i64 -1, i64 1
  %.0240.i = select i1 %.not276.i, i32 %i.dj, i32 %i.da ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.dm = sext i32 %.0240.i to i64
  %i.dn = getelementptr [12 x i8], ptr %.0249.i, i64 %indvars.iv.next549
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph441, %bb.aj
  %indvars.iv545 = phi i64 [ %i.dm, %.lr.ph441 ], [ %indvars.iv.next546, %bb.aj ] ; 3 uses
  %.1.i439 = phi i32 [ %.0240.i, %.lr.ph441 ], [ %.2.i, %bb.aj ] ; 3 uses
  %.5.i438 = phi i32 [ %.4.i447, %.lr.ph441 ], [ %.6.i, %bb.aj ] ; 3 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv545
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !28 ; 3 uses
  %indvars.iv.next546 = add nsw i64 %indvars.iv545, %.0.i ; 4 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.next546
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !28 ; 2 uses
  %i.ds = sub nsw i32 %i.dp, %i.dr
  %i.dt = tail call i32 @llvm.abs.i32(i32 %i.ds, i1 true)
  %.not279.i = icmp eq i32 %i.dt, 1
  br i1 %.not279.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.du = sext i32 %i.dp to i64
  %i.dv = getelementptr inbounds i8, ptr %i.u, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !53
  %i.dx = sext i32 %i.dr to i64
  %i.dy = getelementptr inbounds i8, ptr %i.u, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !53
  %.not280.i = icmp eq i8 %i.dw, %i.dz
  br i1 %.not280.i, label %._crit_edge556, label %bb.ai

._crit_edge556:                                   ; preds = %bb.ah
  %.pre565 = trunc nsw i64 %indvars.iv.next546 to i32
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ea = sext i32 %.1.i439 to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !28
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ec, i32 %i.dp) ; 2 uses
  %i.ed = sext i32 %..i to i64
  %i.ee = getelementptr inbounds i8, ptr %i.u, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !53
  %i.eg = and i8 %i.ef, 1
  %.masked281.i = zext nneg i8 %i.eg to i32
  %i.eh = xor i32 %i.cz, %.masked281.i
  %i.ei = shl nuw i32 %i.eh, 31
  %i.ej = or i32 %i.ei, %..i
  %i.ek = sext i32 %.5.i438 to i64
  %i.el = getelementptr [12 x i8], ptr %i.dn, i64 %i.ek ; 3 uses
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !135
  %i.em = load i32, ptr %i.dk, align 4, !tbaa !134 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 %i.em, ptr %i.en, align 4, !tbaa !134
  %i.eo = trunc nsw i64 %indvars.iv545 to i32
  %i.ep = sub nsw i32 %i.eo, %.1.i439
  %i.eq = tail call i32 @llvm.abs.i32(i32 %i.ep, i1 true)
  %.neg.i = xor i32 %i.eq, -1
  %i.er = add i32 %i.em, %.neg.i
  store i32 %i.er, ptr %i.dk, align 4, !tbaa !134
  %i.es = load i32, ptr %i.dl, align 4, !tbaa !137
  %i.et = and i32 %i.es, 10                       ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !137
  %i.ev = xor i32 %i.et, -1
  %i.ew = load i32, ptr %i.dl, align 4, !tbaa !137
  %i.ex = and i32 %i.ew, %i.ev
  store i32 %i.ex, ptr %i.dl, align 4, !tbaa !137
  %i.ey = add nsw i32 %.5.i438, -1
  %i.ez = trunc nsw i64 %indvars.iv.next546 to i32 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge556, %bb.ai
  %.pre-phi566 = phi i32 [ %.pre565, %._crit_edge556 ], [ %i.ez, %bb.ai ]
  %.6.i = phi i32 [ %.5.i438, %._crit_edge556 ], [ %i.ey, %bb.ai ] ; 4 uses
  %.2.i = phi i32 [ %.1.i439, %._crit_edge556 ], [ %i.ez, %bb.ai ] ; 2 uses
  %.not277.i = icmp eq i32 %.pre-phi566, %.0239.i
  br i1 %.not277.i, label %._crit_edge442, label %bb.ag, !llvm.loop !114

._crit_edge442:                                   ; preds = %bb.aj
  %.not278.i = icmp eq i32 %.6.i, 0
  br i1 %.not278.i, label %._crit_edge442._crit_edge, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge442
  %i.fa = sext i32 %.6.i to i64
  %i.fb = add nsw i64 %indvars.iv.next549, %i.fa  ; 2 uses
  %i.fc = getelementptr inbounds [12 x i8], ptr %.0249.i, i64 %i.fb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fc, ptr noundef nonnull align 4 dereferenceable(12) %i.cx, i64 12, i1 false), !tbaa.struct !136
  br label %._crit_edge442._crit_edge

._crit_edge442._crit_edge:                        ; preds = %._crit_edge442, %bb.ak
  %.pre-phi564 = phi i64 [ %i.fb, %bb.ak ], [ %indvars.iv.next549, %._crit_edge442 ]
  %i.fd = sext i32 %.2.i to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !28
  %i.fg = sext i32 %.0239.i to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !28
  %.286.i = tail call i32 @llvm.smin.i32(i32 %i.ff, i32 %i.fi)
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge442._crit_edge, %._crit_edge557
  %.286.i.sink697 = phi i32 [ %.286.i, %._crit_edge442._crit_edge ], [ %i.dh, %._crit_edge557 ] ; 2 uses
  %.pre-phi564.sink = phi i64 [ %.pre-phi564, %._crit_edge442._crit_edge ], [ %.pre-phi560, %._crit_edge557 ]
  %.7.i = phi i32 [ %.6.i, %._crit_edge442._crit_edge ], [ %.4.i447, %._crit_edge557 ]
  %i.fj = sext i32 %.286.i.sink697 to i64
  %i.fk = getelementptr inbounds i8, ptr %i.u, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !53
  %i.fm = and i8 %i.fl, 1
  %.masked.i = zext nneg i8 %i.fm to i32
  %i.fn = xor i32 %i.cz, %.masked.i
  %i.fo = shl nuw i32 %i.fn, 31
  %i.fp = or i32 %i.fo, %.286.i.sink697
  %i.fq = getelementptr inbounds [12 x i8], ptr %.0249.i, i64 %.pre-phi564.sink
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !135
  %i.fr = icmp sgt i64 %indvars.iv548, 1
  br i1 %i.fr, label %bb.aa, label %.loopexit, !llvm.loop !115

.loopexit:                                        ; preds = %bb.al, %bb.q, %bb.w, %bb.p
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 141 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !54
  %i.fu = xor i8 %i.ft, 1
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !54
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %bb.o
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.fv, align 8, !tbaa !55
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !50
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0237, ptr %i.fw, align 8, !tbaa !56
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !52
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !138
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.fy)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !57
  %i.gb = sext i32 %spec.select.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ga, ptr nonnull align 1 %i.u, i64 %i.gb, i1 false)
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !51
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !131
  %i.ge = icmp sgt i32 %i.gd, 1
  br i1 %i.ge, label %bb.an, label %_ZL15setParaRunsOnlyP5UBiDiPKDsihP10UErrorCode.exit

bb.an:                                            ; preds = %bb.am
  store i32 2, ptr %i.aj, align 8, !tbaa !52
  br label %_ZL15setParaRunsOnlyP5UBiDiPKDsihP10UErrorCode.exit

_ZL15setParaRunsOnlyP5UBiDiPKDsihP10UErrorCode.exit: ; preds = %bb.i, %bb.k, %bb.n, %bb.am, %bb.an
  %.0251.i = phi ptr [ null, %bb.i ], [ null, %bb.k ], [ %i.r, %bb.n ], [ %i.r, %bb.an ], [ %i.r, %bb.am ]
  tail call void @uprv_free_78(ptr noundef %.0251.i), !inline_history !111
  store i32 3, ptr %i.l, align 4, !tbaa !36
  br label %bb.gv

bb.ao:                                            ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !29
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.gf, align 8, !tbaa !55
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 %.0237, ptr %i.gg, align 8, !tbaa !58
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %.0237, ptr %i.gh, align 8, !tbaa !56
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  store i32 %.0237, ptr %i.gi, align 4, !tbaa !50
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 141 ; 11 uses
  store i8 %3, ptr %i.gj, align 1, !tbaa !54
  %i.gk = and i8 %3, 1                            ; 3 uses
  %i.gl = zext nneg i8 %i.gk to i32
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i32 %i.gl, ptr %i.gm, align 8, !tbaa !52
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 19 uses
  store i32 1, ptr %i.gn, align 8, !tbaa !40
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.gq, align 8, !tbaa !132
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  store i32 0, ptr %i.gr, align 4, !tbaa !139
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i32 0, ptr %i.gs, align 8, !tbaa !140
  %i.gt = icmp ugt i8 %3, -3                      ; 2 uses
  %i.gu = zext i1 %i.gt to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 142 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, i8 0, i64 16, i1 false)
  store i8 %i.gu, ptr %i.gv, align 2, !tbaa !59
  %i.gw = icmp eq i32 %.0237, 0
  br i1 %i.gw, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.gt, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i8 %i.gk, ptr %i.gj, align 1, !tbaa !54
  store i8 0, ptr %i.gv, align 2, !tbaa !59
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gx = zext nneg i8 %i.gk to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr @_ZL6flagLR, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !28
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !60
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.hb, align 8, !tbaa !131
  store i32 0, ptr %i.gn, align 8, !tbaa !40
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.hc, align 8, !tbaa !46
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.hd, align 8, !tbaa !47
  store ptr %0, ptr %0, align 8, !tbaa !29
  br label %bb.gv

bb.as:                                            ; preds = %bb.ao
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 -1, ptr %i.he, align 8, !tbaa !131
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !32 ; 2 uses
  %.not258 = icmp eq ptr %i.hg, null
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %spec.select = select i1 %.not258, ptr %i.hh, ptr %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 21 uses
  store ptr %spec.select, ptr %i.hi, align 8, !tbaa !41
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !24  ; 2 uses
  %i.hn = load ptr, ptr %i.hj, align 8, !tbaa !27 ; 3 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %.not21.i = icmp eq i8 %i.hm, 0
  br i1 %.not21.i, label %bb.ea, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = sext i32 %.0237 to i64
  %i.hq = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.hp) #17 ; 3 uses
  store ptr %i.hq, ptr %i.hj, align 8, !tbaa !27
  %.not22.i = icmp eq ptr %i.hq, null
  br i1 %.not22.i, label %bb.ea, label %.sink.split.i

bb.av:                                            ; preds = %bb.as
  %i.hr = load i32, ptr %i.hk, align 4, !tbaa !28
  %.not.i286 = icmp sgt i32 %.0237, %i.hr
  br i1 %.not.i286, label %bb.aw, label %ubidi_getMemory_78.exit

bb.aw:                                            ; preds = %bb.av
  %.not19.i = icmp eq i8 %i.hm, 0
  br i1 %.not19.i, label %bb.ea, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hs = sext i32 %.0237 to i64
  %i.ht = tail call ptr @uprv_realloc_78(ptr noundef nonnull %i.hn, i64 noundef %i.hs) #18 ; 3 uses
  %.not20.i = icmp eq ptr %i.ht, null
  br i1 %.not20.i, label %bb.ea, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.ht, ptr %i.hj, align 8, !tbaa !27
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ay, %bb.au
  %i.hu = phi ptr [ %i.ht, %bb.ay ], [ %i.hq, %bb.au ]
  store i32 %.0237, ptr %i.hk, align 4, !tbaa !28
  %.pre = load ptr, ptr %i.gf, align 8, !tbaa !55
  %.pre551 = load i32, ptr %i.gh, align 8, !tbaa !56
  %.pre552 = load i8, ptr %i.gj, align 1, !tbaa !54
  br label %ubidi_getMemory_78.exit

ubidi_getMemory_78.exit:                          ; preds = %.sink.split.i, %bb.av
  %i.hv = phi i8 [ %.pre552, %.sink.split.i ], [ %3, %bb.av ] ; 3 uses
  %i.hw = phi i32 [ %.pre551, %.sink.split.i ], [ %.0237, %bb.av ] ; 9 uses
  %i.hx = phi ptr [ %.pre, %.sink.split.i ], [ %1, %bb.av ] ; 3 uses
  %i.hy = phi ptr [ %i.hu, %.sink.split.i ], [ %i.hn, %bb.av ] ; 5 uses
  store ptr %i.hy, ptr %i.go, align 8, !tbaa !61
  %i.hz = icmp ugt i8 %i.hv, -3                   ; 4 uses
  br i1 %i.hz, label %bb.az, label %bb.ba
end_hunk_0
