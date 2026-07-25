loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@hypre_CSRMatrixMatvec:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18   ; 4 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !19     ; 12 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !19     ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !22   ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !23   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !24   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !23  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.ad = fcmp oeq double %0, 0.000000e+00
  br i1 %i.ad, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.ae = mul nsw i32 %i.u, %i.g                  ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph229.preheader, label %.loopexit

.lr.ph229.preheader:                              ; preds = %.preheader
  %wide.trip.count302 = zext nneg i32 %i.ae to i64 ; 3 uses
  %min.iters.check354 = icmp ult i32 %i.ae, 4
  br i1 %min.iters.check354, label %.lr.ph229.preheader368, label %vector.ph355

vector.ph355:                                     ; preds = %.lr.ph229.preheader
  %n.vec357 = and i64 %wide.trip.count302, 2147483644 ; 3 uses
  %broadcast.splatinsert358 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat359 = shufflevector <2 x double> %broadcast.splatinsert358, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph355
  %index361 = phi i64 [ 0, %vector.ph355 ], [ %index.next364, %vector.body360 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index361 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load362 = load <2 x double>, ptr %i.ag, align 8, !tbaa !25
  %wide.load363 = load <2 x double>, ptr %i.ah, align 8, !tbaa !25
  %i.ai = fmul <2 x double> %broadcast.splat359, %wide.load362
  %i.aj = fmul <2 x double> %broadcast.splat359, %wide.load363
  store <2 x double> %i.ai, ptr %i.ag, align 8, !tbaa !25
  store <2 x double> %i.aj, ptr %i.ah, align 8, !tbaa !25
  %index.next364 = add nuw i64 %index361, 4       ; 2 uses
  %i.ak = icmp eq i64 %index.next364, %n.vec357
  br i1 %i.ak, label %middle.block365, label %vector.body360, !llvm.loop !27

middle.block365:                                  ; preds = %vector.body360
  %cmp.n366 = icmp eq i64 %n.vec357, %wide.trip.count302
  br i1 %cmp.n366, label %.loopexit, label %.lr.ph229.preheader368

.lr.ph229.preheader368:                           ; preds = %.lr.ph229.preheader, %middle.block365
  %indvars.iv299.ph = phi i64 [ 0, %.lr.ph229.preheader ], [ %n.vec357, %middle.block365 ]
  br label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph229.preheader368, %.lr.ph229
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %.lr.ph229 ], [ %indvars.iv299.ph, %.lr.ph229.preheader368 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv299 ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !25
  %i.an = fmul double %3, %i.am
  store double %i.an, ptr %i.al, align 8, !tbaa !25
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count302
  br i1 %exitcond303.not, label %.loopexit, label %.lr.ph229, !llvm.loop !31

bb.b:                                             ; preds = %bb.a
  %i.ao = fdiv double %3, %0                      ; 4 uses
  %i.ap = fcmp une double %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.c, label %.loopexit193

bb.c:                                             ; preds = %bb.b
  %i.aq = fcmp oeq double %i.ao, 0.000000e+00
  %i.ar = mul nsw i32 %i.u, %i.g                  ; 4 uses
  %i.as = icmp sgt i32 %i.ar, 0                   ; 2 uses
  br i1 %i.aq, label %.preheader192, label %.preheader194

.preheader194:                                    ; preds = %bb.c
  br i1 %i.as, label %.lr.ph.preheader, label %.loopexit193

.lr.ph.preheader:                                 ; preds = %.preheader194
  %wide.trip.count = zext nneg i32 %i.ar to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ar, 4
  br i1 %min.iters.check, label %.lr.ph.preheader377, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.at, align 8, !tbaa !25
  %wide.load337 = load <2 x double>, ptr %i.au, align 8, !tbaa !25
  %i.av = fmul <2 x double> %broadcast.splat, %wide.load
  %i.aw = fmul <2 x double> %broadcast.splat, %wide.load337
  store <2 x double> %i.av, ptr %i.at, align 8, !tbaa !25
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit193, label %.lr.ph.preheader377

.lr.ph.preheader377:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader192:                                    ; preds = %bb.c
  br i1 %i.as, label %.lr.ph198.preheader, label %.loopexit193

.lr.ph198.preheader:                              ; preds = %.preheader192
  %i.ay = zext nneg i32 %i.ar to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.az, i1 false), !tbaa !25
  br label %.loopexit193

.lr.ph:                                           ; preds = %.lr.ph.preheader377, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader377 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !25
  %i.bc = fmul double %i.ao, %i.bb
  store double %i.bc, ptr %i.ba, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit193, label %.lr.ph, !llvm.loop !33

.loopexit193:                                     ; preds = %.lr.ph, %middle.block, %.lr.ph198.preheader, %.preheader194, %.preheader192, %bb.b
  %i.bd = sitofp i32 %i.m to double
  %i.be = sitofp i32 %i.g to double
  %i.bf = fmul nnan double %i.be, f0x3FE6666666666666
  %i.bg = fcmp ogt double %i.bf, %i.bd
  br i1 %i.bg, label %.preheader186, label %.preheader190

.preheader190:                                    ; preds = %.loopexit193
  %i.bh = icmp sgt i32 %i.g, 0
  br i1 %i.bh, label %.lr.ph209, label %.loopexit187

.lr.ph209:                                        ; preds = %.preheader190
  %i.bi = icmp eq i32 %i.u, 1
  br i1 %i.bi, label %.lr.ph209.split.us.preheader, label %.lr.ph209.split

.lr.ph209.split.us.preheader:                     ; preds = %.lr.ph209
  %wide.trip.count267 = zext nneg i32 %i.g to i64
  br label %.lr.ph209.split.us

.lr.ph209.split.us:                               ; preds = %.lr.ph209.split.us.preheader, %._crit_edge.us210
  %indvars.iv264 = phi i64 [ 0, %.lr.ph209.split.us.preheader ], [ %indvars.iv.next265, %._crit_edge.us210 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv264 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !25 ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4  ; 2 uses
  %i.bp = icmp slt i32 %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph206.us.preheader, label %._crit_edge.us210

.lr.ph206.us.preheader:                           ; preds = %.lr.ph209.split.us
  %i.bq = sext i32 %i.bm to i64                   ; 4 uses
  %wide.trip.count262 = sext i32 %i.bo to i64     ; 3 uses
  %i.br = sub nsw i64 %wide.trip.count262, %i.bq
  %xtraiter378 = and i64 %i.br, 3                 ; 2 uses
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %.lr.ph206.us.prol.loopexit, label %.lr.ph206.us.prol

.lr.ph206.us.prol:                                ; preds = %.lr.ph206.us.preheader, %.lr.ph206.us.prol
  %indvars.iv259.prol = phi i64 [ %indvars.iv.next260.prol, %.lr.ph206.us.prol ], [ %i.bq, %.lr.ph206.us.preheader ] ; 3 uses
  %.0166205.us.prol = phi double [ %i.bz, %.lr.ph206.us.prol ], [ %i.bk, %.lr.ph206.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph206.us.prol ], [ 0, %.lr.ph206.us.preheader ]
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv259.prol
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !25
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv259.prol
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !25
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.by, double %.0166205.us.prol) ; 3 uses
  %indvars.iv.next260.prol = add nsw i64 %indvars.iv259.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter378
  br i1 %prol.iter.cmp.not, label %.lr.ph206.us.prol.loopexit, label %.lr.ph206.us.prol, !llvm.loop !34

.lr.ph206.us.prol.loopexit:                       ; preds = %.lr.ph206.us.prol, %.lr.ph206.us.preheader
  %.lcssa374.unr = phi double [ poison, %.lr.ph206.us.preheader ], [ %i.bz, %.lr.ph206.us.prol ]
  %indvars.iv259.unr = phi i64 [ %i.bq, %.lr.ph206.us.preheader ], [ %indvars.iv.next260.prol, %.lr.ph206.us.prol ]
  %.0166205.us.unr = phi double [ %i.bk, %.lr.ph206.us.preheader ], [ %i.bz, %.lr.ph206.us.prol ]
  %i.ca = sub nsw i64 %i.bq, %wide.trip.count262
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.us210, label %.lr.ph206.us

._crit_edge.us210:                                ; preds = %.lr.ph206.us.prol.loopexit, %.lr.ph206.us, %.lr.ph209.split.us
  %.0166.lcssa.us = phi double [ %i.bk, %.lr.ph209.split.us ], [ %.lcssa374.unr, %.lr.ph206.us.prol.loopexit ], [ %i.dh, %.lr.ph206.us ]
  store double %.0166.lcssa.us, ptr %i.bj, align 8, !tbaa !25
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268.not, label %.loopexit187, label %.lr.ph209.split.us, !llvm.loop !36

.lr.ph206.us:                                     ; preds = %.lr.ph206.us.prol.loopexit, %.lr.ph206.us
  %indvars.iv259 = phi i64 [ %indvars.iv.next260.3, %.lr.ph206.us ], [ %indvars.iv259.unr, %.lr.ph206.us.prol.loopexit ] ; 6 uses
  %.0166205.us = phi double [ %i.dh, %.lr.ph206.us ], [ %.0166205.us.unr, %.lr.ph206.us.prol.loopexit ]
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv259
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !25
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv259
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !25
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.ci, double %.0166205.us)
  %indvars.iv.next260 = add nsw i64 %indvars.iv259, 1 ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next260
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !25
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next260
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !25
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cq, double %i.cj)
  %indvars.iv.next260.1 = add nsw i64 %indvars.iv259, 2 ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next260.1
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !25
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next260.1
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !25
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cy, double %i.cr)
  %indvars.iv.next260.2 = add nsw i64 %indvars.iv259, 3 ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next260.2
  %i.db = load double, ptr %i.da, align 8, !tbaa !25
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next260.2
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !25
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dg, double %i.cz) ; 2 uses
  %indvars.iv.next260.3 = add nsw i64 %indvars.iv259, 4 ; 2 uses
  %exitcond263.not.3 = icmp eq i64 %indvars.iv.next260.3, %wide.trip.count262
  br i1 %exitcond263.not.3, label %._crit_edge.us210, label %.lr.ph206.us, !llvm.loop !37

.lr.ph209.split:                                  ; preds = %.lr.ph209
  %i.di = icmp sgt i32 %i.u, 0
  br i1 %i.di, label %.preheader188.preheader, label %.loopexit187

.preheader188.preheader:                          ; preds = %.lr.ph209.split
  %i.dj = sext i32 %i.y to i64
  %i.dk = sext i32 %i.ac to i64
  %i.dl = sext i32 %i.w to i64
  %wide.trip.count257 = zext nneg i32 %i.g to i64
  %wide.trip.count252 = zext nneg i32 %i.u to i64
  br label %.preheader188

.preheader186:                                    ; preds = %.loopexit193
  %i.dm = icmp sgt i32 %i.m, 0
  br i1 %i.dm, label %.lr.ph223, label %.loopexit187

.lr.ph223:                                        ; preds = %.preheader186
  %i.dn = icmp eq i32 %i.u, 1
  br i1 %i.dn, label %.lr.ph223.split.us.preheader, label %.lr.ph223.split

.lr.ph223.split.us.preheader:                     ; preds = %.lr.ph223
  %wide.trip.count292 = zext nneg i32 %i.m to i64
  br label %.lr.ph223.split.us

.lr.ph223.split.us:                               ; preds = %.lr.ph223.split.us.preheader, %._crit_edge.us224
  %indvars.iv289 = phi i64 [ 0, %.lr.ph223.split.us.preheader ], [ %indvars.iv.next290, %._crit_edge.us224 ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv289
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.dq ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !25 ; 3 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dq ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4  ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dt, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !4  ; 2 uses
  %i.dx = icmp slt i32 %i.du, %i.dw
  br i1 %i.dx, label %.lr.ph221.us.preheader, label %._crit_edge.us224

.lr.ph221.us.preheader:                           ; preds = %.lr.ph223.split.us
  %i.dy = sext i32 %i.du to i64                   ; 4 uses
  %wide.trip.count287 = sext i32 %i.dw to i64     ; 3 uses
  %i.dz = sub nsw i64 %wide.trip.count287, %i.dy
  %xtraiter385 = and i64 %i.dz, 3                 ; 2 uses
  %lcmp.mod386.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %.lr.ph221.us.prol.loopexit, label %.lr.ph221.us.prol

.lr.ph221.us.prol:                                ; preds = %.lr.ph221.us.preheader, %.lr.ph221.us.prol
  %indvars.iv284.prol = phi i64 [ %indvars.iv.next285.prol, %.lr.ph221.us.prol ], [ %i.dy, %.lr.ph221.us.preheader ] ; 3 uses
  %.0175219.us.prol = phi double [ %i.eh, %.lr.ph221.us.prol ], [ %i.ds, %.lr.ph221.us.preheader ]
  %prol.iter387 = phi i64 [ %prol.iter387.next, %.lr.ph221.us.prol ], [ 0, %.lr.ph221.us.preheader ]
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv284.prol
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !25
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv284.prol
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ee
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !25
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.eg, double %.0175219.us.prol) ; 3 uses
  %indvars.iv.next285.prol = add nsw i64 %indvars.iv284.prol, 1 ; 2 uses
  %prol.iter387.next = add i64 %prol.iter387, 1   ; 2 uses
  %prol.iter387.cmp.not = icmp eq i64 %prol.iter387.next, %xtraiter385
  br i1 %prol.iter387.cmp.not, label %.lr.ph221.us.prol.loopexit, label %.lr.ph221.us.prol, !llvm.loop !38

.lr.ph221.us.prol.loopexit:                       ; preds = %.lr.ph221.us.prol, %.lr.ph221.us.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph221.us.preheader ], [ %i.eh, %.lr.ph221.us.prol ]
  %indvars.iv284.unr = phi i64 [ %i.dy, %.lr.ph221.us.preheader ], [ %indvars.iv.next285.prol, %.lr.ph221.us.prol ]
  %.0175219.us.unr = phi double [ %i.ds, %.lr.ph221.us.preheader ], [ %i.eh, %.lr.ph221.us.prol ]
  %i.ei = sub nsw i64 %i.dy, %wide.trip.count287
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %._crit_edge.us224, label %.lr.ph221.us

._crit_edge.us224:                                ; preds = %.lr.ph221.us.prol.loopexit, %.lr.ph221.us, %.lr.ph223.split.us
  %.0175.lcssa.us = phi double [ %i.ds, %.lr.ph223.split.us ], [ %.lcssa.unr, %.lr.ph221.us.prol.loopexit ], [ %i.fp, %.lr.ph221.us ]
  store double %.0175.lcssa.us, ptr %i.dr, align 8, !tbaa !25
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %.loopexit187, label %.lr.ph223.split.us, !llvm.loop !39

.lr.ph221.us:                                     ; preds = %.lr.ph221.us.prol.loopexit, %.lr.ph221.us
  %indvars.iv284 = phi i64 [ %indvars.iv.next285.3, %.lr.ph221.us ], [ %indvars.iv284.unr, %.lr.ph221.us.prol.loopexit ] ; 6 uses
  %.0175219.us = phi double [ %i.fp, %.lr.ph221.us ], [ %.0175219.us.unr, %.lr.ph221.us.prol.loopexit ]
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv284
  %i.el = load double, ptr %i.ek, align 8, !tbaa !25
  %i.em = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv284
  %i.en = load i32, ptr %i.em, align 4, !tbaa !4
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !25
  %i.er = tail call double @llvm.fmuladd.f64(double %i.el, double %i.eq, double %.0175219.us)
  %indvars.iv.next285 = add nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next285
  %i.et = load double, ptr %i.es, align 8, !tbaa !25
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next285
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !4
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !25
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.et, double %i.ey, double %i.er)
  %indvars.iv.next285.1 = add nsw i64 %indvars.iv284, 2 ; 2 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next285.1
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !25
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next285.1
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !25
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.fg, double %i.ez)
  %indvars.iv.next285.2 = add nsw i64 %indvars.iv284, 3 ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next285.2
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !25
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next285.2
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !25
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.fo, double %i.fh) ; 2 uses
  %indvars.iv.next285.3 = add nsw i64 %indvars.iv284, 4 ; 2 uses
  %exitcond288.not.3 = icmp eq i64 %indvars.iv.next285.3, %wide.trip.count287
  br i1 %exitcond288.not.3, label %._crit_edge.us224, label %.lr.ph221.us, !llvm.loop !40

.lr.ph223.split:                                  ; preds = %.lr.ph223
  %i.fq = icmp sgt i32 %i.u, 0
  br i1 %i.fq, label %.preheader184.preheader, label %.loopexit187

.preheader184.preheader:                          ; preds = %.lr.ph223.split
  %i.fr = sext i32 %i.y to i64
  %i.fs = sext i32 %i.ac to i64
  %wide.trip.count282 = zext nneg i32 %i.m to i64
  %wide.trip.count277 = zext nneg i32 %i.u to i64
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.preheader, %..loopexit185_crit_edge
  %indvars.iv279 = phi i64 [ 0, %.preheader184.preheader ], [ %indvars.iv.next280, %..loopexit185_crit_edge ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv279
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4  ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !4  ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fw, i64 4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4  ; 2 uses
  %i.ga = icmp slt i32 %i.fx, %i.fz
  br i1 %i.ga, label %.lr.ph214.us.preheader, label %..loopexit185_crit_edge

.lr.ph214.us.preheader:                           ; preds = %.preheader184
  %i.gb = mul nsw i32 %i.fu, %i.w
  %i.gc = sext i32 %i.fx to i64                   ; 6 uses
  %i.gd = sext i32 %i.gb to i64
  %invariant.gep328 = getelementptr [8 x i8], ptr %i.o, i64 %i.gd
  %wide.trip.count272 = sext i32 %i.fz to i64     ; 3 uses
  %i.ge = sub nsw i64 %wide.trip.count272, %i.gc
  %xtraiter382 = and i64 %i.ge, 1
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gc
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gc
  %indvars.iv.next270.prol = add nsw i64 %i.gc, 1
  %i.gh = add nsw i64 %wide.trip.count272, -1
  %i.gi = icmp eq i64 %i.gh, %i.gc
  br label %.lr.ph214.us

.lr.ph214.us:                                     ; preds = %.lr.ph214.us.preheader, %._crit_edge.us217
  %indvars.iv274 = phi i64 [ 0, %.lr.ph214.us.preheader ], [ %indvars.iv.next275, %._crit_edge.us217 ] ; 3 uses
  %i.gj = mul nsw i64 %indvars.iv274, %i.fr
  %gep329 = getelementptr [8 x i8], ptr %invariant.gep328, i64 %i.gj ; 2 uses
  %i.gk = load double, ptr %gep329, align 8, !tbaa !25 ; 2 uses
  %i.gl = mul nsw i64 %indvars.iv274, %i.fs
  %i.gm = getelementptr [8 x i8], ptr %i.n, i64 %i.gl ; 3 uses
  br i1 %lcmp.mod383.not, label %.prol.loopexit381, label %.prol.loopexit381.unr-lcssa

.prol.loopexit381.unr-lcssa:                      ; preds = %.lr.ph214.us
  %i.gn = load double, ptr %i.gf, align 8, !tbaa !25
  %i.go = load i32, ptr %i.gg, align 4, !tbaa !4
  %i.gp = mul nsw i32 %i.go, %i.aa
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr [8 x i8], ptr %i.gm, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !25
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.gs, double %i.gk) ; 2 uses
  br label %.prol.loopexit381

.prol.loopexit381:                                ; preds = %.prol.loopexit381.unr-lcssa, %.lr.ph214.us
  %.lcssa372.unr = phi double [ poison, %.lr.ph214.us ], [ %i.gt, %.prol.loopexit381.unr-lcssa ]
  %indvars.iv269.unr = phi i64 [ %i.gc, %.lr.ph214.us ], [ %indvars.iv.next270.prol, %.prol.loopexit381.unr-lcssa ]
  %.1176212.us.unr = phi double [ %i.gk, %.lr.ph214.us ], [ %i.gt, %.prol.loopexit381.unr-lcssa ]
  br i1 %i.gi, label %._crit_edge.us217, label %.lr.ph214.us.new

.lr.ph214.us.new:                                 ; preds = %.prol.loopexit381, %.lr.ph214.us.new
  %indvars.iv269 = phi i64 [ %indvars.iv.next270.1, %.lr.ph214.us.new ], [ %indvars.iv269.unr, %.prol.loopexit381 ] ; 4 uses
  %.1176212.us = phi double [ %i.hl, %.lr.ph214.us.new ], [ %.1176212.us.unr, %.prol.loopexit381 ]
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv269
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !25
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv269
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !4
  %i.gy = mul nsw i32 %i.gx, %i.aa
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr [8 x i8], ptr %i.gm, i64 %i.gz
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !25
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.hb, double %.1176212.us)
  %indvars.iv.next270 = add nsw i64 %indvars.iv269, 1 ; 2 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next270
  %i.he = load double, ptr %i.hd, align 8, !tbaa !25
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next270
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !4
  %i.hh = mul nsw i32 %i.hg, %i.aa
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr [8 x i8], ptr %i.gm, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !25
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.he, double %i.hk, double %i.hc) ; 2 uses
  %indvars.iv.next270.1 = add nsw i64 %indvars.iv269, 2 ; 2 uses
  %exitcond273.not.1 = icmp eq i64 %indvars.iv.next270.1, %wide.trip.count272
  br i1 %exitcond273.not.1, label %._crit_edge.us217, label %.lr.ph214.us.new, !llvm.loop !41

._crit_edge.us217:                                ; preds = %.lr.ph214.us.new, %.prol.loopexit381
  %.lcssa372 = phi double [ %.lcssa372.unr, %.prol.loopexit381 ], [ %i.hl, %.lr.ph214.us.new ]
  store double %.lcssa372, ptr %gep329, align 8, !tbaa !25
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count277
  br i1 %exitcond278.not, label %..loopexit185_crit_edge, label %.lr.ph214.us, !llvm.loop !42

..loopexit185_crit_edge:                          ; preds = %._crit_edge.us217, %.preheader184
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count282
  br i1 %exitcond283.not, label %.loopexit187, label %.preheader184, !llvm.loop !39

.preheader188:                                    ; preds = %.preheader188.preheader, %..loopexit189_crit_edge
  %indvars.iv254 = phi i64 [ 0, %.preheader188.preheader ], [ %indvars.iv.next255, %..loopexit189_crit_edge ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv254 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !4  ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !4  ; 2 uses
  %i.hq = icmp slt i32 %i.hn, %i.hp
  br i1 %i.hq, label %.lr.ph201.us.preheader, label %..loopexit189_crit_edge

.lr.ph201.us.preheader:                           ; preds = %.preheader188
  %i.hr = mul nsw i64 %indvars.iv254, %i.dl
  %i.hs = sext i32 %i.hn to i64                   ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.o, i64 %i.hr
  %wide.trip.count247 = sext i32 %i.hp to i64     ; 3 uses
  %i.ht = sub nsw i64 %wide.trip.count247, %i.hs
  %xtraiter = and i64 %i.ht, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hs
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hs
  %indvars.iv.next245.prol = add nsw i64 %i.hs, 1
  %i.hw = add nsw i64 %wide.trip.count247, -1
  %i.hx = icmp eq i64 %i.hw, %i.hs
  br label %.lr.ph201.us

.lr.ph201.us:                                     ; preds = %.lr.ph201.us.preheader, %._crit_edge.us
  %indvars.iv249 = phi i64 [ 0, %.lr.ph201.us.preheader ], [ %indvars.iv.next250, %._crit_edge.us ] ; 3 uses
  %i.hy = mul nsw i64 %indvars.iv249, %i.dj
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.hy ; 2 uses
  %i.hz = load double, ptr %gep, align 8, !tbaa !25 ; 2 uses
  %i.ia = mul nsw i64 %indvars.iv249, %i.dk
  %i.ib = getelementptr [8 x i8], ptr %i.n, i64 %i.ia ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph201.us
  %i.ic = load double, ptr %i.hu, align 8, !tbaa !25
  %i.id = load i32, ptr %i.hv, align 4, !tbaa !4
  %i.ie = mul nsw i32 %i.id, %i.aa
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr [8 x i8], ptr %i.ib, i64 %i.if
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !25
  %i.ii = tail call double @llvm.fmuladd.f64(double %i.ic, double %i.ih, double %i.hz) ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph201.us
  %.lcssa376.unr = phi double [ poison, %.lr.ph201.us ], [ %i.ii, %.prol.loopexit.unr-lcssa ]
  %indvars.iv244.unr = phi i64 [ %i.hs, %.lr.ph201.us ], [ %indvars.iv.next245.prol, %.prol.loopexit.unr-lcssa ]
  %.1200.us.unr = phi double [ %i.hz, %.lr.ph201.us ], [ %i.ii, %.prol.loopexit.unr-lcssa ]
  br i1 %i.hx, label %._crit_edge.us, label %.lr.ph201.us.new

.lr.ph201.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph201.us.new
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.1, %.lr.ph201.us.new ], [ %indvars.iv244.unr, %.prol.loopexit ] ; 4 uses
  %.1200.us = phi double [ %i.ja, %.lr.ph201.us.new ], [ %.1200.us.unr, %.prol.loopexit ]
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv244
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !25
  %i.il = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv244
  %i.im = load i32, ptr %i.il, align 4, !tbaa !4
  %i.in = mul nsw i32 %i.im, %i.aa
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr [8 x i8], ptr %i.ib, i64 %i.io
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !25
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.iq, double %.1200.us)
  %indvars.iv.next245 = add nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.is = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next245
  %i.it = load double, ptr %i.is, align 8, !tbaa !25
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next245
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !4
  %i.iw = mul nsw i32 %i.iv, %i.aa
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr [8 x i8], ptr %i.ib, i64 %i.ix
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !25
  %i.ja = tail call double @llvm.fmuladd.f64(double %i.it, double %i.iz, double %i.ir) ; 2 uses
  %indvars.iv.next245.1 = add nsw i64 %indvars.iv244, 2 ; 2 uses
  %exitcond248.not.1 = icmp eq i64 %indvars.iv.next245.1, %wide.trip.count247
  br i1 %exitcond248.not.1, label %._crit_edge.us, label %.lr.ph201.us.new, !llvm.loop !43

._crit_edge.us:                                   ; preds = %.lr.ph201.us.new, %.prol.loopexit
  %.lcssa376 = phi double [ %.lcssa376.unr, %.prol.loopexit ], [ %i.ja, %.lr.ph201.us.new ]
  store double %.lcssa376, ptr %gep, align 8, !tbaa !25
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %..loopexit189_crit_edge, label %.lr.ph201.us, !llvm.loop !44

..loopexit189_crit_edge:                          ; preds = %._crit_edge.us, %.preheader188
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %.loopexit187, label %.preheader188, !llvm.loop !36

.loopexit187:                                     ; preds = %..loopexit189_crit_edge, %._crit_edge.us210, %..loopexit185_crit_edge, %._crit_edge.us224, %.preheader190, %.lr.ph209.split, %.preheader186, %.lr.ph223.split
  %i.jb = fcmp une double %0, 1.000000e+00
  br i1 %i.jb, label %.preheader182, label %.loopexit

.preheader182:                                    ; preds = %.loopexit187
  %i.jc = mul nsw i32 %i.u, %i.g                  ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph227.preheader, label %.loopexit

.lr.ph227.preheader:                              ; preds = %.preheader182
  %wide.trip.count297 = zext nneg i32 %i.jc to i64 ; 3 uses
  %min.iters.check339 = icmp ult i32 %i.jc, 4
  br i1 %min.iters.check339, label %.lr.ph227.preheader369, label %vector.ph340

vector.ph340:                                     ; preds = %.lr.ph227.preheader
  %n.vec342 = and i64 %wide.trip.count297, 2147483644 ; 3 uses
  %broadcast.splatinsert343 = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat344 = shufflevector <2 x double> %broadcast.splatinsert343, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph340
  %index346 = phi i64 [ 0, %vector.ph340 ], [ %index.next349, %vector.body345 ] ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index346 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16 ; 2 uses
  %wide.load347 = load <2 x double>, ptr %i.je, align 8, !tbaa !25
  %wide.load348 = load <2 x double>, ptr %i.jf, align 8, !tbaa !25
  %i.jg = fmul <2 x double> %broadcast.splat344, %wide.load347
  %i.jh = fmul <2 x double> %broadcast.splat344, %wide.load348
  store <2 x double> %i.jg, ptr %i.je, align 8, !tbaa !25
  store <2 x double> %i.jh, ptr %i.jf, align 8, !tbaa !25
  %index.next349 = add nuw i64 %index346, 4       ; 2 uses
  %i.ji = icmp eq i64 %index.next349, %n.vec342
  br i1 %i.ji, label %middle.block350, label %vector.body345, !llvm.loop !45

middle.block350:                                  ; preds = %vector.body345
  %cmp.n351 = icmp eq i64 %n.vec342, %wide.trip.count297
  br i1 %cmp.n351, label %.loopexit, label %.lr.ph227.preheader369

.lr.ph227.preheader369:                           ; preds = %.lr.ph227.preheader, %middle.block350
  %indvars.iv294.ph = phi i64 [ 0, %.lr.ph227.preheader ], [ %n.vec342, %middle.block350 ]
  br label %.lr.ph227

.lr.ph227:                                        ; preds = %.lr.ph227.preheader369, %.lr.ph227
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %.lr.ph227 ], [ %indvars.iv294.ph, %.lr.ph227.preheader369 ] ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv294 ; 2 uses
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !25
  %i.jl = fmul double %0, %i.jk
  store double %i.jl, ptr %i.jj, align 8, !tbaa !25
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.loopexit, label %.lr.ph227, !llvm.loop !46

.loopexit:                                        ; preds = %.lr.ph227, %.lr.ph229, %middle.block350, %middle.block365, %.preheader182, %.preheader, %.loopexit187
  %.not = icmp ne i32 %i.i, %i.q                  ; 2 uses
  %.not181 = icmp eq i32 %i.g, %i.s               ; 2 uses
  %spec.store.select = zext i1 %.not to i32       ; 2 uses
  %spec.select = select i1 %.not181, i32 %spec.store.select, i32 3
  %spec.store.select1 = select i1 %.not181, i32 %spec.store.select, i32 2
  %.0 = select i1 %.not, i32 %spec.select, i32 %spec.store.select1
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 4) i32 @hypre_CSRMatrixMatvecT(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !15   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16   ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !19     ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !22   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !23   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !24
  %i.z = fcmp oeq double %0, 0.000000e+00
  br i1 %i.z, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.aa = mul nsw i32 %i.q, %i.i                  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph219.preheader, label %.loopexit

.lr.ph219.preheader:                              ; preds = %.preheader
  %wide.trip.count260 = zext nneg i32 %i.aa to i64 ; 3 uses
  %min.iters.check295 = icmp ult i32 %i.aa, 4
  br i1 %min.iters.check295, label %.lr.ph219.preheader309, label %vector.ph296

vector.ph296:                                     ; preds = %.lr.ph219.preheader
  %n.vec298 = and i64 %wide.trip.count260, 2147483644 ; 3 uses
  %broadcast.splatinsert299 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat300 = shufflevector <2 x double> %broadcast.splatinsert299, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph296
  %index302 = phi i64 [ 0, %vector.ph296 ], [ %index.next305, %vector.body301 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index302 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load303 = load <2 x double>, ptr %i.ac, align 8, !tbaa !25
  %wide.load304 = load <2 x double>, ptr %i.ad, align 8, !tbaa !25
  %i.ae = fmul <2 x double> %broadcast.splat300, %wide.load303
  %i.af = fmul <2 x double> %broadcast.splat300, %wide.load304
  store <2 x double> %i.ae, ptr %i.ac, align 8, !tbaa !25
  store <2 x double> %i.af, ptr %i.ad, align 8, !tbaa !25
  %index.next305 = add nuw i64 %index302, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.ag, label %middle.block306, label %vector.body301, !llvm.loop !47

middle.block306:                                  ; preds = %vector.body301
  %cmp.n307 = icmp eq i64 %n.vec298, %wide.trip.count260
  br i1 %cmp.n307, label %.loopexit, label %.lr.ph219.preheader309

.lr.ph219.preheader309:                           ; preds = %.lr.ph219.preheader, %middle.block306
  %indvars.iv257.ph = phi i64 [ 0, %.lr.ph219.preheader ], [ %n.vec298, %middle.block306 ]
  br label %.lr.ph219

.lr.ph219:                                        ; preds = %.lr.ph219.preheader309, %.lr.ph219
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %.lr.ph219 ], [ %indvars.iv257.ph, %.lr.ph219.preheader309 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv257 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !25
  %i.aj = fmul double %3, %i.ai
  store double %i.aj, ptr %i.ah, align 8, !tbaa !25
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %.loopexit, label %.lr.ph219, !llvm.loop !48

bb.b:                                             ; preds = %bb.a
  %i.ak = fdiv double %3, %0                      ; 4 uses
  %i.al = fcmp une double %i.ak, 1.000000e+00
  br i1 %i.al, label %bb.c, label %.loopexit198

bb.c:                                             ; preds = %bb.b
  %i.am = fcmp oeq double %i.ak, 0.000000e+00
  %i.an = mul nsw i32 %i.q, %i.i                  ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0                   ; 2 uses
  br i1 %i.am, label %.preheader197, label %.preheader199

.preheader199:                                    ; preds = %bb.c
  br i1 %i.ao, label %.lr.ph.preheader, label %.loopexit198

.lr.ph.preheader:                                 ; preds = %.preheader199
  %wide.trip.count = zext nneg i32 %i.an to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.an, 4
  br i1 %min.iters.check, label %.lr.ph.preheader313, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ap, align 8, !tbaa !25
  %wide.load278 = load <2 x double>, ptr %i.aq, align 8, !tbaa !25
  %i.ar = fmul <2 x double> %broadcast.splat, %wide.load
  %i.as = fmul <2 x double> %broadcast.splat, %wide.load278
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !25
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit198, label %.lr.ph.preheader313

.lr.ph.preheader313:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader197:                                    ; preds = %bb.c
  br i1 %i.ao, label %.lr.ph203.preheader, label %.loopexit198

.lr.ph203.preheader:                              ; preds = %.preheader197
  %i.au = zext nneg i32 %i.an to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.av, i1 false), !tbaa !25
  br label %.loopexit198
end_hunk_0
