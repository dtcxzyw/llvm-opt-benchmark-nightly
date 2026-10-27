Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblat3c?download=true
inline.NumInlined: 30
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 37
begin_hunk_0_@dmmch_:bb.a
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
  %scevgep435.a = getelementptr i8, ptr %13, i64 -8
  %scevgep437.a = getelementptr i8, ptr %14, i64 -8
  %scevgep439 = getelementptr i8, ptr %6, i64 -24
  %i.ae = or i64 %i.x, %i.e
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = shl nsw i64 %i.x, 3
  %scevgep485.a = getelementptr i8, ptr %13, i64 -8
  %scevgep487.a = getelementptr i8, ptr %14, i64 -8
  %i.ah = shl nsw i64 %i.w, 3
  %i.ai = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.aj = getelementptr i8, ptr %6, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ai
  %i.al = insertelement <2 x ptr> poison, ptr %14, i64 1 ; 2 uses
  %i.am = insertelement <2 x ptr> %i.al, ptr %i.ak, i64 0
  %i.an = getelementptr i8, <2 x ptr> %i.am, <2 x i64> <i64 8, i64 0>
  %scevgep490 = getelementptr i8, ptr %6, i64 %i.ai
  %i.ao = or i64 %i.x, %i.e
  %i.ap = shl nsw i64 %i.ao, 3                    ; 2 uses
  %i.aq = shl nsw i64 %i.x, 3
  %scevgep540.a = getelementptr i8, ptr %13, i64 -8
  %scevgep542 = getelementptr i8, ptr %14, i64 -8
  %scevgep544 = getelementptr i8, ptr %6, i64 -24
  %i.ar = or i64 %i.x, %i.e
  %i.as = shl nsw i64 %i.ar, 3                    ; 2 uses
  %i.at = shl nsw i64 %i.x, 3
  %scevgep592 = getelementptr i8, ptr %13, i64 -8
  %scevgep594 = getelementptr i8, ptr %14, i64 -8
  %i.au = shl nsw i64 %i.w, 3
  %i.av = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %6, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ay = insertelement <2 x ptr> %i.al, ptr %i.ax, i64 0
  %i.az = getelementptr i8, <2 x ptr> %i.ay, <2 x i64> <i64 8, i64 0>
  %scevgep597 = getelementptr i8, ptr %6, i64 %i.av
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
  %stride.check607 = icmp slt i32 %i.a, 0
  %i.bv = insertelement <4 x ptr> poison, ptr %13, i64 0
  %i.bw = insertelement <4 x ptr> %i.bv, ptr %14, i64 1
  %i.bx = shufflevector <4 x ptr> %i.bw, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.by = insertelement <4 x ptr> poison, ptr %14, i64 0
  %i.bz = insertelement <4 x ptr> %i.by, ptr %6, i64 1
  %ident.check538.not = icmp eq i32 %i.a, 1
  %stride.check559 = icmp slt i32 %i.d, 0
  %i.ca = insertelement <4 x ptr> poison, ptr %13, i64 0
  %i.cb = insertelement <4 x ptr> %i.ca, ptr %14, i64 1
  %i.cc = shufflevector <4 x ptr> %i.cb, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cd = shufflevector <2 x ptr> %i.an, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = or i32 %i.a, %i.d
  %op.rdx645 = icmp slt i32 %i.ce, 0
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
  %scevgep599 = getelementptr i8, ptr %i.be, i64 %i.ck ; 2 uses
  %i.cl = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %scevgep546 = getelementptr i8, ptr %i.bg, i64 %i.cl ; 2 uses
  %scevgep547 = getelementptr i8, ptr %i.bi, i64 %i.cl
  %i.cm = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %scevgep492 = getelementptr i8, ptr %i.bk, i64 %i.cm ; 2 uses
  %scevgep493 = getelementptr i8, ptr %i.bm, i64 %i.cm
  %i.cn = mul i64 %i.ag, %indvar
  %scevgep441 = getelementptr i8, ptr %i.bo, i64 %i.cn ; 2 uses
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
  %scevgep593 = getelementptr i8, ptr %scevgep592, i64 %i.cw
  %scevgep595 = getelementptr i8, ptr %scevgep594, i64 %i.cw ; 2 uses
  %i.cx = shl nuw nsw i64 %wide.trip.count305, 3  ; 2 uses
  %i.cy = add nsw i64 %i.cx, -8
  %i.cz = mul i64 %i.cy, %i.w
  %i.da = getelementptr i8, ptr %scevgep597, i64 %i.cz
  %scevgep598 = getelementptr i8, ptr %i.da, i64 %i.cw
  %scevgep600 = getelementptr i8, ptr %invariant.gep362, i64 %i.cx ; 2 uses
  %i.db = insertelement <4 x ptr> poison, ptr %scevgep598, i64 0
  %i.dc = insertelement <4 x ptr> %i.db, ptr %scevgep595, i64 1 ; 2 uses
  %i.dd = insertelement <4 x ptr> %i.dc, ptr %scevgep600, i64 2
  %i.de = shufflevector <4 x ptr> %i.dd, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.df = shufflevector <4 x ptr> %i.dc, <4 x ptr> poison, <2 x i32> <i32 poison, i32 1>
  %i.dg = insertelement <2 x ptr> %i.df, ptr %scevgep593, i64 0
  %i.dh = shufflevector <2 x ptr> %i.dg, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.di = zext nneg i32 %i.cp to i64
  %i.dj = zext nneg i32 %i.cp to i64              ; 2 uses
  %min.iters.check622 = icmp ult i32 %i.cp, 8
  %i.dk = icmp ult <4 x ptr> %i.bt, %i.de
  %i.dl = insertelement <4 x ptr> %i.bu, ptr %scevgep599, i64 2
  %i.dm = shufflevector <4 x ptr> %i.dl, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dn = icmp ult <4 x ptr> %i.dm, %i.dh
  %i.do = and <4 x i1> %i.dk, %i.dn
  %bound0617 = icmp ult ptr %14, %scevgep600
  %bound1618 = icmp ult ptr %scevgep599, %scevgep595
  %found.conflict619 = and i1 %bound0617, %bound1618
  %i.dp = bitcast <4 x i1> %i.do to i4
  %i.dq = icmp ne i4 %i.dp, 0
  %op.rdx649 = or i1 %i.dq, %found.conflict619
  %op.rdx650 = or i1 %op.rdx649, %stride.check607
  %n.vec624 = and i64 %i.dj, 2147483640           ; 3 uses
  %i.dr = or disjoint i64 %n.vec624, 1
  %cmp.n641 = icmp eq i64 %n.vec624, %i.dj
  %i.ds = and i32 %i.cp, 1
  %lcmp.mod.not = icmp eq i32 %i.ds, 0
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.preheader, %._crit_edge221
  %indvars.iv302 = phi i64 [ 1, %.preheader211.preheader ], [ %indvars.iv.next303, %._crit_edge221 ] ; 3 uses
  %i.dt = mul nsw i64 %indvars.iv302, %i.w
  %gep363 = getelementptr [8 x i8], ptr %invariant.gep362, i64 %indvars.iv302 ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %i.dt ; 4 uses
  %brmerge = select i1 %min.iters.check622, i1 true, i1 %op.rdx650
  br i1 %brmerge, label %scalar.ph621.preheader, label %vector.ph623

vector.ph623:                                     ; preds = %.preheader211
  %i.du = load double, ptr %gep363, align 8, !tbaa !14, !alias.scope !79 ; 2 uses
  %broadcast.splatinsert625 = insertelement <4 x double> poison, double %i.du, i64 0
  %broadcast.splat626 = shufflevector <4 x double> %broadcast.splatinsert625, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dv = fneg <4 x double> %broadcast.splat626
  %i.dw = fcmp oge double %i.du, 0.000000e+00
  %i.dx = select i1 %i.dw, <4 x double> %broadcast.splat626, <4 x double> %i.dv ; 2 uses
  br label %vector.body627

vector.body627:                                   ; preds = %vector.body627, %vector.ph623
  %index628 = phi i64 [ 0, %vector.ph623 ], [ %index.next639, %vector.body627 ] ; 4 uses
  %i.dy = getelementptr [8 x i8], ptr %invariant.gep, i64 %index628 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 8      ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dy, i64 40     ; 2 uses
  %wide.load629 = load <4 x double>, ptr %i.dz, align 8, !tbaa !14, !alias.scope !80
  %wide.load630 = load <4 x double>, ptr %i.ea, align 8, !tbaa !14, !alias.scope !80
  %i.eb = getelementptr [8 x i8], ptr %13, i64 %index628 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32 ; 2 uses
  %wide.load631 = load <4 x double>, ptr %i.eb, align 8, !tbaa !14, !alias.scope !81, !noalias !82
  %wide.load632 = load <4 x double>, ptr %i.ec, align 8, !tbaa !14, !alias.scope !81, !noalias !82
  %i.ed = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load629, <4 x double> %broadcast.splat626, <4 x double> %wide.load631)
  %i.ee = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load630, <4 x double> %broadcast.splat626, <4 x double> %wide.load632)
  store <4 x double> %i.ed, ptr %i.eb, align 8, !tbaa !14, !alias.scope !81, !noalias !82
  store <4 x double> %i.ee, ptr %i.ec, align 8, !tbaa !14, !alias.scope !81, !noalias !82
  %wide.load635 = load <4 x double>, ptr %i.dz, align 8, !tbaa !14, !alias.scope !80 ; 3 uses
  %wide.load636 = load <4 x double>, ptr %i.ea, align 8, !tbaa !14, !alias.scope !80 ; 3 uses
  %i.ef = fcmp oge <4 x double> %wide.load635, zeroinitializer
  %i.eg = fcmp oge <4 x double> %wide.load636, zeroinitializer
  %i.eh = fneg <4 x double> %wide.load635
  %i.ei = fneg <4 x double> %wide.load636
  %i.ej = select <4 x i1> %i.ef, <4 x double> %wide.load635, <4 x double> %i.eh
  %i.ek = select <4 x i1> %i.eg, <4 x double> %wide.load636, <4 x double> %i.ei
  %i.el = getelementptr [8 x i8], ptr %14, i64 %index628 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 2 uses
  %wide.load637 = load <4 x double>, ptr %i.el, align 8, !tbaa !14, !alias.scope !83, !noalias !84
  %wide.load638 = load <4 x double>, ptr %i.em, align 8, !tbaa !14, !alias.scope !83, !noalias !84
  %i.en = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ej, <4 x double> %i.dx, <4 x double> %wide.load637)
  %i.eo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ek, <4 x double> %i.dx, <4 x double> %wide.load638)
  store <4 x double> %i.en, ptr %i.el, align 8, !tbaa !14, !alias.scope !83, !noalias !84
  store <4 x double> %i.eo, ptr %i.em, align 8, !tbaa !14, !alias.scope !83, !noalias !84
  %index.next639 = add nuw i64 %index628, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next639, %n.vec624
  br i1 %i.ep, label %middle.block640, label %vector.body627, !llvm.loop !41

middle.block640:                                  ; preds = %vector.body627
  br i1 %cmp.n641, label %._crit_edge221, label %scalar.ph621.preheader

scalar.ph621.preheader:                           ; preds = %.preheader211, %middle.block640
  %indvars.iv.ph = phi i64 [ %i.dr, %middle.block640 ], [ 1, %.preheader211 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph621.prol.loopexit, label %scalar.ph621.prol

scalar.ph621.prol:                                ; preds = %scalar.ph621.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 2 uses
  %i.eq = load double, ptr %gep.prol, align 8, !tbaa !14
  %i.er = load double, ptr %gep363, align 8, !tbaa !14
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.ph ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !14
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.er, double %i.et)
  store double %i.eu, ptr %i.es, align 8, !tbaa !14
  %i.ev = load double, ptr %gep.prol, align 8, !tbaa !14 ; 3 uses
  %i.ew = fcmp oge double %i.ev, 0.000000e+00
  %i.ex = fneg double %i.ev
  %i.ey = select i1 %i.ew, double %i.ev, double %i.ex
  %i.ez = load double, ptr %gep363, align 8, !tbaa !14 ; 3 uses
  %i.fa = fcmp oge double %i.ez, 0.000000e+00
  %i.fb = fneg double %i.ez
  %i.fc = select i1 %i.fa, double %i.ez, double %i.fb
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !14
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.fc, double %i.fe)
  store double %i.ff, ptr %i.fd, align 8, !tbaa !14
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph621.prol.loopexit

scalar.ph621.prol.loopexit:                       ; preds = %scalar.ph621.prol, %scalar.ph621.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph621.preheader ], [ %indvars.iv.next.prol, %scalar.ph621.prol ]
  %i.fg = icmp eq i64 %indvars.iv.ph, %i.di
  br i1 %i.fg, label %._crit_edge221, label %scalar.ph621

scalar.ph621:                                     ; preds = %scalar.ph621.prol.loopexit, %scalar.ph621
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph621 ], [ %indvars.iv.unr, %scalar.ph621.prol.loopexit ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.fh = load double, ptr %gep, align 8, !tbaa !14
  %i.fi = load double, ptr %gep363, align 8, !tbaa !14
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !14
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fi, double %i.fk)
  store double %i.fl, ptr %i.fj, align 8, !tbaa !14
  %i.fm = load double, ptr %gep, align 8, !tbaa !14 ; 3 uses
  %i.fn = fcmp oge double %i.fm, 0.000000e+00
  %i.fo = fneg double %i.fm
  %i.fp = select i1 %i.fn, double %i.fm, double %i.fo
  %i.fq = load double, ptr %gep363, align 8, !tbaa !14 ; 3 uses
  %i.fr = fcmp oge double %i.fq, 0.000000e+00
  %i.fs = fneg double %i.fq
  %i.ft = select i1 %i.fr, double %i.fq, double %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !14
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.ft, double %i.fv)
  store double %i.fw, ptr %i.fu, align 8, !tbaa !14
  %i.fx = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.fx, i64 8     ; 2 uses
  %i.fy = load double, ptr %gep.1, align 8, !tbaa !14
  %i.fz = load double, ptr %gep363, align 8, !tbaa !14
  %i.ga = getelementptr [8 x i8], ptr %13, i64 %indvars.iv ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !14
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.fz, double %i.gb)
  store double %i.gc, ptr %i.ga, align 8, !tbaa !14
  %i.gd = load double, ptr %gep.1, align 8, !tbaa !14 ; 3 uses
  %i.ge = fcmp oge double %i.gd, 0.000000e+00
  %i.gf = fneg double %i.gd
  %i.gg = select i1 %i.ge, double %i.gd, double %i.gf
  %i.gh = load double, ptr %gep363, align 8, !tbaa !14 ; 3 uses
  %i.gi = fcmp oge double %i.gh, 0.000000e+00
  %i.gj = fneg double %i.gh
  %i.gk = select i1 %i.gi, double %i.gh, double %i.gj
  %i.gl = getelementptr [8 x i8], ptr %14, i64 %indvars.iv ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !14
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.gg, double %i.gk, double %i.gm)
  store double %i.gn, ptr %i.gl, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge221, label %scalar.ph621, !llvm.loop !42

._crit_edge221:                                   ; preds = %scalar.ph621.prol.loopexit, %scalar.ph621, %middle.block640
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.sink.split, label %.preheader211, !llvm.loop !43

switch.early.test:                                ; preds = %._crit_edge
  switch i8 %i.r, label %bb.d [
    i8 84, label %bb.e
    i8 67, label %bb.e
  ]

bb.d:                                             ; preds = %switch.early.test
  %i.go = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %.not188232 = icmp slt i32 %i.go, 1
  br i1 %.not188232, label %.sink.split, label %.preheader210.lr.ph

.preheader210.lr.ph:                              ; preds = %bb.d
  br i1 %.not182216, label %._crit_edge261.thread, label %.preheader210.preheader

.preheader210.preheader:                          ; preds = %.preheader210.lr.ph
  %i.gp = mul nsw i64 %indvars.iv347, %i.x
  %i.gq = add nuw i32 %i.cp, 1
  %i.gr = add nuw i32 %i.go, 1
  %wide.trip.count335 = zext i32 %i.gr to i64     ; 2 uses
  %invariant.gep374 = getelementptr [8 x i8], ptr %i.f, i64 %i.gp ; 2 uses
  %wide.trip.count330 = zext i32 %i.gq to i64     ; 2 uses
  %i.gs = shl nuw nsw i64 %wide.trip.count330, 3  ; 3 uses
  %scevgep436.a = getelementptr i8, ptr %scevgep435.a, i64 %i.gs
  %scevgep438.a = getelementptr i8, ptr %scevgep437.a, i64 %i.gs ; 2 uses
  %i.gt = shl nuw nsw i64 %wide.trip.count335, 3  ; 2 uses
  %i.gu = getelementptr i8, ptr %scevgep439, i64 %i.gt
  %scevgep440 = getelementptr i8, ptr %i.gu, i64 %i.gs
  %scevgep442 = getelementptr i8, ptr %invariant.gep374, i64 %i.gt ; 2 uses
  %i.gv = insertelement <4 x ptr> poison, ptr %scevgep438.a, i64 0 ; 2 uses
  %i.gw = insertelement <4 x ptr> %i.gv, ptr %scevgep440, i64 1
  %i.gx = insertelement <4 x ptr> %i.gw, ptr %scevgep442, i64 2
  %i.gy = shufflevector <4 x ptr> %i.gx, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gz = insertelement <4 x ptr> %i.cj, ptr %scevgep441, i64 2
  %i.ha = shufflevector <4 x ptr> %i.gz, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.hb = shufflevector <4 x ptr> %i.gv, <4 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.hc = insertelement <2 x ptr> %i.hb, ptr %scevgep436.a, i64 0
  %i.hd = shufflevector <2 x ptr> %i.hc, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.he = zext nneg i32 %i.cp to i64
  %i.hf = zext nneg i32 %i.cp to i64              ; 2 uses
  %min.iters.check463 = icmp ugt i32 %i.cp, 7
  %or.cond = select i1 %min.iters.check463, i1 %ident.check.not, i1 false
  %i.hg = icmp ult <4 x ptr> %i.ch, %i.gy
  %i.hh = icmp ult <4 x ptr> %i.ha, %i.hd
  %i.hi = and <4 x i1> %i.hg, %i.hh
  %bound0458 = icmp ult ptr %14, %scevgep442
  %bound1459 = icmp ult ptr %scevgep441, %scevgep438.a
  %found.conflict460 = and i1 %bound0458, %bound1459
  %i.hj = bitcast <4 x i1> %i.hi to i4
  %i.hk = icmp ne i4 %i.hj, 0
  %op.rdx = or i1 %i.hk, %found.conflict460
  %n.vec465 = and i64 %i.hf, 2147483640           ; 3 uses
  %i.hl = or disjoint i64 %n.vec465, 1
  %cmp.n482 = icmp eq i64 %n.vec465, %i.hf
  %i.hm = and i32 %i.cp, 1
  %lcmp.mod661.not = icmp eq i32 %i.hm, 0
  br label %.preheader210

.preheader210:                                    ; preds = %.preheader210.preheader, %._crit_edge230
  %indvars.iv332 = phi i64 [ 1, %.preheader210.preheader ], [ %indvars.iv.next333, %._crit_edge230 ] ; 3 uses
  %gep375 = getelementptr [8 x i8], ptr %invariant.gep374, i64 %indvars.iv332 ; 7 uses
  %invariant.gep372 = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv332 ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge664 = select i1 %or.cond.not, i1 true, i1 %op.rdx
  br i1 %brmerge664, label %scalar.ph462.preheader, label %vector.ph464

vector.ph464:                                     ; preds = %.preheader210
  %i.hn = load double, ptr %gep375, align 8, !tbaa !14, !alias.scope !85 ; 2 uses
  %broadcast.splatinsert466 = insertelement <4 x double> poison, double %i.hn, i64 0
  %broadcast.splat467 = shufflevector <4 x double> %broadcast.splatinsert466, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ho = fneg <4 x double> %broadcast.splat467
  %i.hp = fcmp oge double %i.hn, 0.000000e+00
  %i.hq = select i1 %i.hp, <4 x double> %broadcast.splat467, <4 x double> %i.ho ; 2 uses
  br label %vector.body468

vector.body468:                                   ; preds = %vector.body468, %vector.ph464
  %index469 = phi i64 [ 0, %vector.ph464 ], [ %index.next480, %vector.body468 ] ; 4 uses
  %i.hr = getelementptr [8 x i8], ptr %invariant.gep372, i64 %index469 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 8      ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hr, i64 40     ; 2 uses
  %wide.load470.a = load <4 x double>, ptr %i.hs, align 8, !tbaa !14, !alias.scope !86
  %wide.load471.a = load <4 x double>, ptr %i.ht, align 8, !tbaa !14, !alias.scope !86
  %i.hu = getelementptr [8 x i8], ptr %13, i64 %index469 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32 ; 2 uses
  %wide.load472.a = load <4 x double>, ptr %i.hu, align 8, !tbaa !14, !alias.scope !87, !noalias !88
  %wide.load473.a = load <4 x double>, ptr %i.hv, align 8, !tbaa !14, !alias.scope !87, !noalias !88
  %i.hw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load470.a, <4 x double> %broadcast.splat467, <4 x double> %wide.load472.a)
  %i.hx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load471.a, <4 x double> %broadcast.splat467, <4 x double> %wide.load473.a)
  store <4 x double> %i.hw, ptr %i.hu, align 8, !tbaa !14, !alias.scope !87, !noalias !88
  store <4 x double> %i.hx, ptr %i.hv, align 8, !tbaa !14, !alias.scope !87, !noalias !88
  %wide.load476 = load <4 x double>, ptr %i.hs, align 8, !tbaa !14, !alias.scope !86 ; 3 uses
  %wide.load477 = load <4 x double>, ptr %i.ht, align 8, !tbaa !14, !alias.scope !86 ; 3 uses
  %i.hy = fcmp oge <4 x double> %wide.load476, zeroinitializer
  %i.hz = fcmp oge <4 x double> %wide.load477, zeroinitializer
  %i.ia = fneg <4 x double> %wide.load476
  %i.ib = fneg <4 x double> %wide.load477
  %i.ic = select <4 x i1> %i.hy, <4 x double> %wide.load476, <4 x double> %i.ia
  %i.id = select <4 x i1> %i.hz, <4 x double> %wide.load477, <4 x double> %i.ib
  %i.ie = getelementptr [8 x i8], ptr %14, i64 %index469 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32 ; 2 uses
  %wide.load478 = load <4 x double>, ptr %i.ie, align 8, !tbaa !14, !alias.scope !89, !noalias !90
  %wide.load479 = load <4 x double>, ptr %i.if, align 8, !tbaa !14, !alias.scope !89, !noalias !90
  %i.ig = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ic, <4 x double> %i.hq, <4 x double> %wide.load478)
  %i.ih = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.id, <4 x double> %i.hq, <4 x double> %wide.load479)
  store <4 x double> %i.ig, ptr %i.ie, align 8, !tbaa !14, !alias.scope !89, !noalias !90
  store <4 x double> %i.ih, ptr %i.if, align 8, !tbaa !14, !alias.scope !89, !noalias !90
  %index.next480 = add nuw i64 %index469, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next480, %n.vec465
  br i1 %i.ii, label %middle.block481, label %vector.body468, !llvm.loop !49

middle.block481:                                  ; preds = %vector.body468
  br i1 %cmp.n482, label %._crit_edge230, label %scalar.ph462.preheader

scalar.ph462.preheader:                           ; preds = %.preheader210, %middle.block481
  %indvars.iv327.ph = phi i64 [ %i.hl, %middle.block481 ], [ 1, %.preheader210 ] ; 6 uses
  br i1 %lcmp.mod661.not, label %scalar.ph462.prol.loopexit, label %scalar.ph462.prol

scalar.ph462.prol:                                ; preds = %scalar.ph462.preheader
  %i.ij = mul nsw i64 %indvars.iv327.ph, %i.w
  %gep373.prol = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.ij ; 2 uses
  %i.ik = load double, ptr %gep373.prol, align 8, !tbaa !14
  %i.il = load double, ptr %gep375, align 8, !tbaa !14
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv327.ph ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !14
  %i.io = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.il, double %i.in)
  store double %i.io, ptr %i.im, align 8, !tbaa !14
  %i.ip = load double, ptr %gep373.prol, align 8, !tbaa !14 ; 3 uses
  %i.iq = fcmp oge double %i.ip, 0.000000e+00
  %i.ir = fneg double %i.ip
  %i.is = select i1 %i.iq, double %i.ip, double %i.ir
  %i.it = load double, ptr %gep375, align 8, !tbaa !14 ; 3 uses
  %i.iu = fcmp oge double %i.it, 0.000000e+00
  %i.iv = fneg double %i.it
  %i.iw = select i1 %i.iu, double %i.it, double %i.iv
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv327.ph ; 2 uses
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !14
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.is, double %i.iw, double %i.iy)
  store double %i.iz, ptr %i.ix, align 8, !tbaa !14
  %indvars.iv.next328.prol = add nuw nsw i64 %indvars.iv327.ph, 1
  br label %scalar.ph462.prol.loopexit

scalar.ph462.prol.loopexit:                       ; preds = %scalar.ph462.prol, %scalar.ph462.preheader
  %indvars.iv327.unr = phi i64 [ %indvars.iv327.ph, %scalar.ph462.preheader ], [ %indvars.iv.next328.prol, %scalar.ph462.prol ]
  %i.ja = icmp eq i64 %indvars.iv327.ph, %i.he
  br i1 %i.ja, label %._crit_edge230, label %scalar.ph462

scalar.ph462:                                     ; preds = %scalar.ph462.prol.loopexit, %scalar.ph462
  %indvars.iv327 = phi i64 [ %indvars.iv.next328.1, %scalar.ph462 ], [ %indvars.iv327.unr, %scalar.ph462.prol.loopexit ] ; 7 uses
  %i.jb = mul nsw i64 %indvars.iv327, %i.w
  %gep373 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.jb ; 2 uses
  %i.jc = load double, ptr %gep373, align 8, !tbaa !14
  %i.jd = load double, ptr %gep375, align 8, !tbaa !14
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv327 ; 2 uses
  %i.jf = load double, ptr %i.je, align 8, !tbaa !14
  %i.jg = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.jd, double %i.jf)
  store double %i.jg, ptr %i.je, align 8, !tbaa !14
  %i.jh = load double, ptr %gep373, align 8, !tbaa !14 ; 3 uses
  %i.ji = fcmp oge double %i.jh, 0.000000e+00
  %i.jj = fneg double %i.jh
  %i.jk = select i1 %i.ji, double %i.jh, double %i.jj
  %i.jl = load double, ptr %gep375, align 8, !tbaa !14 ; 3 uses
  %i.jm = fcmp oge double %i.jl, 0.000000e+00
  %i.jn = fneg double %i.jl
  %i.jo = select i1 %i.jm, double %i.jl, double %i.jn
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv327 ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !14
  %i.jr = tail call double @llvm.fmuladd.f64(double %i.jk, double %i.jo, double %i.jq)
  store double %i.jr, ptr %i.jp, align 8, !tbaa !14
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1
  %i.js = mul nsw i64 %indvars.iv.next328, %i.w
  %gep373.1 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.js ; 2 uses
  %i.jt = load double, ptr %gep373.1, align 8, !tbaa !14
  %i.ju = load double, ptr %gep375, align 8, !tbaa !14
  %i.jv = getelementptr [8 x i8], ptr %13, i64 %indvars.iv327 ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !14
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.jt, double %i.ju, double %i.jw)
  store double %i.jx, ptr %i.jv, align 8, !tbaa !14
  %i.jy = load double, ptr %gep373.1, align 8, !tbaa !14 ; 3 uses
  %i.jz = fcmp oge double %i.jy, 0.000000e+00
  %i.ka = fneg double %i.jy
  %i.kb = select i1 %i.jz, double %i.jy, double %i.ka
  %i.kc = load double, ptr %gep375, align 8, !tbaa !14 ; 3 uses
  %i.kd = fcmp oge double %i.kc, 0.000000e+00
  %i.ke = fneg double %i.kc
  %i.kf = select i1 %i.kd, double %i.kc, double %i.ke
  %i.kg = getelementptr [8 x i8], ptr %14, i64 %indvars.iv327 ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !14
  %i.ki = tail call double @llvm.fmuladd.f64(double %i.kb, double %i.kf, double %i.kh)
  store double %i.ki, ptr %i.kg, align 8, !tbaa !14
  %indvars.iv.next328.1 = add nuw nsw i64 %indvars.iv327, 2 ; 2 uses
  %exitcond331.not.1 = icmp eq i64 %indvars.iv.next328.1, %wide.trip.count330
  br i1 %exitcond331.not.1, label %._crit_edge230, label %scalar.ph462, !llvm.loop !50

._crit_edge230:                                   ; preds = %scalar.ph462.prol.loopexit, %scalar.ph462, %middle.block481
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %exitcond336.not = icmp eq i64 %indvars.iv.next333, %wide.trip.count335
  br i1 %exitcond336.not, label %.sink.split, label %.preheader210, !llvm.loop !51

bb.e:                                             ; preds = %switch.early.test380, %switch.early.test380, %switch.early.test, %switch.early.test
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.kj = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %.not196252 = icmp slt i32 %i.kj, 1
  br i1 %.not196252, label %.sink.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.f
  br i1 %.not182216, label %._crit_edge261.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kk = add nuw i32 %i.cp, 1
  %i.kl = add nuw i32 %i.kj, 1
  %wide.trip.count325 = zext i32 %i.kl to i64     ; 3 uses
  %invariant.gep370 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv347
  %wide.trip.count320 = zext i32 %i.kk to i64     ; 2 uses
  %i.km = shl nuw nsw i64 %wide.trip.count320, 3  ; 3 uses
  %scevgep486 = getelementptr i8, ptr %scevgep485.a, i64 %i.km
  %scevgep488.a = getelementptr i8, ptr %scevgep487.a, i64 %i.km ; 2 uses
  %i.kn = shl nuw nsw i64 %wide.trip.count325, 3
  %i.ko = add nsw i64 %i.kn, -8
  %i.kp = mul i64 %i.ko, %i.w
  %i.kq = getelementptr i8, ptr %scevgep490, i64 %i.kp
  %scevgep491 = getelementptr i8, ptr %i.kq, i64 %i.km
  %i.kr = add nsw i64 %wide.trip.count325, -2
  %i.ks = mul i64 %i.aq, %i.kr
  %scevgep494 = getelementptr i8, ptr %scevgep493, i64 %i.ks ; 2 uses
  %i.kt = insertelement <4 x ptr> poison, ptr %scevgep491, i64 0
  %i.ku = insertelement <4 x ptr> %i.kt, ptr %scevgep488.a, i64 1 ; 2 uses
  %i.kv = insertelement <4 x ptr> %i.ku, ptr %scevgep494, i64 2
  %i.kw = shufflevector <4 x ptr> %i.kv, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.kx = shufflevector <4 x ptr> %i.ku, <4 x ptr> poison, <2 x i32> <i32 poison, i32 1>
  %i.ky = insertelement <2 x ptr> %i.kx, ptr %scevgep486, i64 0
  %i.kz = shufflevector <2 x ptr> %i.ky, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.la = zext nneg i32 %i.cp to i64
  %i.lb = zext nneg i32 %i.cp to i64              ; 2 uses
  %min.iters.check516 = icmp ult i32 %i.cp, 8
  %i.lc = icmp ult <4 x ptr> %i.cc, %i.kw
  %i.ld = insertelement <4 x ptr> %i.cd, ptr %scevgep492, i64 2
  %i.le = shufflevector <4 x ptr> %i.ld, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.lf = icmp ult <4 x ptr> %i.le, %i.kz
  %i.lg = and <4 x i1> %i.lc, %i.lf
  %bound0511 = icmp ult ptr %14, %scevgep494
  %bound1512 = icmp ult ptr %scevgep492, %scevgep488.a
  %found.conflict513 = and i1 %bound0511, %bound1512
  %i.lh = bitcast <4 x i1> %i.lg to i4
  %i.li = icmp ne i4 %i.lh, 0
  %op.rdx644 = or i1 %i.li, %found.conflict513
  %op.rdx646 = or i1 %op.rdx644, %op.rdx645
  %n.vec518 = and i64 %i.lb, 2147483640           ; 3 uses
  %i.lj = or disjoint i64 %n.vec518, 1
  %cmp.n535 = icmp eq i64 %n.vec518, %i.lb
  %i.lk = and i32 %i.cp, 1
  %lcmp.mod659.not = icmp eq i32 %i.lk, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge250
  %indvars.iv322 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next323, %._crit_edge250 ] ; 3 uses
  %i.ll = mul nsw i64 %indvars.iv322, %i.w
  %i.lm = mul nsw i64 %indvars.iv322, %i.x
  %gep371 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.lm ; 7 uses
  %invariant.gep368 = getelementptr [8 x i8], ptr %i.c, i64 %i.ll ; 4 uses
  %brmerge665 = select i1 %min.iters.check516, i1 true, i1 %op.rdx646
  br i1 %brmerge665, label %scalar.ph515.preheader, label %vector.ph517

vector.ph517:                                     ; preds = %.preheader
  %i.ln = load double, ptr %gep371, align 8, !tbaa !14, !alias.scope !91 ; 2 uses
  %broadcast.splatinsert519 = insertelement <4 x double> poison, double %i.ln, i64 0
  %broadcast.splat520 = shufflevector <4 x double> %broadcast.splatinsert519, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.lo = fneg <4 x double> %broadcast.splat520
  %i.lp = fcmp oge double %i.ln, 0.000000e+00
  %i.lq = select i1 %i.lp, <4 x double> %broadcast.splat520, <4 x double> %i.lo ; 2 uses
  br label %vector.body521

vector.body521:                                   ; preds = %vector.body521, %vector.ph517
  %index522 = phi i64 [ 0, %vector.ph517 ], [ %index.next533, %vector.body521 ] ; 4 uses
  %i.lr = getelementptr [8 x i8], ptr %invariant.gep368, i64 %index522 ; 2 uses
  %i.ls = getelementptr i8, ptr %i.lr, i64 8      ; 2 uses
  %i.lt = getelementptr i8, ptr %i.lr, i64 40     ; 2 uses
  %wide.load523.a = load <4 x double>, ptr %i.ls, align 8, !tbaa !14, !alias.scope !92
  %wide.load524.a = load <4 x double>, ptr %i.lt, align 8, !tbaa !14, !alias.scope !92
  %i.lu = getelementptr [8 x i8], ptr %13, i64 %index522 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 32 ; 2 uses
  %wide.load525 = load <4 x double>, ptr %i.lu, align 8, !tbaa !14, !alias.scope !93, !noalias !94
  %wide.load526 = load <4 x double>, ptr %i.lv, align 8, !tbaa !14, !alias.scope !93, !noalias !94
  %i.lw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load523.a, <4 x double> %broadcast.splat520, <4 x double> %wide.load525)
  %i.lx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load524.a, <4 x double> %broadcast.splat520, <4 x double> %wide.load526)
  store <4 x double> %i.lw, ptr %i.lu, align 8, !tbaa !14, !alias.scope !93, !noalias !94
  store <4 x double> %i.lx, ptr %i.lv, align 8, !tbaa !14, !alias.scope !93, !noalias !94
  %wide.load529 = load <4 x double>, ptr %i.ls, align 8, !tbaa !14, !alias.scope !92 ; 3 uses
  %wide.load530 = load <4 x double>, ptr %i.lt, align 8, !tbaa !14, !alias.scope !92 ; 3 uses
  %i.ly = fcmp oge <4 x double> %wide.load529, zeroinitializer
  %i.lz = fcmp oge <4 x double> %wide.load530, zeroinitializer
  %i.ma = fneg <4 x double> %wide.load529
  %i.mb = fneg <4 x double> %wide.load530
  %i.mc = select <4 x i1> %i.ly, <4 x double> %wide.load529, <4 x double> %i.ma
  %i.md = select <4 x i1> %i.lz, <4 x double> %wide.load530, <4 x double> %i.mb
  %i.me = getelementptr [8 x i8], ptr %14, i64 %index522 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 32 ; 2 uses
  %wide.load531 = load <4 x double>, ptr %i.me, align 8, !tbaa !14, !alias.scope !95, !noalias !96
  %wide.load532 = load <4 x double>, ptr %i.mf, align 8, !tbaa !14, !alias.scope !95, !noalias !96
  %i.mg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mc, <4 x double> %i.lq, <4 x double> %wide.load531)
  %i.mh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.md, <4 x double> %i.lq, <4 x double> %wide.load532)
  store <4 x double> %i.mg, ptr %i.me, align 8, !tbaa !14, !alias.scope !95, !noalias !96
  store <4 x double> %i.mh, ptr %i.mf, align 8, !tbaa !14, !alias.scope !95, !noalias !96
  %index.next533 = add nuw i64 %index522, 8       ; 2 uses
  %i.mi = icmp eq i64 %index.next533, %n.vec518
  br i1 %i.mi, label %middle.block534, label %vector.body521, !llvm.loop !57

middle.block534:                                  ; preds = %vector.body521
  br i1 %cmp.n535, label %._crit_edge250, label %scalar.ph515.preheader

scalar.ph515.preheader:                           ; preds = %.preheader, %middle.block534
  %indvars.iv317.ph = phi i64 [ %i.lj, %middle.block534 ], [ 1, %.preheader ] ; 6 uses
  br i1 %lcmp.mod659.not, label %scalar.ph515.prol.loopexit, label %scalar.ph515.prol

scalar.ph515.prol:                                ; preds = %scalar.ph515.preheader
  %gep369.prol = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv317.ph ; 2 uses
  %i.mj = load double, ptr %gep369.prol, align 8, !tbaa !14
  %i.mk = load double, ptr %gep371, align 8, !tbaa !14
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv317.ph ; 2 uses
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !14
  %i.mn = tail call double @llvm.fmuladd.f64(double %i.mj, double %i.mk, double %i.mm)
  store double %i.mn, ptr %i.ml, align 8, !tbaa !14
  %i.mo = load double, ptr %gep369.prol, align 8, !tbaa !14 ; 3 uses
  %i.mp = fcmp oge double %i.mo, 0.000000e+00
  %i.mq = fneg double %i.mo
  %i.mr = select i1 %i.mp, double %i.mo, double %i.mq
  %i.ms = load double, ptr %gep371, align 8, !tbaa !14 ; 3 uses
  %i.mt = fcmp oge double %i.ms, 0.000000e+00
  %i.mu = fneg double %i.ms
  %i.mv = select i1 %i.mt, double %i.ms, double %i.mu
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv317.ph ; 2 uses
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !14
  %i.my = tail call double @llvm.fmuladd.f64(double %i.mr, double %i.mv, double %i.mx)
  store double %i.my, ptr %i.mw, align 8, !tbaa !14
  %indvars.iv.next318.prol = add nuw nsw i64 %indvars.iv317.ph, 1
  br label %scalar.ph515.prol.loopexit

scalar.ph515.prol.loopexit:                       ; preds = %scalar.ph515.prol, %scalar.ph515.preheader
  %indvars.iv317.unr = phi i64 [ %indvars.iv317.ph, %scalar.ph515.preheader ], [ %indvars.iv.next318.prol, %scalar.ph515.prol ]
  %i.mz = icmp eq i64 %indvars.iv317.ph, %i.la
  br i1 %i.mz, label %._crit_edge250, label %scalar.ph515

scalar.ph515:                                     ; preds = %scalar.ph515.prol.loopexit, %scalar.ph515
  %indvars.iv317 = phi i64 [ %indvars.iv.next318.1, %scalar.ph515 ], [ %indvars.iv317.unr, %scalar.ph515.prol.loopexit ] ; 7 uses
  %gep369 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv317 ; 2 uses
  %i.na = load double, ptr %gep369, align 8, !tbaa !14
  %i.nb = load double, ptr %gep371, align 8, !tbaa !14
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv317 ; 2 uses
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !14
  %i.ne = tail call double @llvm.fmuladd.f64(double %i.na, double %i.nb, double %i.nd)
  store double %i.ne, ptr %i.nc, align 8, !tbaa !14
  %i.nf = load double, ptr %gep369, align 8, !tbaa !14 ; 3 uses
  %i.ng = fcmp oge double %i.nf, 0.000000e+00
  %i.nh = fneg double %i.nf
  %i.ni = select i1 %i.ng, double %i.nf, double %i.nh
  %i.nj = load double, ptr %gep371, align 8, !tbaa !14 ; 3 uses
  %i.nk = fcmp oge double %i.nj, 0.000000e+00
  %i.nl = fneg double %i.nj
  %i.nm = select i1 %i.nk, double %i.nj, double %i.nl
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv317 ; 2 uses
  %i.no = load double, ptr %i.nn, align 8, !tbaa !14
  %i.np = tail call double @llvm.fmuladd.f64(double %i.ni, double %i.nm, double %i.no)
  store double %i.np, ptr %i.nn, align 8, !tbaa !14
  %i.nq = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv317
  %gep369.1 = getelementptr i8, ptr %i.nq, i64 8  ; 2 uses
  %i.nr = load double, ptr %gep369.1, align 8, !tbaa !14
  %i.ns = load double, ptr %gep371, align 8, !tbaa !14
  %i.nt = getelementptr [8 x i8], ptr %13, i64 %indvars.iv317 ; 2 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !14
  %i.nv = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.ns, double %i.nu)
  store double %i.nv, ptr %i.nt, align 8, !tbaa !14
  %i.nw = load double, ptr %gep369.1, align 8, !tbaa !14 ; 3 uses
  %i.nx = fcmp oge double %i.nw, 0.000000e+00
  %i.ny = fneg double %i.nw
  %i.nz = select i1 %i.nx, double %i.nw, double %i.ny
  %i.oa = load double, ptr %gep371, align 8, !tbaa !14 ; 3 uses
  %i.ob = fcmp oge double %i.oa, 0.000000e+00
  %i.oc = fneg double %i.oa
  %i.od = select i1 %i.ob, double %i.oa, double %i.oc
  %i.oe = getelementptr [8 x i8], ptr %14, i64 %indvars.iv317 ; 2 uses
  %i.of = load double, ptr %i.oe, align 8, !tbaa !14
  %i.og = tail call double @llvm.fmuladd.f64(double %i.nz, double %i.od, double %i.of)
  store double %i.og, ptr %i.oe, align 8, !tbaa !14
  %indvars.iv.next318.1 = add nuw nsw i64 %indvars.iv317, 2 ; 2 uses
  %exitcond321.not.1 = icmp eq i64 %indvars.iv.next318.1, %wide.trip.count320
  br i1 %exitcond321.not.1, label %._crit_edge250, label %scalar.ph515, !llvm.loop !58

._crit_edge250:                                   ; preds = %scalar.ph515.prol.loopexit, %scalar.ph515, %middle.block534
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %.sink.split, label %.preheader, !llvm.loop !59

bb.g:                                             ; preds = %bb.e
  br i1 %or.cond7, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.oh = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %.not192242 = icmp slt i32 %i.oh, 1
  br i1 %.not192242, label %.sink.split, label %.preheader209.lr.ph

.preheader209.lr.ph:                              ; preds = %bb.h
  br i1 %.not182216, label %._crit_edge261.thread, label %.preheader209.preheader

.preheader209.preheader:                          ; preds = %.preheader209.lr.ph
  %i.oi = add nuw i32 %i.cp, 1
  %i.oj = add nuw i32 %i.oh, 1
  %wide.trip.count315 = zext i32 %i.oj to i64     ; 3 uses
  %invariant.gep366 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv347
  %wide.trip.count310 = zext i32 %i.oi to i64     ; 3 uses
  %i.ok = shl nuw nsw i64 %wide.trip.count310, 3  ; 2 uses
  %scevgep541 = getelementptr i8, ptr %scevgep540.a, i64 %i.ok
  %scevgep543 = getelementptr i8, ptr %scevgep542, i64 %i.ok ; 2 uses
  %i.ol = add nuw nsw i64 %wide.trip.count315, %wide.trip.count310
  %i.om = shl nuw nsw i64 %i.ol, 3
  %scevgep545 = getelementptr i8, ptr %scevgep544, i64 %i.om
  %i.on = add nsw i64 %wide.trip.count315, -2
  %i.oo = mul i64 %i.at, %i.on
  %scevgep548 = getelementptr i8, ptr %scevgep547, i64 %i.oo ; 2 uses
  %i.op = insertelement <4 x ptr> poison, ptr %scevgep543, i64 0 ; 2 uses
  %i.oq = insertelement <4 x ptr> %i.op, ptr %scevgep545, i64 1
  %i.or = insertelement <4 x ptr> %i.oq, ptr %scevgep548, i64 2
  %i.os = shufflevector <4 x ptr> %i.or, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ot = insertelement <4 x ptr> %i.bz, ptr %scevgep546, i64 2
  %i.ou = shufflevector <4 x ptr> %i.ot, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ov = shufflevector <4 x ptr> %i.op, <4 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.ow = insertelement <2 x ptr> %i.ov, ptr %scevgep541, i64 0
  %i.ox = shufflevector <2 x ptr> %i.ow, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oy = zext nneg i32 %i.cp to i64
  %i.oz = zext nneg i32 %i.cp to i64              ; 2 uses
  %min.iters.check570 = icmp ugt i32 %i.cp, 7
  %or.cond643 = select i1 %min.iters.check570, i1 %ident.check538.not, i1 false
  %i.pa = icmp ult <4 x ptr> %i.bx, %i.os
  %i.pb = icmp ult <4 x ptr> %i.ou, %i.ox
  %i.pc = and <4 x i1> %i.pa, %i.pb
  %bound0565 = icmp ult ptr %14, %scevgep548
  %bound1566 = icmp ult ptr %scevgep546, %scevgep543
  %found.conflict567 = and i1 %bound0565, %bound1566
  %i.pd = bitcast <4 x i1> %i.pc to i4
  %i.pe = icmp ne i4 %i.pd, 0
  %op.rdx647 = or i1 %i.pe, %found.conflict567
  %op.rdx648 = or i1 %op.rdx647, %stride.check559
  %n.vec572 = and i64 %i.oz, 2147483640           ; 3 uses
  %i.pf = or disjoint i64 %n.vec572, 1
  %cmp.n589 = icmp eq i64 %n.vec572, %i.oz
  %i.pg = and i32 %i.cp, 1
  %lcmp.mod657.not = icmp eq i32 %i.pg, 0
  br label %.preheader209

.preheader209:                                    ; preds = %.preheader209.preheader, %._crit_edge240
  %indvars.iv312 = phi i64 [ 1, %.preheader209.preheader ], [ %indvars.iv.next313, %._crit_edge240 ] ; 3 uses
  %i.ph = mul nsw i64 %indvars.iv312, %i.x
  %gep367 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %i.ph ; 7 uses
  %invariant.gep364 = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv312 ; 4 uses
  %or.cond643.not = xor i1 %or.cond643, true
  %brmerge666 = select i1 %or.cond643.not, i1 true, i1 %op.rdx648
  br i1 %brmerge666, label %scalar.ph569.preheader, label %vector.ph571

vector.ph571:                                     ; preds = %.preheader209
  %i.pi = load double, ptr %gep367, align 8, !tbaa !14, !alias.scope !97 ; 2 uses
  %broadcast.splatinsert573 = insertelement <4 x double> poison, double %i.pi, i64 0
  %broadcast.splat574 = shufflevector <4 x double> %broadcast.splatinsert573, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.pj = fneg <4 x double> %broadcast.splat574
  %i.pk = fcmp oge double %i.pi, 0.000000e+00
  %i.pl = select i1 %i.pk, <4 x double> %broadcast.splat574, <4 x double> %i.pj ; 2 uses
  br label %vector.body575

vector.body575:                                   ; preds = %vector.body575, %vector.ph571
  %index576 = phi i64 [ 0, %vector.ph571 ], [ %index.next587, %vector.body575 ] ; 4 uses
  %i.pm = getelementptr [8 x i8], ptr %invariant.gep364, i64 %index576 ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 8      ; 2 uses
  %i.po = getelementptr i8, ptr %i.pm, i64 40     ; 2 uses
  %wide.load577 = load <4 x double>, ptr %i.pn, align 8, !tbaa !14, !alias.scope !98
  %wide.load578 = load <4 x double>, ptr %i.po, align 8, !tbaa !14, !alias.scope !98
  %i.pp = getelementptr [8 x i8], ptr %13, i64 %index576 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 32 ; 2 uses
  %wide.load579 = load <4 x double>, ptr %i.pp, align 8, !tbaa !14, !alias.scope !99, !noalias !100
  %wide.load580 = load <4 x double>, ptr %i.pq, align 8, !tbaa !14, !alias.scope !99, !noalias !100
  %i.pr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load577, <4 x double> %broadcast.splat574, <4 x double> %wide.load579)
  %i.ps = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load578, <4 x double> %broadcast.splat574, <4 x double> %wide.load580)
  store <4 x double> %i.pr, ptr %i.pp, align 8, !tbaa !14, !alias.scope !99, !noalias !100
  store <4 x double> %i.ps, ptr %i.pq, align 8, !tbaa !14, !alias.scope !99, !noalias !100
  %wide.load583 = load <4 x double>, ptr %i.pn, align 8, !tbaa !14, !alias.scope !98 ; 3 uses
  %wide.load584 = load <4 x double>, ptr %i.po, align 8, !tbaa !14, !alias.scope !98 ; 3 uses
  %i.pt = fcmp oge <4 x double> %wide.load583, zeroinitializer
  %i.pu = fcmp oge <4 x double> %wide.load584, zeroinitializer
  %i.pv = fneg <4 x double> %wide.load583
  %i.pw = fneg <4 x double> %wide.load584
  %i.px = select <4 x i1> %i.pt, <4 x double> %wide.load583, <4 x double> %i.pv
  %i.py = select <4 x i1> %i.pu, <4 x double> %wide.load584, <4 x double> %i.pw
  %i.pz = getelementptr [8 x i8], ptr %14, i64 %index576 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 32 ; 2 uses
  %wide.load585 = load <4 x double>, ptr %i.pz, align 8, !tbaa !14, !alias.scope !101, !noalias !102
  %wide.load586 = load <4 x double>, ptr %i.qa, align 8, !tbaa !14, !alias.scope !101, !noalias !102
  %i.qb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.px, <4 x double> %i.pl, <4 x double> %wide.load585)
  %i.qc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.py, <4 x double> %i.pl, <4 x double> %wide.load586)
  store <4 x double> %i.qb, ptr %i.pz, align 8, !tbaa !14, !alias.scope !101, !noalias !102
  store <4 x double> %i.qc, ptr %i.qa, align 8, !tbaa !14, !alias.scope !101, !noalias !102
  %index.next587 = add nuw i64 %index576, 8       ; 2 uses
  %i.qd = icmp eq i64 %index.next587, %n.vec572
  br i1 %i.qd, label %middle.block588, label %vector.body575, !llvm.loop !65

middle.block588:                                  ; preds = %vector.body575
  br i1 %cmp.n589, label %._crit_edge240, label %scalar.ph569.preheader

scalar.ph569.preheader:                           ; preds = %.preheader209, %middle.block588
  %indvars.iv307.ph = phi i64 [ %i.pf, %middle.block588 ], [ 1, %.preheader209 ] ; 6 uses
  br i1 %lcmp.mod657.not, label %scalar.ph569.prol.loopexit, label %scalar.ph569.prol

scalar.ph569.prol:                                ; preds = %scalar.ph569.preheader
  %i.qe = mul nsw i64 %indvars.iv307.ph, %i.w
  %gep365.prol = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.qe ; 2 uses
  %i.qf = load double, ptr %gep365.prol, align 8, !tbaa !14
  %i.qg = load double, ptr %gep367, align 8, !tbaa !14
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv307.ph ; 2 uses
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !14
  %i.qj = tail call double @llvm.fmuladd.f64(double %i.qf, double %i.qg, double %i.qi)
  store double %i.qj, ptr %i.qh, align 8, !tbaa !14
  %i.qk = load double, ptr %gep365.prol, align 8, !tbaa !14 ; 3 uses
  %i.ql = fcmp oge double %i.qk, 0.000000e+00
  %i.qm = fneg double %i.qk
  %i.qn = select i1 %i.ql, double %i.qk, double %i.qm
  %i.qo = load double, ptr %gep367, align 8, !tbaa !14 ; 3 uses
  %i.qp = fcmp oge double %i.qo, 0.000000e+00
  %i.qq = fneg double %i.qo
  %i.qr = select i1 %i.qp, double %i.qo, double %i.qq
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv307.ph ; 2 uses
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !14
  %i.qu = tail call double @llvm.fmuladd.f64(double %i.qn, double %i.qr, double %i.qt)
  store double %i.qu, ptr %i.qs, align 8, !tbaa !14
  %indvars.iv.next308.prol = add nuw nsw i64 %indvars.iv307.ph, 1
  br label %scalar.ph569.prol.loopexit

scalar.ph569.prol.loopexit:                       ; preds = %scalar.ph569.prol, %scalar.ph569.preheader
  %indvars.iv307.unr = phi i64 [ %indvars.iv307.ph, %scalar.ph569.preheader ], [ %indvars.iv.next308.prol, %scalar.ph569.prol ]
  %i.qv = icmp eq i64 %indvars.iv307.ph, %i.oy
  br i1 %i.qv, label %._crit_edge240, label %scalar.ph569

scalar.ph569:                                     ; preds = %scalar.ph569.prol.loopexit, %scalar.ph569
  %indvars.iv307 = phi i64 [ %indvars.iv.next308.1, %scalar.ph569 ], [ %indvars.iv307.unr, %scalar.ph569.prol.loopexit ] ; 7 uses
  %i.qw = mul nsw i64 %indvars.iv307, %i.w
  %gep365 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.qw ; 2 uses
  %i.qx = load double, ptr %gep365, align 8, !tbaa !14
  %i.qy = load double, ptr %gep367, align 8, !tbaa !14
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv307 ; 2 uses
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !14
  %i.rb = tail call double @llvm.fmuladd.f64(double %i.qx, double %i.qy, double %i.ra)
  store double %i.rb, ptr %i.qz, align 8, !tbaa !14
  %i.rc = load double, ptr %gep365, align 8, !tbaa !14 ; 3 uses
  %i.rd = fcmp oge double %i.rc, 0.000000e+00
  %i.re = fneg double %i.rc
  %i.rf = select i1 %i.rd, double %i.rc, double %i.re
  %i.rg = load double, ptr %gep367, align 8, !tbaa !14 ; 3 uses
  %i.rh = fcmp oge double %i.rg, 0.000000e+00
  %i.ri = fneg double %i.rg
  %i.rj = select i1 %i.rh, double %i.rg, double %i.ri
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv307 ; 2 uses
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !14
  %i.rm = tail call double @llvm.fmuladd.f64(double %i.rf, double %i.rj, double %i.rl)
  store double %i.rm, ptr %i.rk, align 8, !tbaa !14
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1
  %i.rn = mul nsw i64 %indvars.iv.next308, %i.w
  %gep365.1 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.rn ; 2 uses
  %i.ro = load double, ptr %gep365.1, align 8, !tbaa !14
  %i.rp = load double, ptr %gep367, align 8, !tbaa !14
  %i.rq = getelementptr [8 x i8], ptr %13, i64 %indvars.iv307 ; 2 uses
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !14
  %i.rs = tail call double @llvm.fmuladd.f64(double %i.ro, double %i.rp, double %i.rr)
  store double %i.rs, ptr %i.rq, align 8, !tbaa !14
  %i.rt = load double, ptr %gep365.1, align 8, !tbaa !14 ; 3 uses
  %i.ru = fcmp oge double %i.rt, 0.000000e+00
  %i.rv = fneg double %i.rt
  %i.rw = select i1 %i.ru, double %i.rt, double %i.rv
  %i.rx = load double, ptr %gep367, align 8, !tbaa !14 ; 3 uses
  %i.ry = fcmp oge double %i.rx, 0.000000e+00
  %i.rz = fneg double %i.rx
  %i.sa = select i1 %i.ry, double %i.rx, double %i.rz
  %i.sb = getelementptr [8 x i8], ptr %14, i64 %indvars.iv307 ; 2 uses
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !14
  %i.sd = tail call double @llvm.fmuladd.f64(double %i.rw, double %i.sa, double %i.sc)
  store double %i.sd, ptr %i.sb, align 8, !tbaa !14
  %indvars.iv.next308.1 = add nuw nsw i64 %indvars.iv307, 2 ; 2 uses
  %exitcond311.not.1 = icmp eq i64 %indvars.iv.next308.1, %wide.trip.count310
  br i1 %exitcond311.not.1, label %._crit_edge240, label %scalar.ph569, !llvm.loop !66

._crit_edge240:                                   ; preds = %scalar.ph569.prol.loopexit, %scalar.ph569, %middle.block588
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count315
  br i1 %exitcond316.not, label %.sink.split, label %.preheader209, !llvm.loop !67

.sink.split:                                      ; preds = %._crit_edge221, %._crit_edge240, %._crit_edge250, %._crit_edge230, %bb.f, %bb.h, %bb.d, %bb.c, %bb.g
  br i1 %.not182216, label %._crit_edge261.thread, label %.lr.ph260

._crit_edge261.thread:                            ; preds = %.preheader211.lr.ph, %.preheader210.lr.ph, %.preheader.lr.ph, %.preheader209.lr.ph, %.sink.split
  store double 0.000000e+00, ptr %18, align 8, !tbaa !14
  br label %._crit_edge268

.lr.ph260:                                        ; preds = %.sink.split
  %i.se = mul nsw i64 %indvars.iv347, %i.y
  %i.sf = add nuw i32 %i.cp, 1
  %wide.trip.count340 = zext i32 %i.sf to i64     ; 2 uses
  %invariant.gep376 = getelementptr [8 x i8], ptr %i.i, i64 %i.se ; 3 uses
  %i.sg = zext nneg i32 %i.cp to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cp, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph260
  %i.sh = shl nuw nsw i64 %wide.trip.count340, 3  ; 3 uses
  %scevgep391 = getelementptr i8, ptr %scevgep, i64 %i.sh ; 4 uses
  %scevgep393 = getelementptr i8, ptr %scevgep392, i64 %i.sh ; 4 uses
  %scevgep397 = getelementptr i8, ptr %invariant.gep376, i64 %i.sh ; 2 uses
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
  %n.vec = and i64 %i.sg, 2147483640              ; 3 uses
  %i.si = or disjoint i64 %n.vec, 1
  %i.sj = load double, ptr %5, align 8, !tbaa !14, !alias.scope !103 ; 2 uses
  %broadcast.splatinsert428 = insertelement <4 x double> poison, double %i.sj, i64 0
  %broadcast.splat429 = shufflevector <4 x double> %broadcast.splatinsert428, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.sk = load double, ptr %10, align 8, !tbaa !14, !alias.scope !104 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.sk, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.sl = fneg <4 x double> %broadcast.splat429
  %i.sm = fcmp ult double %i.sj, 0.000000e+00
  %i.sn = select i1 %i.sm, <4 x double> %i.sl, <4 x double> %broadcast.splat429 ; 2 uses
  %i.so = fneg <4 x double> %broadcast.splat
  %i.sp = fcmp ult double %i.sk, 0.000000e+00
  %i.sq = select i1 %i.sp, <4 x double> %i.so, <4 x double> %broadcast.splat ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.sr = getelementptr [8 x i8], ptr %13, i64 %index ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 32 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.sr, align 8, !tbaa !14, !alias.scope !105, !noalias !106
  %wide.load423 = load <4 x double>, ptr %i.ss, align 8, !tbaa !14, !alias.scope !105, !noalias !106
  %i.st = getelementptr [8 x i8], ptr %invariant.gep376, i64 %index ; 2 uses
  %i.su = getelementptr i8, ptr %i.st, i64 8      ; 2 uses
  %i.sv = getelementptr i8, ptr %i.st, i64 40     ; 2 uses
  %wide.load424 = load <4 x double>, ptr %i.su, align 8, !tbaa !14, !alias.scope !107
  %wide.load425 = load <4 x double>, ptr %i.sv, align 8, !tbaa !14, !alias.scope !107
  %i.sw = fmul <4 x double> %broadcast.splat, %wide.load424
  %i.sx = fmul <4 x double> %broadcast.splat, %wide.load425
  %i.sy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat429, <4 x double> %wide.load, <4 x double> %i.sw)
  %i.sz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat429, <4 x double> %wide.load423, <4 x double> %i.sx)
  store <4 x double> %i.sy, ptr %i.sr, align 8, !tbaa !14, !alias.scope !105, !noalias !106
  store <4 x double> %i.sz, ptr %i.ss, align 8, !tbaa !14, !alias.scope !105, !noalias !106
  %i.ta = getelementptr [8 x i8], ptr %14, i64 %index ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 32 ; 2 uses
  %wide.load430 = load <4 x double>, ptr %i.ta, align 8, !tbaa !14, !alias.scope !108, !noalias !109
  %wide.load431 = load <4 x double>, ptr %i.tb, align 8, !tbaa !14, !alias.scope !108, !noalias !109
  %wide.load432 = load <4 x double>, ptr %i.su, align 8, !tbaa !14, !alias.scope !107 ; 3 uses
  %wide.load433 = load <4 x double>, ptr %i.sv, align 8, !tbaa !14, !alias.scope !107 ; 3 uses
  %i.tc = fcmp oge <4 x double> %wide.load432, zeroinitializer
  %i.td = fcmp oge <4 x double> %wide.load433, zeroinitializer
  %i.te = fneg <4 x double> %wide.load432
  %i.tf = fneg <4 x double> %wide.load433
  %i.tg = select <4 x i1> %i.tc, <4 x double> %wide.load432, <4 x double> %i.te
  %i.th = select <4 x i1> %i.td, <4 x double> %wide.load433, <4 x double> %i.tf
  %i.ti = fmul <4 x double> %i.sq, %i.tg
  %i.tj = fmul <4 x double> %i.sq, %i.th
  %i.tk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.sn, <4 x double> %wide.load430, <4 x double> %i.ti)
  %i.tl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.sn, <4 x double> %wide.load431, <4 x double> %i.tj)
  store <4 x double> %i.tk, ptr %i.ta, align 8, !tbaa !14, !alias.scope !108, !noalias !109
  store <4 x double> %i.tl, ptr %i.tb, align 8, !tbaa !14, !alias.scope !108, !noalias !109
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.tm = icmp eq i64 %index.next, %n.vec
  br i1 %i.tm, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.sg
  br i1 %cmp.n, label %.lr.ph267, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph260, %middle.block
  %indvars.iv337.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph260 ], [ %i.si, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %scalar.ph ], [ %indvars.iv337.ph, %scalar.ph.preheader ] ; 4 uses
  %i.tn = load double, ptr %5, align 8, !tbaa !14
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv337 ; 2 uses
  %i.tp = load double, ptr %i.to, align 8, !tbaa !14
  %i.tq = load double, ptr %10, align 8, !tbaa !14
  %gep377 = getelementptr [8 x i8], ptr %invariant.gep376, i64 %indvars.iv337 ; 2 uses
  %i.tr = load double, ptr %gep377, align 8, !tbaa !14
  %i.ts = fmul double %i.tq, %i.tr
  %i.tt = tail call double @llvm.fmuladd.f64(double %i.tn, double %i.tp, double %i.ts)
  store double %i.tt, ptr %i.to, align 8, !tbaa !14
  %i.tu = load double, ptr %5, align 8, !tbaa !14 ; 3 uses
  %i.tv = fcmp ult double %i.tu, 0.000000e+00
  %i.tw = fneg double %i.tu
  %i.tx = select i1 %i.tv, double %i.tw, double %i.tu
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv337 ; 2 uses
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !14
  %i.ua = load double, ptr %10, align 8, !tbaa !14 ; 3 uses
  %i.ub = fcmp ult double %i.ua, 0.000000e+00
  %i.uc = fneg double %i.ua
  %i.ud = select i1 %i.ub, double %i.uc, double %i.ua
  %i.ue = load double, ptr %gep377, align 8, !tbaa !14 ; 3 uses
  %i.uf = fcmp oge double %i.ue, 0.000000e+00
  %i.ug = fneg double %i.ue
  %i.uh = select i1 %i.uf, double %i.ue, double %i.ug
  %i.ui = fmul double %i.ud, %i.uh
  %i.uj = tail call double @llvm.fmuladd.f64(double %i.tx, double %i.tz, double %i.ui)
  store double %i.uj, ptr %i.ty, align 8, !tbaa !14
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %exitcond341.not = icmp eq i64 %indvars.iv.next338, %wide.trip.count340
  br i1 %exitcond341.not, label %.lr.ph267, label %scalar.ph, !llvm.loop !75

.lr.ph267:                                        ; preds = %scalar.ph, %middle.block
  store double 0.000000e+00, ptr %18, align 8, !tbaa !14
  %i.uk = mul nsw i64 %indvars.iv347, %i.z
  %i.ul = add nuw i32 %i.cp, 1                    ; 2 uses
  %wide.trip.count345 = zext i32 %i.ul to i64
  %.pre = load double, ptr %17, align 8, !tbaa !14
  %invariant.gep378 = getelementptr [8 x i8], ptr %i.n, i64 %i.uk
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph267, %bb.j
  %i.um = phi double [ 0.000000e+00, %.lr.ph267 ], [ %., %bb.j ] ; 2 uses
  %i.un = phi double [ %.pre, %.lr.ph267 ], [ %i.va, %bb.j ]
  %indvars.iv342 = phi i64 [ 1, %.lr.ph267 ], [ %indvars.iv.next343, %bb.j ] ; 5 uses
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv342
  %i.up = load double, ptr %i.uo, align 8, !tbaa !14
  %gep379 = getelementptr [8 x i8], ptr %invariant.gep378, i64 %indvars.iv342
  %i.uq = load double, ptr %gep379, align 8, !tbaa !14
  %i.ur = fsub double %i.up, %i.uq                ; 3 uses
  %i.us = fcmp oge double %i.ur, 0.000000e+00
  %i.ut = fneg double %i.ur
  %i.uu = select i1 %i.us, double %i.ur, double %i.ut
  %i.uv = fdiv double %i.uu, %i.un                ; 2 uses
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv342
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !14 ; 2 uses
  %i.uy = fcmp une double %i.ux, 0.000000e+00
  %i.uz = fdiv double %i.uv, %i.ux
  %spec.select = select i1 %i.uy, double %i.uz, double %i.uv ; 2 uses
  %.inv = fcmp oge double %i.um, %spec.select
  %. = select i1 %.inv, double %i.um, double %spec.select ; 3 uses
  store double %., ptr %18, align 8, !tbaa !14
  %i.va = load double, ptr %17, align 8, !tbaa !14 ; 2 uses
  %i.vb = tail call double @sqrt(double noundef %i.va) #19
  %i.vc = fmul double %., %i.vb
  %i.vd = fcmp ult double %i.vc, 1.000000e+00
  br i1 %i.vd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond346.not = icmp eq i64 %indvars.iv.next343, %wide.trip.count345
  br i1 %exitcond346.not, label %._crit_edge268, label %bb.i, !llvm.loop !76

._crit_edge268:                                   ; preds = %bb.j, %._crit_edge261.thread
  %storemerge199.lcssa = phi i32 [ 1, %._crit_edge261.thread ], [ %i.ul, %bb.j ]
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next348, %wide.trip.count350
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond351.not, label %..loopexit215_crit_edge, label %bb.b, !llvm.loop !77

bb.k:                                             ; preds = %bb.i
  %i.ve = trunc nuw nsw i64 %indvars.iv347 to i32
  %i.vf = trunc nuw nsw i64 %indvars.iv342 to i32
  store i32 %i.ve, ptr @dmmch_.j, align 4, !tbaa !10
  store i32 %i.vf, ptr @dmmch_.i__, align 4, !tbaa !10
  store i32 1, ptr %19, align 4, !tbaa !10
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  %puts201 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  %i.vg = load i32, ptr %2, align 4, !tbaa !10    ; 2 uses
  store i32 1, ptr @dmmch_.i__, align 4, !tbaa !10
  %.not203277 = icmp slt i32 %i.vg, 1
  br i1 %.not203277, label %._crit_edge281, label %.lr.ph280

.lr.ph280:                                        ; preds = %bb.k, %bb.n
  %storemerge202278 = phi i32 [ %i.vx, %bb.n ], [ 1, %bb.k ] ; 5 uses
  %i.vh = load i32, ptr %21, align 4, !tbaa !10
  %.not204 = icmp eq i32 %i.vh, 0
  br i1 %.not204, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph280
  %i.vi = sext i32 %storemerge202278 to i64
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.vi
  %i.vk = load i32, ptr @dmmch_.j, align 4, !tbaa !10
  %i.vl = mul nsw i32 %i.vk, %i.l
  %i.vm = add nsw i32 %i.vl, %storemerge202278
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph280
  %i.vn = load i32, ptr @dmmch_.j, align 4, !tbaa !10
  %i.vo = mul nsw i32 %i.vn, %i.l
  %i.vp = add nsw i32 %i.vo, %storemerge202278
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.vq
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sink385 = phi i32 [ %i.vm, %bb.l ], [ %storemerge202278, %bb.m ]
  %.sink383 = phi ptr [ %i.n, %bb.l ], [ %i.j, %bb.m ]
  %.sink.in = phi ptr [ %i.vj, %bb.l ], [ %i.vr, %bb.m ]
  %.sink = load double, ptr %.sink.in, align 8, !tbaa !14
  %i.vs = sext i32 %.sink385 to i64
  %i.vt = getelementptr inbounds [8 x i8], ptr %.sink383, i64 %i.vs
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !14
  %i.vv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %storemerge202278, double noundef %.sink, double noundef %i.vu) ; 0 uses
  %i.vw = load i32, ptr @dmmch_.i__, align 4, !tbaa !10 ; 2 uses
  %i.vx = add nsw i32 %i.vw, 1                    ; 2 uses
  store i32 %i.vx, ptr @dmmch_.i__, align 4, !tbaa !10
  %.not203.not = icmp slt i32 %i.vw, %i.vg
  br i1 %.not203.not, label %.lr.ph280, label %._crit_edge281, !llvm.loop !78

._crit_edge281:                                   ; preds = %bb.n, %bb.k
  %i.vy = load i32, ptr %3, align 4, !tbaa !10
  %i.vz = icmp sgt i32 %i.vy, 1
  br i1 %i.vz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge281
  %i.wa = load i32, ptr @dmmch_.j, align 4, !tbaa !10
  %i.wb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %i.wa) ; 0 uses
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
end_hunk_0
