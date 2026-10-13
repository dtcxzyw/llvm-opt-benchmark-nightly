Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblat3c?download=true
inline.NumInlined: 30
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 37
begin_hunk_0_@dmmch_:bb.a
  %i.h = sext i32 %narrow179 to i64               ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %11, i64 %i.h
  %i.j = getelementptr inbounds i8, ptr %13, i64 -8 ; 12 uses
  %i.k = getelementptr inbounds i8, ptr %14, i64 -8 ; 10 uses
  %i.l = load i32, ptr %16, align 4, !tbaa !10    ; 4 uses
  %narrow180 = xor i32 %i.l, -1
  %i.m = sext i32 %narrow180 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %15, i64 %i.m ; 3 uses
  %i.o = load i8, ptr %0, align 1, !tbaa !11      ; 2 uses
  %i.p = icmp eq i8 %i.o, 84
  %i.q = icmp eq i8 %i.o, 67
  %narrow207 = or i1 %i.p, %i.q
  %narrow207.fr = freeze i1 %narrow207            ; 3 uses
  %i.r = load i8, ptr %1, align 1, !tbaa !11      ; 4 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !10     ; 2 uses
  %.not272 = icmp slt i32 %i.s, 1
  br i1 %.not272, label %.loopexit215, label %.lr.ph275

.lr.ph275:                                        ; preds = %bb.a
  %i.t = icmp eq i8 %i.r, 84
  %i.u = icmp eq i8 %i.r, 67
  %narrow208 = or i1 %i.t, %i.u                   ; 2 uses
  %i.v = xor i1 %narrow207.fr, true
  %or.cond5 = select i1 %i.v, i1 %narrow208, i1 false
  %or.cond7 = select i1 %narrow207.fr, i1 %narrow208, i1 false
  %i.w = sext i32 %i.a to i64                     ; 12 uses
  %i.x = sext i32 %i.d to i64                     ; 12 uses
  %i.y = sext i32 %i.g to i64                     ; 3 uses
  %i.z = sext i32 %i.l to i64
  %i.aa = add nuw i32 %i.s, 1                     ; 2 uses
  %wide.trip.count350 = zext i32 %i.aa to i64
  %scevgep = getelementptr i8, ptr %13, i64 -8
  %scevgep392 = getelementptr i8, ptr %14, i64 -8
  %scevgep394 = getelementptr i8, ptr %5, i64 8   ; 2 uses
  %scevgep395 = getelementptr i8, ptr %10, i64 8  ; 2 uses
  %i.ab = or i64 %i.y, %i.h
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = shl nsw i64 %i.y, 3
  %scevgep431 = getelementptr i8, ptr %13, i64 -8
  %scevgep433 = getelementptr i8, ptr %14, i64 -8
  %scevgep435 = getelementptr i8, ptr %6, i64 -24
  %i.ae = or i64 %i.x, %i.e
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = shl nsw i64 %i.x, 3
  %scevgep477 = getelementptr i8, ptr %13, i64 -8
  %scevgep479 = getelementptr i8, ptr %14, i64 -8
  %i.ah = shl nsw i64 %i.w, 3
  %i.ai = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.aj = getelementptr i8, ptr %6, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ai
  %i.al = insertelement <2 x ptr> poison, ptr %14, i64 1 ; 2 uses
  %i.am = insertelement <2 x ptr> %i.al, ptr %i.ak, i64 0
  %i.an = getelementptr i8, <2 x ptr> %i.am, <2 x i64> <i64 8, i64 0>
  %scevgep482 = getelementptr i8, ptr %6, i64 %i.ai
  %i.ao = or i64 %i.x, %i.e
  %i.ap = shl nsw i64 %i.ao, 3                    ; 2 uses
  %i.aq = shl nsw i64 %i.x, 3
  %scevgep530 = getelementptr i8, ptr %13, i64 -8
  %scevgep532 = getelementptr i8, ptr %14, i64 -8
  %scevgep534 = getelementptr i8, ptr %6, i64 -24
  %i.ar = or i64 %i.x, %i.e
  %i.as = shl nsw i64 %i.ar, 3                    ; 2 uses
  %i.at = shl nsw i64 %i.x, 3
  %scevgep579 = getelementptr i8, ptr %13, i64 -8
  %scevgep581 = getelementptr i8, ptr %14, i64 -8
  %i.au = shl nsw i64 %i.w, 3
  %i.av = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %6, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ay = insertelement <2 x ptr> %i.al, ptr %i.ax, i64 0
  %i.az = getelementptr i8, <2 x ptr> %i.ay, <2 x i64> <i64 8, i64 0>
  %scevgep584 = getelementptr i8, ptr %6, i64 %i.av
  %i.ba = or i64 %i.x, %i.e
  %i.bb = shl nsw i64 %i.ba, 3
  %i.bc = shl nsw i64 %i.x, 3
  %i.bd = getelementptr i8, ptr %8, i64 %i.bb
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = getelementptr i8, ptr %8, i64 %i.as
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = getelementptr i8, ptr %8, i64 %i.as
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = getelementptr i8, ptr %8, i64 %i.ap
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = getelementptr i8, ptr %8, i64 %i.ap
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = getelementptr i8, ptr %8, i64 %i.af
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = getelementptr i8, ptr %11, i64 %i.ac
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %i.br = insertelement <4 x ptr> poison, ptr %13, i64 0
  %i.bs = insertelement <4 x ptr> %i.br, ptr %14, i64 1
  %i.bt = shufflevector <4 x ptr> %i.bs, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bu = shufflevector <2 x ptr> %i.az, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %stride.check594 = icmp slt i32 %i.a, 0
  %i.bv = insertelement <4 x ptr> poison, ptr %13, i64 0
  %i.bw = insertelement <4 x ptr> %i.bv, ptr %14, i64 1
  %i.bx = shufflevector <4 x ptr> %i.bw, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.by = insertelement <4 x ptr> poison, ptr %14, i64 0
  %i.bz = insertelement <4 x ptr> %i.by, ptr %6, i64 1
  %ident.check528.not = icmp eq i32 %i.a, 1
  %stride.check549 = icmp slt i32 %i.d, 0
  %i.ca = insertelement <4 x ptr> poison, ptr %13, i64 0
  %i.cb = insertelement <4 x ptr> %i.ca, ptr %14, i64 1
  %i.cc = shufflevector <4 x ptr> %i.cb, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cd = shufflevector <2 x ptr> %i.an, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = or i32 %i.a, %i.d
  %op.rdx629 = icmp slt i32 %i.ce, 0
  %i.cf = insertelement <4 x ptr> poison, ptr %13, i64 0
  %i.cg = insertelement <4 x ptr> %i.cf, ptr %14, i64 1
  %i.ch = shufflevector <4 x ptr> %i.cg, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ci = insertelement <4 x ptr> poison, ptr %14, i64 0
  %i.cj = insertelement <4 x ptr> %i.ci, ptr %6, i64 1
  %ident.check.not = icmp eq i32 %i.a, 1
  %bound0398 = icmp ult ptr %13, %scevgep394
  %bound0401 = icmp ult ptr %13, %scevgep395
  %bound0409 = icmp ult ptr %14, %scevgep394
  %bound0413 = icmp ult ptr %14, %scevgep395
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph275, %._crit_edge268
  %indvar = phi i64 [ 0, %.lr.ph275 ], [ %indvar.next, %._crit_edge268 ] ; 6 uses
  %indvars.iv347 = phi i64 [ 1, %.lr.ph275 ], [ %indvars.iv.next348, %._crit_edge268 ] ; 8 uses
  %i.ck = mul i64 %i.bc, %indvar
  %scevgep586 = getelementptr i8, ptr %i.be, i64 %i.ck ; 2 uses
  %i.cl = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %scevgep536 = getelementptr i8, ptr %i.bg, i64 %i.cl ; 2 uses
  %scevgep537 = getelementptr i8, ptr %i.bi, i64 %i.cl
  %i.cm = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %scevgep484 = getelementptr i8, ptr %i.bk, i64 %i.cm ; 2 uses
  %scevgep485 = getelementptr i8, ptr %i.bm, i64 %i.cm
  %i.cn = mul i64 %i.ag, %indvar
  %scevgep437 = getelementptr i8, ptr %i.bo, i64 %i.cn ; 2 uses
  %i.co = mul i64 %i.ad, %indvar
  %scevgep396 = getelementptr i8, ptr %i.bq, i64 %i.co ; 2 uses
  %i.cp = load i32, ptr %2, align 4, !tbaa !10    ; 26 uses
  %.not182216 = icmp slt i32 %i.cp, 1             ; 6 uses
  br i1 %.not182216, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %i.cr, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %i.cr, i1 false), !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.b
  br i1 %narrow207.fr, label %switch.early.test, label %switch.early.test380

switch.early.test380:                             ; preds = %._crit_edge
  switch i8 %i.r, label %bb.c [
    i8 84, label %bb.e
    i8 67, label %bb.e
  ]

bb.c:                                             ; preds = %switch.early.test380
  %i.cs = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %.not184223 = icmp slt i32 %i.cs, 1
  br i1 %.not184223, label %.sink.split, label %.preheader211.lr.ph

.preheader211.lr.ph:                              ; preds = %bb.c
  br i1 %.not182216, label %._crit_edge261.thread, label %.preheader211.preheader

.preheader211.preheader:                          ; preds = %.preheader211.lr.ph
  %i.ct = mul nsw i64 %indvars.iv347, %i.x
  %i.cu = add nuw i32 %i.cp, 1
  %i.cv = add nuw i32 %i.cs, 1
  %wide.trip.count305 = zext i32 %i.cv to i64     ; 2 uses
  %invariant.gep362 = getelementptr [8 x i8], ptr %i.f, i64 %i.ct ; 2 uses
  %wide.trip.count = zext i32 %i.cu to i64        ; 2 uses
  %i.cw = shl nuw nsw i64 %wide.trip.count, 3     ; 3 uses
  %scevgep580 = getelementptr i8, ptr %scevgep579, i64 %i.cw
  %scevgep582 = getelementptr i8, ptr %scevgep581, i64 %i.cw ; 2 uses
  %i.cx = shl nuw nsw i64 %wide.trip.count305, 3  ; 2 uses
  %i.cy = add nsw i64 %i.cx, -8
  %i.cz = mul i64 %i.cy, %i.w
  %i.da = getelementptr i8, ptr %scevgep584, i64 %i.cz
  %scevgep585 = getelementptr i8, ptr %i.da, i64 %i.cw
  %scevgep587 = getelementptr i8, ptr %invariant.gep362, i64 %i.cx ; 2 uses
  %i.db = insertelement <4 x ptr> poison, ptr %scevgep585, i64 0
  %i.dc = insertelement <4 x ptr> %i.db, ptr %scevgep582, i64 1 ; 2 uses
  %i.dd = insertelement <4 x ptr> %i.dc, ptr %scevgep587, i64 2
  %i.de = shufflevector <4 x ptr> %i.dd, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.df = shufflevector <4 x ptr> %i.dc, <4 x ptr> poison, <2 x i32> <i32 poison, i32 1>
  %i.dg = insertelement <2 x ptr> %i.df, ptr %scevgep580, i64 0
  %i.dh = shufflevector <2 x ptr> %i.dg, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.di = zext nneg i32 %i.cp to i64
  %i.dj = zext nneg i32 %i.cp to i64              ; 2 uses
  %min.iters.check610 = icmp ult i32 %i.cp, 8
  %i.dk = icmp ult <4 x ptr> %i.bt, %i.de
  %i.dl = insertelement <4 x ptr> %i.bu, ptr %scevgep586, i64 2
  %i.dm = shufflevector <4 x ptr> %i.dl, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dn = icmp ult <4 x ptr> %i.dm, %i.dh
  %i.do = and <4 x i1> %i.dk, %i.dn
  %bound0605 = icmp ult ptr %14, %scevgep587
  %bound1606 = icmp ult ptr %scevgep586, %scevgep582
  %found.conflict607 = and i1 %bound0605, %bound1606
  %i.dp = bitcast <4 x i1> %i.do to i4
  %i.dq = icmp ne i4 %i.dp, 0
  %op.rdx633 = or i1 %i.dq, %found.conflict607
  %op.rdx634 = or i1 %op.rdx633, %stride.check594
  %n.vec612 = and i64 %i.dj, 2147483644           ; 3 uses
  %i.dr = or disjoint i64 %n.vec612, 1
  %cmp.n625 = icmp eq i64 %n.vec612, %i.dj
  %i.ds = and i32 %i.cp, 1
  %lcmp.mod.not = icmp eq i32 %i.ds, 0
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.preheader, %._crit_edge221
  %indvars.iv302 = phi i64 [ 1, %.preheader211.preheader ], [ %indvars.iv.next303, %._crit_edge221 ] ; 3 uses
  %i.dt = mul nsw i64 %indvars.iv302, %i.w
  %gep363 = getelementptr [8 x i8], ptr %invariant.gep362, i64 %indvars.iv302 ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %i.dt ; 4 uses
  %brmerge = select i1 %min.iters.check610, i1 true, i1 %op.rdx634
  br i1 %brmerge, label %scalar.ph609.preheader, label %vector.ph611

vector.ph611:                                     ; preds = %.preheader211
  %i.du = load double, ptr %gep363, align 8, !tbaa !14, !alias.scope !79 ; 3 uses
  %broadcast.splatinsert619 = insertelement <4 x double> poison, double %i.du, i64 0
  %broadcast.splat620 = shufflevector <4 x double> %broadcast.splatinsert619, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert613 = insertelement <4 x double> poison, double %i.du, i64 0
  %broadcast.splat614 = shufflevector <4 x double> %broadcast.splatinsert613, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dv = fneg <4 x double> %broadcast.splat614
  %i.dw = fcmp oge double %i.du, 0.000000e+00
  %i.dx = select i1 %i.dw, <4 x double> %broadcast.splat614, <4 x double> %i.dv
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph611
  %index616 = phi i64 [ 0, %vector.ph611 ], [ %index.next623, %vector.body615 ] ; 4 uses
  %i.dy = getelementptr [8 x i8], ptr %invariant.gep, i64 %index616
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %wide.load617 = load <4 x double>, ptr %i.dz, align 8, !tbaa !14, !alias.scope !80 ; 4 uses
  %i.ea = getelementptr [8 x i8], ptr %13, i64 %index616 ; 2 uses
  %wide.load618 = load <4 x double>, ptr %i.ea, align 8, !tbaa !14, !alias.scope !81, !noalias !82
  %i.eb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load617, <4 x double> %broadcast.splat620, <4 x double> %wide.load618)
  store <4 x double> %i.eb, ptr %i.ea, align 8, !tbaa !14, !alias.scope !81, !noalias !82
  %i.ec = fcmp oge <4 x double> %wide.load617, zeroinitializer
  %i.ed = fneg <4 x double> %wide.load617
  %i.ee = select <4 x i1> %i.ec, <4 x double> %wide.load617, <4 x double> %i.ed
  %i.ef = getelementptr [8 x i8], ptr %14, i64 %index616 ; 2 uses
  %wide.load622 = load <4 x double>, ptr %i.ef, align 8, !tbaa !14, !alias.scope !83, !noalias !84
  %i.eg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ee, <4 x double> %i.dx, <4 x double> %wide.load622)
  store <4 x double> %i.eg, ptr %i.ef, align 8, !tbaa !14, !alias.scope !83, !noalias !84
  %index.next623 = add nuw i64 %index616, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next623, %n.vec612
  br i1 %i.eh, label %middle.block624, label %vector.body615, !llvm.loop !41

middle.block624:                                  ; preds = %vector.body615
  br i1 %cmp.n625, label %._crit_edge221, label %scalar.ph609.preheader

scalar.ph609.preheader:                           ; preds = %.preheader211, %middle.block624
  %indvars.iv.ph = phi i64 [ %i.dr, %middle.block624 ], [ 1, %.preheader211 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph609.prol.loopexit, label %scalar.ph609.prol

scalar.ph609.prol:                                ; preds = %scalar.ph609.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 2 uses
  %i.ei = load double, ptr %gep.prol, align 8, !tbaa !14
  %i.ej = load double, ptr %gep363, align 8, !tbaa !14
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.ph ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !14
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ej, double %i.el)
  store double %i.em, ptr %i.ek, align 8, !tbaa !14
  %i.en = load double, ptr %gep.prol, align 8, !tbaa !14 ; 3 uses
  %i.eo = fcmp oge double %i.en, 0.000000e+00
  %i.ep = fneg double %i.en
  %i.eq = select i1 %i.eo, double %i.en, double %i.ep
  %i.er = load double, ptr %gep363, align 8, !tbaa !14 ; 3 uses
  %i.es = fcmp oge double %i.er, 0.000000e+00
  %i.et = fneg double %i.er
  %i.eu = select i1 %i.es, double %i.er, double %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !14
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.eu, double %i.ew)
  store double %i.ex, ptr %i.ev, align 8, !tbaa !14
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph609.prol.loopexit

scalar.ph609.prol.loopexit:                       ; preds = %scalar.ph609.prol, %scalar.ph609.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph609.preheader ], [ %indvars.iv.next.prol, %scalar.ph609.prol ]
  %i.ey = icmp eq i64 %indvars.iv.ph, %i.di
  br i1 %i.ey, label %._crit_edge221, label %scalar.ph609

scalar.ph609:                                     ; preds = %scalar.ph609.prol.loopexit, %scalar.ph609
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph609 ], [ %indvars.iv.unr, %scalar.ph609.prol.loopexit ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ez = load double, ptr %gep, align 8, !tbaa !14
  %i.fa = load double, ptr %gep363, align 8, !tbaa !14
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !14
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.fa, double %i.fc)
  store double %i.fd, ptr %i.fb, align 8, !tbaa !14
  %i.fe = load double, ptr %gep, align 8, !tbaa !14 ; 3 uses
  %i.ff = fcmp oge double %i.fe, 0.000000e+00
  %i.fg = fneg double %i.fe
  %i.fh = select i1 %i.ff, double %i.fe, double %i.fg
  %i.fi = load double, ptr %gep363, align 8, !tbaa !14 ; 3 uses
  %i.fj = fcmp oge double %i.fi, 0.000000e+00
  %i.fk = fneg double %i.fi
  %i.fl = select i1 %i.fj, double %i.fi, double %i.fk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !14
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fl, double %i.fn)
  store double %i.fo, ptr %i.fm, align 8, !tbaa !14
  %i.fp = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.fp, i64 8     ; 2 uses
  %i.fq = load double, ptr %gep.1, align 8, !tbaa !14
  %i.fr = load double, ptr %gep363, align 8, !tbaa !14
  %i.fs = getelementptr [8 x i8], ptr %13, i64 %indvars.iv ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !14
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.fr, double %i.ft)
  store double %i.fu, ptr %i.fs, align 8, !tbaa !14
  %i.fv = load double, ptr %gep.1, align 8, !tbaa !14 ; 3 uses
  %i.fw = fcmp oge double %i.fv, 0.000000e+00
  %i.fx = fneg double %i.fv
  %i.fy = select i1 %i.fw, double %i.fv, double %i.fx
  %i.fz = load double, ptr %gep363, align 8, !tbaa !14 ; 3 uses
  %i.ga = fcmp oge double %i.fz, 0.000000e+00
  %i.gb = fneg double %i.fz
  %i.gc = select i1 %i.ga, double %i.fz, double %i.gb
  %i.gd = getelementptr [8 x i8], ptr %14, i64 %indvars.iv ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !14
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.gc, double %i.ge)
  store double %i.gf, ptr %i.gd, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge221, label %scalar.ph609, !llvm.loop !42

._crit_edge221:                                   ; preds = %scalar.ph609.prol.loopexit, %scalar.ph609, %middle.block624
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.sink.split, label %.preheader211, !llvm.loop !43

switch.early.test:                                ; preds = %._crit_edge
  switch i8 %i.r, label %bb.d [
    i8 84, label %bb.e
    i8 67, label %bb.e
  ]

bb.d:                                             ; preds = %switch.early.test
  %i.gg = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %.not188232 = icmp slt i32 %i.gg, 1
  br i1 %.not188232, label %.sink.split, label %.preheader210.lr.ph

.preheader210.lr.ph:                              ; preds = %bb.d
  br i1 %.not182216, label %._crit_edge261.thread, label %.preheader210.preheader

.preheader210.preheader:                          ; preds = %.preheader210.lr.ph
  %i.gh = mul nsw i64 %indvars.iv347, %i.x
  %i.gi = add nuw i32 %i.cp, 1
  %i.gj = add nuw i32 %i.gg, 1
  %wide.trip.count335 = zext i32 %i.gj to i64     ; 2 uses
  %invariant.gep374 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 2 uses
  %wide.trip.count330 = zext i32 %i.gi to i64     ; 2 uses
  %i.gk = shl nuw nsw i64 %wide.trip.count330, 3  ; 3 uses
  %scevgep432 = getelementptr i8, ptr %scevgep431, i64 %i.gk
  %scevgep434 = getelementptr i8, ptr %scevgep433, i64 %i.gk ; 2 uses
  %i.gl = shl nuw nsw i64 %wide.trip.count335, 3  ; 2 uses
  %i.gm = getelementptr i8, ptr %scevgep435, i64 %i.gl
  %scevgep436 = getelementptr i8, ptr %i.gm, i64 %i.gk
  %scevgep438 = getelementptr i8, ptr %invariant.gep374, i64 %i.gl ; 2 uses
  %i.gn = insertelement <4 x ptr> poison, ptr %scevgep434, i64 0 ; 2 uses
  %i.go = insertelement <4 x ptr> %i.gn, ptr %scevgep436, i64 1
  %i.gp = insertelement <4 x ptr> %i.go, ptr %scevgep438, i64 2
  %i.gq = shufflevector <4 x ptr> %i.gp, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gr = insertelement <4 x ptr> %i.cj, ptr %scevgep437, i64 2
  %i.gs = shufflevector <4 x ptr> %i.gr, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gt = shufflevector <4 x ptr> %i.gn, <4 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.gu = insertelement <2 x ptr> %i.gt, ptr %scevgep432, i64 0
  %i.gv = shufflevector <2 x ptr> %i.gu, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gw = zext nneg i32 %i.cp to i64
  %i.gx = zext nneg i32 %i.cp to i64              ; 2 uses
  %min.iters.check459 = icmp ugt i32 %i.cp, 7
  %or.cond = select i1 %min.iters.check459, i1 %ident.check.not, i1 false
  %i.gy = icmp ult <4 x ptr> %i.ch, %i.gq
  %i.gz = icmp ult <4 x ptr> %i.gs, %i.gv
  %i.ha = and <4 x i1> %i.gy, %i.gz
  %bound0454 = icmp ult ptr %14, %scevgep438
  %bound1455 = icmp ult ptr %scevgep437, %scevgep434
  %found.conflict456 = and i1 %bound0454, %bound1455
  %i.hb = bitcast <4 x i1> %i.ha to i4
  %i.hc = icmp ne i4 %i.hb, 0
  %op.rdx = or i1 %i.hc, %found.conflict456
  %n.vec461 = and i64 %i.gx, 2147483644           ; 3 uses
  %i.hd = or disjoint i64 %n.vec461, 1
  %cmp.n474 = icmp eq i64 %n.vec461, %i.gx
  %i.he = and i32 %i.cp, 1
  %lcmp.mod645.not = icmp eq i32 %i.he, 0
  br label %.preheader210

.preheader210:                                    ; preds = %.preheader210.preheader, %._crit_edge230
  %indvars.iv332 = phi i64 [ 1, %.preheader210.preheader ], [ %indvars.iv.next333, %._crit_edge230 ] ; 3 uses
  %gep375 = getelementptr [8 x i8], ptr %invariant.gep374, i64 %indvars.iv332 ; 7 uses
  %invariant.gep372 = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv332 ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge648 = select i1 %or.cond.not, i1 true, i1 %op.rdx
  br i1 %brmerge648, label %scalar.ph458.preheader, label %vector.ph460

vector.ph460:                                     ; preds = %.preheader210
  %i.hf = load double, ptr %gep375, align 8, !tbaa !14, !alias.scope !85 ; 3 uses
  %broadcast.splatinsert468 = insertelement <4 x double> poison, double %i.hf, i64 0
  %broadcast.splat469 = shufflevector <4 x double> %broadcast.splatinsert468, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert462 = insertelement <4 x double> poison, double %i.hf, i64 0
  %broadcast.splat463 = shufflevector <4 x double> %broadcast.splatinsert462, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hg = fneg <4 x double> %broadcast.splat463
  %i.hh = fcmp oge double %i.hf, 0.000000e+00
  %i.hi = select i1 %i.hh, <4 x double> %broadcast.splat463, <4 x double> %i.hg
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph460
  %index465 = phi i64 [ 0, %vector.ph460 ], [ %index.next472, %vector.body464 ] ; 4 uses
  %i.hj = getelementptr [8 x i8], ptr %invariant.gep372, i64 %index465
  %i.hk = getelementptr i8, ptr %i.hj, i64 8
  %wide.load466 = load <4 x double>, ptr %i.hk, align 8, !tbaa !14, !alias.scope !86 ; 4 uses
  %i.hl = getelementptr [8 x i8], ptr %13, i64 %index465 ; 2 uses
  %wide.load467 = load <4 x double>, ptr %i.hl, align 8, !tbaa !14, !alias.scope !87, !noalias !88
  %i.hm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load466, <4 x double> %broadcast.splat469, <4 x double> %wide.load467)
  store <4 x double> %i.hm, ptr %i.hl, align 8, !tbaa !14, !alias.scope !87, !noalias !88
  %i.hn = fcmp oge <4 x double> %wide.load466, zeroinitializer
  %i.ho = fneg <4 x double> %wide.load466
  %i.hp = select <4 x i1> %i.hn, <4 x double> %wide.load466, <4 x double> %i.ho
  %i.hq = getelementptr [8 x i8], ptr %14, i64 %index465 ; 2 uses
  %wide.load471 = load <4 x double>, ptr %i.hq, align 8, !tbaa !14, !alias.scope !89, !noalias !90
  %i.hr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hp, <4 x double> %i.hi, <4 x double> %wide.load471)
  store <4 x double> %i.hr, ptr %i.hq, align 8, !tbaa !14, !alias.scope !89, !noalias !90
  %index.next472 = add nuw i64 %index465, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next472, %n.vec461
  br i1 %i.hs, label %middle.block473, label %vector.body464, !llvm.loop !49

middle.block473:                                  ; preds = %vector.body464
  br i1 %cmp.n474, label %._crit_edge230, label %scalar.ph458.preheader

scalar.ph458.preheader:                           ; preds = %.preheader210, %middle.block473
  %indvars.iv327.ph = phi i64 [ %i.hd, %middle.block473 ], [ 1, %.preheader210 ] ; 6 uses
  br i1 %lcmp.mod645.not, label %scalar.ph458.prol.loopexit, label %scalar.ph458.prol

scalar.ph458.prol:                                ; preds = %scalar.ph458.preheader
  %i.ht = mul nsw i64 %indvars.iv327.ph, %i.w
  %gep373.prol = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.ht ; 2 uses
  %i.hu = load double, ptr %gep373.prol, align 8, !tbaa !14
  %i.hv = load double, ptr %gep375, align 8, !tbaa !14
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv327.ph ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !14
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hu, double %i.hv, double %i.hx)
  store double %i.hy, ptr %i.hw, align 8, !tbaa !14
  %i.hz = load double, ptr %gep373.prol, align 8, !tbaa !14 ; 3 uses
  %i.ia = fcmp oge double %i.hz, 0.000000e+00
  %i.ib = fneg double %i.hz
  %i.ic = select i1 %i.ia, double %i.hz, double %i.ib
  %i.id = load double, ptr %gep375, align 8, !tbaa !14 ; 3 uses
  %i.ie = fcmp oge double %i.id, 0.000000e+00
  %i.if = fneg double %i.id
  %i.ig = select i1 %i.ie, double %i.id, double %i.if
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv327.ph ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !14
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.ic, double %i.ig, double %i.ii)
  store double %i.ij, ptr %i.ih, align 8, !tbaa !14
  %indvars.iv.next328.prol = add nuw nsw i64 %indvars.iv327.ph, 1
  br label %scalar.ph458.prol.loopexit

scalar.ph458.prol.loopexit:                       ; preds = %scalar.ph458.prol, %scalar.ph458.preheader
  %indvars.iv327.unr = phi i64 [ %indvars.iv327.ph, %scalar.ph458.preheader ], [ %indvars.iv.next328.prol, %scalar.ph458.prol ]
  %i.ik = icmp eq i64 %indvars.iv327.ph, %i.gw
  br i1 %i.ik, label %._crit_edge230, label %scalar.ph458

scalar.ph458:                                     ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458
  %indvars.iv327 = phi i64 [ %indvars.iv.next328.1, %scalar.ph458 ], [ %indvars.iv327.unr, %scalar.ph458.prol.loopexit ] ; 7 uses
  %i.il = mul nsw i64 %indvars.iv327, %i.w
  %gep373 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.il ; 2 uses
  %i.im = load double, ptr %gep373, align 8, !tbaa !14
  %i.in = load double, ptr %gep375, align 8, !tbaa !14
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv327 ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !14
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.im, double %i.in, double %i.ip)
  store double %i.iq, ptr %i.io, align 8, !tbaa !14
  %i.ir = load double, ptr %gep373, align 8, !tbaa !14 ; 3 uses
  %i.is = fcmp oge double %i.ir, 0.000000e+00
  %i.it = fneg double %i.ir
  %i.iu = select i1 %i.is, double %i.ir, double %i.it
  %i.iv = load double, ptr %gep375, align 8, !tbaa !14 ; 3 uses
  %i.iw = fcmp oge double %i.iv, 0.000000e+00
  %i.ix = fneg double %i.iv
  %i.iy = select i1 %i.iw, double %i.iv, double %i.ix
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv327 ; 2 uses
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !14
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.iy, double %i.ja)
  store double %i.jb, ptr %i.iz, align 8, !tbaa !14
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1
  %i.jc = mul nsw i64 %indvars.iv.next328, %i.w
  %gep373.1 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.jc ; 2 uses
  %i.jd = load double, ptr %gep373.1, align 8, !tbaa !14
  %i.je = load double, ptr %gep375, align 8, !tbaa !14
  %i.jf = getelementptr [8 x i8], ptr %13, i64 %indvars.iv327 ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !14
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.je, double %i.jg)
  store double %i.jh, ptr %i.jf, align 8, !tbaa !14
  %i.ji = load double, ptr %gep373.1, align 8, !tbaa !14 ; 3 uses
  %i.jj = fcmp oge double %i.ji, 0.000000e+00
  %i.jk = fneg double %i.ji
  %i.jl = select i1 %i.jj, double %i.ji, double %i.jk
  %i.jm = load double, ptr %gep375, align 8, !tbaa !14 ; 3 uses
  %i.jn = fcmp oge double %i.jm, 0.000000e+00
  %i.jo = fneg double %i.jm
  %i.jp = select i1 %i.jn, double %i.jm, double %i.jo
  %i.jq = getelementptr [8 x i8], ptr %14, i64 %indvars.iv327 ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !14
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jl, double %i.jp, double %i.jr)
  store double %i.js, ptr %i.jq, align 8, !tbaa !14
  %indvars.iv.next328.1 = add nuw nsw i64 %indvars.iv327, 2 ; 2 uses
  %exitcond331.not.1 = icmp eq i64 %indvars.iv.next328.1, %wide.trip.count330
  br i1 %exitcond331.not.1, label %._crit_edge230, label %scalar.ph458, !llvm.loop !50

._crit_edge230:                                   ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458, %middle.block473
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %exitcond336.not = icmp eq i64 %indvars.iv.next333, %wide.trip.count335
  br i1 %exitcond336.not, label %.sink.split, label %.preheader210, !llvm.loop !51

bb.e:                                             ; preds = %switch.early.test380, %switch.early.test380, %switch.early.test, %switch.early.test
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.jt = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %.not196252 = icmp slt i32 %i.jt, 1
  br i1 %.not196252, label %.sink.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.f
  br i1 %.not182216, label %._crit_edge261.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ju = add nuw i32 %i.cp, 1
  %i.jv = add nuw i32 %i.jt, 1
  %wide.trip.count325 = zext i32 %i.jv to i64     ; 3 uses
  %invariant.gep370 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv347
  %wide.trip.count320 = zext i32 %i.ju to i64     ; 2 uses
  %i.jw = shl nuw nsw i64 %wide.trip.count320, 3  ; 3 uses
  %scevgep478 = getelementptr i8, ptr %scevgep477, i64 %i.jw
  %scevgep480 = getelementptr i8, ptr %scevgep479, i64 %i.jw ; 2 uses
  %i.jx = shl nuw nsw i64 %wide.trip.count325, 3
  %i.jy = add nsw i64 %i.jx, -8
  %i.jz = mul i64 %i.jy, %i.w
  %i.ka = getelementptr i8, ptr %scevgep482, i64 %i.jz
  %scevgep483 = getelementptr i8, ptr %i.ka, i64 %i.jw
  %i.kb = add nsw i64 %wide.trip.count325, -2
  %i.kc = mul i64 %i.aq, %i.kb
  %scevgep486 = getelementptr i8, ptr %scevgep485, i64 %i.kc ; 2 uses
  %i.kd = insertelement <4 x ptr> poison, ptr %scevgep483, i64 0
  %i.ke = insertelement <4 x ptr> %i.kd, ptr %scevgep480, i64 1 ; 2 uses
  %i.kf = insertelement <4 x ptr> %i.ke, ptr %scevgep486, i64 2
  %i.kg = shufflevector <4 x ptr> %i.kf, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.kh = shufflevector <4 x ptr> %i.ke, <4 x ptr> poison, <2 x i32> <i32 poison, i32 1>
  %i.ki = insertelement <2 x ptr> %i.kh, ptr %scevgep478, i64 0
  %i.kj = shufflevector <2 x ptr> %i.ki, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kk = zext nneg i32 %i.cp to i64
  %i.kl = zext nneg i32 %i.cp to i64              ; 2 uses
  %min.iters.check510 = icmp ult i32 %i.cp, 8
  %i.km = icmp ult <4 x ptr> %i.cc, %i.kg
  %i.kn = insertelement <4 x ptr> %i.cd, ptr %scevgep484, i64 2
  %i.ko = shufflevector <4 x ptr> %i.kn, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.kp = icmp ult <4 x ptr> %i.ko, %i.kj
  %i.kq = and <4 x i1> %i.km, %i.kp
  %bound0504 = icmp ult ptr %14, %scevgep486
  %bound1505 = icmp ult ptr %scevgep484, %scevgep480
  %found.conflict506 = and i1 %bound0504, %bound1505
  %i.kr = bitcast <4 x i1> %i.kq to i4
  %i.ks = icmp ne i4 %i.kr, 0
  %op.rdx628 = or i1 %i.ks, %found.conflict506
  %op.rdx630 = or i1 %op.rdx628, %op.rdx629
  %n.vec512 = and i64 %i.kl, 2147483644           ; 3 uses
  %i.kt = or disjoint i64 %n.vec512, 1
  %cmp.n525 = icmp eq i64 %n.vec512, %i.kl
  %i.ku = and i32 %i.cp, 1
  %lcmp.mod643.not = icmp eq i32 %i.ku, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge250
  %indvars.iv322 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next323, %._crit_edge250 ] ; 3 uses
  %i.kv = mul nsw i64 %indvars.iv322, %i.w
  %i.kw = mul nsw i64 %indvars.iv322, %i.x
  %gep371 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.kw ; 7 uses
  %invariant.gep368 = getelementptr [8 x i8], ptr %i.c, i64 %i.kv ; 4 uses
  %brmerge649 = select i1 %min.iters.check510, i1 true, i1 %op.rdx630
  br i1 %brmerge649, label %scalar.ph509.preheader, label %vector.ph511

vector.ph511:                                     ; preds = %.preheader
  %i.kx = load double, ptr %gep371, align 8, !tbaa !14, !alias.scope !91 ; 3 uses
  %broadcast.splatinsert519 = insertelement <4 x double> poison, double %i.kx, i64 0
  %broadcast.splat520 = shufflevector <4 x double> %broadcast.splatinsert519, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert513 = insertelement <4 x double> poison, double %i.kx, i64 0
  %broadcast.splat514 = shufflevector <4 x double> %broadcast.splatinsert513, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ky = fneg <4 x double> %broadcast.splat514
  %i.kz = fcmp oge double %i.kx, 0.000000e+00
  %i.la = select i1 %i.kz, <4 x double> %broadcast.splat514, <4 x double> %i.ky
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph511
  %index516 = phi i64 [ 0, %vector.ph511 ], [ %index.next523, %vector.body515 ] ; 4 uses
  %i.lb = getelementptr [8 x i8], ptr %invariant.gep368, i64 %index516
  %i.lc = getelementptr i8, ptr %i.lb, i64 8
  %wide.load517 = load <4 x double>, ptr %i.lc, align 8, !tbaa !14, !alias.scope !92 ; 4 uses
  %i.ld = getelementptr [8 x i8], ptr %13, i64 %index516 ; 2 uses
  %wide.load518 = load <4 x double>, ptr %i.ld, align 8, !tbaa !14, !alias.scope !93, !noalias !94
  %i.le = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load517, <4 x double> %broadcast.splat520, <4 x double> %wide.load518)
  store <4 x double> %i.le, ptr %i.ld, align 8, !tbaa !14, !alias.scope !93, !noalias !94
  %i.lf = fcmp oge <4 x double> %wide.load517, zeroinitializer
  %i.lg = fneg <4 x double> %wide.load517
  %i.lh = select <4 x i1> %i.lf, <4 x double> %wide.load517, <4 x double> %i.lg
  %i.li = getelementptr [8 x i8], ptr %14, i64 %index516 ; 2 uses
  %wide.load522 = load <4 x double>, ptr %i.li, align 8, !tbaa !14, !alias.scope !95, !noalias !96
  %i.lj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lh, <4 x double> %i.la, <4 x double> %wide.load522)
  store <4 x double> %i.lj, ptr %i.li, align 8, !tbaa !14, !alias.scope !95, !noalias !96
  %index.next523 = add nuw i64 %index516, 4       ; 2 uses
  %i.lk = icmp eq i64 %index.next523, %n.vec512
  br i1 %i.lk, label %middle.block524, label %vector.body515, !llvm.loop !57

middle.block524:                                  ; preds = %vector.body515
  br i1 %cmp.n525, label %._crit_edge250, label %scalar.ph509.preheader

scalar.ph509.preheader:                           ; preds = %.preheader, %middle.block524
  %indvars.iv317.ph = phi i64 [ %i.kt, %middle.block524 ], [ 1, %.preheader ] ; 6 uses
  br i1 %lcmp.mod643.not, label %scalar.ph509.prol.loopexit, label %scalar.ph509.prol

scalar.ph509.prol:                                ; preds = %scalar.ph509.preheader
  %gep369.prol = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv317.ph ; 2 uses
  %i.ll = load double, ptr %gep369.prol, align 8, !tbaa !14
  %i.lm = load double, ptr %gep371, align 8, !tbaa !14
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv317.ph ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !14
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.ll, double %i.lm, double %i.lo)
  store double %i.lp, ptr %i.ln, align 8, !tbaa !14
  %i.lq = load double, ptr %gep369.prol, align 8, !tbaa !14 ; 3 uses
  %i.lr = fcmp oge double %i.lq, 0.000000e+00
  %i.ls = fneg double %i.lq
  %i.lt = select i1 %i.lr, double %i.lq, double %i.ls
  %i.lu = load double, ptr %gep371, align 8, !tbaa !14 ; 3 uses
  %i.lv = fcmp oge double %i.lu, 0.000000e+00
  %i.lw = fneg double %i.lu
  %i.lx = select i1 %i.lv, double %i.lu, double %i.lw
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv317.ph ; 2 uses
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !14
  %i.ma = tail call double @llvm.fmuladd.f64(double %i.lt, double %i.lx, double %i.lz)
  store double %i.ma, ptr %i.ly, align 8, !tbaa !14
  %indvars.iv.next318.prol = add nuw nsw i64 %indvars.iv317.ph, 1
  br label %scalar.ph509.prol.loopexit

scalar.ph509.prol.loopexit:                       ; preds = %scalar.ph509.prol, %scalar.ph509.preheader
  %indvars.iv317.unr = phi i64 [ %indvars.iv317.ph, %scalar.ph509.preheader ], [ %indvars.iv.next318.prol, %scalar.ph509.prol ]
  %i.mb = icmp eq i64 %indvars.iv317.ph, %i.kk
  br i1 %i.mb, label %._crit_edge250, label %scalar.ph509

scalar.ph509:                                     ; preds = %scalar.ph509.prol.loopexit, %scalar.ph509
  %indvars.iv317 = phi i64 [ %indvars.iv.next318.1, %scalar.ph509 ], [ %indvars.iv317.unr, %scalar.ph509.prol.loopexit ] ; 7 uses
  %gep369 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv317 ; 2 uses
  %i.mc = load double, ptr %gep369, align 8, !tbaa !14
  %i.md = load double, ptr %gep371, align 8, !tbaa !14
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv317 ; 2 uses
  %i.mf = load double, ptr %i.me, align 8, !tbaa !14
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.mc, double %i.md, double %i.mf)
  store double %i.mg, ptr %i.me, align 8, !tbaa !14
  %i.mh = load double, ptr %gep369, align 8, !tbaa !14 ; 3 uses
  %i.mi = fcmp oge double %i.mh, 0.000000e+00
  %i.mj = fneg double %i.mh
  %i.mk = select i1 %i.mi, double %i.mh, double %i.mj
  %i.ml = load double, ptr %gep371, align 8, !tbaa !14 ; 3 uses
  %i.mm = fcmp oge double %i.ml, 0.000000e+00
  %i.mn = fneg double %i.ml
  %i.mo = select i1 %i.mm, double %i.ml, double %i.mn
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv317 ; 2 uses
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !14
  %i.mr = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.mo, double %i.mq)
  store double %i.mr, ptr %i.mp, align 8, !tbaa !14
  %i.ms = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv317
  %gep369.1 = getelementptr i8, ptr %i.ms, i64 8  ; 2 uses
  %i.mt = load double, ptr %gep369.1, align 8, !tbaa !14
  %i.mu = load double, ptr %gep371, align 8, !tbaa !14
  %i.mv = getelementptr [8 x i8], ptr %13, i64 %indvars.iv317 ; 2 uses
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !14
  %i.mx = tail call double @llvm.fmuladd.f64(double %i.mt, double %i.mu, double %i.mw)
  store double %i.mx, ptr %i.mv, align 8, !tbaa !14
  %i.my = load double, ptr %gep369.1, align 8, !tbaa !14 ; 3 uses
  %i.mz = fcmp oge double %i.my, 0.000000e+00
  %i.na = fneg double %i.my
  %i.nb = select i1 %i.mz, double %i.my, double %i.na
  %i.nc = load double, ptr %gep371, align 8, !tbaa !14 ; 3 uses
  %i.nd = fcmp oge double %i.nc, 0.000000e+00
  %i.ne = fneg double %i.nc
  %i.nf = select i1 %i.nd, double %i.nc, double %i.ne
  %i.ng = getelementptr [8 x i8], ptr %14, i64 %indvars.iv317 ; 2 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !14
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.nb, double %i.nf, double %i.nh)
  store double %i.ni, ptr %i.ng, align 8, !tbaa !14
  %indvars.iv.next318.1 = add nuw nsw i64 %indvars.iv317, 2 ; 2 uses
  %exitcond321.not.1 = icmp eq i64 %indvars.iv.next318.1, %wide.trip.count320
  br i1 %exitcond321.not.1, label %._crit_edge250, label %scalar.ph509, !llvm.loop !58

._crit_edge250:                                   ; preds = %scalar.ph509.prol.loopexit, %scalar.ph509, %middle.block524
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %.sink.split, label %.preheader, !llvm.loop !59

bb.g:                                             ; preds = %bb.e
  br i1 %or.cond7, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.nj = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %.not192242 = icmp slt i32 %i.nj, 1
  br i1 %.not192242, label %.sink.split, label %.preheader209.lr.ph

.preheader209.lr.ph:                              ; preds = %bb.h
  br i1 %.not182216, label %._crit_edge261.thread, label %.preheader209.preheader

.preheader209.preheader:                          ; preds = %.preheader209.lr.ph
  %i.nk = add nuw i32 %i.cp, 1
  %i.nl = add nuw i32 %i.nj, 1
  %wide.trip.count315 = zext i32 %i.nl to i64     ; 3 uses
  %invariant.gep366 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv347
  %wide.trip.count310 = zext i32 %i.nk to i64     ; 3 uses
  %i.nm = shl nuw nsw i64 %wide.trip.count310, 3  ; 2 uses
  %scevgep531 = getelementptr i8, ptr %scevgep530, i64 %i.nm
  %scevgep533 = getelementptr i8, ptr %scevgep532, i64 %i.nm ; 2 uses
  %i.nn = add nuw nsw i64 %wide.trip.count315, %wide.trip.count310
  %i.no = shl nuw nsw i64 %i.nn, 3
  %scevgep535 = getelementptr i8, ptr %scevgep534, i64 %i.no
  %i.np = add nsw i64 %wide.trip.count315, -2
  %i.nq = mul i64 %i.at, %i.np
  %scevgep538 = getelementptr i8, ptr %scevgep537, i64 %i.nq ; 2 uses
  %i.nr = insertelement <4 x ptr> poison, ptr %scevgep533, i64 0 ; 2 uses
  %i.ns = insertelement <4 x ptr> %i.nr, ptr %scevgep535, i64 1
  %i.nt = insertelement <4 x ptr> %i.ns, ptr %scevgep538, i64 2
  %i.nu = shufflevector <4 x ptr> %i.nt, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.nv = insertelement <4 x ptr> %i.bz, ptr %scevgep536, i64 2
  %i.nw = shufflevector <4 x ptr> %i.nv, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.nx = shufflevector <4 x ptr> %i.nr, <4 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.ny = insertelement <2 x ptr> %i.nx, ptr %scevgep531, i64 0
  %i.nz = shufflevector <2 x ptr> %i.ny, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oa = zext nneg i32 %i.cp to i64
  %i.ob = zext nneg i32 %i.cp to i64              ; 2 uses
  %min.iters.check561 = icmp ugt i32 %i.cp, 7
  %or.cond627 = select i1 %min.iters.check561, i1 %ident.check528.not, i1 false
  %i.oc = icmp ult <4 x ptr> %i.bx, %i.nu
  %i.od = icmp ult <4 x ptr> %i.nw, %i.nz
  %i.oe = and <4 x i1> %i.oc, %i.od
  %bound0555 = icmp ult ptr %14, %scevgep538
  %bound1556 = icmp ult ptr %scevgep536, %scevgep533
  %found.conflict557 = and i1 %bound0555, %bound1556
  %i.of = bitcast <4 x i1> %i.oe to i4
  %i.og = icmp ne i4 %i.of, 0
  %op.rdx631 = or i1 %i.og, %found.conflict557
  %op.rdx632 = or i1 %op.rdx631, %stride.check549
  %n.vec563 = and i64 %i.ob, 2147483644           ; 3 uses
  %i.oh = or disjoint i64 %n.vec563, 1
  %cmp.n576 = icmp eq i64 %n.vec563, %i.ob
  %i.oi = and i32 %i.cp, 1
  %lcmp.mod641.not = icmp eq i32 %i.oi, 0
  br label %.preheader209

.preheader209:                                    ; preds = %.preheader209.preheader, %._crit_edge240
  %indvars.iv312 = phi i64 [ 1, %.preheader209.preheader ], [ %indvars.iv.next313, %._crit_edge240 ] ; 3 uses
  %i.oj = mul nsw i64 %indvars.iv312, %i.x
  %gep367 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %i.oj ; 7 uses
  %invariant.gep364 = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv312 ; 4 uses
  %or.cond627.not = xor i1 %or.cond627, true
  %brmerge650 = select i1 %or.cond627.not, i1 true, i1 %op.rdx632
  br i1 %brmerge650, label %scalar.ph560.preheader, label %vector.ph562

vector.ph562:                                     ; preds = %.preheader209
  %i.ok = load double, ptr %gep367, align 8, !tbaa !14, !alias.scope !97 ; 3 uses
  %broadcast.splatinsert570 = insertelement <4 x double> poison, double %i.ok, i64 0
  %broadcast.splat571 = shufflevector <4 x double> %broadcast.splatinsert570, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert564 = insertelement <4 x double> poison, double %i.ok, i64 0
  %broadcast.splat565 = shufflevector <4 x double> %broadcast.splatinsert564, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ol = fneg <4 x double> %broadcast.splat565
  %i.om = fcmp oge double %i.ok, 0.000000e+00
  %i.on = select i1 %i.om, <4 x double> %broadcast.splat565, <4 x double> %i.ol
  br label %vector.body566

vector.body566:                                   ; preds = %vector.body566, %vector.ph562
  %index567 = phi i64 [ 0, %vector.ph562 ], [ %index.next574, %vector.body566 ] ; 4 uses
  %i.oo = getelementptr [8 x i8], ptr %invariant.gep364, i64 %index567
  %i.op = getelementptr i8, ptr %i.oo, i64 8
  %wide.load568 = load <4 x double>, ptr %i.op, align 8, !tbaa !14, !alias.scope !98 ; 4 uses
  %i.oq = getelementptr [8 x i8], ptr %13, i64 %index567 ; 2 uses
  %wide.load569 = load <4 x double>, ptr %i.oq, align 8, !tbaa !14, !alias.scope !99, !noalias !100
  %i.or = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load568, <4 x double> %broadcast.splat571, <4 x double> %wide.load569)
  store <4 x double> %i.or, ptr %i.oq, align 8, !tbaa !14, !alias.scope !99, !noalias !100
  %i.os = fcmp oge <4 x double> %wide.load568, zeroinitializer
  %i.ot = fneg <4 x double> %wide.load568
  %i.ou = select <4 x i1> %i.os, <4 x double> %wide.load568, <4 x double> %i.ot
  %i.ov = getelementptr [8 x i8], ptr %14, i64 %index567 ; 2 uses
  %wide.load573 = load <4 x double>, ptr %i.ov, align 8, !tbaa !14, !alias.scope !101, !noalias !102
  %i.ow = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ou, <4 x double> %i.on, <4 x double> %wide.load573)
  store <4 x double> %i.ow, ptr %i.ov, align 8, !tbaa !14, !alias.scope !101, !noalias !102
  %index.next574 = add nuw i64 %index567, 4       ; 2 uses
  %i.ox = icmp eq i64 %index.next574, %n.vec563
  br i1 %i.ox, label %middle.block575, label %vector.body566, !llvm.loop !65

middle.block575:                                  ; preds = %vector.body566
  br i1 %cmp.n576, label %._crit_edge240, label %scalar.ph560.preheader

scalar.ph560.preheader:                           ; preds = %.preheader209, %middle.block575
  %indvars.iv307.ph = phi i64 [ %i.oh, %middle.block575 ], [ 1, %.preheader209 ] ; 6 uses
  br i1 %lcmp.mod641.not, label %scalar.ph560.prol.loopexit, label %scalar.ph560.prol

scalar.ph560.prol:                                ; preds = %scalar.ph560.preheader
  %i.oy = mul nsw i64 %indvars.iv307.ph, %i.w
  %gep365.prol = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.oy ; 2 uses
  %i.oz = load double, ptr %gep365.prol, align 8, !tbaa !14
  %i.pa = load double, ptr %gep367, align 8, !tbaa !14
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv307.ph ; 2 uses
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !14
  %i.pd = tail call double @llvm.fmuladd.f64(double %i.oz, double %i.pa, double %i.pc)
  store double %i.pd, ptr %i.pb, align 8, !tbaa !14
  %i.pe = load double, ptr %gep365.prol, align 8, !tbaa !14 ; 3 uses
  %i.pf = fcmp oge double %i.pe, 0.000000e+00
  %i.pg = fneg double %i.pe
  %i.ph = select i1 %i.pf, double %i.pe, double %i.pg
  %i.pi = load double, ptr %gep367, align 8, !tbaa !14 ; 3 uses
  %i.pj = fcmp oge double %i.pi, 0.000000e+00
  %i.pk = fneg double %i.pi
  %i.pl = select i1 %i.pj, double %i.pi, double %i.pk
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv307.ph ; 2 uses
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !14
  %i.po = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.pl, double %i.pn)
  store double %i.po, ptr %i.pm, align 8, !tbaa !14
  %indvars.iv.next308.prol = add nuw nsw i64 %indvars.iv307.ph, 1
  br label %scalar.ph560.prol.loopexit

scalar.ph560.prol.loopexit:                       ; preds = %scalar.ph560.prol, %scalar.ph560.preheader
  %indvars.iv307.unr = phi i64 [ %indvars.iv307.ph, %scalar.ph560.preheader ], [ %indvars.iv.next308.prol, %scalar.ph560.prol ]
  %i.pp = icmp eq i64 %indvars.iv307.ph, %i.oa
  br i1 %i.pp, label %._crit_edge240, label %scalar.ph560

scalar.ph560:                                     ; preds = %scalar.ph560.prol.loopexit, %scalar.ph560
  %indvars.iv307 = phi i64 [ %indvars.iv.next308.1, %scalar.ph560 ], [ %indvars.iv307.unr, %scalar.ph560.prol.loopexit ] ; 7 uses
  %i.pq = mul nsw i64 %indvars.iv307, %i.w
  %gep365 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.pq ; 2 uses
  %i.pr = load double, ptr %gep365, align 8, !tbaa !14
  %i.ps = load double, ptr %gep367, align 8, !tbaa !14
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv307 ; 2 uses
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !14
  %i.pv = tail call double @llvm.fmuladd.f64(double %i.pr, double %i.ps, double %i.pu)
  store double %i.pv, ptr %i.pt, align 8, !tbaa !14
  %i.pw = load double, ptr %gep365, align 8, !tbaa !14 ; 3 uses
  %i.px = fcmp oge double %i.pw, 0.000000e+00
  %i.py = fneg double %i.pw
  %i.pz = select i1 %i.px, double %i.pw, double %i.py
  %i.qa = load double, ptr %gep367, align 8, !tbaa !14 ; 3 uses
  %i.qb = fcmp oge double %i.qa, 0.000000e+00
  %i.qc = fneg double %i.qa
  %i.qd = select i1 %i.qb, double %i.qa, double %i.qc
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv307 ; 2 uses
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !14
  %i.qg = tail call double @llvm.fmuladd.f64(double %i.pz, double %i.qd, double %i.qf)
  store double %i.qg, ptr %i.qe, align 8, !tbaa !14
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1
  %i.qh = mul nsw i64 %indvars.iv.next308, %i.w
  %gep365.1 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.qh ; 2 uses
  %i.qi = load double, ptr %gep365.1, align 8, !tbaa !14
  %i.qj = load double, ptr %gep367, align 8, !tbaa !14
  %i.qk = getelementptr [8 x i8], ptr %13, i64 %indvars.iv307 ; 2 uses
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !14
  %i.qm = tail call double @llvm.fmuladd.f64(double %i.qi, double %i.qj, double %i.ql)
  store double %i.qm, ptr %i.qk, align 8, !tbaa !14
  %i.qn = load double, ptr %gep365.1, align 8, !tbaa !14 ; 3 uses
  %i.qo = fcmp oge double %i.qn, 0.000000e+00
  %i.qp = fneg double %i.qn
  %i.qq = select i1 %i.qo, double %i.qn, double %i.qp
  %i.qr = load double, ptr %gep367, align 8, !tbaa !14 ; 3 uses
  %i.qs = fcmp oge double %i.qr, 0.000000e+00
  %i.qt = fneg double %i.qr
  %i.qu = select i1 %i.qs, double %i.qr, double %i.qt
  %i.qv = getelementptr [8 x i8], ptr %14, i64 %indvars.iv307 ; 2 uses
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !14
  %i.qx = tail call double @llvm.fmuladd.f64(double %i.qq, double %i.qu, double %i.qw)
  store double %i.qx, ptr %i.qv, align 8, !tbaa !14
  %indvars.iv.next308.1 = add nuw nsw i64 %indvars.iv307, 2 ; 2 uses
  %exitcond311.not.1 = icmp eq i64 %indvars.iv.next308.1, %wide.trip.count310
  br i1 %exitcond311.not.1, label %._crit_edge240, label %scalar.ph560, !llvm.loop !66

._crit_edge240:                                   ; preds = %scalar.ph560.prol.loopexit, %scalar.ph560, %middle.block575
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count315
  br i1 %exitcond316.not, label %.sink.split, label %.preheader209, !llvm.loop !67

.sink.split:                                      ; preds = %._crit_edge221, %._crit_edge240, %._crit_edge250, %._crit_edge230, %bb.f, %bb.h, %bb.d, %bb.c, %bb.g
  br i1 %.not182216, label %._crit_edge261.thread, label %.lr.ph260

._crit_edge261.thread:                            ; preds = %.preheader211.lr.ph, %.preheader210.lr.ph, %.preheader.lr.ph, %.preheader209.lr.ph, %.sink.split
  store double 0.000000e+00, ptr %18, align 8, !tbaa !14
  br label %._crit_edge268

.lr.ph260:                                        ; preds = %.sink.split
  %i.qy = mul nsw i64 %indvars.iv347, %i.y
  %i.qz = add nuw i32 %i.cp, 1
  %wide.trip.count340 = zext i32 %i.qz to i64     ; 2 uses
  %invariant.gep376 = getelementptr [8 x i8], ptr %i.i, i64 %i.qy ; 3 uses
  %i.ra = zext nneg i32 %i.cp to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cp, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph260
  %i.rb = shl nuw nsw i64 %wide.trip.count340, 3  ; 3 uses
  %scevgep391 = getelementptr i8, ptr %scevgep, i64 %i.rb ; 4 uses
  %scevgep393 = getelementptr i8, ptr %scevgep392, i64 %i.rb ; 4 uses
  %scevgep397 = getelementptr i8, ptr %invariant.gep376, i64 %i.rb ; 2 uses
  %bound0 = icmp ult ptr %13, %scevgep393
  %bound1 = icmp ult ptr %14, %scevgep391
  %found.conflict = and i1 %bound0, %bound1
  %bound1399 = icmp ult ptr %5, %scevgep391
  %found.conflict400 = and i1 %bound0398, %bound1399
  %conflict.rdx = or i1 %found.conflict, %found.conflict400
  %bound1402 = icmp ult ptr %10, %scevgep391
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %conflict.rdx, %found.conflict403
  %bound0405 = icmp ult ptr %13, %scevgep397
  %bound1406 = icmp ult ptr %scevgep396, %scevgep391
  %found.conflict407 = and i1 %bound0405, %bound1406
  %conflict.rdx408 = or i1 %conflict.rdx404, %found.conflict407
  %bound1410 = icmp ult ptr %5, %scevgep393
  %found.conflict411 = and i1 %bound0409, %bound1410
  %conflict.rdx412 = or i1 %conflict.rdx408, %found.conflict411
  %bound1414 = icmp ult ptr %10, %scevgep393
  %found.conflict415 = and i1 %bound0413, %bound1414
  %conflict.rdx416 = or i1 %conflict.rdx412, %found.conflict415
  %bound0417 = icmp ult ptr %14, %scevgep397
  %bound1418 = icmp ult ptr %scevgep396, %scevgep393
  %found.conflict419 = and i1 %bound0417, %bound1418
  %conflict.rdx420 = or i1 %conflict.rdx416, %found.conflict419
  br i1 %conflict.rdx420, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ra, 2147483644              ; 3 uses
  %i.rc = or disjoint i64 %n.vec, 1
  %i.rd = load double, ptr %5, align 8, !tbaa !14, !alias.scope !103 ; 3 uses
  %broadcast.splatinsert426.a = insertelement <4 x double> poison, double %i.rd, i64 0
  %broadcast.splat427.a = shufflevector <4 x double> %broadcast.splatinsert426.a, <4 x double> poison, <4 x i32> zeroinitializer
  %i.re = load double, ptr %10, align 8, !tbaa !14, !alias.scope !104
  %broadcast.splatinsert424 = insertelement <4 x double> poison, double %i.re, i64 0
  %broadcast.splat425 = shufflevector <4 x double> %broadcast.splatinsert424, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.rd, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rf = fneg <4 x double> %broadcast.splat
  %i.rg = fcmp ult double %i.rd, 0.000000e+00
  %i.rh = select i1 %i.rg, <4 x double> %i.rf, <4 x double> %broadcast.splat
  %i.ri = load double, ptr %10, align 8, !tbaa !14, !alias.scope !104 ; 2 uses
  %broadcast.splatinsert421 = insertelement <4 x double> poison, double %i.ri, i64 0
  %broadcast.splat422 = shufflevector <4 x double> %broadcast.splatinsert421, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rj = fneg <4 x double> %broadcast.splat422
  %i.rk = fcmp ult double %i.ri, 0.000000e+00
  %i.rl = select i1 %i.rk, <4 x double> %i.rj, <4 x double> %broadcast.splat422
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.rm = getelementptr [8 x i8], ptr %13, i64 %index ; 2 uses
  %wide.load.a = load <4 x double>, ptr %i.rm, align 8, !tbaa !14, !alias.scope !105, !noalias !106
  %i.rn = getelementptr [8 x i8], ptr %invariant.gep376, i64 %index
  %i.ro = getelementptr i8, ptr %i.rn, i64 8
  %wide.load423 = load <4 x double>, ptr %i.ro, align 8, !tbaa !14, !alias.scope !107 ; 4 uses
  %i.rp = fmul <4 x double> %broadcast.splat425, %wide.load423
  %i.rq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat427.a, <4 x double> %wide.load.a, <4 x double> %i.rp)
  store <4 x double> %i.rq, ptr %i.rm, align 8, !tbaa !14, !alias.scope !105, !noalias !106
  %i.rr = getelementptr [8 x i8], ptr %14, i64 %index ; 2 uses
  %wide.load428 = load <4 x double>, ptr %i.rr, align 8, !tbaa !14, !alias.scope !108, !noalias !109
  %i.rs = fcmp oge <4 x double> %wide.load423, zeroinitializer
  %i.rt = fneg <4 x double> %wide.load423
  %i.ru = select <4 x i1> %i.rs, <4 x double> %wide.load423, <4 x double> %i.rt
  %i.rv = fmul <4 x double> %i.rl, %i.ru
  %i.rw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.rh, <4 x double> %wide.load428, <4 x double> %i.rv)
  store <4 x double> %i.rw, ptr %i.rr, align 8, !tbaa !14, !alias.scope !108, !noalias !109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rx = icmp eq i64 %index.next, %n.vec
  br i1 %i.rx, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ra
  br i1 %cmp.n, label %.lr.ph267, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph260, %middle.block
  %indvars.iv337.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph260 ], [ %i.rc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %scalar.ph ], [ %indvars.iv337.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ry = load double, ptr %5, align 8, !tbaa !14
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv337 ; 2 uses
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !14
  %i.sb = load double, ptr %10, align 8, !tbaa !14
  %gep377 = getelementptr [8 x i8], ptr %invariant.gep376, i64 %indvars.iv337 ; 2 uses
  %i.sc = load double, ptr %gep377, align 8, !tbaa !14
  %i.sd = fmul double %i.sb, %i.sc
  %i.se = tail call double @llvm.fmuladd.f64(double %i.ry, double %i.sa, double %i.sd)
  store double %i.se, ptr %i.rz, align 8, !tbaa !14
  %i.sf = load double, ptr %5, align 8, !tbaa !14 ; 3 uses
  %i.sg = fcmp ult double %i.sf, 0.000000e+00
  %i.sh = fneg double %i.sf
  %i.si = select i1 %i.sg, double %i.sh, double %i.sf
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv337 ; 2 uses
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !14
  %i.sl = load double, ptr %10, align 8, !tbaa !14 ; 3 uses
  %i.sm = fcmp ult double %i.sl, 0.000000e+00
  %i.sn = fneg double %i.sl
  %i.so = select i1 %i.sm, double %i.sn, double %i.sl
  %i.sp = load double, ptr %gep377, align 8, !tbaa !14 ; 3 uses
  %i.sq = fcmp oge double %i.sp, 0.000000e+00
  %i.sr = fneg double %i.sp
  %i.ss = select i1 %i.sq, double %i.sp, double %i.sr
  %i.st = fmul double %i.so, %i.ss
  %i.su = tail call double @llvm.fmuladd.f64(double %i.si, double %i.sk, double %i.st)
  store double %i.su, ptr %i.sj, align 8, !tbaa !14
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %exitcond341.not = icmp eq i64 %indvars.iv.next338, %wide.trip.count340
  br i1 %exitcond341.not, label %.lr.ph267, label %scalar.ph, !llvm.loop !75

.lr.ph267:                                        ; preds = %scalar.ph, %middle.block
  store double 0.000000e+00, ptr %18, align 8, !tbaa !14
  %i.sv = mul nsw i64 %indvars.iv347, %i.z
  %i.sw = add nuw i32 %i.cp, 1                    ; 2 uses
  %wide.trip.count345 = zext i32 %i.sw to i64
  %.pre = load double, ptr %17, align 8, !tbaa !14
  %invariant.gep378 = getelementptr [8 x i8], ptr %i.n, i64 %i.sv
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph267, %bb.j
  %i.sx = phi double [ 0.000000e+00, %.lr.ph267 ], [ %., %bb.j ] ; 2 uses
  %i.sy = phi double [ %.pre, %.lr.ph267 ], [ %i.tl, %bb.j ]
  %indvars.iv342 = phi i64 [ 1, %.lr.ph267 ], [ %indvars.iv.next343, %bb.j ] ; 5 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv342
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !14
  %gep379 = getelementptr [8 x i8], ptr %invariant.gep378, i64 %indvars.iv342
  %i.tb = load double, ptr %gep379, align 8, !tbaa !14
  %i.tc = fsub double %i.ta, %i.tb                ; 3 uses
  %i.td = fcmp oge double %i.tc, 0.000000e+00
  %i.te = fneg double %i.tc
  %i.tf = select i1 %i.td, double %i.tc, double %i.te
  %i.tg = fdiv double %i.tf, %i.sy                ; 2 uses
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv342
  %i.ti = load double, ptr %i.th, align 8, !tbaa !14 ; 2 uses
  %i.tj = fcmp une double %i.ti, 0.000000e+00
  %i.tk = fdiv double %i.tg, %i.ti
  %spec.select = select i1 %i.tj, double %i.tk, double %i.tg ; 2 uses
  %.inv = fcmp oge double %i.sx, %spec.select
  %. = select i1 %.inv, double %i.sx, double %spec.select ; 3 uses
  store double %., ptr %18, align 8, !tbaa !14
  %i.tl = load double, ptr %17, align 8, !tbaa !14 ; 2 uses
  %i.tm = tail call double @sqrt(double noundef %i.tl) #19
  %i.tn = fmul double %., %i.tm
  %i.to = fcmp ult double %i.tn, 1.000000e+00
  br i1 %i.to, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond346.not = icmp eq i64 %indvars.iv.next343, %wide.trip.count345
  br i1 %exitcond346.not, label %._crit_edge268, label %bb.i, !llvm.loop !76

._crit_edge268:                                   ; preds = %bb.j, %._crit_edge261.thread
  %storemerge199.lcssa = phi i32 [ 1, %._crit_edge261.thread ], [ %i.sw, %bb.j ]
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next348, %wide.trip.count350
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond351.not, label %..loopexit215_crit_edge, label %bb.b, !llvm.loop !77

bb.k:                                             ; preds = %bb.i
  %i.tp = trunc nuw nsw i64 %indvars.iv347 to i32
  %i.tq = trunc nuw nsw i64 %indvars.iv342 to i32
  store i32 %i.tp, ptr @dmmch_.j, align 4, !tbaa !10
  store i32 %i.tq, ptr @dmmch_.i__, align 4, !tbaa !10
  store i32 1, ptr %19, align 4, !tbaa !10
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  %puts201 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  %i.tr = load i32, ptr %2, align 4, !tbaa !10    ; 2 uses
  store i32 1, ptr @dmmch_.i__, align 4, !tbaa !10
  %.not203277 = icmp slt i32 %i.tr, 1
  br i1 %.not203277, label %._crit_edge281, label %.lr.ph280

.lr.ph280:                                        ; preds = %bb.k, %bb.n
  %storemerge202278 = phi i32 [ %i.ui, %bb.n ], [ 1, %bb.k ] ; 5 uses
  %i.ts = load i32, ptr %21, align 4, !tbaa !10
  %.not204 = icmp eq i32 %i.ts, 0
  br i1 %.not204, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph280
  %i.tt = sext i32 %storemerge202278 to i64
  %i.tu = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.tt
  %i.tv = load i32, ptr @dmmch_.j, align 4, !tbaa !10
  %i.tw = mul nsw i32 %i.tv, %i.l
  %i.tx = add nsw i32 %i.tw, %storemerge202278
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph280
  %i.ty = load i32, ptr @dmmch_.j, align 4, !tbaa !10
  %i.tz = mul nsw i32 %i.ty, %i.l
  %i.ua = add nsw i32 %i.tz, %storemerge202278
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ub
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sink385 = phi i32 [ %i.tx, %bb.l ], [ %storemerge202278, %bb.m ]
  %.sink383 = phi ptr [ %i.n, %bb.l ], [ %i.j, %bb.m ]
  %.sink.in = phi ptr [ %i.tu, %bb.l ], [ %i.uc, %bb.m ]
  %.sink = load double, ptr %.sink.in, align 8, !tbaa !14
  %i.ud = sext i32 %.sink385 to i64
  %i.ue = getelementptr inbounds [8 x i8], ptr %.sink383, i64 %i.ud
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !14
  %i.ug = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %storemerge202278, double noundef %.sink, double noundef %i.uf) ; 0 uses
  %i.uh = load i32, ptr @dmmch_.i__, align 4, !tbaa !10 ; 2 uses
  %i.ui = add nsw i32 %i.uh, 1                    ; 2 uses
  store i32 %i.ui, ptr @dmmch_.i__, align 4, !tbaa !10
  %.not203.not = icmp slt i32 %i.uh, %i.tr
  br i1 %.not203.not, label %.lr.ph280, label %._crit_edge281, !llvm.loop !78

._crit_edge281:                                   ; preds = %bb.n, %bb.k
  %i.uj = load i32, ptr %3, align 4, !tbaa !10
  %i.uk = icmp sgt i32 %i.uj, 1
  br i1 %i.uk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge281
  %i.ul = load i32, ptr @dmmch_.j, align 4, !tbaa !10
  %i.um = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %i.ul) ; 0 uses
  br label %bb.p

..loopexit215_crit_edge:                          ; preds = %._crit_edge268
  store i32 %storemerge199.lcssa, ptr @dmmch_.i__, align 4, !tbaa !10
  br label %.loopexit215

.loopexit215:                                     ; preds = %..loopexit215_crit_edge, %bb.a
  %storemerge.lcssa = phi i32 [ %i.aa, %..loopexit215_crit_edge ], [ 1, %bb.a ]
  store i32 %storemerge.lcssa, ptr @dmmch_.j, align 4, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %.loopexit215, %._crit_edge281, %bb.o
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @lde_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %.not7 = icmp slt i32 %i.c, 1
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add nuw i32 %i.c, 1
  %wide.trip.count = zext i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.f = load double, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.h = load double, ptr %i.g, align 8, !tbaa !14
  %i.i = fcmp une double %i.f, %i.h
  br i1 %i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

end_hunk_0
