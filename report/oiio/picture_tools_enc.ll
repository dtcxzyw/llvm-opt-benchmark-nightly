inline.NumInlined: 16
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 32
begin_hunk_0_@WebPCleanupTransparentArea:bb.a
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %.not.3.6.i = icmp ult i32 %i.ds, 16777216
  br i1 %.not.3.6.i, label %bb.aw, label %IsTransparentARGBArea.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %.not.4.6.i = icmp ult i32 %i.du, 16777216
  br i1 %.not.4.6.i, label %bb.ax, label %IsTransparentARGBArea.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %.not.5.6.i = icmp ult i32 %i.dw, 16777216
  br i1 %.not.5.6.i, label %bb.ay, label %IsTransparentARGBArea.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3
  %.not.6.6.i = icmp ult i32 %i.dy, 16777216
  br i1 %.not.6.6.i, label %bb.az, label %IsTransparentARGBArea.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %.not.7.6.i = icmp ult i32 %i.ea, 16777216
  br i1 %.not.7.6.i, label %.preheader.7.i, label %IsTransparentARGBArea.exit.thread

.preheader.7.i:                                   ; preds = %bb.az
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.t ; 9 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %.not.726.i = icmp ult i32 %i.ec, 16777216
  br i1 %.not.726.i, label %bb.ba, label %IsTransparentARGBArea.exit.thread

bb.ba:                                            ; preds = %.preheader.7.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3
  %.not.1.7.i = icmp ult i32 %i.ee, 16777216
  br i1 %.not.1.7.i, label %bb.bb, label %IsTransparentARGBArea.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3
  %.not.2.7.i = icmp ult i32 %i.eg, 16777216
  br i1 %.not.2.7.i, label %bb.bc, label %IsTransparentARGBArea.exit.thread

bb.bc:                                            ; preds = %bb.bb
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %.not.3.7.i = icmp ult i32 %i.ei, 16777216
  br i1 %.not.3.7.i, label %bb.bd, label %IsTransparentARGBArea.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %.not.4.7.i = icmp ult i32 %i.ek, 16777216
  br i1 %.not.4.7.i, label %bb.be, label %IsTransparentARGBArea.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %.not.5.7.i = icmp ult i32 %i.em, 16777216
  br i1 %.not.5.7.i, label %bb.bf, label %IsTransparentARGBArea.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %.not.6.7.i = icmp ult i32 %i.eo, 16777216
  br i1 %.not.6.7.i, label %bb.bg, label %IsTransparentARGBArea.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %.not.7.7.i = icmp ult i32 %i.eq, 16777216
  br i1 %.not.7.7.i, label %IsTransparentARGBArea.exit, label %IsTransparentARGBArea.exit.thread

IsTransparentARGBArea.exit:                       ; preds = %bb.bg
  %.not151 = icmp eq i32 %.0125263, 0
  %spec.select = select i1 %.not151, i32 %.1123264, i32 %i.u ; 2 uses
  %i.er = insertelement <4 x i32> poison, i32 %spec.select, i64 0
  %i.es = shufflevector <4 x i32> %i.er, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  store <4 x i32> %i.es, ptr %i.s, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.ab, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.aj, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.ar, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.az, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.bh, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.bp, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.bx, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.cf, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.cn, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.cv, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.dd, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.dl, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.dt, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.eb, align 4, !tbaa !3
  store <4 x i32> %i.es, ptr %i.ej, align 4, !tbaa !3
  br label %IsTransparentARGBArea.exit.thread

IsTransparentARGBArea.exit.thread:                ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %.preheader.7.i, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %.preheader.6.i, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %.preheader.5.i, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %.preheader.4.i, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %.preheader.3.i, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %.preheader.2.i, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.preheader.1.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %IsTransparentARGBArea.exit
  %.2127 = phi i32 [ 0, %IsTransparentARGBArea.exit ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %.preheader.1.i ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %.preheader.2.i ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %.preheader.3.i ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %.preheader.4.i ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.al ], [ 1, %.preheader.5.i ], [ 1, %bb.am ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 1, %bb.ap ], [ 1, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %.preheader.6.i ], [ 1, %bb.at ], [ 1, %bb.au ], [ 1, %bb.av ], [ 1, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.ay ], [ 1, %bb.az ], [ 1, %.preheader.7.i ], [ 1, %bb.ba ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 1, %bb.bd ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bg ]
  %.3 = phi i32 [ %spec.select, %IsTransparentARGBArea.exit ], [ %.1123264, %bb.c ], [ %.1123264, %bb.d ], [ %.1123264, %bb.e ], [ %.1123264, %bb.f ], [ %.1123264, %bb.g ], [ %.1123264, %bb.h ], [ %.1123264, %bb.i ], [ %.1123264, %bb.j ], [ %.1123264, %.preheader.1.i ], [ %.1123264, %bb.k ], [ %.1123264, %bb.l ], [ %.1123264, %bb.m ], [ %.1123264, %bb.n ], [ %.1123264, %bb.o ], [ %.1123264, %bb.p ], [ %.1123264, %bb.q ], [ %.1123264, %.preheader.2.i ], [ %.1123264, %bb.r ], [ %.1123264, %bb.s ], [ %.1123264, %bb.t ], [ %.1123264, %bb.u ], [ %.1123264, %bb.v ], [ %.1123264, %bb.w ], [ %.1123264, %bb.x ], [ %.1123264, %.preheader.3.i ], [ %.1123264, %bb.y ], [ %.1123264, %bb.z ], [ %.1123264, %bb.aa ], [ %.1123264, %bb.ab ], [ %.1123264, %bb.ac ], [ %.1123264, %bb.ad ], [ %.1123264, %bb.ae ], [ %.1123264, %.preheader.4.i ], [ %.1123264, %bb.af ], [ %.1123264, %bb.ag ], [ %.1123264, %bb.ah ], [ %.1123264, %bb.ai ], [ %.1123264, %bb.aj ], [ %.1123264, %bb.ak ], [ %.1123264, %bb.al ], [ %.1123264, %.preheader.5.i ], [ %.1123264, %bb.am ], [ %.1123264, %bb.an ], [ %.1123264, %bb.ao ], [ %.1123264, %bb.ap ], [ %.1123264, %bb.aq ], [ %.1123264, %bb.ar ], [ %.1123264, %bb.as ], [ %.1123264, %.preheader.6.i ], [ %.1123264, %bb.at ], [ %.1123264, %bb.au ], [ %.1123264, %bb.av ], [ %.1123264, %bb.aw ], [ %.1123264, %bb.ax ], [ %.1123264, %bb.ay ], [ %.1123264, %bb.az ], [ %.1123264, %.preheader.7.i ], [ %.1123264, %bb.ba ], [ %.1123264, %bb.bb ], [ %.1123264, %bb.bc ], [ %.1123264, %bb.bd ], [ %.1123264, %bb.be ], [ %.1123264, %bb.bf ], [ %.1123264, %bb.bg ] ; 2 uses
  %i.et = add nuw nsw i32 %.0265, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.et, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !20

._crit_edge:                                      ; preds = %IsTransparentARGBArea.exit.thread
  %i.eu = add nuw nsw i32 %.0119267, 1            ; 2 uses
  %exitcond301.not = icmp eq i32 %i.eu, %i.g
  br i1 %exitcond301.not, label %.critedge, label %.preheader260, !llvm.loop !21

bb.bh:                                            ; preds = %bb.b
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !22 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !23 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !24 ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !25 ; 4 uses
  %i.fd = ptrtoaddr ptr %i.fc to i64              ; 8 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !26 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !27 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !28 ; 4 uses
  %i.fk = ptrtoaddr ptr %i.fj to i64              ; 8 uses
  %i.fl = icmp ne ptr %i.fj, null
  %i.fm = icmp ne ptr %i.fc, null
  %or.cond.not149 = select i1 %i.fl, i1 %i.fm, i1 false
  %i.fn = icmp ne ptr %i.ff, null
  %or.cond3.not146 = select i1 %or.cond.not149, i1 %i.fn, i1 false
  %i.fo = icmp ne ptr %i.fh, null
  %or.cond5.not = select i1 %or.cond3.not146, i1 %i.fo, i1 false
  br i1 %or.cond5.not, label %.preheader259, label %.critedge

.preheader259:                                    ; preds = %bb.bh
  %.not139279 = icmp slt i32 %i.f, 8
  br i1 %.not139279, label %._crit_edge287, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader259
  %.not141268 = icmp slt i32 %i.c, 8
  %i.fp = sext i32 %i.fa to i64                   ; 22 uses
  %i.fq = sext i32 %i.ew to i64                   ; 29 uses
  %i.fr = sext i32 %i.ey to i64                   ; 6 uses
  %i.fs = shl i32 %i.fa, 3
  %i.ft = sext i32 %i.fs to i64                   ; 5 uses
  %i.fu = shl i32 %i.ew, 3
  %i.fv = sext i32 %i.fu to i64                   ; 5 uses
  %i.fw = shl nsw i32 %i.ey, 2
  %i.fx = sext i32 %i.fw to i64                   ; 2 uses
  %i.fy = sext i32 %i.c to i64
  %i.fz = and i32 %i.c, -8
  %i.ga = mul nsw i64 %i.fq, 7
  %i.gb = add i64 %i.ga, %i.fd
  %i.gc = sub i64 %i.gb, %i.fk
  %.neg = mul nsw i64 %i.fp, -7
  %i.gd = add i64 %.neg, %i.gc
  %i.ge = sub nsw i64 %i.fv, %i.ft                ; 2 uses
  %i.gf = mul nsw i64 %i.fq, 6
  %i.gg = add i64 %i.gf, %i.fd
  %i.gh = sub i64 %i.gg, %i.fk
  %.neg1301 = mul nsw i64 %i.fp, -6
  %i.gi = add i64 %.neg1301, %i.gh
  %i.gj = mul nsw i64 %i.fq, 5
  %i.gk = add i64 %i.gj, %i.fd
  %i.gl = sub i64 %i.gk, %i.fk
  %.neg1302 = mul nsw i64 %i.fp, -5
  %i.gm = add i64 %.neg1302, %i.gl
  %i.gn = sub nsw i64 %i.fv, %i.ft                ; 2 uses
  %i.go = shl nsw i64 %i.fq, 2
  %i.gp = add i64 %i.go, %i.fd
  %i.gq = shl nsw i64 %i.fp, 2
  %i.gr = add i64 %i.gq, %i.fk
  %i.gs = sub i64 %i.gp, %i.gr
  %i.gt = mul nsw i64 %i.fq, 3
  %i.gu = add i64 %i.gt, %i.fd
  %i.gv = sub i64 %i.gu, %i.fk
  %.neg1303 = mul nsw i64 %i.fp, -3
  %i.gw = add i64 %.neg1303, %i.gv
  %i.gx = sub nsw i64 %i.fv, %i.ft                ; 2 uses
  %i.gy = shl nsw i64 %i.fq, 1
  %i.gz = add i64 %i.gy, %i.fd
  %i.ha = shl nsw i64 %i.fp, 1
  %i.hb = add i64 %i.ha, %i.fk
  %i.hc = sub i64 %i.gz, %i.hb
  %i.hd = add i64 %i.fd, %i.fq
  %i.he = add i64 %i.fk, %i.fp
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = sub nsw i64 %i.fv, %i.ft                ; 2 uses
  %i.hh = sub i64 %i.fd, %i.fk
  %lcmp.mod1315 = trunc i32 %i.c to i1
  %lcmp.mod1329 = trunc i32 %i.c to i1
  %lcmp.mod1337 = trunc i32 %i.c to i1
  %lcmp.mod1345 = trunc i32 %i.c to i1
  %lcmp.mod1353 = trunc i32 %i.c to i1
  %lcmp.mod1361 = trunc i32 %i.c to i1
  %lcmp.mod1369 = trunc i32 %i.c to i1
  %lcmp.mod1377 = trunc i32 %i.c to i1
  %invariant.op = add i64 %i.hh, -1
  %invariant.op1411 = add i64 %i.hf, -1
  %invariant.op1413 = add i64 %i.hc, -1
  %invariant.op1415 = add i64 %i.gw, -1
  %invariant.op1417 = add i64 %i.gs, -1
  %invariant.op1419 = add i64 %i.gm, -1
  %invariant.op1421 = add i64 %i.gi, -1
  %invariant.op1423 = add i64 %i.gd, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %SmoothenBlock.exit189
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %SmoothenBlock.exit189 ] ; 9 uses
  %i.hi = phi i32 [ 8, %.preheader.lr.ph ], [ %i.btp, %SmoothenBlock.exit189 ]
  %.sroa.7.0286 = phi i8 [ 0, %.preheader.lr.ph ], [ %.sroa.7.1.lcssa, %SmoothenBlock.exit189 ] ; 2 uses
  %.sroa.5.0285 = phi i8 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %SmoothenBlock.exit189 ] ; 2 uses
  %.sroa.0.0284 = phi i8 [ 0, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %SmoothenBlock.exit189 ] ; 2 uses
  %.0115283 = phi ptr [ %i.fj, %.preheader.lr.ph ], [ %i.btl, %SmoothenBlock.exit189 ] ; 3 uses
  %.0116282 = phi ptr [ %i.fh, %.preheader.lr.ph ], [ %i.bto, %SmoothenBlock.exit189 ] ; 3 uses
  %.0117281 = phi ptr [ %i.ff, %.preheader.lr.ph ], [ %i.btn, %SmoothenBlock.exit189 ] ; 3 uses
  %.0118280 = phi ptr [ %i.fc, %.preheader.lr.ph ], [ %i.btm, %SmoothenBlock.exit189 ] ; 3 uses
  %i.hj = mul i64 %i.hg, %indvar
  %i.hk = mul i64 %i.hg, %indvar
  %i.hl = mul i64 %i.gx, %indvar
  %i.hm = mul i64 %i.gx, %indvar
  %i.hn = mul i64 %i.gn, %indvar
  %i.ho = mul i64 %i.gn, %indvar
  %i.hp = mul i64 %i.ge, %indvar
  %i.hq = mul i64 %i.ge, %indvar
  br i1 %.not141268, label %._crit_edge274, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %Flatten.exit160
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %Flatten.exit160 ], [ 0, %.preheader ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Flatten.exit160 ], [ 8, %.preheader ]
  %.0112272 = phi i32 [ %.2114, %Flatten.exit160 ], [ 1, %.preheader ]
  %.sroa.7.1271 = phi i8 [ %.sroa.7.3, %Flatten.exit160 ], [ %.sroa.7.0286, %.preheader ] ; 4 uses
  %.sroa.5.1270 = phi i8 [ %.sroa.5.3, %Flatten.exit160 ], [ %.sroa.5.0285, %.preheader ] ; 4 uses
  %.sroa.0.1269 = phi i8 [ %.sroa.0.3, %Flatten.exit160 ], [ %.sroa.0.0284, %.preheader ] ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.0115283, i64 %indvars.iv302 ; 10 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0118280, i64 %indvars.iv302 ; 13 uses
  br label %.preheader54.us.i

.preheader54.us.i:                                ; preds = %._crit_edge.us.i, %.lr.ph
  %.063.us.i = phi i32 [ %.2.us.i.7, %._crit_edge.us.i ], [ 0, %.lr.ph ] ; 2 uses
  %.04162.us.i = phi ptr [ %i.jw, %._crit_edge.us.i ], [ %i.hs, %.lr.ph ] ; 9 uses
  %.04361.us.i = phi ptr [ %i.jv, %._crit_edge.us.i ], [ %i.hr, %.lr.ph ] ; 9 uses
  %.04560.us.i = phi i32 [ %i.jx, %._crit_edge.us.i ], [ 0, %.lr.ph ]
  %.04959.us.i = phi i32 [ %.251.us.i.7, %._crit_edge.us.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.ht = load i8, ptr %.04361.us.i, align 1, !tbaa !29
  %.not.us.i = icmp eq i8 %i.ht, 0
  br i1 %.not.us.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.preheader54.us.i
  %i.hu = add nsw i32 %.04959.us.i, 1
  %i.hv = load i8, ptr %.04162.us.i, align 1, !tbaa !29
  %i.hw = zext i8 %i.hv to i32
  %i.hx = add nsw i32 %.063.us.i, %i.hw
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.preheader54.us.i
  %.251.us.i = phi i32 [ %i.hu, %bb.bi ], [ %.04959.us.i, %.preheader54.us.i ] ; 2 uses
  %.2.us.i = phi i32 [ %i.hx, %bb.bi ], [ %.063.us.i, %.preheader54.us.i ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.04361.us.i, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !29
  %.not.us.i.1 = icmp eq i8 %i.hz, 0
  br i1 %.not.us.i.1, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ia = add nsw i32 %.251.us.i, 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.04162.us.i, i64 1
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !29
  %i.id = zext i8 %i.ic to i32
  %i.ie = add nsw i32 %.2.us.i, %i.id
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.251.us.i.1 = phi i32 [ %i.ia, %bb.bk ], [ %.251.us.i, %bb.bj ] ; 2 uses
  %.2.us.i.1 = phi i32 [ %i.ie, %bb.bk ], [ %.2.us.i, %bb.bj ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.04361.us.i, i64 2
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !29
  %.not.us.i.2 = icmp eq i8 %i.ig, 0
  br i1 %.not.us.i.2, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ih = add nsw i32 %.251.us.i.1, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.04162.us.i, i64 2
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !29
  %i.ik = zext i8 %i.ij to i32
  %i.il = add nsw i32 %.2.us.i.1, %i.ik
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.251.us.i.2 = phi i32 [ %i.ih, %bb.bm ], [ %.251.us.i.1, %bb.bl ] ; 2 uses
  %.2.us.i.2 = phi i32 [ %i.il, %bb.bm ], [ %.2.us.i.1, %bb.bl ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.04361.us.i, i64 3
  %i.in = load i8, ptr %i.im, align 1, !tbaa !29
  %.not.us.i.3 = icmp eq i8 %i.in, 0
  br i1 %.not.us.i.3, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.io = add nsw i32 %.251.us.i.2, 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.04162.us.i, i64 3
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !29
  %i.ir = zext i8 %i.iq to i32
  %i.is = add nsw i32 %.2.us.i.2, %i.ir
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.251.us.i.3 = phi i32 [ %i.io, %bb.bo ], [ %.251.us.i.2, %bb.bn ] ; 2 uses
  %.2.us.i.3 = phi i32 [ %i.is, %bb.bo ], [ %.2.us.i.2, %bb.bn ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.04361.us.i, i64 4
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !29
  %.not.us.i.4 = icmp eq i8 %i.iu, 0
  br i1 %.not.us.i.4, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iv = add nsw i32 %.251.us.i.3, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %.04162.us.i, i64 4
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !29
  %i.iy = zext i8 %i.ix to i32
  %i.iz = add nsw i32 %.2.us.i.3, %i.iy
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.251.us.i.4 = phi i32 [ %i.iv, %bb.bq ], [ %.251.us.i.3, %bb.bp ] ; 2 uses
  %.2.us.i.4 = phi i32 [ %i.iz, %bb.bq ], [ %.2.us.i.3, %bb.bp ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.04361.us.i, i64 5
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !29
  %.not.us.i.5 = icmp eq i8 %i.jb, 0
  br i1 %.not.us.i.5, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jc = add nsw i32 %.251.us.i.4, 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.04162.us.i, i64 5
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !29
  %i.jf = zext i8 %i.je to i32
  %i.jg = add nsw i32 %.2.us.i.4, %i.jf
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.251.us.i.5 = phi i32 [ %i.jc, %bb.bs ], [ %.251.us.i.4, %bb.br ] ; 2 uses
  %.2.us.i.5 = phi i32 [ %i.jg, %bb.bs ], [ %.2.us.i.4, %bb.br ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.04361.us.i, i64 6
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !29
  %.not.us.i.6 = icmp eq i8 %i.ji, 0
  br i1 %.not.us.i.6, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jj = add nsw i32 %.251.us.i.5, 1
  %i.jk = getelementptr inbounds nuw i8, ptr %.04162.us.i, i64 6
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !29
  %i.jm = zext i8 %i.jl to i32
  %i.jn = add nsw i32 %.2.us.i.5, %i.jm
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.251.us.i.6 = phi i32 [ %i.jj, %bb.bu ], [ %.251.us.i.5, %bb.bt ] ; 2 uses
  %.2.us.i.6 = phi i32 [ %i.jn, %bb.bu ], [ %.2.us.i.5, %bb.bt ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.04361.us.i, i64 7
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !29
  %.not.us.i.7 = icmp eq i8 %i.jp, 0
  br i1 %.not.us.i.7, label %._crit_edge.us.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jq = add nsw i32 %.251.us.i.6, 1
  %i.jr = getelementptr inbounds nuw i8, ptr %.04162.us.i, i64 7
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !29
  %i.jt = zext i8 %i.js to i32
  %i.ju = add nsw i32 %.2.us.i.6, %i.jt
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %bb.bw, %bb.bv
  %.251.us.i.7 = phi i32 [ %i.jq, %bb.bw ], [ %.251.us.i.6, %bb.bv ] ; 4 uses
  %.2.us.i.7 = phi i32 [ %i.ju, %bb.bw ], [ %.2.us.i.6, %bb.bv ] ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %.04361.us.i, i64 %i.fp
  %i.jw = getelementptr inbounds i8, ptr %.04162.us.i, i64 %i.fq
  %i.jx = add nuw nsw i32 %.04560.us.i, 1         ; 2 uses
  %exitcond74.not.i = icmp eq i32 %i.jx, 8
  br i1 %exitcond74.not.i, label %._crit_edge64.i, label %.preheader54.us.i, !llvm.loop !30

._crit_edge64.i:                                  ; preds = %._crit_edge.us.i
  %i.jy = add i32 %.251.us.i.7, -1
  %or.cond.i = icmp ult i32 %i.jy, 63
  br i1 %or.cond.i, label %.preheader.i, label %SmoothenBlock.exit

.preheader.i:                                     ; preds = %._crit_edge64.i
  %i.jz = sdiv i32 %.2.us.i.7, %.251.us.i.7
  %i.ka = trunc i32 %i.jz to i8                   ; 64 uses
  %i.kb = load i8, ptr %i.hr, align 1, !tbaa !29
  %i.kc = icmp eq i8 %i.kb, 0
  br i1 %i.kc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.preheader.i
  store i8 %i.ka, ptr %i.hs, align 1, !tbaa !29
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.preheader.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !29
  %i.kf = icmp eq i8 %i.ke, 0
  br i1 %i.kf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.kg = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  store i8 %i.ka, ptr %i.kg, align 1, !tbaa !29
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !29
  %i.kj = icmp eq i8 %i.ki, 0
  br i1 %i.kj, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  store i8 %i.ka, ptr %i.kk, align 1, !tbaa !29
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hr, i64 3
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !29
  %i.kn = icmp eq i8 %i.km, 0
  br i1 %i.kn, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hs, i64 3
  store i8 %i.ka, ptr %i.ko, align 1, !tbaa !29
  br label %bb.ce

end_hunk_0
begin_hunk_1_@WebPCleanupTransparentArea:bb.a

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %.251.us.i172.5.1 = phi i32 [ %i.zw, %bb.hw ], [ %.251.us.i172.5, %bb.hv ] ; 3 uses
  %.2.us.i173.5.1 = phi i32 [ %i.aaa, %bb.hw ], [ %.2.us.i173.5, %bb.hv ] ; 3 uses
  %indvars.iv.next.i174.5.1 = add nuw nsw i64 %indvars.iv.i168.5, 2 ; 2 uses
  %niter1363.next.1 = add i64 %niter1363, 2       ; 2 uses
  %niter1363.ncmp.1 = icmp eq i64 %niter1363.next.1, %unroll_iter1362
  br i1 %niter1363.ncmp.1, label %._crit_edge.us.i176.5.unr-lcssa, label %bb.ht, !llvm.loop !32

._crit_edge.us.i176.5.unr-lcssa:                  ; preds = %bb.hx
  %lcmp.mod1358.not = icmp eq i64 %xtraiter1357, 0
  br i1 %lcmp.mod1358.not, label %._crit_edge.us.i176.5, label %.epil.preheader1356

.epil.preheader1356:                              ; preds = %._crit_edge.us.i176.5.unr-lcssa, %._crit_edge.us.i176.4
  %indvars.iv.i168.5.epil.init = phi i64 [ 0, %._crit_edge.us.i176.4 ], [ %indvars.iv.next.i174.5.1, %._crit_edge.us.i176.5.unr-lcssa ] ; 2 uses
  %.157.us.i169.5.epil.init = phi i32 [ %.2.us.i173.4.lcssa, %._crit_edge.us.i176.4 ], [ %.2.us.i173.5.1, %._crit_edge.us.i176.5.unr-lcssa ] ; 2 uses
  %.15055.us.i170.5.epil.init = phi i32 [ %.251.us.i172.4.lcssa, %._crit_edge.us.i176.4 ], [ %.251.us.i172.5.1, %._crit_edge.us.i176.5.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1361)
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zk, i64 %indvars.iv.i168.5.epil.init
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !29
  %.not.us.i171.5.epil = icmp eq i8 %i.aac, 0
  br i1 %.not.us.i171.5.epil, label %._crit_edge.us.i176.5, label %bb.hy

bb.hy:                                            ; preds = %.epil.preheader1356
  %i.aad = add nsw i32 %.15055.us.i170.5.epil.init, 1
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zl, i64 %indvars.iv.i168.5.epil.init
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !29
  %i.aag = zext i8 %i.aaf to i32
  %i.aah = add nsw i32 %.157.us.i169.5.epil.init, %i.aag
  br label %._crit_edge.us.i176.5

._crit_edge.us.i176.5:                            ; preds = %.epil.preheader1356, %bb.hy, %._crit_edge.us.i176.5.unr-lcssa
  %.251.us.i172.5.lcssa = phi i32 [ %.251.us.i172.5.1, %._crit_edge.us.i176.5.unr-lcssa ], [ %i.aad, %bb.hy ], [ %.15055.us.i170.5.epil.init, %.epil.preheader1356 ] ; 2 uses
  %.2.us.i173.5.lcssa = phi i32 [ %.2.us.i173.5.1, %._crit_edge.us.i176.5.unr-lcssa ], [ %i.aah, %bb.hy ], [ %.157.us.i169.5.epil.init, %.epil.preheader1356 ] ; 2 uses
  %i.aai = getelementptr inbounds i8, ptr %i.zk, i64 %i.fp ; 9 uses
  %i.aaj = getelementptr inbounds i8, ptr %i.zl, i64 %i.fq ; 47 uses
  %xtraiter1365 = and i64 %wide.trip.count.i, 1
  %i.aak = icmp eq i64 %i.uv, 0
  br i1 %i.aak, label %.epil.preheader1364, label %._crit_edge.us.i176.5.new

._crit_edge.us.i176.5.new:                        ; preds = %._crit_edge.us.i176.5
  %unroll_iter1370 = and i64 %wide.trip.count.i, 4294967294
  br label %bb.hz

bb.hz:                                            ; preds = %bb.id, %._crit_edge.us.i176.5.new
  %indvars.iv.i168.6 = phi i64 [ 0, %._crit_edge.us.i176.5.new ], [ %indvars.iv.next.i174.6.1, %bb.id ] ; 4 uses
  %.157.us.i169.6 = phi i32 [ %.2.us.i173.5.lcssa, %._crit_edge.us.i176.5.new ], [ %.2.us.i173.6.1, %bb.id ] ; 2 uses
  %.15055.us.i170.6 = phi i32 [ %.251.us.i172.5.lcssa, %._crit_edge.us.i176.5.new ], [ %.251.us.i172.6.1, %bb.id ] ; 2 uses
  %niter1371 = phi i64 [ 0, %._crit_edge.us.i176.5.new ], [ %niter1371.next.1, %bb.id ]
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aai, i64 %indvars.iv.i168.6
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !29
  %.not.us.i171.6 = icmp eq i8 %i.aam, 0
  br i1 %.not.us.i171.6, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aan = add nsw i32 %.15055.us.i170.6, 1
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %indvars.iv.i168.6
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !29
  %i.aaq = zext i8 %i.aap to i32
  %i.aar = add nsw i32 %.157.us.i169.6, %i.aaq
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %.251.us.i172.6 = phi i32 [ %i.aan, %bb.ia ], [ %.15055.us.i170.6, %bb.hz ] ; 2 uses
  %.2.us.i173.6 = phi i32 [ %i.aar, %bb.ia ], [ %.157.us.i169.6, %bb.hz ] ; 2 uses
  %indvars.iv.next.i174.6 = or disjoint i64 %indvars.iv.i168.6, 1 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aai, i64 %indvars.iv.next.i174.6
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !29
  %.not.us.i171.6.1 = icmp eq i8 %i.aat, 0
  br i1 %.not.us.i171.6.1, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aau = add nsw i32 %.251.us.i172.6, 1
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %indvars.iv.next.i174.6
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !29
  %i.aax = zext i8 %i.aaw to i32
  %i.aay = add nsw i32 %.2.us.i173.6, %i.aax
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.251.us.i172.6.1 = phi i32 [ %i.aau, %bb.ic ], [ %.251.us.i172.6, %bb.ib ] ; 3 uses
  %.2.us.i173.6.1 = phi i32 [ %i.aay, %bb.ic ], [ %.2.us.i173.6, %bb.ib ] ; 3 uses
  %indvars.iv.next.i174.6.1 = add nuw nsw i64 %indvars.iv.i168.6, 2 ; 2 uses
  %niter1371.next.1 = add i64 %niter1371, 2       ; 2 uses
  %niter1371.ncmp.1 = icmp eq i64 %niter1371.next.1, %unroll_iter1370
  br i1 %niter1371.ncmp.1, label %._crit_edge.us.i176.6.unr-lcssa, label %bb.hz, !llvm.loop !32

._crit_edge.us.i176.6.unr-lcssa:                  ; preds = %bb.id
  %lcmp.mod1366.not = icmp eq i64 %xtraiter1365, 0
  br i1 %lcmp.mod1366.not, label %._crit_edge.us.i176.6, label %.epil.preheader1364

.epil.preheader1364:                              ; preds = %._crit_edge.us.i176.6.unr-lcssa, %._crit_edge.us.i176.5
  %indvars.iv.i168.6.epil.init = phi i64 [ 0, %._crit_edge.us.i176.5 ], [ %indvars.iv.next.i174.6.1, %._crit_edge.us.i176.6.unr-lcssa ] ; 2 uses
  %.157.us.i169.6.epil.init = phi i32 [ %.2.us.i173.5.lcssa, %._crit_edge.us.i176.5 ], [ %.2.us.i173.6.1, %._crit_edge.us.i176.6.unr-lcssa ] ; 2 uses
  %.15055.us.i170.6.epil.init = phi i32 [ %.251.us.i172.5.lcssa, %._crit_edge.us.i176.5 ], [ %.251.us.i172.6.1, %._crit_edge.us.i176.6.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1369)
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aai, i64 %indvars.iv.i168.6.epil.init
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !29
  %.not.us.i171.6.epil = icmp eq i8 %i.aba, 0
  br i1 %.not.us.i171.6.epil, label %._crit_edge.us.i176.6, label %bb.ie

bb.ie:                                            ; preds = %.epil.preheader1364
  %i.abb = add nsw i32 %.15055.us.i170.6.epil.init, 1
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %indvars.iv.i168.6.epil.init
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !29
  %i.abe = zext i8 %i.abd to i32
  %i.abf = add nsw i32 %.157.us.i169.6.epil.init, %i.abe
  br label %._crit_edge.us.i176.6

._crit_edge.us.i176.6:                            ; preds = %.epil.preheader1364, %bb.ie, %._crit_edge.us.i176.6.unr-lcssa
  %.251.us.i172.6.lcssa = phi i32 [ %.251.us.i172.6.1, %._crit_edge.us.i176.6.unr-lcssa ], [ %i.abb, %bb.ie ], [ %.15055.us.i170.6.epil.init, %.epil.preheader1364 ] ; 2 uses
  %.2.us.i173.6.lcssa = phi i32 [ %.2.us.i173.6.1, %._crit_edge.us.i176.6.unr-lcssa ], [ %i.abf, %bb.ie ], [ %.157.us.i169.6.epil.init, %.epil.preheader1364 ] ; 2 uses
  %i.abg = getelementptr inbounds i8, ptr %i.aai, i64 %i.fp ; 8 uses
  %i.abh = getelementptr inbounds i8, ptr %i.aaj, i64 %i.fq ; 46 uses
  %xtraiter1373 = and i64 %wide.trip.count.i, 1
  %i.abi = icmp eq i64 %i.uv, 0
  br i1 %i.abi, label %.epil.preheader1372, label %._crit_edge.us.i176.6.new

._crit_edge.us.i176.6.new:                        ; preds = %._crit_edge.us.i176.6
  %unroll_iter1378 = and i64 %wide.trip.count.i, 4294967294
  br label %bb.if

bb.if:                                            ; preds = %bb.ij, %._crit_edge.us.i176.6.new
  %indvars.iv.i168.7 = phi i64 [ 0, %._crit_edge.us.i176.6.new ], [ %indvars.iv.next.i174.7.1, %bb.ij ] ; 4 uses
  %.157.us.i169.7 = phi i32 [ %.2.us.i173.6.lcssa, %._crit_edge.us.i176.6.new ], [ %.2.us.i173.7.1, %bb.ij ] ; 2 uses
  %.15055.us.i170.7 = phi i32 [ %.251.us.i172.6.lcssa, %._crit_edge.us.i176.6.new ], [ %.251.us.i172.7.1, %bb.ij ] ; 2 uses
  %niter1379 = phi i64 [ 0, %._crit_edge.us.i176.6.new ], [ %niter1379.next.1, %bb.ij ]
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abg, i64 %indvars.iv.i168.7
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !29
  %.not.us.i171.7 = icmp eq i8 %i.abk, 0
  br i1 %.not.us.i171.7, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.abl = add nsw i32 %.15055.us.i170.7, 1
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abh, i64 %indvars.iv.i168.7
  %i.abn = load i8, ptr %i.abm, align 1, !tbaa !29
  %i.abo = zext i8 %i.abn to i32
  %i.abp = add nsw i32 %.157.us.i169.7, %i.abo
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.251.us.i172.7 = phi i32 [ %i.abl, %bb.ig ], [ %.15055.us.i170.7, %bb.if ] ; 2 uses
  %.2.us.i173.7 = phi i32 [ %i.abp, %bb.ig ], [ %.157.us.i169.7, %bb.if ] ; 2 uses
  %indvars.iv.next.i174.7 = or disjoint i64 %indvars.iv.i168.7, 1 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abg, i64 %indvars.iv.next.i174.7
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !29
  %.not.us.i171.7.1 = icmp eq i8 %i.abr, 0
  br i1 %.not.us.i171.7.1, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.abs = add nsw i32 %.251.us.i172.7, 1
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abh, i64 %indvars.iv.next.i174.7
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !29
  %i.abv = zext i8 %i.abu to i32
  %i.abw = add nsw i32 %.2.us.i173.7, %i.abv
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %.251.us.i172.7.1 = phi i32 [ %i.abs, %bb.ii ], [ %.251.us.i172.7, %bb.ih ] ; 3 uses
  %.2.us.i173.7.1 = phi i32 [ %i.abw, %bb.ii ], [ %.2.us.i173.7, %bb.ih ] ; 3 uses
  %indvars.iv.next.i174.7.1 = add nuw nsw i64 %indvars.iv.i168.7, 2 ; 2 uses
  %niter1379.next.1 = add i64 %niter1379, 2       ; 2 uses
  %niter1379.ncmp.1 = icmp eq i64 %niter1379.next.1, %unroll_iter1378
  br i1 %niter1379.ncmp.1, label %._crit_edge.us.i176.7.unr-lcssa, label %bb.if, !llvm.loop !32

._crit_edge.us.i176.7.unr-lcssa:                  ; preds = %bb.ij
  %lcmp.mod1374.not = icmp eq i64 %xtraiter1373, 0
  br i1 %lcmp.mod1374.not, label %._crit_edge.us.i176.7, label %.epil.preheader1372

.epil.preheader1372:                              ; preds = %._crit_edge.us.i176.7.unr-lcssa, %._crit_edge.us.i176.6
  %indvars.iv.i168.7.epil.init = phi i64 [ 0, %._crit_edge.us.i176.6 ], [ %indvars.iv.next.i174.7.1, %._crit_edge.us.i176.7.unr-lcssa ] ; 2 uses
  %.157.us.i169.7.epil.init = phi i32 [ %.2.us.i173.6.lcssa, %._crit_edge.us.i176.6 ], [ %.2.us.i173.7.1, %._crit_edge.us.i176.7.unr-lcssa ] ; 2 uses
  %.15055.us.i170.7.epil.init = phi i32 [ %.251.us.i172.6.lcssa, %._crit_edge.us.i176.6 ], [ %.251.us.i172.7.1, %._crit_edge.us.i176.7.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1377)
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abg, i64 %indvars.iv.i168.7.epil.init
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !29
  %.not.us.i171.7.epil = icmp eq i8 %i.aby, 0
  br i1 %.not.us.i171.7.epil, label %._crit_edge.us.i176.7, label %bb.ik

bb.ik:                                            ; preds = %.epil.preheader1372
  %i.abz = add nsw i32 %.15055.us.i170.7.epil.init, 1
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abh, i64 %indvars.iv.i168.7.epil.init
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !29
  %i.acc = zext i8 %i.acb to i32
  %i.acd = add nsw i32 %.157.us.i169.7.epil.init, %i.acc
  br label %._crit_edge.us.i176.7

._crit_edge.us.i176.7:                            ; preds = %.epil.preheader1372, %bb.ik, %._crit_edge.us.i176.7.unr-lcssa
  %.251.us.i172.7.lcssa = phi i32 [ %.251.us.i172.7.1, %._crit_edge.us.i176.7.unr-lcssa ], [ %i.abz, %bb.ik ], [ %.15055.us.i170.7.epil.init, %.epil.preheader1372 ] ; 3 uses
  %.2.us.i173.7.lcssa = phi i32 [ %.2.us.i173.7.1, %._crit_edge.us.i176.7.unr-lcssa ], [ %i.acd, %bb.ik ], [ %.157.us.i169.7.epil.init, %.epil.preheader1372 ]
  %i.ace = icmp sgt i32 %.251.us.i172.7.lcssa, 0
  %i.acf = shl nuw nsw i32 %i.uu, 3
  %i.acg = icmp slt i32 %.251.us.i172.7.lcssa, %i.acf
  %or.cond.i179 = select i1 %i.ace, i1 %i.acg, i1 false
  br i1 %or.cond.i179, label %iter.check1160, label %SmoothenBlock.exit189

iter.check1160:                                   ; preds = %._crit_edge.us.i176.7
  %i.ach = sdiv i32 %.2.us.i173.7.lcssa, %.251.us.i172.7.lcssa
  %i.aci = trunc i32 %i.ach to i8                 ; 344 uses
  %min.iters.check1082 = icmp ult i32 %i.uu, 8
  %.reass = add i64 %i.hj, %invariant.op
  %diff.check1081 = icmp ult i64 %.reass, 31
  %or.cond = select i1 %min.iters.check1082, i1 true, i1 %diff.check1081
  br i1 %or.cond, label %vec.epilog.scalar.ph1161.preheader, label %vector.main.loop.iter.check1083

vector.main.loop.iter.check1083:                  ; preds = %iter.check1160
  %min.iters.check1084 = icmp ult i32 %i.uu, 32
  br i1 %min.iters.check1084, label %vec.epilog.ph1164, label %vector.ph1085

vector.ph1085:                                    ; preds = %vector.main.loop.iter.check1083
  %n.mod.vf1086 = and i64 %wide.trip.count.i, 24
  %n.vec1087 = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  br label %vector.body1088

vector.body1088:                                  ; preds = %pred.store.continue1155, %vector.ph1085
  %index1089 = phi i64 [ 0, %vector.ph1085 ], [ %index.next1156, %pred.store.continue1155 ] ; 34 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.us, i64 %index1089 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  %wide.load1090 = load <16 x i8>, ptr %i.acj, align 1, !tbaa !29
  %wide.load1091 = load <16 x i8>, ptr %i.ack, align 1, !tbaa !29
  %i.acl = icmp eq <16 x i8> %wide.load1090, zeroinitializer ; 16 uses
  %i.acm = icmp eq <16 x i8> %wide.load1091, zeroinitializer ; 16 uses
  %i.acn = extractelement <16 x i1> %i.acl, i64 0
  br i1 %i.acn, label %pred.store.if1092, label %pred.store.continue1093

pred.store.if1092:                                ; preds = %vector.body1088
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  store i8 %i.aci, ptr %i.aco, align 1, !tbaa !29
  br label %pred.store.continue1093

pred.store.continue1093:                          ; preds = %pred.store.if1092, %vector.body1088
  %i.acp = extractelement <16 x i1> %i.acl, i64 1
  br i1 %i.acp, label %pred.store.if1094, label %pred.store.continue1095

pred.store.if1094:                                ; preds = %pred.store.continue1093
  %i.acq = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 1
  store i8 %i.aci, ptr %i.acr, align 1, !tbaa !29
  br label %pred.store.continue1095

pred.store.continue1095:                          ; preds = %pred.store.if1094, %pred.store.continue1093
  %i.acs = extractelement <16 x i1> %i.acl, i64 2
  br i1 %i.acs, label %pred.store.if1096, label %pred.store.continue1097

pred.store.if1096:                                ; preds = %pred.store.continue1095
  %i.act = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 2
  store i8 %i.aci, ptr %i.acu, align 1, !tbaa !29
  br label %pred.store.continue1097

pred.store.continue1097:                          ; preds = %pred.store.if1096, %pred.store.continue1095
  %i.acv = extractelement <16 x i1> %i.acl, i64 3
  br i1 %i.acv, label %pred.store.if1098, label %pred.store.continue1099

pred.store.if1098:                                ; preds = %pred.store.continue1097
  %i.acw = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 3
  store i8 %i.aci, ptr %i.acx, align 1, !tbaa !29
  br label %pred.store.continue1099

pred.store.continue1099:                          ; preds = %pred.store.if1098, %pred.store.continue1097
  %i.acy = extractelement <16 x i1> %i.acl, i64 4
  br i1 %i.acy, label %pred.store.if1100, label %pred.store.continue1101

pred.store.if1100:                                ; preds = %pred.store.continue1099
  %i.acz = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 4
  store i8 %i.aci, ptr %i.ada, align 1, !tbaa !29
  br label %pred.store.continue1101

pred.store.continue1101:                          ; preds = %pred.store.if1100, %pred.store.continue1099
  %i.adb = extractelement <16 x i1> %i.acl, i64 5
  br i1 %i.adb, label %pred.store.if1102, label %pred.store.continue1103

pred.store.if1102:                                ; preds = %pred.store.continue1101
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 5
  store i8 %i.aci, ptr %i.add, align 1, !tbaa !29
  br label %pred.store.continue1103

pred.store.continue1103:                          ; preds = %pred.store.if1102, %pred.store.continue1101
  %i.ade = extractelement <16 x i1> %i.acl, i64 6
  br i1 %i.ade, label %pred.store.if1104, label %pred.store.continue1105

pred.store.if1104:                                ; preds = %pred.store.continue1103
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 6
  store i8 %i.aci, ptr %i.adg, align 1, !tbaa !29
  br label %pred.store.continue1105

pred.store.continue1105:                          ; preds = %pred.store.if1104, %pred.store.continue1103
  %i.adh = extractelement <16 x i1> %i.acl, i64 7
  br i1 %i.adh, label %pred.store.if1106, label %pred.store.continue1107

pred.store.if1106:                                ; preds = %pred.store.continue1105
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 7
  store i8 %i.aci, ptr %i.adj, align 1, !tbaa !29
  br label %pred.store.continue1107

pred.store.continue1107:                          ; preds = %pred.store.if1106, %pred.store.continue1105
  %i.adk = extractelement <16 x i1> %i.acl, i64 8
  br i1 %i.adk, label %pred.store.if1108, label %pred.store.continue1109

pred.store.if1108:                                ; preds = %pred.store.continue1107
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  store i8 %i.aci, ptr %i.adm, align 1, !tbaa !29
  br label %pred.store.continue1109

pred.store.continue1109:                          ; preds = %pred.store.if1108, %pred.store.continue1107
  %i.adn = extractelement <16 x i1> %i.acl, i64 9
  br i1 %i.adn, label %pred.store.if1110, label %pred.store.continue1111

pred.store.if1110:                                ; preds = %pred.store.continue1109
  %i.ado = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 9
  store i8 %i.aci, ptr %i.adp, align 1, !tbaa !29
  br label %pred.store.continue1111

pred.store.continue1111:                          ; preds = %pred.store.if1110, %pred.store.continue1109
  %i.adq = extractelement <16 x i1> %i.acl, i64 10
  br i1 %i.adq, label %pred.store.if1112, label %pred.store.continue1113

pred.store.if1112:                                ; preds = %pred.store.continue1111
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 10
  store i8 %i.aci, ptr %i.ads, align 1, !tbaa !29
  br label %pred.store.continue1113

pred.store.continue1113:                          ; preds = %pred.store.if1112, %pred.store.continue1111
  %i.adt = extractelement <16 x i1> %i.acl, i64 11
  br i1 %i.adt, label %pred.store.if1114, label %pred.store.continue1115

pred.store.if1114:                                ; preds = %pred.store.continue1113
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 11
  store i8 %i.aci, ptr %i.adv, align 1, !tbaa !29
  br label %pred.store.continue1115

pred.store.continue1115:                          ; preds = %pred.store.if1114, %pred.store.continue1113
  %i.adw = extractelement <16 x i1> %i.acl, i64 12
  br i1 %i.adw, label %pred.store.if1116, label %pred.store.continue1117

pred.store.if1116:                                ; preds = %pred.store.continue1115
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 12
  store i8 %i.aci, ptr %i.ady, align 1, !tbaa !29
  br label %pred.store.continue1117

pred.store.continue1117:                          ; preds = %pred.store.if1116, %pred.store.continue1115
  %i.adz = extractelement <16 x i1> %i.acl, i64 13
  br i1 %i.adz, label %pred.store.if1118, label %pred.store.continue1119

pred.store.if1118:                                ; preds = %pred.store.continue1117
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 13
  store i8 %i.aci, ptr %i.aeb, align 1, !tbaa !29
  br label %pred.store.continue1119

pred.store.continue1119:                          ; preds = %pred.store.if1118, %pred.store.continue1117
  %i.aec = extractelement <16 x i1> %i.acl, i64 14
  br i1 %i.aec, label %pred.store.if1120, label %pred.store.continue1121

pred.store.if1120:                                ; preds = %pred.store.continue1119
  %i.aed = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 14
  store i8 %i.aci, ptr %i.aee, align 1, !tbaa !29
  br label %pred.store.continue1121

pred.store.continue1121:                          ; preds = %pred.store.if1120, %pred.store.continue1119
  %i.aef = extractelement <16 x i1> %i.acl, i64 15
  br i1 %i.aef, label %pred.store.if1122, label %pred.store.continue1123

pred.store.if1122:                                ; preds = %pred.store.continue1121
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 15
  store i8 %i.aci, ptr %i.aeh, align 1, !tbaa !29
  br label %pred.store.continue1123

pred.store.continue1123:                          ; preds = %pred.store.if1122, %pred.store.continue1121
  %i.aei = extractelement <16 x i1> %i.acm, i64 0
  br i1 %i.aei, label %pred.store.if1124, label %pred.store.continue1125

pred.store.if1124:                                ; preds = %pred.store.continue1123
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  store i8 %i.aci, ptr %i.aek, align 1, !tbaa !29
  br label %pred.store.continue1125

pred.store.continue1125:                          ; preds = %pred.store.if1124, %pred.store.continue1123
  %i.ael = extractelement <16 x i1> %i.acm, i64 1
  br i1 %i.ael, label %pred.store.if1126, label %pred.store.continue1127

pred.store.if1126:                                ; preds = %pred.store.continue1125
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 17
  store i8 %i.aci, ptr %i.aen, align 1, !tbaa !29
  br label %pred.store.continue1127

pred.store.continue1127:                          ; preds = %pred.store.if1126, %pred.store.continue1125
  %i.aeo = extractelement <16 x i1> %i.acm, i64 2
end_hunk_1
begin_hunk_2_@WebPCleanupTransparentArea:bb.a
  br label %pred.store.continue1149

pred.store.continue1149:                          ; preds = %pred.store.if1148, %pred.store.continue1147
  %i.afv = extractelement <16 x i1> %i.acm, i64 13
  br i1 %i.afv, label %pred.store.if1150, label %pred.store.continue1151

pred.store.if1150:                                ; preds = %pred.store.continue1149
  %i.afw = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 29
  store i8 %i.aci, ptr %i.afx, align 1, !tbaa !29
  br label %pred.store.continue1151

pred.store.continue1151:                          ; preds = %pred.store.if1150, %pred.store.continue1149
  %i.afy = extractelement <16 x i1> %i.acm, i64 14
  br i1 %i.afy, label %pred.store.if1152, label %pred.store.continue1153

pred.store.if1152:                                ; preds = %pred.store.continue1151
  %i.afz = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 30
  store i8 %i.aci, ptr %i.aga, align 1, !tbaa !29
  br label %pred.store.continue1153

pred.store.continue1153:                          ; preds = %pred.store.if1152, %pred.store.continue1151
  %i.agb = extractelement <16 x i1> %i.acm, i64 15
  br i1 %i.agb, label %pred.store.if1154, label %pred.store.continue1155

pred.store.if1154:                                ; preds = %pred.store.continue1153
  %i.agc = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1089
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 31
  store i8 %i.aci, ptr %i.agd, align 1, !tbaa !29
  br label %pred.store.continue1155

pred.store.continue1155:                          ; preds = %pred.store.if1154, %pred.store.continue1153
  %index.next1156 = add nuw i64 %index1089, 32    ; 2 uses
  %i.age = icmp eq i64 %index.next1156, %n.vec1087
  br i1 %i.age, label %middle.block1157, label %vector.body1088, !llvm.loop !33

middle.block1157:                                 ; preds = %pred.store.continue1155
  %cmp.n1158 = icmp eq i64 %n.vec1087, %wide.trip.count.i
  br i1 %cmp.n1158, label %iter.check1050, label %vec.epilog.iter.check1162

vec.epilog.iter.check1162:                        ; preds = %middle.block1157
  %min.epilog.iters.check1163 = icmp eq i64 %n.mod.vf1086, 0
  br i1 %min.epilog.iters.check1163, label %vec.epilog.scalar.ph1161.preheader, label %vec.epilog.ph1164, !prof !36

vec.epilog.ph1164:                                ; preds = %vector.main.loop.iter.check1083, %vec.epilog.iter.check1162
  %vec.epilog.resume.val1159 = phi i64 [ %n.vec1087, %vec.epilog.iter.check1162 ], [ 0, %vector.main.loop.iter.check1083 ]
  %n.vec1166 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vec.epilog.vector.body1167

vec.epilog.vector.body1167:                       ; preds = %pred.store.continue1185, %vec.epilog.ph1164
  %index1168 = phi i64 [ %vec.epilog.resume.val1159, %vec.epilog.ph1164 ], [ %index.next1186, %pred.store.continue1185 ] ; 10 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.us, i64 %index1168
  %wide.load1169 = load <8 x i8>, ptr %i.agf, align 1, !tbaa !29
  %i.agg = icmp eq <8 x i8> %wide.load1169, zeroinitializer ; 8 uses
  %i.agh = extractelement <8 x i1> %i.agg, i64 0
  br i1 %i.agh, label %pred.store.if1170, label %pred.store.continue1171

pred.store.if1170:                                ; preds = %vec.epilog.vector.body1167
  %i.agi = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1168
  store i8 %i.aci, ptr %i.agi, align 1, !tbaa !29
  br label %pred.store.continue1171

pred.store.continue1171:                          ; preds = %pred.store.if1170, %vec.epilog.vector.body1167
  %i.agj = extractelement <8 x i1> %i.agg, i64 1
  br i1 %i.agj, label %pred.store.if1172, label %pred.store.continue1173

pred.store.if1172:                                ; preds = %pred.store.continue1171
  %i.agk = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1168
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 1
  store i8 %i.aci, ptr %i.agl, align 1, !tbaa !29
  br label %pred.store.continue1173

pred.store.continue1173:                          ; preds = %pred.store.if1172, %pred.store.continue1171
  %i.agm = extractelement <8 x i1> %i.agg, i64 2
  br i1 %i.agm, label %pred.store.if1174, label %pred.store.continue1175

pred.store.if1174:                                ; preds = %pred.store.continue1173
  %i.agn = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1168
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 2
  store i8 %i.aci, ptr %i.ago, align 1, !tbaa !29
  br label %pred.store.continue1175

pred.store.continue1175:                          ; preds = %pred.store.if1174, %pred.store.continue1173
  %i.agp = extractelement <8 x i1> %i.agg, i64 3
  br i1 %i.agp, label %pred.store.if1176, label %pred.store.continue1177

pred.store.if1176:                                ; preds = %pred.store.continue1175
  %i.agq = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1168
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 3
  store i8 %i.aci, ptr %i.agr, align 1, !tbaa !29
  br label %pred.store.continue1177

pred.store.continue1177:                          ; preds = %pred.store.if1176, %pred.store.continue1175
  %i.ags = extractelement <8 x i1> %i.agg, i64 4
  br i1 %i.ags, label %pred.store.if1178, label %pred.store.continue1179

pred.store.if1178:                                ; preds = %pred.store.continue1177
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1168
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 4
  store i8 %i.aci, ptr %i.agu, align 1, !tbaa !29
  br label %pred.store.continue1179

pred.store.continue1179:                          ; preds = %pred.store.if1178, %pred.store.continue1177
  %i.agv = extractelement <8 x i1> %i.agg, i64 5
  br i1 %i.agv, label %pred.store.if1180, label %pred.store.continue1181

pred.store.if1180:                                ; preds = %pred.store.continue1179
  %i.agw = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1168
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 5
  store i8 %i.aci, ptr %i.agx, align 1, !tbaa !29
  br label %pred.store.continue1181

pred.store.continue1181:                          ; preds = %pred.store.if1180, %pred.store.continue1179
  %i.agy = extractelement <8 x i1> %i.agg, i64 6
  br i1 %i.agy, label %pred.store.if1182, label %pred.store.continue1183

pred.store.if1182:                                ; preds = %pred.store.continue1181
  %i.agz = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1168
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 6
  store i8 %i.aci, ptr %i.aha, align 1, !tbaa !29
  br label %pred.store.continue1183

pred.store.continue1183:                          ; preds = %pred.store.if1182, %pred.store.continue1181
  %i.ahb = extractelement <8 x i1> %i.agg, i64 7
  br i1 %i.ahb, label %pred.store.if1184, label %pred.store.continue1185

pred.store.if1184:                                ; preds = %pred.store.continue1183
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ut, i64 %index1168
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 7
  store i8 %i.aci, ptr %i.ahd, align 1, !tbaa !29
  br label %pred.store.continue1185

pred.store.continue1185:                          ; preds = %pred.store.if1184, %pred.store.continue1183
  %index.next1186 = add nuw i64 %index1168, 8     ; 2 uses
  %i.ahe = icmp eq i64 %index.next1186, %n.vec1166
  br i1 %i.ahe, label %vec.epilog.middle.block1187, label %vec.epilog.vector.body1167, !llvm.loop !37

vec.epilog.middle.block1187:                      ; preds = %pred.store.continue1185
  %cmp.n1188 = icmp eq i64 %n.vec1166, %wide.trip.count.i
  br i1 %cmp.n1188, label %iter.check1050, label %vec.epilog.scalar.ph1161.preheader

vec.epilog.scalar.ph1161.preheader:               ; preds = %iter.check1160, %vec.epilog.iter.check1162, %vec.epilog.middle.block1187
  %indvars.iv75.i184.ph = phi i64 [ 0, %iter.check1160 ], [ %n.vec1087, %vec.epilog.iter.check1162 ], [ %n.vec1166, %vec.epilog.middle.block1187 ] ; 5 uses
  %xtraiter1380 = and i64 %wide.trip.count.i, 1
  %lcmp.mod1381.not = icmp eq i64 %xtraiter1380, 0
  br i1 %lcmp.mod1381.not, label %vec.epilog.scalar.ph1161.prol.loopexit, label %vec.epilog.scalar.ph1161.prol

vec.epilog.scalar.ph1161.prol:                    ; preds = %vec.epilog.scalar.ph1161.preheader
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.us, i64 %indvars.iv75.i184.ph
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !29
  %i.ahh = icmp eq i8 %i.ahg, 0
  br i1 %i.ahh, label %bb.il, label %vec.epilog.scalar.ph1161.prol.loopexit.unr-lcssa

bb.il:                                            ; preds = %vec.epilog.scalar.ph1161.prol
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ut, i64 %indvars.iv75.i184.ph
  store i8 %i.aci, ptr %i.ahi, align 1, !tbaa !29
  br label %vec.epilog.scalar.ph1161.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph1161.prol.loopexit.unr-lcssa: ; preds = %bb.il, %vec.epilog.scalar.ph1161.prol
  %indvars.iv.next76.i185.prol = or disjoint i64 %indvars.iv75.i184.ph, 1
  br label %vec.epilog.scalar.ph1161.prol.loopexit

vec.epilog.scalar.ph1161.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1161.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph1161.preheader
  %indvars.iv75.i184.unr = phi i64 [ %indvars.iv75.i184.ph, %vec.epilog.scalar.ph1161.preheader ], [ %indvars.iv.next76.i185.prol, %vec.epilog.scalar.ph1161.prol.loopexit.unr-lcssa ]
  %i.ahj = add nsw i64 %wide.trip.count.i, -1
  %i.ahk = icmp eq i64 %indvars.iv75.i184.ph, %i.ahj
  br i1 %i.ahk, label %iter.check1050, label %vec.epilog.scalar.ph1161

vec.epilog.scalar.ph1161:                         ; preds = %vec.epilog.scalar.ph1161.prol.loopexit, %bb.io
  %indvars.iv75.i184 = phi i64 [ %indvars.iv.next76.i185.11383, %bb.io ], [ %indvars.iv75.i184.unr, %vec.epilog.scalar.ph1161.prol.loopexit ] ; 4 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.us, i64 %indvars.iv75.i184
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !29
  %i.ahn = icmp eq i8 %i.ahm, 0
  br i1 %i.ahn, label %bb.im, label %vec.epilog.scalar.ph1161.1

bb.im:                                            ; preds = %vec.epilog.scalar.ph1161
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ut, i64 %indvars.iv75.i184
  store i8 %i.aci, ptr %i.aho, align 1, !tbaa !29
  br label %vec.epilog.scalar.ph1161.1

vec.epilog.scalar.ph1161.1:                       ; preds = %bb.im, %vec.epilog.scalar.ph1161
  %indvars.iv.next76.i185 = add nuw nsw i64 %indvars.iv75.i184, 1 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.us, i64 %indvars.iv.next76.i185
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !29
  %i.ahr = icmp eq i8 %i.ahq, 0
  br i1 %i.ahr, label %bb.in, label %bb.io

bb.in:                                            ; preds = %vec.epilog.scalar.ph1161.1
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ut, i64 %indvars.iv.next76.i185
  store i8 %i.aci, ptr %i.ahs, align 1, !tbaa !29
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %vec.epilog.scalar.ph1161.1
  %indvars.iv.next76.i185.11383 = add nuw nsw i64 %indvars.iv75.i184, 2 ; 2 uses
  %exitcond79.not.i186.11384 = icmp eq i64 %indvars.iv.next76.i185.11383, %wide.trip.count.i
  br i1 %exitcond79.not.i186.11384, label %iter.check1050, label %vec.epilog.scalar.ph1161, !llvm.loop !38

iter.check1050:                                   ; preds = %vec.epilog.scalar.ph1161.prol.loopexit, %bb.io, %vec.epilog.middle.block1187, %middle.block1157
  %min.iters.check972 = icmp ult i32 %i.uu, 8
  %.reass1412 = add i64 %i.hk, %invariant.op1411
  %diff.check971 = icmp ult i64 %.reass1412, 31
  %or.cond1304 = select i1 %min.iters.check972, i1 true, i1 %diff.check971
  br i1 %or.cond1304, label %._crit_edge.i187.preheader, label %vector.main.loop.iter.check973

vector.main.loop.iter.check973:                   ; preds = %iter.check1050
  %min.iters.check974 = icmp ult i32 %i.uu, 32
  br i1 %min.iters.check974, label %vec.epilog.ph1054, label %vector.ph975

vector.ph975:                                     ; preds = %vector.main.loop.iter.check973
  %n.mod.vf976 = and i64 %wide.trip.count.i, 24
  %n.vec977 = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  br label %vector.body978

vector.body978:                                   ; preds = %pred.store.continue1045, %vector.ph975
  %index979 = phi i64 [ 0, %vector.ph975 ], [ %index.next1046, %pred.store.continue1045 ] ; 34 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.vs, i64 %index979 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 16
  %wide.load980 = load <16 x i8>, ptr %i.aht, align 1, !tbaa !29
  %wide.load981 = load <16 x i8>, ptr %i.ahu, align 1, !tbaa !29
  %i.ahv = icmp eq <16 x i8> %wide.load980, zeroinitializer ; 16 uses
  %i.ahw = icmp eq <16 x i8> %wide.load981, zeroinitializer ; 16 uses
  %i.ahx = extractelement <16 x i1> %i.ahv, i64 0
  br i1 %i.ahx, label %pred.store.if982, label %pred.store.continue983

pred.store.if982:                                 ; preds = %vector.body978
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  store i8 %i.aci, ptr %i.ahy, align 1, !tbaa !29
  br label %pred.store.continue983

pred.store.continue983:                           ; preds = %pred.store.if982, %vector.body978
  %i.ahz = extractelement <16 x i1> %i.ahv, i64 1
  br i1 %i.ahz, label %pred.store.if984, label %pred.store.continue985

pred.store.if984:                                 ; preds = %pred.store.continue983
  %i.aia = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 1
  store i8 %i.aci, ptr %i.aib, align 1, !tbaa !29
  br label %pred.store.continue985

pred.store.continue985:                           ; preds = %pred.store.if984, %pred.store.continue983
  %i.aic = extractelement <16 x i1> %i.ahv, i64 2
  br i1 %i.aic, label %pred.store.if986, label %pred.store.continue987

pred.store.if986:                                 ; preds = %pred.store.continue985
  %i.aid = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 2
  store i8 %i.aci, ptr %i.aie, align 1, !tbaa !29
  br label %pred.store.continue987

pred.store.continue987:                           ; preds = %pred.store.if986, %pred.store.continue985
  %i.aif = extractelement <16 x i1> %i.ahv, i64 3
  br i1 %i.aif, label %pred.store.if988, label %pred.store.continue989

pred.store.if988:                                 ; preds = %pred.store.continue987
  %i.aig = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 3
  store i8 %i.aci, ptr %i.aih, align 1, !tbaa !29
  br label %pred.store.continue989

pred.store.continue989:                           ; preds = %pred.store.if988, %pred.store.continue987
  %i.aii = extractelement <16 x i1> %i.ahv, i64 4
  br i1 %i.aii, label %pred.store.if990, label %pred.store.continue991

pred.store.if990:                                 ; preds = %pred.store.continue989
  %i.aij = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 4
  store i8 %i.aci, ptr %i.aik, align 1, !tbaa !29
  br label %pred.store.continue991

pred.store.continue991:                           ; preds = %pred.store.if990, %pred.store.continue989
  %i.ail = extractelement <16 x i1> %i.ahv, i64 5
  br i1 %i.ail, label %pred.store.if992, label %pred.store.continue993

pred.store.if992:                                 ; preds = %pred.store.continue991
  %i.aim = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 5
  store i8 %i.aci, ptr %i.ain, align 1, !tbaa !29
  br label %pred.store.continue993

pred.store.continue993:                           ; preds = %pred.store.if992, %pred.store.continue991
  %i.aio = extractelement <16 x i1> %i.ahv, i64 6
  br i1 %i.aio, label %pred.store.if994, label %pred.store.continue995

pred.store.if994:                                 ; preds = %pred.store.continue993
  %i.aip = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 6
  store i8 %i.aci, ptr %i.aiq, align 1, !tbaa !29
  br label %pred.store.continue995

pred.store.continue995:                           ; preds = %pred.store.if994, %pred.store.continue993
  %i.air = extractelement <16 x i1> %i.ahv, i64 7
  br i1 %i.air, label %pred.store.if996, label %pred.store.continue997

pred.store.if996:                                 ; preds = %pred.store.continue995
  %i.ais = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 7
  store i8 %i.aci, ptr %i.ait, align 1, !tbaa !29
  br label %pred.store.continue997

pred.store.continue997:                           ; preds = %pred.store.if996, %pred.store.continue995
  %i.aiu = extractelement <16 x i1> %i.ahv, i64 8
  br i1 %i.aiu, label %pred.store.if998, label %pred.store.continue999

pred.store.if998:                                 ; preds = %pred.store.continue997
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  store i8 %i.aci, ptr %i.aiw, align 1, !tbaa !29
  br label %pred.store.continue999

pred.store.continue999:                           ; preds = %pred.store.if998, %pred.store.continue997
  %i.aix = extractelement <16 x i1> %i.ahv, i64 9
  br i1 %i.aix, label %pred.store.if1000, label %pred.store.continue1001

pred.store.if1000:                                ; preds = %pred.store.continue999
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 9
  store i8 %i.aci, ptr %i.aiz, align 1, !tbaa !29
  br label %pred.store.continue1001

pred.store.continue1001:                          ; preds = %pred.store.if1000, %pred.store.continue999
  %i.aja = extractelement <16 x i1> %i.ahv, i64 10
  br i1 %i.aja, label %pred.store.if1002, label %pred.store.continue1003

pred.store.if1002:                                ; preds = %pred.store.continue1001
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 10
  store i8 %i.aci, ptr %i.ajc, align 1, !tbaa !29
  br label %pred.store.continue1003

pred.store.continue1003:                          ; preds = %pred.store.if1002, %pred.store.continue1001
  %i.ajd = extractelement <16 x i1> %i.ahv, i64 11
  br i1 %i.ajd, label %pred.store.if1004, label %pred.store.continue1005

pred.store.if1004:                                ; preds = %pred.store.continue1003
  %i.aje = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 11
  store i8 %i.aci, ptr %i.ajf, align 1, !tbaa !29
  br label %pred.store.continue1005

pred.store.continue1005:                          ; preds = %pred.store.if1004, %pred.store.continue1003
  %i.ajg = extractelement <16 x i1> %i.ahv, i64 12
  br i1 %i.ajg, label %pred.store.if1006, label %pred.store.continue1007

pred.store.if1006:                                ; preds = %pred.store.continue1005
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 12
  store i8 %i.aci, ptr %i.aji, align 1, !tbaa !29
  br label %pred.store.continue1007

pred.store.continue1007:                          ; preds = %pred.store.if1006, %pred.store.continue1005
  %i.ajj = extractelement <16 x i1> %i.ahv, i64 13
  br i1 %i.ajj, label %pred.store.if1008, label %pred.store.continue1009

pred.store.if1008:                                ; preds = %pred.store.continue1007
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 13
  store i8 %i.aci, ptr %i.ajl, align 1, !tbaa !29
  br label %pred.store.continue1009

pred.store.continue1009:                          ; preds = %pred.store.if1008, %pred.store.continue1007
  %i.ajm = extractelement <16 x i1> %i.ahv, i64 14
  br i1 %i.ajm, label %pred.store.if1010, label %pred.store.continue1011

pred.store.if1010:                                ; preds = %pred.store.continue1009
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 14
  store i8 %i.aci, ptr %i.ajo, align 1, !tbaa !29
  br label %pred.store.continue1011

pred.store.continue1011:                          ; preds = %pred.store.if1010, %pred.store.continue1009
  %i.ajp = extractelement <16 x i1> %i.ahv, i64 15
  br i1 %i.ajp, label %pred.store.if1012, label %pred.store.continue1013

pred.store.if1012:                                ; preds = %pred.store.continue1011
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 15
  store i8 %i.aci, ptr %i.ajr, align 1, !tbaa !29
  br label %pred.store.continue1013

pred.store.continue1013:                          ; preds = %pred.store.if1012, %pred.store.continue1011
  %i.ajs = extractelement <16 x i1> %i.ahw, i64 0
  br i1 %i.ajs, label %pred.store.if1014, label %pred.store.continue1015

pred.store.if1014:                                ; preds = %pred.store.continue1013
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 16
  store i8 %i.aci, ptr %i.aju, align 1, !tbaa !29
  br label %pred.store.continue1015

pred.store.continue1015:                          ; preds = %pred.store.if1014, %pred.store.continue1013
  %i.ajv = extractelement <16 x i1> %i.ahw, i64 1
  br i1 %i.ajv, label %pred.store.if1016, label %pred.store.continue1017

pred.store.if1016:                                ; preds = %pred.store.continue1015
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 17
  store i8 %i.aci, ptr %i.ajx, align 1, !tbaa !29
  br label %pred.store.continue1017

pred.store.continue1017:                          ; preds = %pred.store.if1016, %pred.store.continue1015
  %i.ajy = extractelement <16 x i1> %i.ahw, i64 2
end_hunk_2
begin_hunk_3_@WebPCleanupTransparentArea:bb.a
  br label %pred.store.continue1039

pred.store.continue1039:                          ; preds = %pred.store.if1038, %pred.store.continue1037
  %i.alf = extractelement <16 x i1> %i.ahw, i64 13
  br i1 %i.alf, label %pred.store.if1040, label %pred.store.continue1041

pred.store.if1040:                                ; preds = %pred.store.continue1039
  %i.alg = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 29
  store i8 %i.aci, ptr %i.alh, align 1, !tbaa !29
  br label %pred.store.continue1041

pred.store.continue1041:                          ; preds = %pred.store.if1040, %pred.store.continue1039
  %i.ali = extractelement <16 x i1> %i.ahw, i64 14
  br i1 %i.ali, label %pred.store.if1042, label %pred.store.continue1043

pred.store.if1042:                                ; preds = %pred.store.continue1041
  %i.alj = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 30
  store i8 %i.aci, ptr %i.alk, align 1, !tbaa !29
  br label %pred.store.continue1043

pred.store.continue1043:                          ; preds = %pred.store.if1042, %pred.store.continue1041
  %i.all = extractelement <16 x i1> %i.ahw, i64 15
  br i1 %i.all, label %pred.store.if1044, label %pred.store.continue1045

pred.store.if1044:                                ; preds = %pred.store.continue1043
  %i.alm = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index979
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 31
  store i8 %i.aci, ptr %i.aln, align 1, !tbaa !29
  br label %pred.store.continue1045

pred.store.continue1045:                          ; preds = %pred.store.if1044, %pred.store.continue1043
  %index.next1046 = add nuw i64 %index979, 32     ; 2 uses
  %i.alo = icmp eq i64 %index.next1046, %n.vec977
  br i1 %i.alo, label %middle.block1047, label %vector.body978, !llvm.loop !39

middle.block1047:                                 ; preds = %pred.store.continue1045
  %cmp.n1048 = icmp eq i64 %n.vec977, %wide.trip.count.i
  br i1 %cmp.n1048, label %iter.check940, label %vec.epilog.iter.check1052

vec.epilog.iter.check1052:                        ; preds = %middle.block1047
  %min.epilog.iters.check1053 = icmp eq i64 %n.mod.vf976, 0
  br i1 %min.epilog.iters.check1053, label %._crit_edge.i187.preheader, label %vec.epilog.ph1054, !prof !36

vec.epilog.ph1054:                                ; preds = %vector.main.loop.iter.check973, %vec.epilog.iter.check1052
  %vec.epilog.resume.val1049 = phi i64 [ %n.vec977, %vec.epilog.iter.check1052 ], [ 0, %vector.main.loop.iter.check973 ]
  %n.vec1056 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vec.epilog.vector.body1057

vec.epilog.vector.body1057:                       ; preds = %pred.store.continue1075, %vec.epilog.ph1054
  %index1058 = phi i64 [ %vec.epilog.resume.val1049, %vec.epilog.ph1054 ], [ %index.next1076, %pred.store.continue1075 ] ; 10 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.vs, i64 %index1058
  %wide.load1059 = load <8 x i8>, ptr %i.alp, align 1, !tbaa !29
  %i.alq = icmp eq <8 x i8> %wide.load1059, zeroinitializer ; 8 uses
  %i.alr = extractelement <8 x i1> %i.alq, i64 0
  br i1 %i.alr, label %pred.store.if1060, label %pred.store.continue1061

pred.store.if1060:                                ; preds = %vec.epilog.vector.body1057
  %i.als = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index1058
  store i8 %i.aci, ptr %i.als, align 1, !tbaa !29
  br label %pred.store.continue1061

pred.store.continue1061:                          ; preds = %pred.store.if1060, %vec.epilog.vector.body1057
  %i.alt = extractelement <8 x i1> %i.alq, i64 1
  br i1 %i.alt, label %pred.store.if1062, label %pred.store.continue1063

pred.store.if1062:                                ; preds = %pred.store.continue1061
  %i.alu = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index1058
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 1
  store i8 %i.aci, ptr %i.alv, align 1, !tbaa !29
  br label %pred.store.continue1063

pred.store.continue1063:                          ; preds = %pred.store.if1062, %pred.store.continue1061
  %i.alw = extractelement <8 x i1> %i.alq, i64 2
  br i1 %i.alw, label %pred.store.if1064, label %pred.store.continue1065

pred.store.if1064:                                ; preds = %pred.store.continue1063
  %i.alx = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index1058
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 2
  store i8 %i.aci, ptr %i.aly, align 1, !tbaa !29
  br label %pred.store.continue1065

pred.store.continue1065:                          ; preds = %pred.store.if1064, %pred.store.continue1063
  %i.alz = extractelement <8 x i1> %i.alq, i64 3
  br i1 %i.alz, label %pred.store.if1066, label %pred.store.continue1067

pred.store.if1066:                                ; preds = %pred.store.continue1065
  %i.ama = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index1058
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 3
  store i8 %i.aci, ptr %i.amb, align 1, !tbaa !29
  br label %pred.store.continue1067

pred.store.continue1067:                          ; preds = %pred.store.if1066, %pred.store.continue1065
  %i.amc = extractelement <8 x i1> %i.alq, i64 4
  br i1 %i.amc, label %pred.store.if1068, label %pred.store.continue1069

pred.store.if1068:                                ; preds = %pred.store.continue1067
  %i.amd = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index1058
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 4
  store i8 %i.aci, ptr %i.ame, align 1, !tbaa !29
  br label %pred.store.continue1069

pred.store.continue1069:                          ; preds = %pred.store.if1068, %pred.store.continue1067
  %i.amf = extractelement <8 x i1> %i.alq, i64 5
  br i1 %i.amf, label %pred.store.if1070, label %pred.store.continue1071

pred.store.if1070:                                ; preds = %pred.store.continue1069
  %i.amg = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index1058
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 5
  store i8 %i.aci, ptr %i.amh, align 1, !tbaa !29
  br label %pred.store.continue1071

pred.store.continue1071:                          ; preds = %pred.store.if1070, %pred.store.continue1069
  %i.ami = extractelement <8 x i1> %i.alq, i64 6
  br i1 %i.ami, label %pred.store.if1072, label %pred.store.continue1073

pred.store.if1072:                                ; preds = %pred.store.continue1071
  %i.amj = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index1058
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 6
  store i8 %i.aci, ptr %i.amk, align 1, !tbaa !29
  br label %pred.store.continue1073

pred.store.continue1073:                          ; preds = %pred.store.if1072, %pred.store.continue1071
  %i.aml = extractelement <8 x i1> %i.alq, i64 7
  br i1 %i.aml, label %pred.store.if1074, label %pred.store.continue1075

pred.store.if1074:                                ; preds = %pred.store.continue1073
  %i.amm = getelementptr inbounds nuw i8, ptr %i.vt, i64 %index1058
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 7
  store i8 %i.aci, ptr %i.amn, align 1, !tbaa !29
  br label %pred.store.continue1075

pred.store.continue1075:                          ; preds = %pred.store.if1074, %pred.store.continue1073
  %index.next1076 = add nuw i64 %index1058, 8     ; 2 uses
  %i.amo = icmp eq i64 %index.next1076, %n.vec1056
  br i1 %i.amo, label %vec.epilog.middle.block1077, label %vec.epilog.vector.body1057, !llvm.loop !40

vec.epilog.middle.block1077:                      ; preds = %pred.store.continue1075
  %cmp.n1078 = icmp eq i64 %n.vec1056, %wide.trip.count.i
  br i1 %cmp.n1078, label %iter.check940, label %._crit_edge.i187.preheader

._crit_edge.i187.preheader:                       ; preds = %iter.check1050, %vec.epilog.iter.check1052, %vec.epilog.middle.block1077
  %indvars.iv75.i184.1.ph = phi i64 [ 0, %iter.check1050 ], [ %n.vec977, %vec.epilog.iter.check1052 ], [ %n.vec1056, %vec.epilog.middle.block1077 ] ; 5 uses
  %xtraiter1385 = and i64 %wide.trip.count.i, 1
  %lcmp.mod1386.not = icmp eq i64 %xtraiter1385, 0
  br i1 %lcmp.mod1386.not, label %._crit_edge.i187.prol.loopexit, label %._crit_edge.i187.prol

._crit_edge.i187.prol:                            ; preds = %._crit_edge.i187.preheader
  %i.amp = getelementptr inbounds nuw i8, ptr %i.vs, i64 %indvars.iv75.i184.1.ph
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !29
  %i.amr = icmp eq i8 %i.amq, 0
  br i1 %i.amr, label %bb.ip, label %._crit_edge.i187.prol.loopexit.unr-lcssa

bb.ip:                                            ; preds = %._crit_edge.i187.prol
  %i.ams = getelementptr inbounds nuw i8, ptr %i.vt, i64 %indvars.iv75.i184.1.ph
  store i8 %i.aci, ptr %i.ams, align 1, !tbaa !29
  br label %._crit_edge.i187.prol.loopexit.unr-lcssa

._crit_edge.i187.prol.loopexit.unr-lcssa:         ; preds = %bb.ip, %._crit_edge.i187.prol
  %indvars.iv.next76.i185.1.prol = or disjoint i64 %indvars.iv75.i184.1.ph, 1
  br label %._crit_edge.i187.prol.loopexit

._crit_edge.i187.prol.loopexit:                   ; preds = %._crit_edge.i187.prol.loopexit.unr-lcssa, %._crit_edge.i187.preheader
  %indvars.iv75.i184.1.unr = phi i64 [ %indvars.iv75.i184.1.ph, %._crit_edge.i187.preheader ], [ %indvars.iv.next76.i185.1.prol, %._crit_edge.i187.prol.loopexit.unr-lcssa ]
  %i.amt = add nsw i64 %wide.trip.count.i, -1
  %i.amu = icmp eq i64 %indvars.iv75.i184.1.ph, %i.amt
  br i1 %i.amu, label %iter.check940, label %._crit_edge.i187

._crit_edge.i187:                                 ; preds = %._crit_edge.i187.prol.loopexit, %bb.is
  %indvars.iv75.i184.1 = phi i64 [ %indvars.iv.next76.i185.1.1, %bb.is ], [ %indvars.iv75.i184.1.unr, %._crit_edge.i187.prol.loopexit ] ; 4 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %i.vs, i64 %indvars.iv75.i184.1
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !29
  %i.amx = icmp eq i8 %i.amw, 0
  br i1 %i.amx, label %bb.iq, label %._crit_edge.i187.11387

bb.iq:                                            ; preds = %._crit_edge.i187
  %i.amy = getelementptr inbounds nuw i8, ptr %i.vt, i64 %indvars.iv75.i184.1
  store i8 %i.aci, ptr %i.amy, align 1, !tbaa !29
  br label %._crit_edge.i187.11387

._crit_edge.i187.11387:                           ; preds = %bb.iq, %._crit_edge.i187
  %indvars.iv.next76.i185.1 = add nuw nsw i64 %indvars.iv75.i184.1, 1 ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.vs, i64 %indvars.iv.next76.i185.1
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !29
  %i.anb = icmp eq i8 %i.ana, 0
  br i1 %i.anb, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %._crit_edge.i187.11387
  %i.anc = getelementptr inbounds nuw i8, ptr %i.vt, i64 %indvars.iv.next76.i185.1
  store i8 %i.aci, ptr %i.anc, align 1, !tbaa !29
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %._crit_edge.i187.11387
  %indvars.iv.next76.i185.1.1 = add nuw nsw i64 %indvars.iv75.i184.1, 2 ; 2 uses
  %exitcond79.not.i186.1.1 = icmp eq i64 %indvars.iv.next76.i185.1.1, %wide.trip.count.i
  br i1 %exitcond79.not.i186.1.1, label %iter.check940, label %._crit_edge.i187, !llvm.loop !41

iter.check940:                                    ; preds = %._crit_edge.i187.prol.loopexit, %bb.is, %vec.epilog.middle.block1077, %middle.block1047
  %min.iters.check862 = icmp ult i32 %i.uu, 8
  %.reass1414 = add i64 %i.hl, %invariant.op1413
  %diff.check861 = icmp ult i64 %.reass1414, 31
  %or.cond1305 = select i1 %min.iters.check862, i1 true, i1 %diff.check861
  br i1 %or.cond1305, label %._crit_edge.i187.1.preheader, label %vector.main.loop.iter.check863

vector.main.loop.iter.check863:                   ; preds = %iter.check940
  %min.iters.check864 = icmp ult i32 %i.uu, 32
  br i1 %min.iters.check864, label %vec.epilog.ph944, label %vector.ph865

vector.ph865:                                     ; preds = %vector.main.loop.iter.check863
  %n.mod.vf866 = and i64 %wide.trip.count.i, 24
  %n.vec867 = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  br label %vector.body868

vector.body868:                                   ; preds = %pred.store.continue935, %vector.ph865
  %index869 = phi i64 [ 0, %vector.ph865 ], [ %index.next936, %pred.store.continue935 ] ; 34 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.wq, i64 %index869 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 16
  %wide.load870 = load <16 x i8>, ptr %i.and, align 1, !tbaa !29
  %wide.load871 = load <16 x i8>, ptr %i.ane, align 1, !tbaa !29
  %i.anf = icmp eq <16 x i8> %wide.load870, zeroinitializer ; 16 uses
  %i.ang = icmp eq <16 x i8> %wide.load871, zeroinitializer ; 16 uses
  %i.anh = extractelement <16 x i1> %i.anf, i64 0
  br i1 %i.anh, label %pred.store.if872, label %pred.store.continue873

pred.store.if872:                                 ; preds = %vector.body868
  %i.ani = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  store i8 %i.aci, ptr %i.ani, align 1, !tbaa !29
  br label %pred.store.continue873

pred.store.continue873:                           ; preds = %pred.store.if872, %vector.body868
  %i.anj = extractelement <16 x i1> %i.anf, i64 1
  br i1 %i.anj, label %pred.store.if874, label %pred.store.continue875

pred.store.if874:                                 ; preds = %pred.store.continue873
  %i.ank = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 1
  store i8 %i.aci, ptr %i.anl, align 1, !tbaa !29
  br label %pred.store.continue875

pred.store.continue875:                           ; preds = %pred.store.if874, %pred.store.continue873
  %i.anm = extractelement <16 x i1> %i.anf, i64 2
  br i1 %i.anm, label %pred.store.if876, label %pred.store.continue877

pred.store.if876:                                 ; preds = %pred.store.continue875
  %i.ann = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 2
  store i8 %i.aci, ptr %i.ano, align 1, !tbaa !29
  br label %pred.store.continue877

pred.store.continue877:                           ; preds = %pred.store.if876, %pred.store.continue875
  %i.anp = extractelement <16 x i1> %i.anf, i64 3
  br i1 %i.anp, label %pred.store.if878, label %pred.store.continue879

pred.store.if878:                                 ; preds = %pred.store.continue877
  %i.anq = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 3
  store i8 %i.aci, ptr %i.anr, align 1, !tbaa !29
  br label %pred.store.continue879

pred.store.continue879:                           ; preds = %pred.store.if878, %pred.store.continue877
  %i.ans = extractelement <16 x i1> %i.anf, i64 4
  br i1 %i.ans, label %pred.store.if880, label %pred.store.continue881

pred.store.if880:                                 ; preds = %pred.store.continue879
  %i.ant = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 4
  store i8 %i.aci, ptr %i.anu, align 1, !tbaa !29
  br label %pred.store.continue881

pred.store.continue881:                           ; preds = %pred.store.if880, %pred.store.continue879
  %i.anv = extractelement <16 x i1> %i.anf, i64 5
  br i1 %i.anv, label %pred.store.if882, label %pred.store.continue883

pred.store.if882:                                 ; preds = %pred.store.continue881
  %i.anw = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 5
  store i8 %i.aci, ptr %i.anx, align 1, !tbaa !29
  br label %pred.store.continue883

pred.store.continue883:                           ; preds = %pred.store.if882, %pred.store.continue881
  %i.any = extractelement <16 x i1> %i.anf, i64 6
  br i1 %i.any, label %pred.store.if884, label %pred.store.continue885

pred.store.if884:                                 ; preds = %pred.store.continue883
  %i.anz = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 6
  store i8 %i.aci, ptr %i.aoa, align 1, !tbaa !29
  br label %pred.store.continue885

pred.store.continue885:                           ; preds = %pred.store.if884, %pred.store.continue883
  %i.aob = extractelement <16 x i1> %i.anf, i64 7
  br i1 %i.aob, label %pred.store.if886, label %pred.store.continue887

pred.store.if886:                                 ; preds = %pred.store.continue885
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 7
  store i8 %i.aci, ptr %i.aod, align 1, !tbaa !29
  br label %pred.store.continue887

pred.store.continue887:                           ; preds = %pred.store.if886, %pred.store.continue885
  %i.aoe = extractelement <16 x i1> %i.anf, i64 8
  br i1 %i.aoe, label %pred.store.if888, label %pred.store.continue889

pred.store.if888:                                 ; preds = %pred.store.continue887
  %i.aof = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 8
  store i8 %i.aci, ptr %i.aog, align 1, !tbaa !29
  br label %pred.store.continue889

pred.store.continue889:                           ; preds = %pred.store.if888, %pred.store.continue887
  %i.aoh = extractelement <16 x i1> %i.anf, i64 9
  br i1 %i.aoh, label %pred.store.if890, label %pred.store.continue891

pred.store.if890:                                 ; preds = %pred.store.continue889
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 9
  store i8 %i.aci, ptr %i.aoj, align 1, !tbaa !29
  br label %pred.store.continue891

pred.store.continue891:                           ; preds = %pred.store.if890, %pred.store.continue889
  %i.aok = extractelement <16 x i1> %i.anf, i64 10
  br i1 %i.aok, label %pred.store.if892, label %pred.store.continue893

pred.store.if892:                                 ; preds = %pred.store.continue891
  %i.aol = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 10
  store i8 %i.aci, ptr %i.aom, align 1, !tbaa !29
  br label %pred.store.continue893

pred.store.continue893:                           ; preds = %pred.store.if892, %pred.store.continue891
  %i.aon = extractelement <16 x i1> %i.anf, i64 11
  br i1 %i.aon, label %pred.store.if894, label %pred.store.continue895

pred.store.if894:                                 ; preds = %pred.store.continue893
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 11
  store i8 %i.aci, ptr %i.aop, align 1, !tbaa !29
  br label %pred.store.continue895

pred.store.continue895:                           ; preds = %pred.store.if894, %pred.store.continue893
  %i.aoq = extractelement <16 x i1> %i.anf, i64 12
  br i1 %i.aoq, label %pred.store.if896, label %pred.store.continue897

pred.store.if896:                                 ; preds = %pred.store.continue895
  %i.aor = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 12
  store i8 %i.aci, ptr %i.aos, align 1, !tbaa !29
  br label %pred.store.continue897

pred.store.continue897:                           ; preds = %pred.store.if896, %pred.store.continue895
  %i.aot = extractelement <16 x i1> %i.anf, i64 13
  br i1 %i.aot, label %pred.store.if898, label %pred.store.continue899

pred.store.if898:                                 ; preds = %pred.store.continue897
  %i.aou = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 13
  store i8 %i.aci, ptr %i.aov, align 1, !tbaa !29
  br label %pred.store.continue899

pred.store.continue899:                           ; preds = %pred.store.if898, %pred.store.continue897
  %i.aow = extractelement <16 x i1> %i.anf, i64 14
  br i1 %i.aow, label %pred.store.if900, label %pred.store.continue901

pred.store.if900:                                 ; preds = %pred.store.continue899
  %i.aox = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 14
  store i8 %i.aci, ptr %i.aoy, align 1, !tbaa !29
  br label %pred.store.continue901

pred.store.continue901:                           ; preds = %pred.store.if900, %pred.store.continue899
  %i.aoz = extractelement <16 x i1> %i.anf, i64 15
  br i1 %i.aoz, label %pred.store.if902, label %pred.store.continue903

pred.store.if902:                                 ; preds = %pred.store.continue901
  %i.apa = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 15
  store i8 %i.aci, ptr %i.apb, align 1, !tbaa !29
  br label %pred.store.continue903

pred.store.continue903:                           ; preds = %pred.store.if902, %pred.store.continue901
  %i.apc = extractelement <16 x i1> %i.ang, i64 0
  br i1 %i.apc, label %pred.store.if904, label %pred.store.continue905

pred.store.if904:                                 ; preds = %pred.store.continue903
  %i.apd = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 16
  store i8 %i.aci, ptr %i.ape, align 1, !tbaa !29
  br label %pred.store.continue905

pred.store.continue905:                           ; preds = %pred.store.if904, %pred.store.continue903
  %i.apf = extractelement <16 x i1> %i.ang, i64 1
  br i1 %i.apf, label %pred.store.if906, label %pred.store.continue907

pred.store.if906:                                 ; preds = %pred.store.continue905
  %i.apg = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 17
  store i8 %i.aci, ptr %i.aph, align 1, !tbaa !29
  br label %pred.store.continue907

pred.store.continue907:                           ; preds = %pred.store.if906, %pred.store.continue905
  %i.api = extractelement <16 x i1> %i.ang, i64 2
end_hunk_3
begin_hunk_4_@WebPCleanupTransparentArea:bb.a
  br label %pred.store.continue929

pred.store.continue929:                           ; preds = %pred.store.if928, %pred.store.continue927
  %i.aqp = extractelement <16 x i1> %i.ang, i64 13
  br i1 %i.aqp, label %pred.store.if930, label %pred.store.continue931

pred.store.if930:                                 ; preds = %pred.store.continue929
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 29
  store i8 %i.aci, ptr %i.aqr, align 1, !tbaa !29
  br label %pred.store.continue931

pred.store.continue931:                           ; preds = %pred.store.if930, %pred.store.continue929
  %i.aqs = extractelement <16 x i1> %i.ang, i64 14
  br i1 %i.aqs, label %pred.store.if932, label %pred.store.continue933

pred.store.if932:                                 ; preds = %pred.store.continue931
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 30
  store i8 %i.aci, ptr %i.aqu, align 1, !tbaa !29
  br label %pred.store.continue933

pred.store.continue933:                           ; preds = %pred.store.if932, %pred.store.continue931
  %i.aqv = extractelement <16 x i1> %i.ang, i64 15
  br i1 %i.aqv, label %pred.store.if934, label %pred.store.continue935

pred.store.if934:                                 ; preds = %pred.store.continue933
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index869
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 31
  store i8 %i.aci, ptr %i.aqx, align 1, !tbaa !29
  br label %pred.store.continue935

pred.store.continue935:                           ; preds = %pred.store.if934, %pred.store.continue933
  %index.next936 = add nuw i64 %index869, 32      ; 2 uses
  %i.aqy = icmp eq i64 %index.next936, %n.vec867
  br i1 %i.aqy, label %middle.block937, label %vector.body868, !llvm.loop !42

middle.block937:                                  ; preds = %pred.store.continue935
  %cmp.n938 = icmp eq i64 %n.vec867, %wide.trip.count.i
  br i1 %cmp.n938, label %iter.check830, label %vec.epilog.iter.check942

vec.epilog.iter.check942:                         ; preds = %middle.block937
  %min.epilog.iters.check943 = icmp eq i64 %n.mod.vf866, 0
  br i1 %min.epilog.iters.check943, label %._crit_edge.i187.1.preheader, label %vec.epilog.ph944, !prof !36

vec.epilog.ph944:                                 ; preds = %vector.main.loop.iter.check863, %vec.epilog.iter.check942
  %vec.epilog.resume.val939 = phi i64 [ %n.vec867, %vec.epilog.iter.check942 ], [ 0, %vector.main.loop.iter.check863 ]
  %n.vec946 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vec.epilog.vector.body947

vec.epilog.vector.body947:                        ; preds = %pred.store.continue965, %vec.epilog.ph944
  %index948 = phi i64 [ %vec.epilog.resume.val939, %vec.epilog.ph944 ], [ %index.next966, %pred.store.continue965 ] ; 10 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.wq, i64 %index948
  %wide.load949 = load <8 x i8>, ptr %i.aqz, align 1, !tbaa !29
  %i.ara = icmp eq <8 x i8> %wide.load949, zeroinitializer ; 8 uses
  %i.arb = extractelement <8 x i1> %i.ara, i64 0
  br i1 %i.arb, label %pred.store.if950, label %pred.store.continue951

pred.store.if950:                                 ; preds = %vec.epilog.vector.body947
  %i.arc = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index948
  store i8 %i.aci, ptr %i.arc, align 1, !tbaa !29
  br label %pred.store.continue951

pred.store.continue951:                           ; preds = %pred.store.if950, %vec.epilog.vector.body947
  %i.ard = extractelement <8 x i1> %i.ara, i64 1
  br i1 %i.ard, label %pred.store.if952, label %pred.store.continue953

pred.store.if952:                                 ; preds = %pred.store.continue951
  %i.are = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index948
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 1
  store i8 %i.aci, ptr %i.arf, align 1, !tbaa !29
  br label %pred.store.continue953

pred.store.continue953:                           ; preds = %pred.store.if952, %pred.store.continue951
  %i.arg = extractelement <8 x i1> %i.ara, i64 2
  br i1 %i.arg, label %pred.store.if954, label %pred.store.continue955

pred.store.if954:                                 ; preds = %pred.store.continue953
  %i.arh = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index948
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 2
  store i8 %i.aci, ptr %i.ari, align 1, !tbaa !29
  br label %pred.store.continue955

pred.store.continue955:                           ; preds = %pred.store.if954, %pred.store.continue953
  %i.arj = extractelement <8 x i1> %i.ara, i64 3
  br i1 %i.arj, label %pred.store.if956, label %pred.store.continue957

pred.store.if956:                                 ; preds = %pred.store.continue955
  %i.ark = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index948
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 3
  store i8 %i.aci, ptr %i.arl, align 1, !tbaa !29
  br label %pred.store.continue957

pred.store.continue957:                           ; preds = %pred.store.if956, %pred.store.continue955
  %i.arm = extractelement <8 x i1> %i.ara, i64 4
  br i1 %i.arm, label %pred.store.if958, label %pred.store.continue959

pred.store.if958:                                 ; preds = %pred.store.continue957
  %i.arn = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index948
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 4
  store i8 %i.aci, ptr %i.aro, align 1, !tbaa !29
  br label %pred.store.continue959

pred.store.continue959:                           ; preds = %pred.store.if958, %pred.store.continue957
  %i.arp = extractelement <8 x i1> %i.ara, i64 5
  br i1 %i.arp, label %pred.store.if960, label %pred.store.continue961

pred.store.if960:                                 ; preds = %pred.store.continue959
  %i.arq = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index948
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 5
  store i8 %i.aci, ptr %i.arr, align 1, !tbaa !29
  br label %pred.store.continue961

pred.store.continue961:                           ; preds = %pred.store.if960, %pred.store.continue959
  %i.ars = extractelement <8 x i1> %i.ara, i64 6
  br i1 %i.ars, label %pred.store.if962, label %pred.store.continue963

pred.store.if962:                                 ; preds = %pred.store.continue961
  %i.art = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index948
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 6
  store i8 %i.aci, ptr %i.aru, align 1, !tbaa !29
  br label %pred.store.continue963

pred.store.continue963:                           ; preds = %pred.store.if962, %pred.store.continue961
  %i.arv = extractelement <8 x i1> %i.ara, i64 7
  br i1 %i.arv, label %pred.store.if964, label %pred.store.continue965

pred.store.if964:                                 ; preds = %pred.store.continue963
  %i.arw = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index948
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 7
  store i8 %i.aci, ptr %i.arx, align 1, !tbaa !29
  br label %pred.store.continue965

pred.store.continue965:                           ; preds = %pred.store.if964, %pred.store.continue963
  %index.next966 = add nuw i64 %index948, 8       ; 2 uses
  %i.ary = icmp eq i64 %index.next966, %n.vec946
  br i1 %i.ary, label %vec.epilog.middle.block967, label %vec.epilog.vector.body947, !llvm.loop !43

vec.epilog.middle.block967:                       ; preds = %pred.store.continue965
  %cmp.n968 = icmp eq i64 %n.vec946, %wide.trip.count.i
  br i1 %cmp.n968, label %iter.check830, label %._crit_edge.i187.1.preheader

._crit_edge.i187.1.preheader:                     ; preds = %iter.check940, %vec.epilog.iter.check942, %vec.epilog.middle.block967
  %indvars.iv75.i184.2.ph = phi i64 [ 0, %iter.check940 ], [ %n.vec867, %vec.epilog.iter.check942 ], [ %n.vec946, %vec.epilog.middle.block967 ] ; 5 uses
  %xtraiter1388 = and i64 %wide.trip.count.i, 1
  %lcmp.mod1389.not = icmp eq i64 %xtraiter1388, 0
  br i1 %lcmp.mod1389.not, label %._crit_edge.i187.1.prol.loopexit, label %._crit_edge.i187.1.prol

._crit_edge.i187.1.prol:                          ; preds = %._crit_edge.i187.1.preheader
  %i.arz = getelementptr inbounds nuw i8, ptr %i.wq, i64 %indvars.iv75.i184.2.ph
  %i.asa = load i8, ptr %i.arz, align 1, !tbaa !29
  %i.asb = icmp eq i8 %i.asa, 0
  br i1 %i.asb, label %bb.it, label %._crit_edge.i187.1.prol.loopexit.unr-lcssa

bb.it:                                            ; preds = %._crit_edge.i187.1.prol
  %i.asc = getelementptr inbounds nuw i8, ptr %i.wr, i64 %indvars.iv75.i184.2.ph
  store i8 %i.aci, ptr %i.asc, align 1, !tbaa !29
  br label %._crit_edge.i187.1.prol.loopexit.unr-lcssa

._crit_edge.i187.1.prol.loopexit.unr-lcssa:       ; preds = %bb.it, %._crit_edge.i187.1.prol
  %indvars.iv.next76.i185.2.prol = or disjoint i64 %indvars.iv75.i184.2.ph, 1
  br label %._crit_edge.i187.1.prol.loopexit

._crit_edge.i187.1.prol.loopexit:                 ; preds = %._crit_edge.i187.1.prol.loopexit.unr-lcssa, %._crit_edge.i187.1.preheader
  %indvars.iv75.i184.2.unr = phi i64 [ %indvars.iv75.i184.2.ph, %._crit_edge.i187.1.preheader ], [ %indvars.iv.next76.i185.2.prol, %._crit_edge.i187.1.prol.loopexit.unr-lcssa ]
  %i.asd = add nsw i64 %wide.trip.count.i, -1
  %i.ase = icmp eq i64 %indvars.iv75.i184.2.ph, %i.asd
  br i1 %i.ase, label %iter.check830, label %._crit_edge.i187.1

._crit_edge.i187.1:                               ; preds = %._crit_edge.i187.1.prol.loopexit, %bb.iw
  %indvars.iv75.i184.2 = phi i64 [ %indvars.iv.next76.i185.2.1, %bb.iw ], [ %indvars.iv75.i184.2.unr, %._crit_edge.i187.1.prol.loopexit ] ; 4 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.wq, i64 %indvars.iv75.i184.2
  %i.asg = load i8, ptr %i.asf, align 1, !tbaa !29
  %i.ash = icmp eq i8 %i.asg, 0
  br i1 %i.ash, label %bb.iu, label %._crit_edge.i187.1.1

bb.iu:                                            ; preds = %._crit_edge.i187.1
  %i.asi = getelementptr inbounds nuw i8, ptr %i.wr, i64 %indvars.iv75.i184.2
  store i8 %i.aci, ptr %i.asi, align 1, !tbaa !29
  br label %._crit_edge.i187.1.1

._crit_edge.i187.1.1:                             ; preds = %bb.iu, %._crit_edge.i187.1
  %indvars.iv.next76.i185.2 = add nuw nsw i64 %indvars.iv75.i184.2, 1 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.wq, i64 %indvars.iv.next76.i185.2
  %i.ask = load i8, ptr %i.asj, align 1, !tbaa !29
  %i.asl = icmp eq i8 %i.ask, 0
  br i1 %i.asl, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %._crit_edge.i187.1.1
  %i.asm = getelementptr inbounds nuw i8, ptr %i.wr, i64 %indvars.iv.next76.i185.2
  store i8 %i.aci, ptr %i.asm, align 1, !tbaa !29
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %._crit_edge.i187.1.1
  %indvars.iv.next76.i185.2.1 = add nuw nsw i64 %indvars.iv75.i184.2, 2 ; 2 uses
  %exitcond79.not.i186.2.1 = icmp eq i64 %indvars.iv.next76.i185.2.1, %wide.trip.count.i
  br i1 %exitcond79.not.i186.2.1, label %iter.check830, label %._crit_edge.i187.1, !llvm.loop !44

iter.check830:                                    ; preds = %._crit_edge.i187.1.prol.loopexit, %bb.iw, %vec.epilog.middle.block967, %middle.block937
  %min.iters.check752 = icmp ult i32 %i.uu, 8
  %.reass1416 = add i64 %i.hm, %invariant.op1415
  %diff.check751 = icmp ult i64 %.reass1416, 31
  %or.cond1306 = select i1 %min.iters.check752, i1 true, i1 %diff.check751
  br i1 %or.cond1306, label %._crit_edge.i187.2.preheader, label %vector.main.loop.iter.check753

vector.main.loop.iter.check753:                   ; preds = %iter.check830
  %min.iters.check754 = icmp ult i32 %i.uu, 32
  br i1 %min.iters.check754, label %vec.epilog.ph834, label %vector.ph755

vector.ph755:                                     ; preds = %vector.main.loop.iter.check753
  %n.mod.vf756 = and i64 %wide.trip.count.i, 24
  %n.vec757 = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  br label %vector.body758

vector.body758:                                   ; preds = %pred.store.continue825, %vector.ph755
  %index759 = phi i64 [ 0, %vector.ph755 ], [ %index.next826, %pred.store.continue825 ] ; 34 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.xo, i64 %index759 ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 16
  %wide.load760 = load <16 x i8>, ptr %i.asn, align 1, !tbaa !29
  %wide.load761 = load <16 x i8>, ptr %i.aso, align 1, !tbaa !29
  %i.asp = icmp eq <16 x i8> %wide.load760, zeroinitializer ; 16 uses
  %i.asq = icmp eq <16 x i8> %wide.load761, zeroinitializer ; 16 uses
  %i.asr = extractelement <16 x i1> %i.asp, i64 0
  br i1 %i.asr, label %pred.store.if762, label %pred.store.continue763

pred.store.if762:                                 ; preds = %vector.body758
  %i.ass = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  store i8 %i.aci, ptr %i.ass, align 1, !tbaa !29
  br label %pred.store.continue763

pred.store.continue763:                           ; preds = %pred.store.if762, %vector.body758
  %i.ast = extractelement <16 x i1> %i.asp, i64 1
  br i1 %i.ast, label %pred.store.if764, label %pred.store.continue765

pred.store.if764:                                 ; preds = %pred.store.continue763
  %i.asu = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 1
  store i8 %i.aci, ptr %i.asv, align 1, !tbaa !29
  br label %pred.store.continue765

pred.store.continue765:                           ; preds = %pred.store.if764, %pred.store.continue763
  %i.asw = extractelement <16 x i1> %i.asp, i64 2
  br i1 %i.asw, label %pred.store.if766, label %pred.store.continue767

pred.store.if766:                                 ; preds = %pred.store.continue765
  %i.asx = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 2
  store i8 %i.aci, ptr %i.asy, align 1, !tbaa !29
  br label %pred.store.continue767

pred.store.continue767:                           ; preds = %pred.store.if766, %pred.store.continue765
  %i.asz = extractelement <16 x i1> %i.asp, i64 3
  br i1 %i.asz, label %pred.store.if768, label %pred.store.continue769

pred.store.if768:                                 ; preds = %pred.store.continue767
  %i.ata = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 3
  store i8 %i.aci, ptr %i.atb, align 1, !tbaa !29
  br label %pred.store.continue769

pred.store.continue769:                           ; preds = %pred.store.if768, %pred.store.continue767
  %i.atc = extractelement <16 x i1> %i.asp, i64 4
  br i1 %i.atc, label %pred.store.if770, label %pred.store.continue771

pred.store.if770:                                 ; preds = %pred.store.continue769
  %i.atd = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 4
  store i8 %i.aci, ptr %i.ate, align 1, !tbaa !29
  br label %pred.store.continue771

pred.store.continue771:                           ; preds = %pred.store.if770, %pred.store.continue769
  %i.atf = extractelement <16 x i1> %i.asp, i64 5
  br i1 %i.atf, label %pred.store.if772, label %pred.store.continue773

pred.store.if772:                                 ; preds = %pred.store.continue771
  %i.atg = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 5
  store i8 %i.aci, ptr %i.ath, align 1, !tbaa !29
  br label %pred.store.continue773

pred.store.continue773:                           ; preds = %pred.store.if772, %pred.store.continue771
  %i.ati = extractelement <16 x i1> %i.asp, i64 6
  br i1 %i.ati, label %pred.store.if774, label %pred.store.continue775

pred.store.if774:                                 ; preds = %pred.store.continue773
  %i.atj = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 6
  store i8 %i.aci, ptr %i.atk, align 1, !tbaa !29
  br label %pred.store.continue775

pred.store.continue775:                           ; preds = %pred.store.if774, %pred.store.continue773
  %i.atl = extractelement <16 x i1> %i.asp, i64 7
  br i1 %i.atl, label %pred.store.if776, label %pred.store.continue777

pred.store.if776:                                 ; preds = %pred.store.continue775
  %i.atm = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 7
  store i8 %i.aci, ptr %i.atn, align 1, !tbaa !29
  br label %pred.store.continue777

pred.store.continue777:                           ; preds = %pred.store.if776, %pred.store.continue775
  %i.ato = extractelement <16 x i1> %i.asp, i64 8
  br i1 %i.ato, label %pred.store.if778, label %pred.store.continue779

pred.store.if778:                                 ; preds = %pred.store.continue777
  %i.atp = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 8
  store i8 %i.aci, ptr %i.atq, align 1, !tbaa !29
  br label %pred.store.continue779

pred.store.continue779:                           ; preds = %pred.store.if778, %pred.store.continue777
  %i.atr = extractelement <16 x i1> %i.asp, i64 9
  br i1 %i.atr, label %pred.store.if780, label %pred.store.continue781

pred.store.if780:                                 ; preds = %pred.store.continue779
  %i.ats = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 9
  store i8 %i.aci, ptr %i.att, align 1, !tbaa !29
  br label %pred.store.continue781

pred.store.continue781:                           ; preds = %pred.store.if780, %pred.store.continue779
  %i.atu = extractelement <16 x i1> %i.asp, i64 10
  br i1 %i.atu, label %pred.store.if782, label %pred.store.continue783

pred.store.if782:                                 ; preds = %pred.store.continue781
  %i.atv = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 10
  store i8 %i.aci, ptr %i.atw, align 1, !tbaa !29
  br label %pred.store.continue783

pred.store.continue783:                           ; preds = %pred.store.if782, %pred.store.continue781
  %i.atx = extractelement <16 x i1> %i.asp, i64 11
  br i1 %i.atx, label %pred.store.if784, label %pred.store.continue785

pred.store.if784:                                 ; preds = %pred.store.continue783
  %i.aty = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 11
  store i8 %i.aci, ptr %i.atz, align 1, !tbaa !29
  br label %pred.store.continue785

pred.store.continue785:                           ; preds = %pred.store.if784, %pred.store.continue783
  %i.aua = extractelement <16 x i1> %i.asp, i64 12
  br i1 %i.aua, label %pred.store.if786, label %pred.store.continue787

pred.store.if786:                                 ; preds = %pred.store.continue785
  %i.aub = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 12
  store i8 %i.aci, ptr %i.auc, align 1, !tbaa !29
  br label %pred.store.continue787

pred.store.continue787:                           ; preds = %pred.store.if786, %pred.store.continue785
  %i.aud = extractelement <16 x i1> %i.asp, i64 13
  br i1 %i.aud, label %pred.store.if788, label %pred.store.continue789

pred.store.if788:                                 ; preds = %pred.store.continue787
  %i.aue = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 13
  store i8 %i.aci, ptr %i.auf, align 1, !tbaa !29
  br label %pred.store.continue789

pred.store.continue789:                           ; preds = %pred.store.if788, %pred.store.continue787
  %i.aug = extractelement <16 x i1> %i.asp, i64 14
  br i1 %i.aug, label %pred.store.if790, label %pred.store.continue791

pred.store.if790:                                 ; preds = %pred.store.continue789
  %i.auh = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 14
  store i8 %i.aci, ptr %i.aui, align 1, !tbaa !29
  br label %pred.store.continue791

pred.store.continue791:                           ; preds = %pred.store.if790, %pred.store.continue789
  %i.auj = extractelement <16 x i1> %i.asp, i64 15
  br i1 %i.auj, label %pred.store.if792, label %pred.store.continue793

pred.store.if792:                                 ; preds = %pred.store.continue791
  %i.auk = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 15
  store i8 %i.aci, ptr %i.aul, align 1, !tbaa !29
  br label %pred.store.continue793

pred.store.continue793:                           ; preds = %pred.store.if792, %pred.store.continue791
  %i.aum = extractelement <16 x i1> %i.asq, i64 0
  br i1 %i.aum, label %pred.store.if794, label %pred.store.continue795

pred.store.if794:                                 ; preds = %pred.store.continue793
  %i.aun = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 16
  store i8 %i.aci, ptr %i.auo, align 1, !tbaa !29
  br label %pred.store.continue795

pred.store.continue795:                           ; preds = %pred.store.if794, %pred.store.continue793
  %i.aup = extractelement <16 x i1> %i.asq, i64 1
  br i1 %i.aup, label %pred.store.if796, label %pred.store.continue797

pred.store.if796:                                 ; preds = %pred.store.continue795
  %i.auq = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 17
  store i8 %i.aci, ptr %i.aur, align 1, !tbaa !29
  br label %pred.store.continue797

pred.store.continue797:                           ; preds = %pred.store.if796, %pred.store.continue795
  %i.aus = extractelement <16 x i1> %i.asq, i64 2
end_hunk_4
begin_hunk_5_@WebPCleanupTransparentArea:bb.a
  br label %pred.store.continue819

pred.store.continue819:                           ; preds = %pred.store.if818, %pred.store.continue817
  %i.avz = extractelement <16 x i1> %i.asq, i64 13
  br i1 %i.avz, label %pred.store.if820, label %pred.store.continue821

pred.store.if820:                                 ; preds = %pred.store.continue819
  %i.awa = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 29
  store i8 %i.aci, ptr %i.awb, align 1, !tbaa !29
  br label %pred.store.continue821

pred.store.continue821:                           ; preds = %pred.store.if820, %pred.store.continue819
  %i.awc = extractelement <16 x i1> %i.asq, i64 14
  br i1 %i.awc, label %pred.store.if822, label %pred.store.continue823

pred.store.if822:                                 ; preds = %pred.store.continue821
  %i.awd = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 30
  store i8 %i.aci, ptr %i.awe, align 1, !tbaa !29
  br label %pred.store.continue823

pred.store.continue823:                           ; preds = %pred.store.if822, %pred.store.continue821
  %i.awf = extractelement <16 x i1> %i.asq, i64 15
  br i1 %i.awf, label %pred.store.if824, label %pred.store.continue825

pred.store.if824:                                 ; preds = %pred.store.continue823
  %i.awg = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index759
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 31
  store i8 %i.aci, ptr %i.awh, align 1, !tbaa !29
  br label %pred.store.continue825

pred.store.continue825:                           ; preds = %pred.store.if824, %pred.store.continue823
  %index.next826 = add nuw i64 %index759, 32      ; 2 uses
  %i.awi = icmp eq i64 %index.next826, %n.vec757
  br i1 %i.awi, label %middle.block827, label %vector.body758, !llvm.loop !45

middle.block827:                                  ; preds = %pred.store.continue825
  %cmp.n828 = icmp eq i64 %n.vec757, %wide.trip.count.i
  br i1 %cmp.n828, label %iter.check720, label %vec.epilog.iter.check832

vec.epilog.iter.check832:                         ; preds = %middle.block827
  %min.epilog.iters.check833 = icmp eq i64 %n.mod.vf756, 0
  br i1 %min.epilog.iters.check833, label %._crit_edge.i187.2.preheader, label %vec.epilog.ph834, !prof !36

vec.epilog.ph834:                                 ; preds = %vector.main.loop.iter.check753, %vec.epilog.iter.check832
  %vec.epilog.resume.val829 = phi i64 [ %n.vec757, %vec.epilog.iter.check832 ], [ 0, %vector.main.loop.iter.check753 ]
  %n.vec836 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vec.epilog.vector.body837

vec.epilog.vector.body837:                        ; preds = %pred.store.continue855, %vec.epilog.ph834
  %index838 = phi i64 [ %vec.epilog.resume.val829, %vec.epilog.ph834 ], [ %index.next856, %pred.store.continue855 ] ; 10 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %i.xo, i64 %index838
  %wide.load839 = load <8 x i8>, ptr %i.awj, align 1, !tbaa !29
  %i.awk = icmp eq <8 x i8> %wide.load839, zeroinitializer ; 8 uses
  %i.awl = extractelement <8 x i1> %i.awk, i64 0
  br i1 %i.awl, label %pred.store.if840, label %pred.store.continue841

pred.store.if840:                                 ; preds = %vec.epilog.vector.body837
  %i.awm = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index838
  store i8 %i.aci, ptr %i.awm, align 1, !tbaa !29
  br label %pred.store.continue841

pred.store.continue841:                           ; preds = %pred.store.if840, %vec.epilog.vector.body837
  %i.awn = extractelement <8 x i1> %i.awk, i64 1
  br i1 %i.awn, label %pred.store.if842, label %pred.store.continue843

pred.store.if842:                                 ; preds = %pred.store.continue841
  %i.awo = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index838
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 1
  store i8 %i.aci, ptr %i.awp, align 1, !tbaa !29
  br label %pred.store.continue843

pred.store.continue843:                           ; preds = %pred.store.if842, %pred.store.continue841
  %i.awq = extractelement <8 x i1> %i.awk, i64 2
  br i1 %i.awq, label %pred.store.if844, label %pred.store.continue845

pred.store.if844:                                 ; preds = %pred.store.continue843
  %i.awr = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index838
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 2
  store i8 %i.aci, ptr %i.aws, align 1, !tbaa !29
  br label %pred.store.continue845

pred.store.continue845:                           ; preds = %pred.store.if844, %pred.store.continue843
  %i.awt = extractelement <8 x i1> %i.awk, i64 3
  br i1 %i.awt, label %pred.store.if846, label %pred.store.continue847

pred.store.if846:                                 ; preds = %pred.store.continue845
  %i.awu = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index838
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 3
  store i8 %i.aci, ptr %i.awv, align 1, !tbaa !29
  br label %pred.store.continue847

pred.store.continue847:                           ; preds = %pred.store.if846, %pred.store.continue845
  %i.aww = extractelement <8 x i1> %i.awk, i64 4
  br i1 %i.aww, label %pred.store.if848, label %pred.store.continue849

pred.store.if848:                                 ; preds = %pred.store.continue847
  %i.awx = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index838
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 4
  store i8 %i.aci, ptr %i.awy, align 1, !tbaa !29
  br label %pred.store.continue849

pred.store.continue849:                           ; preds = %pred.store.if848, %pred.store.continue847
  %i.awz = extractelement <8 x i1> %i.awk, i64 5
  br i1 %i.awz, label %pred.store.if850, label %pred.store.continue851

pred.store.if850:                                 ; preds = %pred.store.continue849
  %i.axa = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index838
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 5
  store i8 %i.aci, ptr %i.axb, align 1, !tbaa !29
  br label %pred.store.continue851

pred.store.continue851:                           ; preds = %pred.store.if850, %pred.store.continue849
  %i.axc = extractelement <8 x i1> %i.awk, i64 6
  br i1 %i.axc, label %pred.store.if852, label %pred.store.continue853

pred.store.if852:                                 ; preds = %pred.store.continue851
  %i.axd = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index838
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 6
  store i8 %i.aci, ptr %i.axe, align 1, !tbaa !29
  br label %pred.store.continue853

pred.store.continue853:                           ; preds = %pred.store.if852, %pred.store.continue851
  %i.axf = extractelement <8 x i1> %i.awk, i64 7
  br i1 %i.axf, label %pred.store.if854, label %pred.store.continue855

pred.store.if854:                                 ; preds = %pred.store.continue853
  %i.axg = getelementptr inbounds nuw i8, ptr %i.xp, i64 %index838
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 7
  store i8 %i.aci, ptr %i.axh, align 1, !tbaa !29
  br label %pred.store.continue855

pred.store.continue855:                           ; preds = %pred.store.if854, %pred.store.continue853
  %index.next856 = add nuw i64 %index838, 8       ; 2 uses
  %i.axi = icmp eq i64 %index.next856, %n.vec836
  br i1 %i.axi, label %vec.epilog.middle.block857, label %vec.epilog.vector.body837, !llvm.loop !46

vec.epilog.middle.block857:                       ; preds = %pred.store.continue855
  %cmp.n858 = icmp eq i64 %n.vec836, %wide.trip.count.i
  br i1 %cmp.n858, label %iter.check720, label %._crit_edge.i187.2.preheader

._crit_edge.i187.2.preheader:                     ; preds = %iter.check830, %vec.epilog.iter.check832, %vec.epilog.middle.block857
  %indvars.iv75.i184.3.ph = phi i64 [ 0, %iter.check830 ], [ %n.vec757, %vec.epilog.iter.check832 ], [ %n.vec836, %vec.epilog.middle.block857 ] ; 5 uses
  %xtraiter1390 = and i64 %wide.trip.count.i, 1
  %lcmp.mod1391.not = icmp eq i64 %xtraiter1390, 0
  br i1 %lcmp.mod1391.not, label %._crit_edge.i187.2.prol.loopexit, label %._crit_edge.i187.2.prol

._crit_edge.i187.2.prol:                          ; preds = %._crit_edge.i187.2.preheader
  %i.axj = getelementptr inbounds nuw i8, ptr %i.xo, i64 %indvars.iv75.i184.3.ph
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !29
  %i.axl = icmp eq i8 %i.axk, 0
  br i1 %i.axl, label %bb.ix, label %._crit_edge.i187.2.prol.loopexit.unr-lcssa

bb.ix:                                            ; preds = %._crit_edge.i187.2.prol
  %i.axm = getelementptr inbounds nuw i8, ptr %i.xp, i64 %indvars.iv75.i184.3.ph
  store i8 %i.aci, ptr %i.axm, align 1, !tbaa !29
  br label %._crit_edge.i187.2.prol.loopexit.unr-lcssa

._crit_edge.i187.2.prol.loopexit.unr-lcssa:       ; preds = %bb.ix, %._crit_edge.i187.2.prol
  %indvars.iv.next76.i185.3.prol = or disjoint i64 %indvars.iv75.i184.3.ph, 1
  br label %._crit_edge.i187.2.prol.loopexit

._crit_edge.i187.2.prol.loopexit:                 ; preds = %._crit_edge.i187.2.prol.loopexit.unr-lcssa, %._crit_edge.i187.2.preheader
  %indvars.iv75.i184.3.unr = phi i64 [ %indvars.iv75.i184.3.ph, %._crit_edge.i187.2.preheader ], [ %indvars.iv.next76.i185.3.prol, %._crit_edge.i187.2.prol.loopexit.unr-lcssa ]
  %i.axn = add nsw i64 %wide.trip.count.i, -1
  %i.axo = icmp eq i64 %indvars.iv75.i184.3.ph, %i.axn
  br i1 %i.axo, label %iter.check720, label %._crit_edge.i187.2

._crit_edge.i187.2:                               ; preds = %._crit_edge.i187.2.prol.loopexit, %bb.ja
  %indvars.iv75.i184.3 = phi i64 [ %indvars.iv.next76.i185.3.1, %bb.ja ], [ %indvars.iv75.i184.3.unr, %._crit_edge.i187.2.prol.loopexit ] ; 4 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %i.xo, i64 %indvars.iv75.i184.3
  %i.axq = load i8, ptr %i.axp, align 1, !tbaa !29
  %i.axr = icmp eq i8 %i.axq, 0
  br i1 %i.axr, label %bb.iy, label %._crit_edge.i187.2.1

bb.iy:                                            ; preds = %._crit_edge.i187.2
  %i.axs = getelementptr inbounds nuw i8, ptr %i.xp, i64 %indvars.iv75.i184.3
  store i8 %i.aci, ptr %i.axs, align 1, !tbaa !29
  br label %._crit_edge.i187.2.1

._crit_edge.i187.2.1:                             ; preds = %bb.iy, %._crit_edge.i187.2
  %indvars.iv.next76.i185.3 = add nuw nsw i64 %indvars.iv75.i184.3, 1 ; 2 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.xo, i64 %indvars.iv.next76.i185.3
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !29
  %i.axv = icmp eq i8 %i.axu, 0
  br i1 %i.axv, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %._crit_edge.i187.2.1
  %i.axw = getelementptr inbounds nuw i8, ptr %i.xp, i64 %indvars.iv.next76.i185.3
  store i8 %i.aci, ptr %i.axw, align 1, !tbaa !29
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %._crit_edge.i187.2.1
  %indvars.iv.next76.i185.3.1 = add nuw nsw i64 %indvars.iv75.i184.3, 2 ; 2 uses
  %exitcond79.not.i186.3.1 = icmp eq i64 %indvars.iv.next76.i185.3.1, %wide.trip.count.i
  br i1 %exitcond79.not.i186.3.1, label %iter.check720, label %._crit_edge.i187.2, !llvm.loop !47

iter.check720:                                    ; preds = %._crit_edge.i187.2.prol.loopexit, %bb.ja, %vec.epilog.middle.block857, %middle.block827
  %min.iters.check642 = icmp ult i32 %i.uu, 8
  %.reass1418 = add i64 %i.hn, %invariant.op1417
  %diff.check641 = icmp ult i64 %.reass1418, 31
  %or.cond1307 = select i1 %min.iters.check642, i1 true, i1 %diff.check641
  br i1 %or.cond1307, label %._crit_edge.i187.3.preheader, label %vector.main.loop.iter.check643

vector.main.loop.iter.check643:                   ; preds = %iter.check720
  %min.iters.check644 = icmp ult i32 %i.uu, 32
  br i1 %min.iters.check644, label %vec.epilog.ph724, label %vector.ph645

vector.ph645:                                     ; preds = %vector.main.loop.iter.check643
  %n.mod.vf646 = and i64 %wide.trip.count.i, 24
  %n.vec647 = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  br label %vector.body648

vector.body648:                                   ; preds = %pred.store.continue715, %vector.ph645
  %index649 = phi i64 [ 0, %vector.ph645 ], [ %index.next716, %pred.store.continue715 ] ; 34 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.ym, i64 %index649 ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 16
  %wide.load650 = load <16 x i8>, ptr %i.axx, align 1, !tbaa !29
  %wide.load651 = load <16 x i8>, ptr %i.axy, align 1, !tbaa !29
  %i.axz = icmp eq <16 x i8> %wide.load650, zeroinitializer ; 16 uses
  %i.aya = icmp eq <16 x i8> %wide.load651, zeroinitializer ; 16 uses
  %i.ayb = extractelement <16 x i1> %i.axz, i64 0
  br i1 %i.ayb, label %pred.store.if652, label %pred.store.continue653

pred.store.if652:                                 ; preds = %vector.body648
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  store i8 %i.aci, ptr %i.ayc, align 1, !tbaa !29
  br label %pred.store.continue653

pred.store.continue653:                           ; preds = %pred.store.if652, %vector.body648
  %i.ayd = extractelement <16 x i1> %i.axz, i64 1
  br i1 %i.ayd, label %pred.store.if654, label %pred.store.continue655

pred.store.if654:                                 ; preds = %pred.store.continue653
  %i.aye = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 1
  store i8 %i.aci, ptr %i.ayf, align 1, !tbaa !29
  br label %pred.store.continue655

pred.store.continue655:                           ; preds = %pred.store.if654, %pred.store.continue653
  %i.ayg = extractelement <16 x i1> %i.axz, i64 2
  br i1 %i.ayg, label %pred.store.if656, label %pred.store.continue657

pred.store.if656:                                 ; preds = %pred.store.continue655
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 2
  store i8 %i.aci, ptr %i.ayi, align 1, !tbaa !29
  br label %pred.store.continue657

pred.store.continue657:                           ; preds = %pred.store.if656, %pred.store.continue655
  %i.ayj = extractelement <16 x i1> %i.axz, i64 3
  br i1 %i.ayj, label %pred.store.if658, label %pred.store.continue659

pred.store.if658:                                 ; preds = %pred.store.continue657
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 3
  store i8 %i.aci, ptr %i.ayl, align 1, !tbaa !29
  br label %pred.store.continue659

pred.store.continue659:                           ; preds = %pred.store.if658, %pred.store.continue657
  %i.aym = extractelement <16 x i1> %i.axz, i64 4
  br i1 %i.aym, label %pred.store.if660, label %pred.store.continue661

pred.store.if660:                                 ; preds = %pred.store.continue659
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 4
  store i8 %i.aci, ptr %i.ayo, align 1, !tbaa !29
  br label %pred.store.continue661

pred.store.continue661:                           ; preds = %pred.store.if660, %pred.store.continue659
  %i.ayp = extractelement <16 x i1> %i.axz, i64 5
  br i1 %i.ayp, label %pred.store.if662, label %pred.store.continue663

pred.store.if662:                                 ; preds = %pred.store.continue661
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 5
  store i8 %i.aci, ptr %i.ayr, align 1, !tbaa !29
  br label %pred.store.continue663

pred.store.continue663:                           ; preds = %pred.store.if662, %pred.store.continue661
  %i.ays = extractelement <16 x i1> %i.axz, i64 6
  br i1 %i.ays, label %pred.store.if664, label %pred.store.continue665

pred.store.if664:                                 ; preds = %pred.store.continue663
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 6
  store i8 %i.aci, ptr %i.ayu, align 1, !tbaa !29
  br label %pred.store.continue665

pred.store.continue665:                           ; preds = %pred.store.if664, %pred.store.continue663
  %i.ayv = extractelement <16 x i1> %i.axz, i64 7
  br i1 %i.ayv, label %pred.store.if666, label %pred.store.continue667

pred.store.if666:                                 ; preds = %pred.store.continue665
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 7
  store i8 %i.aci, ptr %i.ayx, align 1, !tbaa !29
  br label %pred.store.continue667

pred.store.continue667:                           ; preds = %pred.store.if666, %pred.store.continue665
  %i.ayy = extractelement <16 x i1> %i.axz, i64 8
  br i1 %i.ayy, label %pred.store.if668, label %pred.store.continue669

pred.store.if668:                                 ; preds = %pred.store.continue667
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 8
  store i8 %i.aci, ptr %i.aza, align 1, !tbaa !29
  br label %pred.store.continue669

pred.store.continue669:                           ; preds = %pred.store.if668, %pred.store.continue667
  %i.azb = extractelement <16 x i1> %i.axz, i64 9
  br i1 %i.azb, label %pred.store.if670, label %pred.store.continue671

pred.store.if670:                                 ; preds = %pred.store.continue669
  %i.azc = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 9
  store i8 %i.aci, ptr %i.azd, align 1, !tbaa !29
  br label %pred.store.continue671

pred.store.continue671:                           ; preds = %pred.store.if670, %pred.store.continue669
  %i.aze = extractelement <16 x i1> %i.axz, i64 10
  br i1 %i.aze, label %pred.store.if672, label %pred.store.continue673

pred.store.if672:                                 ; preds = %pred.store.continue671
  %i.azf = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 10
  store i8 %i.aci, ptr %i.azg, align 1, !tbaa !29
  br label %pred.store.continue673

pred.store.continue673:                           ; preds = %pred.store.if672, %pred.store.continue671
  %i.azh = extractelement <16 x i1> %i.axz, i64 11
  br i1 %i.azh, label %pred.store.if674, label %pred.store.continue675

pred.store.if674:                                 ; preds = %pred.store.continue673
  %i.azi = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 11
  store i8 %i.aci, ptr %i.azj, align 1, !tbaa !29
  br label %pred.store.continue675

pred.store.continue675:                           ; preds = %pred.store.if674, %pred.store.continue673
  %i.azk = extractelement <16 x i1> %i.axz, i64 12
  br i1 %i.azk, label %pred.store.if676, label %pred.store.continue677

pred.store.if676:                                 ; preds = %pred.store.continue675
  %i.azl = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 12
  store i8 %i.aci, ptr %i.azm, align 1, !tbaa !29
  br label %pred.store.continue677

pred.store.continue677:                           ; preds = %pred.store.if676, %pred.store.continue675
  %i.azn = extractelement <16 x i1> %i.axz, i64 13
  br i1 %i.azn, label %pred.store.if678, label %pred.store.continue679

pred.store.if678:                                 ; preds = %pred.store.continue677
  %i.azo = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 13
  store i8 %i.aci, ptr %i.azp, align 1, !tbaa !29
  br label %pred.store.continue679

pred.store.continue679:                           ; preds = %pred.store.if678, %pred.store.continue677
  %i.azq = extractelement <16 x i1> %i.axz, i64 14
  br i1 %i.azq, label %pred.store.if680, label %pred.store.continue681

pred.store.if680:                                 ; preds = %pred.store.continue679
  %i.azr = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 14
  store i8 %i.aci, ptr %i.azs, align 1, !tbaa !29
  br label %pred.store.continue681

pred.store.continue681:                           ; preds = %pred.store.if680, %pred.store.continue679
  %i.azt = extractelement <16 x i1> %i.axz, i64 15
  br i1 %i.azt, label %pred.store.if682, label %pred.store.continue683

pred.store.if682:                                 ; preds = %pred.store.continue681
  %i.azu = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 15
  store i8 %i.aci, ptr %i.azv, align 1, !tbaa !29
  br label %pred.store.continue683

pred.store.continue683:                           ; preds = %pred.store.if682, %pred.store.continue681
  %i.azw = extractelement <16 x i1> %i.aya, i64 0
  br i1 %i.azw, label %pred.store.if684, label %pred.store.continue685

pred.store.if684:                                 ; preds = %pred.store.continue683
  %i.azx = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 16
  store i8 %i.aci, ptr %i.azy, align 1, !tbaa !29
  br label %pred.store.continue685

pred.store.continue685:                           ; preds = %pred.store.if684, %pred.store.continue683
  %i.azz = extractelement <16 x i1> %i.aya, i64 1
  br i1 %i.azz, label %pred.store.if686, label %pred.store.continue687

pred.store.if686:                                 ; preds = %pred.store.continue685
  %i.baa = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 17
  store i8 %i.aci, ptr %i.bab, align 1, !tbaa !29
  br label %pred.store.continue687

pred.store.continue687:                           ; preds = %pred.store.if686, %pred.store.continue685
  %i.bac = extractelement <16 x i1> %i.aya, i64 2
end_hunk_5
begin_hunk_6_@WebPCleanupTransparentArea:bb.a
  br label %pred.store.continue709

pred.store.continue709:                           ; preds = %pred.store.if708, %pred.store.continue707
  %i.bbj = extractelement <16 x i1> %i.aya, i64 13
  br i1 %i.bbj, label %pred.store.if710, label %pred.store.continue711

pred.store.if710:                                 ; preds = %pred.store.continue709
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 29
  store i8 %i.aci, ptr %i.bbl, align 1, !tbaa !29
  br label %pred.store.continue711

pred.store.continue711:                           ; preds = %pred.store.if710, %pred.store.continue709
  %i.bbm = extractelement <16 x i1> %i.aya, i64 14
  br i1 %i.bbm, label %pred.store.if712, label %pred.store.continue713

pred.store.if712:                                 ; preds = %pred.store.continue711
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 30
  store i8 %i.aci, ptr %i.bbo, align 1, !tbaa !29
  br label %pred.store.continue713

pred.store.continue713:                           ; preds = %pred.store.if712, %pred.store.continue711
  %i.bbp = extractelement <16 x i1> %i.aya, i64 15
  br i1 %i.bbp, label %pred.store.if714, label %pred.store.continue715

pred.store.if714:                                 ; preds = %pred.store.continue713
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index649
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 31
  store i8 %i.aci, ptr %i.bbr, align 1, !tbaa !29
  br label %pred.store.continue715

pred.store.continue715:                           ; preds = %pred.store.if714, %pred.store.continue713
  %index.next716 = add nuw i64 %index649, 32      ; 2 uses
  %i.bbs = icmp eq i64 %index.next716, %n.vec647
  br i1 %i.bbs, label %middle.block717, label %vector.body648, !llvm.loop !48

middle.block717:                                  ; preds = %pred.store.continue715
  %cmp.n718 = icmp eq i64 %n.vec647, %wide.trip.count.i
  br i1 %cmp.n718, label %iter.check610, label %vec.epilog.iter.check722

vec.epilog.iter.check722:                         ; preds = %middle.block717
  %min.epilog.iters.check723 = icmp eq i64 %n.mod.vf646, 0
  br i1 %min.epilog.iters.check723, label %._crit_edge.i187.3.preheader, label %vec.epilog.ph724, !prof !36

vec.epilog.ph724:                                 ; preds = %vector.main.loop.iter.check643, %vec.epilog.iter.check722
  %vec.epilog.resume.val719 = phi i64 [ %n.vec647, %vec.epilog.iter.check722 ], [ 0, %vector.main.loop.iter.check643 ]
  %n.vec726 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vec.epilog.vector.body727

vec.epilog.vector.body727:                        ; preds = %pred.store.continue745, %vec.epilog.ph724
  %index728 = phi i64 [ %vec.epilog.resume.val719, %vec.epilog.ph724 ], [ %index.next746, %pred.store.continue745 ] ; 10 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.ym, i64 %index728
  %wide.load729 = load <8 x i8>, ptr %i.bbt, align 1, !tbaa !29
  %i.bbu = icmp eq <8 x i8> %wide.load729, zeroinitializer ; 8 uses
  %i.bbv = extractelement <8 x i1> %i.bbu, i64 0
  br i1 %i.bbv, label %pred.store.if730, label %pred.store.continue731

pred.store.if730:                                 ; preds = %vec.epilog.vector.body727
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index728
  store i8 %i.aci, ptr %i.bbw, align 1, !tbaa !29
  br label %pred.store.continue731

pred.store.continue731:                           ; preds = %pred.store.if730, %vec.epilog.vector.body727
  %i.bbx = extractelement <8 x i1> %i.bbu, i64 1
  br i1 %i.bbx, label %pred.store.if732, label %pred.store.continue733

pred.store.if732:                                 ; preds = %pred.store.continue731
  %i.bby = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index728
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 1
  store i8 %i.aci, ptr %i.bbz, align 1, !tbaa !29
  br label %pred.store.continue733

pred.store.continue733:                           ; preds = %pred.store.if732, %pred.store.continue731
  %i.bca = extractelement <8 x i1> %i.bbu, i64 2
  br i1 %i.bca, label %pred.store.if734, label %pred.store.continue735

pred.store.if734:                                 ; preds = %pred.store.continue733
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index728
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 2
  store i8 %i.aci, ptr %i.bcc, align 1, !tbaa !29
  br label %pred.store.continue735

pred.store.continue735:                           ; preds = %pred.store.if734, %pred.store.continue733
  %i.bcd = extractelement <8 x i1> %i.bbu, i64 3
  br i1 %i.bcd, label %pred.store.if736, label %pred.store.continue737

pred.store.if736:                                 ; preds = %pred.store.continue735
  %i.bce = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index728
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 3
  store i8 %i.aci, ptr %i.bcf, align 1, !tbaa !29
  br label %pred.store.continue737

pred.store.continue737:                           ; preds = %pred.store.if736, %pred.store.continue735
  %i.bcg = extractelement <8 x i1> %i.bbu, i64 4
  br i1 %i.bcg, label %pred.store.if738, label %pred.store.continue739

pred.store.if738:                                 ; preds = %pred.store.continue737
  %i.bch = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index728
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 4
  store i8 %i.aci, ptr %i.bci, align 1, !tbaa !29
  br label %pred.store.continue739

pred.store.continue739:                           ; preds = %pred.store.if738, %pred.store.continue737
  %i.bcj = extractelement <8 x i1> %i.bbu, i64 5
  br i1 %i.bcj, label %pred.store.if740, label %pred.store.continue741

pred.store.if740:                                 ; preds = %pred.store.continue739
  %i.bck = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index728
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 5
  store i8 %i.aci, ptr %i.bcl, align 1, !tbaa !29
  br label %pred.store.continue741

pred.store.continue741:                           ; preds = %pred.store.if740, %pred.store.continue739
  %i.bcm = extractelement <8 x i1> %i.bbu, i64 6
  br i1 %i.bcm, label %pred.store.if742, label %pred.store.continue743

pred.store.if742:                                 ; preds = %pred.store.continue741
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index728
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 6
  store i8 %i.aci, ptr %i.bco, align 1, !tbaa !29
  br label %pred.store.continue743

pred.store.continue743:                           ; preds = %pred.store.if742, %pred.store.continue741
  %i.bcp = extractelement <8 x i1> %i.bbu, i64 7
  br i1 %i.bcp, label %pred.store.if744, label %pred.store.continue745

pred.store.if744:                                 ; preds = %pred.store.continue743
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.yn, i64 %index728
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 7
  store i8 %i.aci, ptr %i.bcr, align 1, !tbaa !29
  br label %pred.store.continue745

pred.store.continue745:                           ; preds = %pred.store.if744, %pred.store.continue743
  %index.next746 = add nuw i64 %index728, 8       ; 2 uses
  %i.bcs = icmp eq i64 %index.next746, %n.vec726
  br i1 %i.bcs, label %vec.epilog.middle.block747, label %vec.epilog.vector.body727, !llvm.loop !49

vec.epilog.middle.block747:                       ; preds = %pred.store.continue745
  %cmp.n748 = icmp eq i64 %n.vec726, %wide.trip.count.i
  br i1 %cmp.n748, label %iter.check610, label %._crit_edge.i187.3.preheader

._crit_edge.i187.3.preheader:                     ; preds = %iter.check720, %vec.epilog.iter.check722, %vec.epilog.middle.block747
  %indvars.iv75.i184.4.ph = phi i64 [ 0, %iter.check720 ], [ %n.vec647, %vec.epilog.iter.check722 ], [ %n.vec726, %vec.epilog.middle.block747 ] ; 5 uses
  %xtraiter1392 = and i64 %wide.trip.count.i, 1
  %lcmp.mod1393.not = icmp eq i64 %xtraiter1392, 0
  br i1 %lcmp.mod1393.not, label %._crit_edge.i187.3.prol.loopexit, label %._crit_edge.i187.3.prol

._crit_edge.i187.3.prol:                          ; preds = %._crit_edge.i187.3.preheader
  %i.bct = getelementptr inbounds nuw i8, ptr %i.ym, i64 %indvars.iv75.i184.4.ph
  %i.bcu = load i8, ptr %i.bct, align 1, !tbaa !29
  %i.bcv = icmp eq i8 %i.bcu, 0
  br i1 %i.bcv, label %bb.jb, label %._crit_edge.i187.3.prol.loopexit.unr-lcssa

bb.jb:                                            ; preds = %._crit_edge.i187.3.prol
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.yn, i64 %indvars.iv75.i184.4.ph
  store i8 %i.aci, ptr %i.bcw, align 1, !tbaa !29
  br label %._crit_edge.i187.3.prol.loopexit.unr-lcssa

._crit_edge.i187.3.prol.loopexit.unr-lcssa:       ; preds = %bb.jb, %._crit_edge.i187.3.prol
  %indvars.iv.next76.i185.4.prol = or disjoint i64 %indvars.iv75.i184.4.ph, 1
  br label %._crit_edge.i187.3.prol.loopexit

._crit_edge.i187.3.prol.loopexit:                 ; preds = %._crit_edge.i187.3.prol.loopexit.unr-lcssa, %._crit_edge.i187.3.preheader
  %indvars.iv75.i184.4.unr = phi i64 [ %indvars.iv75.i184.4.ph, %._crit_edge.i187.3.preheader ], [ %indvars.iv.next76.i185.4.prol, %._crit_edge.i187.3.prol.loopexit.unr-lcssa ]
  %i.bcx = add nsw i64 %wide.trip.count.i, -1
  %i.bcy = icmp eq i64 %indvars.iv75.i184.4.ph, %i.bcx
  br i1 %i.bcy, label %iter.check610, label %._crit_edge.i187.3

._crit_edge.i187.3:                               ; preds = %._crit_edge.i187.3.prol.loopexit, %bb.je
  %indvars.iv75.i184.4 = phi i64 [ %indvars.iv.next76.i185.4.1, %bb.je ], [ %indvars.iv75.i184.4.unr, %._crit_edge.i187.3.prol.loopexit ] ; 4 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.ym, i64 %indvars.iv75.i184.4
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !29
  %i.bdb = icmp eq i8 %i.bda, 0
  br i1 %i.bdb, label %bb.jc, label %._crit_edge.i187.3.1

bb.jc:                                            ; preds = %._crit_edge.i187.3
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.yn, i64 %indvars.iv75.i184.4
  store i8 %i.aci, ptr %i.bdc, align 1, !tbaa !29
  br label %._crit_edge.i187.3.1

._crit_edge.i187.3.1:                             ; preds = %bb.jc, %._crit_edge.i187.3
  %indvars.iv.next76.i185.4 = add nuw nsw i64 %indvars.iv75.i184.4, 1 ; 2 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.ym, i64 %indvars.iv.next76.i185.4
  %i.bde = load i8, ptr %i.bdd, align 1, !tbaa !29
  %i.bdf = icmp eq i8 %i.bde, 0
  br i1 %i.bdf, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %._crit_edge.i187.3.1
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.yn, i64 %indvars.iv.next76.i185.4
  store i8 %i.aci, ptr %i.bdg, align 1, !tbaa !29
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %._crit_edge.i187.3.1
  %indvars.iv.next76.i185.4.1 = add nuw nsw i64 %indvars.iv75.i184.4, 2 ; 2 uses
  %exitcond79.not.i186.4.1 = icmp eq i64 %indvars.iv.next76.i185.4.1, %wide.trip.count.i
  br i1 %exitcond79.not.i186.4.1, label %iter.check610, label %._crit_edge.i187.3, !llvm.loop !50

iter.check610:                                    ; preds = %._crit_edge.i187.3.prol.loopexit, %bb.je, %vec.epilog.middle.block747, %middle.block717
  %min.iters.check532 = icmp ult i32 %i.uu, 8
  %.reass1420 = add i64 %i.ho, %invariant.op1419
  %diff.check531 = icmp ult i64 %.reass1420, 31
  %or.cond1308 = select i1 %min.iters.check532, i1 true, i1 %diff.check531
  br i1 %or.cond1308, label %._crit_edge.i187.4.preheader, label %vector.main.loop.iter.check533

vector.main.loop.iter.check533:                   ; preds = %iter.check610
  %min.iters.check534 = icmp ult i32 %i.uu, 32
  br i1 %min.iters.check534, label %vec.epilog.ph614, label %vector.ph535

vector.ph535:                                     ; preds = %vector.main.loop.iter.check533
  %n.mod.vf536 = and i64 %wide.trip.count.i, 24
  %n.vec537 = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  br label %vector.body538

vector.body538:                                   ; preds = %pred.store.continue605, %vector.ph535
  %index539 = phi i64 [ 0, %vector.ph535 ], [ %index.next606, %pred.store.continue605 ] ; 34 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.zk, i64 %index539 ; 2 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 16
  %wide.load540 = load <16 x i8>, ptr %i.bdh, align 1, !tbaa !29
  %wide.load541 = load <16 x i8>, ptr %i.bdi, align 1, !tbaa !29
  %i.bdj = icmp eq <16 x i8> %wide.load540, zeroinitializer ; 16 uses
  %i.bdk = icmp eq <16 x i8> %wide.load541, zeroinitializer ; 16 uses
  %i.bdl = extractelement <16 x i1> %i.bdj, i64 0
  br i1 %i.bdl, label %pred.store.if542, label %pred.store.continue543

pred.store.if542:                                 ; preds = %vector.body538
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  store i8 %i.aci, ptr %i.bdm, align 1, !tbaa !29
  br label %pred.store.continue543

pred.store.continue543:                           ; preds = %pred.store.if542, %vector.body538
  %i.bdn = extractelement <16 x i1> %i.bdj, i64 1
  br i1 %i.bdn, label %pred.store.if544, label %pred.store.continue545

pred.store.if544:                                 ; preds = %pred.store.continue543
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 1
  store i8 %i.aci, ptr %i.bdp, align 1, !tbaa !29
  br label %pred.store.continue545

pred.store.continue545:                           ; preds = %pred.store.if544, %pred.store.continue543
  %i.bdq = extractelement <16 x i1> %i.bdj, i64 2
  br i1 %i.bdq, label %pred.store.if546, label %pred.store.continue547

pred.store.if546:                                 ; preds = %pred.store.continue545
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 2
  store i8 %i.aci, ptr %i.bds, align 1, !tbaa !29
  br label %pred.store.continue547

pred.store.continue547:                           ; preds = %pred.store.if546, %pred.store.continue545
  %i.bdt = extractelement <16 x i1> %i.bdj, i64 3
  br i1 %i.bdt, label %pred.store.if548, label %pred.store.continue549

pred.store.if548:                                 ; preds = %pred.store.continue547
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 3
  store i8 %i.aci, ptr %i.bdv, align 1, !tbaa !29
  br label %pred.store.continue549

pred.store.continue549:                           ; preds = %pred.store.if548, %pred.store.continue547
  %i.bdw = extractelement <16 x i1> %i.bdj, i64 4
  br i1 %i.bdw, label %pred.store.if550, label %pred.store.continue551

pred.store.if550:                                 ; preds = %pred.store.continue549
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 4
  store i8 %i.aci, ptr %i.bdy, align 1, !tbaa !29
  br label %pred.store.continue551

pred.store.continue551:                           ; preds = %pred.store.if550, %pred.store.continue549
  %i.bdz = extractelement <16 x i1> %i.bdj, i64 5
  br i1 %i.bdz, label %pred.store.if552, label %pred.store.continue553

pred.store.if552:                                 ; preds = %pred.store.continue551
  %i.bea = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 5
  store i8 %i.aci, ptr %i.beb, align 1, !tbaa !29
  br label %pred.store.continue553

pred.store.continue553:                           ; preds = %pred.store.if552, %pred.store.continue551
  %i.bec = extractelement <16 x i1> %i.bdj, i64 6
  br i1 %i.bec, label %pred.store.if554, label %pred.store.continue555

pred.store.if554:                                 ; preds = %pred.store.continue553
  %i.bed = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 6
  store i8 %i.aci, ptr %i.bee, align 1, !tbaa !29
  br label %pred.store.continue555

pred.store.continue555:                           ; preds = %pred.store.if554, %pred.store.continue553
  %i.bef = extractelement <16 x i1> %i.bdj, i64 7
  br i1 %i.bef, label %pred.store.if556, label %pred.store.continue557

pred.store.if556:                                 ; preds = %pred.store.continue555
  %i.beg = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 7
  store i8 %i.aci, ptr %i.beh, align 1, !tbaa !29
  br label %pred.store.continue557

pred.store.continue557:                           ; preds = %pred.store.if556, %pred.store.continue555
  %i.bei = extractelement <16 x i1> %i.bdj, i64 8
  br i1 %i.bei, label %pred.store.if558, label %pred.store.continue559

pred.store.if558:                                 ; preds = %pred.store.continue557
  %i.bej = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 8
  store i8 %i.aci, ptr %i.bek, align 1, !tbaa !29
  br label %pred.store.continue559

pred.store.continue559:                           ; preds = %pred.store.if558, %pred.store.continue557
  %i.bel = extractelement <16 x i1> %i.bdj, i64 9
  br i1 %i.bel, label %pred.store.if560, label %pred.store.continue561

pred.store.if560:                                 ; preds = %pred.store.continue559
  %i.bem = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bem, i64 9
  store i8 %i.aci, ptr %i.ben, align 1, !tbaa !29
  br label %pred.store.continue561

pred.store.continue561:                           ; preds = %pred.store.if560, %pred.store.continue559
  %i.beo = extractelement <16 x i1> %i.bdj, i64 10
  br i1 %i.beo, label %pred.store.if562, label %pred.store.continue563

pred.store.if562:                                 ; preds = %pred.store.continue561
  %i.bep = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 10
  store i8 %i.aci, ptr %i.beq, align 1, !tbaa !29
  br label %pred.store.continue563

pred.store.continue563:                           ; preds = %pred.store.if562, %pred.store.continue561
  %i.ber = extractelement <16 x i1> %i.bdj, i64 11
  br i1 %i.ber, label %pred.store.if564, label %pred.store.continue565

pred.store.if564:                                 ; preds = %pred.store.continue563
  %i.bes = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 11
  store i8 %i.aci, ptr %i.bet, align 1, !tbaa !29
  br label %pred.store.continue565

pred.store.continue565:                           ; preds = %pred.store.if564, %pred.store.continue563
  %i.beu = extractelement <16 x i1> %i.bdj, i64 12
  br i1 %i.beu, label %pred.store.if566, label %pred.store.continue567

pred.store.if566:                                 ; preds = %pred.store.continue565
  %i.bev = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 12
  store i8 %i.aci, ptr %i.bew, align 1, !tbaa !29
  br label %pred.store.continue567

pred.store.continue567:                           ; preds = %pred.store.if566, %pred.store.continue565
  %i.bex = extractelement <16 x i1> %i.bdj, i64 13
  br i1 %i.bex, label %pred.store.if568, label %pred.store.continue569

pred.store.if568:                                 ; preds = %pred.store.continue567
  %i.bey = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 13
  store i8 %i.aci, ptr %i.bez, align 1, !tbaa !29
  br label %pred.store.continue569

pred.store.continue569:                           ; preds = %pred.store.if568, %pred.store.continue567
  %i.bfa = extractelement <16 x i1> %i.bdj, i64 14
  br i1 %i.bfa, label %pred.store.if570, label %pred.store.continue571

pred.store.if570:                                 ; preds = %pred.store.continue569
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 14
  store i8 %i.aci, ptr %i.bfc, align 1, !tbaa !29
  br label %pred.store.continue571

pred.store.continue571:                           ; preds = %pred.store.if570, %pred.store.continue569
  %i.bfd = extractelement <16 x i1> %i.bdj, i64 15
  br i1 %i.bfd, label %pred.store.if572, label %pred.store.continue573

pred.store.if572:                                 ; preds = %pred.store.continue571
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 15
  store i8 %i.aci, ptr %i.bff, align 1, !tbaa !29
  br label %pred.store.continue573

pred.store.continue573:                           ; preds = %pred.store.if572, %pred.store.continue571
  %i.bfg = extractelement <16 x i1> %i.bdk, i64 0
  br i1 %i.bfg, label %pred.store.if574, label %pred.store.continue575

pred.store.if574:                                 ; preds = %pred.store.continue573
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 16
  store i8 %i.aci, ptr %i.bfi, align 1, !tbaa !29
  br label %pred.store.continue575

pred.store.continue575:                           ; preds = %pred.store.if574, %pred.store.continue573
  %i.bfj = extractelement <16 x i1> %i.bdk, i64 1
  br i1 %i.bfj, label %pred.store.if576, label %pred.store.continue577

pred.store.if576:                                 ; preds = %pred.store.continue575
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 17
  store i8 %i.aci, ptr %i.bfl, align 1, !tbaa !29
  br label %pred.store.continue577

pred.store.continue577:                           ; preds = %pred.store.if576, %pred.store.continue575
  %i.bfm = extractelement <16 x i1> %i.bdk, i64 2
end_hunk_6
begin_hunk_7_@WebPCleanupTransparentArea:bb.a
  br label %pred.store.continue599

pred.store.continue599:                           ; preds = %pred.store.if598, %pred.store.continue597
  %i.bgt = extractelement <16 x i1> %i.bdk, i64 13
  br i1 %i.bgt, label %pred.store.if600, label %pred.store.continue601

pred.store.if600:                                 ; preds = %pred.store.continue599
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgu, i64 29
  store i8 %i.aci, ptr %i.bgv, align 1, !tbaa !29
  br label %pred.store.continue601

pred.store.continue601:                           ; preds = %pred.store.if600, %pred.store.continue599
  %i.bgw = extractelement <16 x i1> %i.bdk, i64 14
  br i1 %i.bgw, label %pred.store.if602, label %pred.store.continue603

pred.store.if602:                                 ; preds = %pred.store.continue601
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgx, i64 30
  store i8 %i.aci, ptr %i.bgy, align 1, !tbaa !29
  br label %pred.store.continue603

pred.store.continue603:                           ; preds = %pred.store.if602, %pred.store.continue601
  %i.bgz = extractelement <16 x i1> %i.bdk, i64 15
  br i1 %i.bgz, label %pred.store.if604, label %pred.store.continue605

pred.store.if604:                                 ; preds = %pred.store.continue603
  %i.bha = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index539
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 31
  store i8 %i.aci, ptr %i.bhb, align 1, !tbaa !29
  br label %pred.store.continue605

pred.store.continue605:                           ; preds = %pred.store.if604, %pred.store.continue603
  %index.next606 = add nuw i64 %index539, 32      ; 2 uses
  %i.bhc = icmp eq i64 %index.next606, %n.vec537
  br i1 %i.bhc, label %middle.block607, label %vector.body538, !llvm.loop !51

middle.block607:                                  ; preds = %pred.store.continue605
  %cmp.n608 = icmp eq i64 %n.vec537, %wide.trip.count.i
  br i1 %cmp.n608, label %iter.check500, label %vec.epilog.iter.check612

vec.epilog.iter.check612:                         ; preds = %middle.block607
  %min.epilog.iters.check613 = icmp eq i64 %n.mod.vf536, 0
  br i1 %min.epilog.iters.check613, label %._crit_edge.i187.4.preheader, label %vec.epilog.ph614, !prof !36

vec.epilog.ph614:                                 ; preds = %vector.main.loop.iter.check533, %vec.epilog.iter.check612
  %vec.epilog.resume.val609 = phi i64 [ %n.vec537, %vec.epilog.iter.check612 ], [ 0, %vector.main.loop.iter.check533 ]
  %n.vec616 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %pred.store.continue635, %vec.epilog.ph614
  %index618 = phi i64 [ %vec.epilog.resume.val609, %vec.epilog.ph614 ], [ %index.next636, %pred.store.continue635 ] ; 10 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.zk, i64 %index618
  %wide.load619 = load <8 x i8>, ptr %i.bhd, align 1, !tbaa !29
  %i.bhe = icmp eq <8 x i8> %wide.load619, zeroinitializer ; 8 uses
  %i.bhf = extractelement <8 x i1> %i.bhe, i64 0
  br i1 %i.bhf, label %pred.store.if620, label %pred.store.continue621

pred.store.if620:                                 ; preds = %vec.epilog.vector.body617
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index618
  store i8 %i.aci, ptr %i.bhg, align 1, !tbaa !29
  br label %pred.store.continue621

pred.store.continue621:                           ; preds = %pred.store.if620, %vec.epilog.vector.body617
  %i.bhh = extractelement <8 x i1> %i.bhe, i64 1
  br i1 %i.bhh, label %pred.store.if622, label %pred.store.continue623

pred.store.if622:                                 ; preds = %pred.store.continue621
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index618
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 1
  store i8 %i.aci, ptr %i.bhj, align 1, !tbaa !29
  br label %pred.store.continue623

pred.store.continue623:                           ; preds = %pred.store.if622, %pred.store.continue621
  %i.bhk = extractelement <8 x i1> %i.bhe, i64 2
  br i1 %i.bhk, label %pred.store.if624, label %pred.store.continue625

pred.store.if624:                                 ; preds = %pred.store.continue623
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index618
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 2
  store i8 %i.aci, ptr %i.bhm, align 1, !tbaa !29
  br label %pred.store.continue625

pred.store.continue625:                           ; preds = %pred.store.if624, %pred.store.continue623
  %i.bhn = extractelement <8 x i1> %i.bhe, i64 3
  br i1 %i.bhn, label %pred.store.if626, label %pred.store.continue627

pred.store.if626:                                 ; preds = %pred.store.continue625
  %i.bho = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index618
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bho, i64 3
  store i8 %i.aci, ptr %i.bhp, align 1, !tbaa !29
  br label %pred.store.continue627

pred.store.continue627:                           ; preds = %pred.store.if626, %pred.store.continue625
  %i.bhq = extractelement <8 x i1> %i.bhe, i64 4
  br i1 %i.bhq, label %pred.store.if628, label %pred.store.continue629

pred.store.if628:                                 ; preds = %pred.store.continue627
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index618
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 4
  store i8 %i.aci, ptr %i.bhs, align 1, !tbaa !29
  br label %pred.store.continue629

pred.store.continue629:                           ; preds = %pred.store.if628, %pred.store.continue627
  %i.bht = extractelement <8 x i1> %i.bhe, i64 5
  br i1 %i.bht, label %pred.store.if630, label %pred.store.continue631

pred.store.if630:                                 ; preds = %pred.store.continue629
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index618
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhu, i64 5
  store i8 %i.aci, ptr %i.bhv, align 1, !tbaa !29
  br label %pred.store.continue631

pred.store.continue631:                           ; preds = %pred.store.if630, %pred.store.continue629
  %i.bhw = extractelement <8 x i1> %i.bhe, i64 6
  br i1 %i.bhw, label %pred.store.if632, label %pred.store.continue633

pred.store.if632:                                 ; preds = %pred.store.continue631
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index618
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 6
  store i8 %i.aci, ptr %i.bhy, align 1, !tbaa !29
  br label %pred.store.continue633

pred.store.continue633:                           ; preds = %pred.store.if632, %pred.store.continue631
  %i.bhz = extractelement <8 x i1> %i.bhe, i64 7
  br i1 %i.bhz, label %pred.store.if634, label %pred.store.continue635

pred.store.if634:                                 ; preds = %pred.store.continue633
  %i.bia = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index618
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 7
  store i8 %i.aci, ptr %i.bib, align 1, !tbaa !29
  br label %pred.store.continue635

pred.store.continue635:                           ; preds = %pred.store.if634, %pred.store.continue633
  %index.next636 = add nuw i64 %index618, 8       ; 2 uses
  %i.bic = icmp eq i64 %index.next636, %n.vec616
  br i1 %i.bic, label %vec.epilog.middle.block637, label %vec.epilog.vector.body617, !llvm.loop !52

vec.epilog.middle.block637:                       ; preds = %pred.store.continue635
  %cmp.n638 = icmp eq i64 %n.vec616, %wide.trip.count.i
  br i1 %cmp.n638, label %iter.check500, label %._crit_edge.i187.4.preheader

._crit_edge.i187.4.preheader:                     ; preds = %iter.check610, %vec.epilog.iter.check612, %vec.epilog.middle.block637
  %indvars.iv75.i184.5.ph = phi i64 [ 0, %iter.check610 ], [ %n.vec537, %vec.epilog.iter.check612 ], [ %n.vec616, %vec.epilog.middle.block637 ] ; 5 uses
  %xtraiter1394 = and i64 %wide.trip.count.i, 1
  %lcmp.mod1395.not = icmp eq i64 %xtraiter1394, 0
  br i1 %lcmp.mod1395.not, label %._crit_edge.i187.4.prol.loopexit, label %._crit_edge.i187.4.prol

._crit_edge.i187.4.prol:                          ; preds = %._crit_edge.i187.4.preheader
  %i.bid = getelementptr inbounds nuw i8, ptr %i.zk, i64 %indvars.iv75.i184.5.ph
  %i.bie = load i8, ptr %i.bid, align 1, !tbaa !29
  %i.bif = icmp eq i8 %i.bie, 0
  br i1 %i.bif, label %bb.jf, label %._crit_edge.i187.4.prol.loopexit.unr-lcssa

bb.jf:                                            ; preds = %._crit_edge.i187.4.prol
  %i.big = getelementptr inbounds nuw i8, ptr %i.zl, i64 %indvars.iv75.i184.5.ph
  store i8 %i.aci, ptr %i.big, align 1, !tbaa !29
  br label %._crit_edge.i187.4.prol.loopexit.unr-lcssa

._crit_edge.i187.4.prol.loopexit.unr-lcssa:       ; preds = %bb.jf, %._crit_edge.i187.4.prol
  %indvars.iv.next76.i185.5.prol = or disjoint i64 %indvars.iv75.i184.5.ph, 1
  br label %._crit_edge.i187.4.prol.loopexit

._crit_edge.i187.4.prol.loopexit:                 ; preds = %._crit_edge.i187.4.prol.loopexit.unr-lcssa, %._crit_edge.i187.4.preheader
  %indvars.iv75.i184.5.unr = phi i64 [ %indvars.iv75.i184.5.ph, %._crit_edge.i187.4.preheader ], [ %indvars.iv.next76.i185.5.prol, %._crit_edge.i187.4.prol.loopexit.unr-lcssa ]
  %i.bih = add nsw i64 %wide.trip.count.i, -1
  %i.bii = icmp eq i64 %indvars.iv75.i184.5.ph, %i.bih
  br i1 %i.bii, label %iter.check500, label %._crit_edge.i187.4

._crit_edge.i187.4:                               ; preds = %._crit_edge.i187.4.prol.loopexit, %bb.ji
  %indvars.iv75.i184.5 = phi i64 [ %indvars.iv.next76.i185.5.1, %bb.ji ], [ %indvars.iv75.i184.5.unr, %._crit_edge.i187.4.prol.loopexit ] ; 4 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %i.zk, i64 %indvars.iv75.i184.5
  %i.bik = load i8, ptr %i.bij, align 1, !tbaa !29
  %i.bil = icmp eq i8 %i.bik, 0
  br i1 %i.bil, label %bb.jg, label %._crit_edge.i187.4.1

bb.jg:                                            ; preds = %._crit_edge.i187.4
  %i.bim = getelementptr inbounds nuw i8, ptr %i.zl, i64 %indvars.iv75.i184.5
  store i8 %i.aci, ptr %i.bim, align 1, !tbaa !29
  br label %._crit_edge.i187.4.1

._crit_edge.i187.4.1:                             ; preds = %bb.jg, %._crit_edge.i187.4
  %indvars.iv.next76.i185.5 = add nuw nsw i64 %indvars.iv75.i184.5, 1 ; 2 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %i.zk, i64 %indvars.iv.next76.i185.5
  %i.bio = load i8, ptr %i.bin, align 1, !tbaa !29
  %i.bip = icmp eq i8 %i.bio, 0
  br i1 %i.bip, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %._crit_edge.i187.4.1
  %i.biq = getelementptr inbounds nuw i8, ptr %i.zl, i64 %indvars.iv.next76.i185.5
  store i8 %i.aci, ptr %i.biq, align 1, !tbaa !29
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %._crit_edge.i187.4.1
  %indvars.iv.next76.i185.5.1 = add nuw nsw i64 %indvars.iv75.i184.5, 2 ; 2 uses
  %exitcond79.not.i186.5.1 = icmp eq i64 %indvars.iv.next76.i185.5.1, %wide.trip.count.i
  br i1 %exitcond79.not.i186.5.1, label %iter.check500, label %._crit_edge.i187.4, !llvm.loop !53

iter.check500:                                    ; preds = %._crit_edge.i187.4.prol.loopexit, %bb.ji, %vec.epilog.middle.block637, %middle.block607
  %min.iters.check422 = icmp ult i32 %i.uu, 8
  %.reass1422 = add i64 %i.hp, %invariant.op1421
  %diff.check421 = icmp ult i64 %.reass1422, 31
  %or.cond1309 = select i1 %min.iters.check422, i1 true, i1 %diff.check421
  br i1 %or.cond1309, label %._crit_edge.i187.5.preheader, label %vector.main.loop.iter.check423

vector.main.loop.iter.check423:                   ; preds = %iter.check500
  %min.iters.check424 = icmp ult i32 %i.uu, 32
  br i1 %min.iters.check424, label %vec.epilog.ph504, label %vector.ph425

vector.ph425:                                     ; preds = %vector.main.loop.iter.check423
  %n.mod.vf426 = and i64 %wide.trip.count.i, 24
  %n.vec427 = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  br label %vector.body428

vector.body428:                                   ; preds = %pred.store.continue495, %vector.ph425
  %index429 = phi i64 [ 0, %vector.ph425 ], [ %index.next496, %pred.store.continue495 ] ; 34 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.aai, i64 %index429 ; 2 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 16
  %wide.load430 = load <16 x i8>, ptr %i.bir, align 1, !tbaa !29
  %wide.load431 = load <16 x i8>, ptr %i.bis, align 1, !tbaa !29
  %i.bit = icmp eq <16 x i8> %wide.load430, zeroinitializer ; 16 uses
  %i.biu = icmp eq <16 x i8> %wide.load431, zeroinitializer ; 16 uses
  %i.biv = extractelement <16 x i1> %i.bit, i64 0
  br i1 %i.biv, label %pred.store.if432, label %pred.store.continue433

pred.store.if432:                                 ; preds = %vector.body428
  %i.biw = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  store i8 %i.aci, ptr %i.biw, align 1, !tbaa !29
  br label %pred.store.continue433

pred.store.continue433:                           ; preds = %pred.store.if432, %vector.body428
  %i.bix = extractelement <16 x i1> %i.bit, i64 1
  br i1 %i.bix, label %pred.store.if434, label %pred.store.continue435

pred.store.if434:                                 ; preds = %pred.store.continue433
  %i.biy = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biy, i64 1
  store i8 %i.aci, ptr %i.biz, align 1, !tbaa !29
  br label %pred.store.continue435

pred.store.continue435:                           ; preds = %pred.store.if434, %pred.store.continue433
  %i.bja = extractelement <16 x i1> %i.bit, i64 2
  br i1 %i.bja, label %pred.store.if436, label %pred.store.continue437

pred.store.if436:                                 ; preds = %pred.store.continue435
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bjb, i64 2
  store i8 %i.aci, ptr %i.bjc, align 1, !tbaa !29
  br label %pred.store.continue437

pred.store.continue437:                           ; preds = %pred.store.if436, %pred.store.continue435
  %i.bjd = extractelement <16 x i1> %i.bit, i64 3
  br i1 %i.bjd, label %pred.store.if438, label %pred.store.continue439

pred.store.if438:                                 ; preds = %pred.store.continue437
  %i.bje = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 3
  store i8 %i.aci, ptr %i.bjf, align 1, !tbaa !29
  br label %pred.store.continue439

pred.store.continue439:                           ; preds = %pred.store.if438, %pred.store.continue437
  %i.bjg = extractelement <16 x i1> %i.bit, i64 4
  br i1 %i.bjg, label %pred.store.if440, label %pred.store.continue441

pred.store.if440:                                 ; preds = %pred.store.continue439
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 4
  store i8 %i.aci, ptr %i.bji, align 1, !tbaa !29
  br label %pred.store.continue441

pred.store.continue441:                           ; preds = %pred.store.if440, %pred.store.continue439
  %i.bjj = extractelement <16 x i1> %i.bit, i64 5
  br i1 %i.bjj, label %pred.store.if442, label %pred.store.continue443

pred.store.if442:                                 ; preds = %pred.store.continue441
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 5
  store i8 %i.aci, ptr %i.bjl, align 1, !tbaa !29
  br label %pred.store.continue443

pred.store.continue443:                           ; preds = %pred.store.if442, %pred.store.continue441
  %i.bjm = extractelement <16 x i1> %i.bit, i64 6
  br i1 %i.bjm, label %pred.store.if444, label %pred.store.continue445

pred.store.if444:                                 ; preds = %pred.store.continue443
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 6
  store i8 %i.aci, ptr %i.bjo, align 1, !tbaa !29
  br label %pred.store.continue445

pred.store.continue445:                           ; preds = %pred.store.if444, %pred.store.continue443
  %i.bjp = extractelement <16 x i1> %i.bit, i64 7
  br i1 %i.bjp, label %pred.store.if446, label %pred.store.continue447

pred.store.if446:                                 ; preds = %pred.store.continue445
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 7
  store i8 %i.aci, ptr %i.bjr, align 1, !tbaa !29
  br label %pred.store.continue447

pred.store.continue447:                           ; preds = %pred.store.if446, %pred.store.continue445
  %i.bjs = extractelement <16 x i1> %i.bit, i64 8
  br i1 %i.bjs, label %pred.store.if448, label %pred.store.continue449

pred.store.if448:                                 ; preds = %pred.store.continue447
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 8
  store i8 %i.aci, ptr %i.bju, align 1, !tbaa !29
  br label %pred.store.continue449

pred.store.continue449:                           ; preds = %pred.store.if448, %pred.store.continue447
  %i.bjv = extractelement <16 x i1> %i.bit, i64 9
  br i1 %i.bjv, label %pred.store.if450, label %pred.store.continue451

pred.store.if450:                                 ; preds = %pred.store.continue449
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 9
  store i8 %i.aci, ptr %i.bjx, align 1, !tbaa !29
  br label %pred.store.continue451

pred.store.continue451:                           ; preds = %pred.store.if450, %pred.store.continue449
  %i.bjy = extractelement <16 x i1> %i.bit, i64 10
  br i1 %i.bjy, label %pred.store.if452, label %pred.store.continue453

pred.store.if452:                                 ; preds = %pred.store.continue451
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 10
  store i8 %i.aci, ptr %i.bka, align 1, !tbaa !29
  br label %pred.store.continue453

pred.store.continue453:                           ; preds = %pred.store.if452, %pred.store.continue451
  %i.bkb = extractelement <16 x i1> %i.bit, i64 11
  br i1 %i.bkb, label %pred.store.if454, label %pred.store.continue455

pred.store.if454:                                 ; preds = %pred.store.continue453
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bkc, i64 11
  store i8 %i.aci, ptr %i.bkd, align 1, !tbaa !29
  br label %pred.store.continue455

pred.store.continue455:                           ; preds = %pred.store.if454, %pred.store.continue453
  %i.bke = extractelement <16 x i1> %i.bit, i64 12
  br i1 %i.bke, label %pred.store.if456, label %pred.store.continue457

pred.store.if456:                                 ; preds = %pred.store.continue455
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 12
  store i8 %i.aci, ptr %i.bkg, align 1, !tbaa !29
  br label %pred.store.continue457

pred.store.continue457:                           ; preds = %pred.store.if456, %pred.store.continue455
  %i.bkh = extractelement <16 x i1> %i.bit, i64 13
  br i1 %i.bkh, label %pred.store.if458, label %pred.store.continue459

pred.store.if458:                                 ; preds = %pred.store.continue457
  %i.bki = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bki, i64 13
  store i8 %i.aci, ptr %i.bkj, align 1, !tbaa !29
  br label %pred.store.continue459

pred.store.continue459:                           ; preds = %pred.store.if458, %pred.store.continue457
  %i.bkk = extractelement <16 x i1> %i.bit, i64 14
  br i1 %i.bkk, label %pred.store.if460, label %pred.store.continue461

pred.store.if460:                                 ; preds = %pred.store.continue459
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkl, i64 14
  store i8 %i.aci, ptr %i.bkm, align 1, !tbaa !29
  br label %pred.store.continue461

pred.store.continue461:                           ; preds = %pred.store.if460, %pred.store.continue459
  %i.bkn = extractelement <16 x i1> %i.bit, i64 15
  br i1 %i.bkn, label %pred.store.if462, label %pred.store.continue463

pred.store.if462:                                 ; preds = %pred.store.continue461
  %i.bko = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bko, i64 15
  store i8 %i.aci, ptr %i.bkp, align 1, !tbaa !29
  br label %pred.store.continue463

pred.store.continue463:                           ; preds = %pred.store.if462, %pred.store.continue461
  %i.bkq = extractelement <16 x i1> %i.biu, i64 0
  br i1 %i.bkq, label %pred.store.if464, label %pred.store.continue465

pred.store.if464:                                 ; preds = %pred.store.continue463
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkr, i64 16
  store i8 %i.aci, ptr %i.bks, align 1, !tbaa !29
  br label %pred.store.continue465

pred.store.continue465:                           ; preds = %pred.store.if464, %pred.store.continue463
  %i.bkt = extractelement <16 x i1> %i.biu, i64 1
  br i1 %i.bkt, label %pred.store.if466, label %pred.store.continue467

pred.store.if466:                                 ; preds = %pred.store.continue465
  %i.bku = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 17
  store i8 %i.aci, ptr %i.bkv, align 1, !tbaa !29
  br label %pred.store.continue467

pred.store.continue467:                           ; preds = %pred.store.if466, %pred.store.continue465
  %i.bkw = extractelement <16 x i1> %i.biu, i64 2
end_hunk_7
begin_hunk_8_@WebPCleanupTransparentArea:bb.a
  br label %pred.store.continue489

pred.store.continue489:                           ; preds = %pred.store.if488, %pred.store.continue487
  %i.bmd = extractelement <16 x i1> %i.biu, i64 13
  br i1 %i.bmd, label %pred.store.if490, label %pred.store.continue491

pred.store.if490:                                 ; preds = %pred.store.continue489
  %i.bme = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bme, i64 29
  store i8 %i.aci, ptr %i.bmf, align 1, !tbaa !29
  br label %pred.store.continue491

pred.store.continue491:                           ; preds = %pred.store.if490, %pred.store.continue489
  %i.bmg = extractelement <16 x i1> %i.biu, i64 14
  br i1 %i.bmg, label %pred.store.if492, label %pred.store.continue493

pred.store.if492:                                 ; preds = %pred.store.continue491
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmh, i64 30
  store i8 %i.aci, ptr %i.bmi, align 1, !tbaa !29
  br label %pred.store.continue493

pred.store.continue493:                           ; preds = %pred.store.if492, %pred.store.continue491
  %i.bmj = extractelement <16 x i1> %i.biu, i64 15
  br i1 %i.bmj, label %pred.store.if494, label %pred.store.continue495

pred.store.if494:                                 ; preds = %pred.store.continue493
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index429
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 31
  store i8 %i.aci, ptr %i.bml, align 1, !tbaa !29
  br label %pred.store.continue495

pred.store.continue495:                           ; preds = %pred.store.if494, %pred.store.continue493
  %index.next496 = add nuw i64 %index429, 32      ; 2 uses
  %i.bmm = icmp eq i64 %index.next496, %n.vec427
  br i1 %i.bmm, label %middle.block497, label %vector.body428, !llvm.loop !54

middle.block497:                                  ; preds = %pred.store.continue495
  %cmp.n498 = icmp eq i64 %n.vec427, %wide.trip.count.i
  br i1 %cmp.n498, label %iter.check, label %vec.epilog.iter.check502

vec.epilog.iter.check502:                         ; preds = %middle.block497
  %min.epilog.iters.check503 = icmp eq i64 %n.mod.vf426, 0
  br i1 %min.epilog.iters.check503, label %._crit_edge.i187.5.preheader, label %vec.epilog.ph504, !prof !36

vec.epilog.ph504:                                 ; preds = %vector.main.loop.iter.check423, %vec.epilog.iter.check502
  %vec.epilog.resume.val499 = phi i64 [ %n.vec427, %vec.epilog.iter.check502 ], [ 0, %vector.main.loop.iter.check423 ]
  %n.vec506 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vec.epilog.vector.body507

vec.epilog.vector.body507:                        ; preds = %pred.store.continue525, %vec.epilog.ph504
  %index508 = phi i64 [ %vec.epilog.resume.val499, %vec.epilog.ph504 ], [ %index.next526, %pred.store.continue525 ] ; 10 uses
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.aai, i64 %index508
  %wide.load509 = load <8 x i8>, ptr %i.bmn, align 1, !tbaa !29
  %i.bmo = icmp eq <8 x i8> %wide.load509, zeroinitializer ; 8 uses
  %i.bmp = extractelement <8 x i1> %i.bmo, i64 0
  br i1 %i.bmp, label %pred.store.if510, label %pred.store.continue511

pred.store.if510:                                 ; preds = %vec.epilog.vector.body507
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index508
  store i8 %i.aci, ptr %i.bmq, align 1, !tbaa !29
  br label %pred.store.continue511

pred.store.continue511:                           ; preds = %pred.store.if510, %vec.epilog.vector.body507
  %i.bmr = extractelement <8 x i1> %i.bmo, i64 1
  br i1 %i.bmr, label %pred.store.if512, label %pred.store.continue513

pred.store.if512:                                 ; preds = %pred.store.continue511
  %i.bms = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index508
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bms, i64 1
  store i8 %i.aci, ptr %i.bmt, align 1, !tbaa !29
  br label %pred.store.continue513

pred.store.continue513:                           ; preds = %pred.store.if512, %pred.store.continue511
  %i.bmu = extractelement <8 x i1> %i.bmo, i64 2
  br i1 %i.bmu, label %pred.store.if514, label %pred.store.continue515

pred.store.if514:                                 ; preds = %pred.store.continue513
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index508
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 2
  store i8 %i.aci, ptr %i.bmw, align 1, !tbaa !29
  br label %pred.store.continue515

pred.store.continue515:                           ; preds = %pred.store.if514, %pred.store.continue513
  %i.bmx = extractelement <8 x i1> %i.bmo, i64 3
  br i1 %i.bmx, label %pred.store.if516, label %pred.store.continue517

pred.store.if516:                                 ; preds = %pred.store.continue515
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index508
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 3
  store i8 %i.aci, ptr %i.bmz, align 1, !tbaa !29
  br label %pred.store.continue517

pred.store.continue517:                           ; preds = %pred.store.if516, %pred.store.continue515
  %i.bna = extractelement <8 x i1> %i.bmo, i64 4
  br i1 %i.bna, label %pred.store.if518, label %pred.store.continue519

pred.store.if518:                                 ; preds = %pred.store.continue517
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index508
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bnb, i64 4
  store i8 %i.aci, ptr %i.bnc, align 1, !tbaa !29
  br label %pred.store.continue519

pred.store.continue519:                           ; preds = %pred.store.if518, %pred.store.continue517
  %i.bnd = extractelement <8 x i1> %i.bmo, i64 5
  br i1 %i.bnd, label %pred.store.if520, label %pred.store.continue521

pred.store.if520:                                 ; preds = %pred.store.continue519
  %i.bne = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index508
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bne, i64 5
  store i8 %i.aci, ptr %i.bnf, align 1, !tbaa !29
  br label %pred.store.continue521

pred.store.continue521:                           ; preds = %pred.store.if520, %pred.store.continue519
  %i.bng = extractelement <8 x i1> %i.bmo, i64 6
  br i1 %i.bng, label %pred.store.if522, label %pred.store.continue523

pred.store.if522:                                 ; preds = %pred.store.continue521
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index508
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 6
  store i8 %i.aci, ptr %i.bni, align 1, !tbaa !29
  br label %pred.store.continue523

pred.store.continue523:                           ; preds = %pred.store.if522, %pred.store.continue521
  %i.bnj = extractelement <8 x i1> %i.bmo, i64 7
  br i1 %i.bnj, label %pred.store.if524, label %pred.store.continue525

pred.store.if524:                                 ; preds = %pred.store.continue523
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index508
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnk, i64 7
  store i8 %i.aci, ptr %i.bnl, align 1, !tbaa !29
  br label %pred.store.continue525

pred.store.continue525:                           ; preds = %pred.store.if524, %pred.store.continue523
  %index.next526 = add nuw i64 %index508, 8       ; 2 uses
  %i.bnm = icmp eq i64 %index.next526, %n.vec506
  br i1 %i.bnm, label %vec.epilog.middle.block527, label %vec.epilog.vector.body507, !llvm.loop !55

vec.epilog.middle.block527:                       ; preds = %pred.store.continue525
  %cmp.n528 = icmp eq i64 %n.vec506, %wide.trip.count.i
  br i1 %cmp.n528, label %iter.check, label %._crit_edge.i187.5.preheader

._crit_edge.i187.5.preheader:                     ; preds = %iter.check500, %vec.epilog.iter.check502, %vec.epilog.middle.block527
  %indvars.iv75.i184.6.ph = phi i64 [ 0, %iter.check500 ], [ %n.vec427, %vec.epilog.iter.check502 ], [ %n.vec506, %vec.epilog.middle.block527 ] ; 5 uses
  %xtraiter1396 = and i64 %wide.trip.count.i, 1
  %lcmp.mod1397.not = icmp eq i64 %xtraiter1396, 0
  br i1 %lcmp.mod1397.not, label %._crit_edge.i187.5.prol.loopexit, label %._crit_edge.i187.5.prol

._crit_edge.i187.5.prol:                          ; preds = %._crit_edge.i187.5.preheader
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.aai, i64 %indvars.iv75.i184.6.ph
  %i.bno = load i8, ptr %i.bnn, align 1, !tbaa !29
  %i.bnp = icmp eq i8 %i.bno, 0
  br i1 %i.bnp, label %bb.jj, label %._crit_edge.i187.5.prol.loopexit.unr-lcssa

bb.jj:                                            ; preds = %._crit_edge.i187.5.prol
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %indvars.iv75.i184.6.ph
  store i8 %i.aci, ptr %i.bnq, align 1, !tbaa !29
  br label %._crit_edge.i187.5.prol.loopexit.unr-lcssa

._crit_edge.i187.5.prol.loopexit.unr-lcssa:       ; preds = %bb.jj, %._crit_edge.i187.5.prol
  %indvars.iv.next76.i185.6.prol = or disjoint i64 %indvars.iv75.i184.6.ph, 1
  br label %._crit_edge.i187.5.prol.loopexit

._crit_edge.i187.5.prol.loopexit:                 ; preds = %._crit_edge.i187.5.prol.loopexit.unr-lcssa, %._crit_edge.i187.5.preheader
  %indvars.iv75.i184.6.unr = phi i64 [ %indvars.iv75.i184.6.ph, %._crit_edge.i187.5.preheader ], [ %indvars.iv.next76.i185.6.prol, %._crit_edge.i187.5.prol.loopexit.unr-lcssa ]
  %i.bnr = add nsw i64 %wide.trip.count.i, -1
  %i.bns = icmp eq i64 %indvars.iv75.i184.6.ph, %i.bnr
  br i1 %i.bns, label %iter.check, label %._crit_edge.i187.5

._crit_edge.i187.5:                               ; preds = %._crit_edge.i187.5.prol.loopexit, %bb.jm
  %indvars.iv75.i184.6 = phi i64 [ %indvars.iv.next76.i185.6.1, %bb.jm ], [ %indvars.iv75.i184.6.unr, %._crit_edge.i187.5.prol.loopexit ] ; 4 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.aai, i64 %indvars.iv75.i184.6
  %i.bnu = load i8, ptr %i.bnt, align 1, !tbaa !29
  %i.bnv = icmp eq i8 %i.bnu, 0
  br i1 %i.bnv, label %bb.jk, label %._crit_edge.i187.5.1

bb.jk:                                            ; preds = %._crit_edge.i187.5
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %indvars.iv75.i184.6
  store i8 %i.aci, ptr %i.bnw, align 1, !tbaa !29
  br label %._crit_edge.i187.5.1

._crit_edge.i187.5.1:                             ; preds = %bb.jk, %._crit_edge.i187.5
  %indvars.iv.next76.i185.6 = add nuw nsw i64 %indvars.iv75.i184.6, 1 ; 2 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.aai, i64 %indvars.iv.next76.i185.6
  %i.bny = load i8, ptr %i.bnx, align 1, !tbaa !29
  %i.bnz = icmp eq i8 %i.bny, 0
  br i1 %i.bnz, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %._crit_edge.i187.5.1
  %i.boa = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %indvars.iv.next76.i185.6
  store i8 %i.aci, ptr %i.boa, align 1, !tbaa !29
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %._crit_edge.i187.5.1
  %indvars.iv.next76.i185.6.1 = add nuw nsw i64 %indvars.iv75.i184.6, 2 ; 2 uses
  %exitcond79.not.i186.6.1 = icmp eq i64 %indvars.iv.next76.i185.6.1, %wide.trip.count.i
  br i1 %exitcond79.not.i186.6.1, label %iter.check, label %._crit_edge.i187.5, !llvm.loop !56

iter.check:                                       ; preds = %._crit_edge.i187.5.prol.loopexit, %bb.jm, %vec.epilog.middle.block527, %middle.block497
  %min.iters.check = icmp ult i32 %i.uu, 8
  %.reass1424 = add i64 %i.hq, %invariant.op1423
  %diff.check = icmp ult i64 %.reass1424, 31
  %or.cond1310 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1310, label %._crit_edge.i187.6.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check334 = icmp ult i32 %i.uu, 32
  br i1 %min.iters.check334, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i, 24
  %n.vec = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue397, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue397 ] ; 34 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %i.abg, i64 %index ; 2 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 16
  %wide.load = load <16 x i8>, ptr %i.bob, align 1, !tbaa !29
  %wide.load335 = load <16 x i8>, ptr %i.boc, align 1, !tbaa !29
  %i.bod = icmp eq <16 x i8> %wide.load, zeroinitializer ; 16 uses
  %i.boe = icmp eq <16 x i8> %wide.load335, zeroinitializer ; 16 uses
  %i.bof = extractelement <16 x i1> %i.bod, i64 0
  br i1 %i.bof, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bog = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  store i8 %i.aci, ptr %i.bog, align 1, !tbaa !29
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.boh = extractelement <16 x i1> %i.bod, i64 1
  br i1 %i.boh, label %pred.store.if336, label %pred.store.continue337

pred.store.if336:                                 ; preds = %pred.store.continue
  %i.boi = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 1
  store i8 %i.aci, ptr %i.boj, align 1, !tbaa !29
  br label %pred.store.continue337

pred.store.continue337:                           ; preds = %pred.store.if336, %pred.store.continue
  %i.bok = extractelement <16 x i1> %i.bod, i64 2
  br i1 %i.bok, label %pred.store.if338, label %pred.store.continue339

pred.store.if338:                                 ; preds = %pred.store.continue337
  %i.bol = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bol, i64 2
  store i8 %i.aci, ptr %i.bom, align 1, !tbaa !29
  br label %pred.store.continue339

pred.store.continue339:                           ; preds = %pred.store.if338, %pred.store.continue337
  %i.bon = extractelement <16 x i1> %i.bod, i64 3
  br i1 %i.bon, label %pred.store.if340, label %pred.store.continue341

pred.store.if340:                                 ; preds = %pred.store.continue339
  %i.boo = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 3
  store i8 %i.aci, ptr %i.bop, align 1, !tbaa !29
  br label %pred.store.continue341

pred.store.continue341:                           ; preds = %pred.store.if340, %pred.store.continue339
  %i.boq = extractelement <16 x i1> %i.bod, i64 4
  br i1 %i.boq, label %pred.store.if342, label %pred.store.continue343

pred.store.if342:                                 ; preds = %pred.store.continue341
  %i.bor = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 4
  store i8 %i.aci, ptr %i.bos, align 1, !tbaa !29
  br label %pred.store.continue343

pred.store.continue343:                           ; preds = %pred.store.if342, %pred.store.continue341
  %i.bot = extractelement <16 x i1> %i.bod, i64 5
  br i1 %i.bot, label %pred.store.if344, label %pred.store.continue345

pred.store.if344:                                 ; preds = %pred.store.continue343
  %i.bou = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bou, i64 5
  store i8 %i.aci, ptr %i.bov, align 1, !tbaa !29
  br label %pred.store.continue345

pred.store.continue345:                           ; preds = %pred.store.if344, %pred.store.continue343
  %i.bow = extractelement <16 x i1> %i.bod, i64 6
  br i1 %i.bow, label %pred.store.if346, label %pred.store.continue347

pred.store.if346:                                 ; preds = %pred.store.continue345
  %i.box = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 6
  store i8 %i.aci, ptr %i.boy, align 1, !tbaa !29
  br label %pred.store.continue347

pred.store.continue347:                           ; preds = %pred.store.if346, %pred.store.continue345
  %i.boz = extractelement <16 x i1> %i.bod, i64 7
  br i1 %i.boz, label %pred.store.if348, label %pred.store.continue349

pred.store.if348:                                 ; preds = %pred.store.continue347
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bpa, i64 7
  store i8 %i.aci, ptr %i.bpb, align 1, !tbaa !29
  br label %pred.store.continue349

pred.store.continue349:                           ; preds = %pred.store.if348, %pred.store.continue347
  %i.bpc = extractelement <16 x i1> %i.bod, i64 8
  br i1 %i.bpc, label %pred.store.if350, label %pred.store.continue351

pred.store.if350:                                 ; preds = %pred.store.continue349
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpd, i64 8
  store i8 %i.aci, ptr %i.bpe, align 1, !tbaa !29
  br label %pred.store.continue351

pred.store.continue351:                           ; preds = %pred.store.if350, %pred.store.continue349
  %i.bpf = extractelement <16 x i1> %i.bod, i64 9
  br i1 %i.bpf, label %pred.store.if352, label %pred.store.continue353

pred.store.if352:                                 ; preds = %pred.store.continue351
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpg, i64 9
  store i8 %i.aci, ptr %i.bph, align 1, !tbaa !29
  br label %pred.store.continue353

pred.store.continue353:                           ; preds = %pred.store.if352, %pred.store.continue351
  %i.bpi = extractelement <16 x i1> %i.bod, i64 10
  br i1 %i.bpi, label %pred.store.if354, label %pred.store.continue355

pred.store.if354:                                 ; preds = %pred.store.continue353
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpj, i64 10
  store i8 %i.aci, ptr %i.bpk, align 1, !tbaa !29
  br label %pred.store.continue355

pred.store.continue355:                           ; preds = %pred.store.if354, %pred.store.continue353
  %i.bpl = extractelement <16 x i1> %i.bod, i64 11
  br i1 %i.bpl, label %pred.store.if356, label %pred.store.continue357

pred.store.if356:                                 ; preds = %pred.store.continue355
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 11
  store i8 %i.aci, ptr %i.bpn, align 1, !tbaa !29
  br label %pred.store.continue357

pred.store.continue357:                           ; preds = %pred.store.if356, %pred.store.continue355
  %i.bpo = extractelement <16 x i1> %i.bod, i64 12
  br i1 %i.bpo, label %pred.store.if358, label %pred.store.continue359

pred.store.if358:                                 ; preds = %pred.store.continue357
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 12
  store i8 %i.aci, ptr %i.bpq, align 1, !tbaa !29
  br label %pred.store.continue359

pred.store.continue359:                           ; preds = %pred.store.if358, %pred.store.continue357
  %i.bpr = extractelement <16 x i1> %i.bod, i64 13
  br i1 %i.bpr, label %pred.store.if360, label %pred.store.continue361

pred.store.if360:                                 ; preds = %pred.store.continue359
  %i.bps = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 13
  store i8 %i.aci, ptr %i.bpt, align 1, !tbaa !29
  br label %pred.store.continue361

pred.store.continue361:                           ; preds = %pred.store.if360, %pred.store.continue359
  %i.bpu = extractelement <16 x i1> %i.bod, i64 14
  br i1 %i.bpu, label %pred.store.if362, label %pred.store.continue363

pred.store.if362:                                 ; preds = %pred.store.continue361
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpv, i64 14
  store i8 %i.aci, ptr %i.bpw, align 1, !tbaa !29
  br label %pred.store.continue363

pred.store.continue363:                           ; preds = %pred.store.if362, %pred.store.continue361
  %i.bpx = extractelement <16 x i1> %i.bod, i64 15
  br i1 %i.bpx, label %pred.store.if364, label %pred.store.continue365

pred.store.if364:                                 ; preds = %pred.store.continue363
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpy, i64 15
  store i8 %i.aci, ptr %i.bpz, align 1, !tbaa !29
  br label %pred.store.continue365

pred.store.continue365:                           ; preds = %pred.store.if364, %pred.store.continue363
  %i.bqa = extractelement <16 x i1> %i.boe, i64 0
  br i1 %i.bqa, label %pred.store.if366, label %pred.store.continue367

pred.store.if366:                                 ; preds = %pred.store.continue365
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 16
  store i8 %i.aci, ptr %i.bqc, align 1, !tbaa !29
  br label %pred.store.continue367

pred.store.continue367:                           ; preds = %pred.store.if366, %pred.store.continue365
  %i.bqd = extractelement <16 x i1> %i.boe, i64 1
  br i1 %i.bqd, label %pred.store.if368, label %pred.store.continue369

pred.store.if368:                                 ; preds = %pred.store.continue367
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.abh, i64 %index
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 17
  store i8 %i.aci, ptr %i.bqf, align 1, !tbaa !29
  br label %pred.store.continue369

pred.store.continue369:                           ; preds = %pred.store.if368, %pred.store.continue367
  %i.bqg = extractelement <16 x i1> %i.boe, i64 2
end_hunk_8
