inline.NumInlined: 27
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 82
begin_hunk_0_@N_VLinearCombinationVectorArray_Serial:bb.a
  %prol.iter482.cmp.not = icmp eq i64 %prol.iter482.next, %xtraiter480
  br i1 %prol.iter482.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !394

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader461
  %.039.i.unr = phi i64 [ %.039.i.ph, %.lr.ph.i.preheader461 ], [ %i.df, %.lr.ph.i.prol ]
  %i.dg = sub nsw i64 %.039.i.ph, %i.ck
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %N_VScale_Serial.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.039.i = phi i64 [ %i.eb, %.lr.ph.i ], [ %.039.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.039.i
  %i.dj = load double, ptr %i.di, align 8, !tbaa !66
  %i.dk = fmul double %i.d, %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.039.i
  store double %i.dk, ptr %i.dl, align 8, !tbaa !66
  %i.dm = add nuw nsw i64 %.039.i, 1              ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !66
  %i.dp = fmul double %i.d, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dm
  store double %i.dp, ptr %i.dq, align 8, !tbaa !66
  %i.dr = add nuw nsw i64 %.039.i, 2              ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !66
  %i.du = fmul double %i.d, %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dr
  store double %i.du, ptr %i.dv, align 8, !tbaa !66
  %i.dw = add nuw nsw i64 %.039.i, 3              ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !66
  %i.dz = fmul double %i.d, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dw
  store double %i.dz, ptr %i.ea, align 8, !tbaa !66
  %i.eb = add nuw nsw i64 %.039.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.eb, %i.ck
  br i1 %exitcond.not.i.3, label %N_VScale_Serial.exit, label %.lr.ph.i, !llvm.loop !395

bb.j:                                             ; preds = %bb.b
  %i.ec = load double, ptr %2, align 8, !tbaa !66
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !66
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !338
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !169
  %i.ei = load ptr, ptr %4, align 8, !tbaa !169
  tail call void @N_VLinearSum_Serial(double noundef %i.ec, ptr noundef %i.b, double noundef %i.ee, ptr noundef %i.eh, ptr noundef %i.ei)
  br label %N_VScale_Serial.exit

bb.k:                                             ; preds = %bb.b
  %i.ej = sext i32 %1 to i64
  %i.ek = shl nsw i64 %i.ej, 3
  %i.el = tail call noalias ptr @malloc(i64 noundef %i.ek) #23 ; 7 uses
  %i.em = icmp sgt i32 %1, 0
  br i1 %i.em, label %.lr.ph190.preheader, label %._crit_edge191

.lr.ph190.preheader:                              ; preds = %bb.k
  %wide.trip.count244 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter489 = and i64 %wide.trip.count244, 3   ; 3 uses
  %i.en = icmp ult i32 %1, 4
  br i1 %i.en, label %.lr.ph190.epil.preheader, label %.lr.ph190.preheader.new

.lr.ph190.preheader.new:                          ; preds = %.lr.ph190.preheader
  %unroll_iter = and i64 %wide.trip.count244, 2147483644
  br label %.lr.ph190

.lr.ph190:                                        ; preds = %.lr.ph190, %.lr.ph190.preheader.new
  %indvars.iv241 = phi i64 [ 0, %.lr.ph190.preheader.new ], [ %indvars.iv.next242.3, %.lr.ph190 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph190.preheader.new ], [ %niter.next.3, %.lr.ph190 ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv241
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !338
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !169
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv241
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !169
  %indvars.iv.next242 = or disjoint i64 %indvars.iv241, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next242
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !338
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !169
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next242
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !169
  %indvars.iv.next242.1 = or disjoint i64 %indvars.iv241, 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next242.1
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !338
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !169
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next242.1
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !169
  %indvars.iv.next242.2 = or disjoint i64 %indvars.iv241, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next242.2
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !338
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !169
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next242.2
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !169
  %indvars.iv.next242.3 = add nuw nsw i64 %indvars.iv241, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge191.loopexit.unr-lcssa, label %.lr.ph190

._crit_edge191.loopexit.unr-lcssa:                ; preds = %.lr.ph190
  %lcmp.mod490.not = icmp eq i64 %xtraiter489, 0
  br i1 %lcmp.mod490.not, label %._crit_edge191, label %.lr.ph190.epil.preheader

.lr.ph190.epil.preheader:                         ; preds = %._crit_edge191.loopexit.unr-lcssa, %.lr.ph190.preheader
  %indvars.iv241.epil.init = phi i64 [ 0, %.lr.ph190.preheader ], [ %indvars.iv.next242.3, %._crit_edge191.loopexit.unr-lcssa ]
  %lcmp.mod491 = icmp ne i64 %xtraiter489, 0
  tail call void @llvm.assume(i1 %lcmp.mod491)
  br label %.lr.ph190.epil

.lr.ph190.epil:                                   ; preds = %.lr.ph190.epil, %.lr.ph190.epil.preheader
  %indvars.iv241.epil = phi i64 [ %indvars.iv241.epil.init, %.lr.ph190.epil.preheader ], [ %indvars.iv.next242.epil, %.lr.ph190.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph190.epil.preheader ], [ %epil.iter.next, %.lr.ph190.epil ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv241.epil
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !338
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !169
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv241.epil
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !169
  %indvars.iv.next242.epil = add nuw nsw i64 %indvars.iv241.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter489
  br i1 %epil.iter.cmp.not, label %._crit_edge191, label %.lr.ph190.epil, !llvm.loop !396

._crit_edge191:                                   ; preds = %._crit_edge191.loopexit.unr-lcssa, %.lr.ph190.epil, %bb.k
  %i.fi = load ptr, ptr %4, align 8, !tbaa !169
  %i.fj = tail call i32 @N_VLinearCombination_Serial(i32 noundef %1, ptr noundef %2, ptr noundef %i.el, ptr noundef %i.fi) ; 0 uses
  tail call void @free(ptr noundef %i.el) #22
  br label %N_VScale_Serial.exit

bb.l:                                             ; preds = %bb.a
  switch i32 %1, label %bb.o [
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.fk = sext i32 %0 to i64
  %i.fl = shl nsw i64 %i.fk, 3
  %i.fm = tail call noalias ptr @malloc(i64 noundef %i.fl) #23 ; 4 uses
  %i.fn = icmp sgt i32 %0, 0
  br i1 %i.fn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.fo = load double, ptr %2, align 8, !tbaa !66 ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fo, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <2 x double> %broadcast.splat, ptr %i.fp, align 8, !tbaa !66
  store <2 x double> %broadcast.splat, ptr %i.fq, align 8, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv
  store double %i.fo, ptr %i.fs, align 8, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !398

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.m
  %i.ft = tail call i32 @N_VScaleVectorArray_Serial(i32 noundef %0, ptr noundef %i.fm, ptr noundef nonnull %i.a, ptr noundef %4) ; 0 uses
  tail call void @free(ptr noundef %i.fm) #22
  br label %N_VScale_Serial.exit

bb.n:                                             ; preds = %bb.l
  %i.fu = load double, ptr %2, align 8, !tbaa !66
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !66
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !338
  %i.fz = tail call i32 @N_VLinearSumVectorArray_Serial(i32 noundef %0, double noundef %i.fu, ptr noundef nonnull %i.a, double noundef %i.fw, ptr noundef %i.fy, ptr noundef %4) ; 0 uses
  br label %N_VScale_Serial.exit

bb.o:                                             ; preds = %bb.l
  %i.ga = load ptr, ptr %4, align 8, !tbaa !169
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !57
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !58 ; 38 uses
  %i.gd = icmp eq ptr %i.a, %4
  br i1 %i.gd, label %bb.p, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.o
  %i.ge = icmp sgt i32 %0, 0
  br i1 %i.ge, label %.lr.ph164.a, label %N_VScale_Serial.exit

.lr.ph164.a:                                      ; preds = %.critedge.preheader
  %5 = icmp sgt i64 %i.gc, 0
  %6 = icmp slt i32 %1, 2
  %7 = icmp eq i64 %i.gc, 0
  %wide.trip.count216 = zext nneg i32 %0 to i64
  %brmerge198 = select i1 %6, i1 true, i1 %7
  %wide.trip.count211 = zext i32 %1 to i64        ; 2 uses
  %i.gf = shl i64 %i.gc, 3                        ; 4 uses
  %scevgep273 = getelementptr i8, ptr %2, i64 8   ; 2 uses
  %i.gg = shl nuw nsw i64 %wide.trip.count211, 3
  %scevgep274 = getelementptr i8, ptr %2, i64 %i.gg
  %min.iters.check305 = icmp ult i64 %i.gc, 6
  %n.vec307 = and i64 %i.gc, 9223372036854775804  ; 3 uses
  %cmp.n316 = icmp eq i64 %i.gc, %n.vec307
  %xtraiter = and i64 %i.gc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check280 = icmp ult i64 %i.gc, 4
  %n.vec282 = and i64 %i.gc, 9223372036854775804  ; 3 uses
  %cmp.n292 = icmp eq i64 %i.gc, %n.vec282
  %xtraiter468 = and i64 %i.gc, 1
  %lcmp.mod469.not = icmp eq i64 %xtraiter468, 0
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gh = load double, ptr %2, align 8, !tbaa !66
  %i.gi = fcmp oeq double %i.gh, 1.000000e+00
  %i.gj = icmp sgt i32 %0, 0                      ; 2 uses
  br i1 %i.gi, label %.preheader, label %.preheader148.a

.preheader148.a:                                  ; preds = %bb.p
  br i1 %i.gj, label %.lr.ph176, label %N_VScale_Serial.exit

.lr.ph176:                                        ; preds = %.preheader148.a
  %8 = icmp sgt i64 %i.gc, 0
  %9 = icmp slt i32 %1, 2
  %10 = icmp eq i64 %i.gc, 0
  %wide.trip.count228 = zext nneg i32 %0 to i64
  %brmerge195 = select i1 %9, i1 true, i1 %10
  %wide.trip.count223 = zext i32 %1 to i64        ; 2 uses
  %i.gk = shl i64 %i.gc, 3                        ; 3 uses
  %scevgep320 = getelementptr i8, ptr %2, i64 8   ; 2 uses
  %i.gl = shl nuw nsw i64 %wide.trip.count223, 3
  %scevgep321 = getelementptr i8, ptr %2, i64 %i.gl
  %min.iters.check352 = icmp ult i64 %i.gc, 4
  %n.vec354 = and i64 %i.gc, 9223372036854775804  ; 3 uses
  %cmp.n363 = icmp eq i64 %i.gc, %n.vec354
  %xtraiter471 = and i64 %i.gc, 3                 ; 2 uses
  %lcmp.mod472.not = icmp eq i64 %xtraiter471, 0
  %min.iters.check331 = icmp ult i64 %i.gc, 4
  %n.vec333 = and i64 %i.gc, 9223372036854775804  ; 3 uses
  %cmp.n344 = icmp eq i64 %i.gc, %n.vec333
  %xtraiter474 = and i64 %i.gc, 1
  %lcmp.mod475.not = icmp eq i64 %xtraiter474, 0
  br label %bb.q

.preheader:                                       ; preds = %bb.p
  br i1 %i.gj, label %.lr.ph186, label %N_VScale_Serial.exit

.lr.ph186:                                        ; preds = %.preheader
  %i.gm = icmp slt i32 %1, 2
  %i.gn = icmp slt i64 %i.gc, 1
  %brmerge = select i1 %i.gm, i1 true, i1 %i.gn
  br i1 %brmerge, label %N_VScale_Serial.exit, label %.lr.ph183.preheader

.lr.ph183.preheader:                              ; preds = %.lr.ph186
  %wide.trip.count239 = zext nneg i32 %0 to i64
  %wide.trip.count234 = zext nneg i32 %1 to i64   ; 2 uses
  %i.go = shl i64 %i.gc, 3                        ; 2 uses
  %scevgep367 = getelementptr i8, ptr %2, i64 8
  %i.gp = shl nuw nsw i64 %wide.trip.count234, 3
  %scevgep368 = getelementptr i8, ptr %2, i64 %i.gp
  %min.iters.check378 = icmp ult i64 %i.gc, 4
  %n.vec380 = and i64 %i.gc, 9223372036854775804  ; 3 uses
  %cmp.n391 = icmp eq i64 %i.gc, %n.vec380
  %xtraiter477 = and i64 %i.gc, 1
  %lcmp.mod478.not = icmp eq i64 %xtraiter477, 0
  br label %.lr.ph183

.lr.ph183:                                        ; preds = %.lr.ph183.preheader, %._crit_edge184
  %indvars.iv236 = phi i64 [ 0, %.lr.ph183.preheader ], [ %indvars.iv.next237, %._crit_edge184 ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv236
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !169
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !57
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !63 ; 7 uses
  %scevgep366 = getelementptr i8, ptr %i.gu, i64 %i.go ; 2 uses
  %bound0370 = icmp ult ptr %i.gu, %scevgep368
  %bound1371 = icmp ult ptr %scevgep367, %scevgep366
  %found.conflict372 = and i1 %bound0370, %bound1371
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph183, %._crit_edge180
  %indvars.iv231 = phi i64 [ 1, %.lr.ph183 ], [ %indvars.iv.next232, %._crit_edge180 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv231
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !338
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv236
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !169
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !57
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !63 ; 6 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv231 ; 4 uses
  br i1 %min.iters.check378, label %scalar.ph377.preheader, label %vector.memcheck365

vector.memcheck365:                               ; preds = %.lr.ph179
  %scevgep369 = getelementptr i8, ptr %i.hb, i64 %i.go
  %bound0373 = icmp ult ptr %i.gu, %scevgep369
  %bound1374 = icmp ult ptr %i.hb, %scevgep366
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx376 = or i1 %found.conflict372, %found.conflict375
  br i1 %conflict.rdx376, label %scalar.ph377.preheader, label %vector.ph379

vector.ph379:                                     ; preds = %vector.memcheck365
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !66, !alias.scope !399
  %broadcast.splatinsert387 = insertelement <2 x double> poison, double %i.hd, i64 0
  %broadcast.splat388 = shufflevector <2 x double> %broadcast.splatinsert387, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body381

vector.body381:                                   ; preds = %vector.body381, %vector.ph379
  %index382 = phi i64 [ 0, %vector.ph379 ], [ %index.next389, %vector.body381 ] ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %index382 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %wide.load383 = load <2 x double>, ptr %i.he, align 8, !tbaa !66, !alias.scope !402
  %wide.load384 = load <2 x double>, ptr %i.hf, align 8, !tbaa !66, !alias.scope !402
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %index382 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %wide.load385 = load <2 x double>, ptr %i.hg, align 8, !tbaa !66, !alias.scope !404, !noalias !406
  %wide.load386 = load <2 x double>, ptr %i.hh, align 8, !tbaa !66, !alias.scope !404, !noalias !406
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat388, <2 x double> %wide.load383, <2 x double> %wide.load385)
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat388, <2 x double> %wide.load384, <2 x double> %wide.load386)
  store <2 x double> %i.hi, ptr %i.hg, align 8, !tbaa !66, !alias.scope !404, !noalias !406
  store <2 x double> %i.hj, ptr %i.hh, align 8, !tbaa !66, !alias.scope !404, !noalias !406
  %index.next389 = add nuw i64 %index382, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next389, %n.vec380
  br i1 %i.hk, label %middle.block390, label %vector.body381, !llvm.loop !407

middle.block390:                                  ; preds = %vector.body381
  br i1 %cmp.n391, label %._crit_edge180, label %scalar.ph377.preheader

scalar.ph377.preheader:                           ; preds = %vector.memcheck365, %.lr.ph179, %middle.block390
  %.0132177.ph = phi i64 [ 0, %vector.memcheck365 ], [ 0, %.lr.ph179 ], [ %n.vec380, %middle.block390 ] ; 5 uses
  %.neg493 = or disjoint i64 %.0132177.ph, 1
  br i1 %lcmp.mod478.not, label %scalar.ph377.prol.loopexit, label %scalar.ph377.prol

scalar.ph377.prol:                                ; preds = %scalar.ph377.preheader
  %i.hl = load double, ptr %i.hc, align 8, !tbaa !66
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %.0132177.ph
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !66
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.0132177.ph ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !66
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hl, double %i.hn, double %i.hp)
  store double %i.hq, ptr %i.ho, align 8, !tbaa !66
  %i.hr = or disjoint i64 %.0132177.ph, 1
  br label %scalar.ph377.prol.loopexit

scalar.ph377.prol.loopexit:                       ; preds = %scalar.ph377.prol, %scalar.ph377.preheader
  %.0132177.unr = phi i64 [ %.0132177.ph, %scalar.ph377.preheader ], [ %i.hr, %scalar.ph377.prol ]
  %i.hs = icmp eq i64 %i.gc, %.neg493
  br i1 %i.hs, label %._crit_edge180, label %scalar.ph377

scalar.ph377:                                     ; preds = %scalar.ph377.prol.loopexit, %scalar.ph377
  %.0132177 = phi i64 [ %i.ig, %scalar.ph377 ], [ %.0132177.unr, %scalar.ph377.prol.loopexit ] ; 4 uses
  %i.ht = load double, ptr %i.hc, align 8, !tbaa !66
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %.0132177
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !66
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.0132177 ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !66
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.hv, double %i.hx)
  store double %i.hy, ptr %i.hw, align 8, !tbaa !66
  %i.hz = add nuw nsw i64 %.0132177, 1            ; 2 uses
  %i.ia = load double, ptr %i.hc, align 8, !tbaa !66
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.hz
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !66
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.hz ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !66
  %i.if = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.ic, double %i.ie)
  store double %i.if, ptr %i.id, align 8, !tbaa !66
  %i.ig = add nuw nsw i64 %.0132177, 2            ; 2 uses
  %exitcond230.not.1 = icmp eq i64 %i.ig, %i.gc
  br i1 %exitcond230.not.1, label %._crit_edge180, label %scalar.ph377, !llvm.loop !408

._crit_edge180:                                   ; preds = %scalar.ph377.prol.loopexit, %scalar.ph377, %middle.block390
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  br i1 %exitcond235.not, label %._crit_edge184, label %.lr.ph179

._crit_edge184:                                   ; preds = %._crit_edge180
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %N_VScale_Serial.exit, label %.lr.ph183

bb.q:                                             ; preds = %.lr.ph176, %._crit_edge174.split
  %indvars.iv225 = phi i64 [ 0, %.lr.ph176 ], [ %indvars.iv.next226, %._crit_edge174.split ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv225
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !169
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !57
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !63 ; 15 uses
  br i1 %8, label %.lr.ph167.preheader, label %._crit_edge174.split

.lr.ph167.preheader:                              ; preds = %bb.q
  br i1 %min.iters.check352, label %.lr.ph167.preheader464, label %vector.memcheck346

vector.memcheck346:                               ; preds = %.lr.ph167.preheader
  %scevgep347 = getelementptr i8, ptr %i.il, i64 %i.gk
  %bound0348 = icmp ult ptr %i.il, %scevgep320
  %bound1349 = icmp ult ptr %2, %scevgep347
  %found.conflict350 = and i1 %bound0348, %bound1349
  br i1 %found.conflict350, label %.lr.ph167.preheader464, label %vector.ph353

vector.ph353:                                     ; preds = %vector.memcheck346
  %i.im = load double, ptr %2, align 8, !tbaa !66, !alias.scope !409
  %broadcast.splatinsert359 = insertelement <2 x double> poison, double %i.im, i64 0
  %broadcast.splat360 = shufflevector <2 x double> %broadcast.splatinsert359, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph353
  %index356 = phi i64 [ 0, %vector.ph353 ], [ %index.next361, %vector.body355 ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %index356 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %wide.load357 = load <2 x double>, ptr %i.in, align 8, !tbaa !66, !alias.scope !412, !noalias !409
  %wide.load358 = load <2 x double>, ptr %i.io, align 8, !tbaa !66, !alias.scope !412, !noalias !409
  %i.ip = fmul <2 x double> %broadcast.splat360, %wide.load357
  %i.iq = fmul <2 x double> %broadcast.splat360, %wide.load358
  store <2 x double> %i.ip, ptr %i.in, align 8, !tbaa !66, !alias.scope !412, !noalias !409
  store <2 x double> %i.iq, ptr %i.io, align 8, !tbaa !66, !alias.scope !412, !noalias !409
  %index.next361 = add nuw i64 %index356, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next361, %n.vec354
  br i1 %i.ir, label %middle.block362, label %vector.body355, !llvm.loop !414

middle.block362:                                  ; preds = %vector.body355
  br i1 %cmp.n363, label %.preheader147, label %.lr.ph167.preheader464

.lr.ph167.preheader464:                           ; preds = %vector.memcheck346, %.lr.ph167.preheader, %middle.block362
  %.1133165.ph = phi i64 [ 0, %vector.memcheck346 ], [ 0, %.lr.ph167.preheader ], [ %n.vec354, %middle.block362 ] ; 3 uses
  br i1 %lcmp.mod472.not, label %.lr.ph167.prol.loopexit, label %.lr.ph167.prol

.lr.ph167.prol:                                   ; preds = %.lr.ph167.preheader464, %.lr.ph167.prol
  %.1133165.prol = phi i64 [ %i.iw, %.lr.ph167.prol ], [ %.1133165.ph, %.lr.ph167.preheader464 ] ; 2 uses
  %prol.iter473 = phi i64 [ %prol.iter473.next, %.lr.ph167.prol ], [ 0, %.lr.ph167.preheader464 ]
  %i.is = load double, ptr %2, align 8, !tbaa !66
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.1133165.prol ; 2 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !66
  %i.iv = fmul double %i.is, %i.iu
  store double %i.iv, ptr %i.it, align 8, !tbaa !66
  %i.iw = add nuw nsw i64 %.1133165.prol, 1       ; 2 uses
  %prol.iter473.next = add i64 %prol.iter473, 1   ; 2 uses
  %prol.iter473.cmp.not = icmp eq i64 %prol.iter473.next, %xtraiter471
  br i1 %prol.iter473.cmp.not, label %.lr.ph167.prol.loopexit, label %.lr.ph167.prol, !llvm.loop !415

.lr.ph167.prol.loopexit:                          ; preds = %.lr.ph167.prol, %.lr.ph167.preheader464
  %.1133165.unr = phi i64 [ %.1133165.ph, %.lr.ph167.preheader464 ], [ %i.iw, %.lr.ph167.prol ]
  %i.ix = sub nsw i64 %.1133165.ph, %i.gc
  %i.iy = icmp ugt i64 %i.ix, -4
  br i1 %i.iy, label %.preheader147, label %.lr.ph167

.preheader147:                                    ; preds = %.lr.ph167.prol.loopexit, %.lr.ph167, %middle.block362
  br i1 %brmerge195, label %._crit_edge174.split, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %.preheader147
  %scevgep319 = getelementptr i8, ptr %i.il, i64 %i.gk ; 2 uses
  %bound0323 = icmp ult ptr %i.il, %scevgep321
  %bound1324 = icmp ult ptr %scevgep320, %scevgep319
  %found.conflict325 = and i1 %bound0323, %bound1324
  br label %.lr.ph170

.lr.ph167:                                        ; preds = %.lr.ph167.prol.loopexit, %.lr.ph167
  %.1133165 = phi i64 [ %i.js, %.lr.ph167 ], [ %.1133165.unr, %.lr.ph167.prol.loopexit ] ; 5 uses
  %i.iz = load double, ptr %2, align 8, !tbaa !66
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.1133165 ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !66
  %i.jc = fmul double %i.iz, %i.jb
  store double %i.jc, ptr %i.ja, align 8, !tbaa !66
  %i.jd = load double, ptr %2, align 8, !tbaa !66
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.1133165
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !66
  %i.jh = fmul double %i.jd, %i.jg
  store double %i.jh, ptr %i.jf, align 8, !tbaa !66
  %i.ji = load double, ptr %2, align 8, !tbaa !66
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.1133165
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !66
  %i.jm = fmul double %i.ji, %i.jl
  store double %i.jm, ptr %i.jk, align 8, !tbaa !66
  %i.jn = load double, ptr %2, align 8, !tbaa !66
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.1133165
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24 ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !66
  %i.jr = fmul double %i.jn, %i.jq
  store double %i.jr, ptr %i.jp, align 8, !tbaa !66
  %i.js = add nuw nsw i64 %.1133165, 4            ; 2 uses
  %exitcond218.not.3 = icmp eq i64 %i.js, %i.gc
  br i1 %exitcond218.not.3, label %.preheader147, label %.lr.ph167, !llvm.loop !416

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %._crit_edge171
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %._crit_edge171 ], [ 1, %.lr.ph170.preheader ] ; 3 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv220
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !338
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv225
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !169
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !57
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !63 ; 6 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv220 ; 4 uses
  br i1 %min.iters.check331, label %scalar.ph330.preheader, label %vector.memcheck318

vector.memcheck318:                               ; preds = %.lr.ph170
  %scevgep322 = getelementptr i8, ptr %i.jz, i64 %i.gk
  %bound0326 = icmp ult ptr %i.il, %scevgep322
  %bound1327 = icmp ult ptr %i.jz, %scevgep319
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx329 = or i1 %found.conflict325, %found.conflict328
  br i1 %conflict.rdx329, label %scalar.ph330.preheader, label %vector.ph332

vector.ph332:                                     ; preds = %vector.memcheck318
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !66, !alias.scope !417
  %broadcast.splatinsert340 = insertelement <2 x double> poison, double %i.kb, i64 0
  %broadcast.splat341 = shufflevector <2 x double> %broadcast.splatinsert340, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next342, %vector.body334 ] ; 3 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %index335 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %wide.load336 = load <2 x double>, ptr %i.kc, align 8, !tbaa !66, !alias.scope !420
  %wide.load337 = load <2 x double>, ptr %i.kd, align 8, !tbaa !66, !alias.scope !420
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %index335 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %wide.load338 = load <2 x double>, ptr %i.ke, align 8, !tbaa !66, !alias.scope !422, !noalias !424
  %wide.load339 = load <2 x double>, ptr %i.kf, align 8, !tbaa !66, !alias.scope !422, !noalias !424
  %i.kg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat341, <2 x double> %wide.load336, <2 x double> %wide.load338)
  %i.kh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat341, <2 x double> %wide.load337, <2 x double> %wide.load339)
  store <2 x double> %i.kg, ptr %i.ke, align 8, !tbaa !66, !alias.scope !422, !noalias !424
  store <2 x double> %i.kh, ptr %i.kf, align 8, !tbaa !66, !alias.scope !422, !noalias !424
  %index.next342 = add nuw i64 %index335, 4       ; 2 uses
  %i.ki = icmp eq i64 %index.next342, %n.vec333
  br i1 %i.ki, label %middle.block343, label %vector.body334, !llvm.loop !425

middle.block343:                                  ; preds = %vector.body334
  br i1 %cmp.n344, label %._crit_edge171, label %scalar.ph330.preheader

scalar.ph330.preheader:                           ; preds = %vector.memcheck318, %.lr.ph170, %middle.block343
  %.2134168.ph = phi i64 [ 0, %vector.memcheck318 ], [ 0, %.lr.ph170 ], [ %n.vec333, %middle.block343 ] ; 5 uses
  %.neg492 = or disjoint i64 %.2134168.ph, 1
  br i1 %lcmp.mod475.not, label %scalar.ph330.prol.loopexit, label %scalar.ph330.prol

scalar.ph330.prol:                                ; preds = %scalar.ph330.preheader
  %i.kj = load double, ptr %i.ka, align 8, !tbaa !66
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.2134168.ph
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !66
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.2134168.ph ; 2 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !66
  %i.ko = tail call double @llvm.fmuladd.f64(double %i.kj, double %i.kl, double %i.kn)
  store double %i.ko, ptr %i.km, align 8, !tbaa !66
  %i.kp = or disjoint i64 %.2134168.ph, 1
  br label %scalar.ph330.prol.loopexit

scalar.ph330.prol.loopexit:                       ; preds = %scalar.ph330.prol, %scalar.ph330.preheader
  %.2134168.unr = phi i64 [ %.2134168.ph, %scalar.ph330.preheader ], [ %i.kp, %scalar.ph330.prol ]
  %i.kq = icmp eq i64 %i.gc, %.neg492
  br i1 %i.kq, label %._crit_edge171, label %scalar.ph330

scalar.ph330:                                     ; preds = %scalar.ph330.prol.loopexit, %scalar.ph330
  %.2134168 = phi i64 [ %i.le, %scalar.ph330 ], [ %.2134168.unr, %scalar.ph330.prol.loopexit ] ; 4 uses
  %i.kr = load double, ptr %i.ka, align 8, !tbaa !66
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.2134168
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !66
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.2134168 ; 2 uses
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !66
  %i.kw = tail call double @llvm.fmuladd.f64(double %i.kr, double %i.kt, double %i.kv)
  store double %i.kw, ptr %i.ku, align 8, !tbaa !66
  %i.kx = add nuw nsw i64 %.2134168, 1            ; 2 uses
  %i.ky = load double, ptr %i.ka, align 8, !tbaa !66
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kx
  %i.la = load double, ptr %i.kz, align 8, !tbaa !66
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.kx ; 2 uses
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !66
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.ky, double %i.la, double %i.lc)
  store double %i.ld, ptr %i.lb, align 8, !tbaa !66
  %i.le = add nuw nsw i64 %.2134168, 2            ; 2 uses
  %exitcond219.not.1 = icmp eq i64 %i.le, %i.gc
  br i1 %exitcond219.not.1, label %._crit_edge171, label %scalar.ph330, !llvm.loop !426

._crit_edge171:                                   ; preds = %scalar.ph330.prol.loopexit, %scalar.ph330, %middle.block343
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count223
  br i1 %exitcond224.not, label %._crit_edge174.split, label %.lr.ph170

._crit_edge174.split:                             ; preds = %._crit_edge171, %bb.q, %.preheader147
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %N_VScale_Serial.exit, label %bb.q

bb.r:                                             ; preds = %.lr.ph164.a, %.critedge
  %indvars.iv213 = phi i64 [ 0, %.lr.ph164.a ], [ %indvars.iv.next214, %.critedge ] ; 4 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv213
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !169
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !57
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !63 ; 8 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv213
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !169
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !57
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !63 ; 16 uses
  br i1 %5, label %.lr.ph155.preheader, label %.critedge

.lr.ph155.preheader:                              ; preds = %bb.r
  br i1 %min.iters.check305, label %.lr.ph155.preheader466, label %vector.memcheck294

vector.memcheck294:                               ; preds = %.lr.ph155.preheader
  %scevgep295 = getelementptr i8, ptr %i.lo, i64 %i.gf ; 2 uses
  %scevgep296 = getelementptr i8, ptr %i.lj, i64 %i.gf
  %bound0297 = icmp ult ptr %i.lo, %scevgep273
  %bound1298 = icmp ult ptr %2, %scevgep295
  %found.conflict299 = and i1 %bound0297, %bound1298
  %bound0300 = icmp ult ptr %i.lo, %scevgep296
  %bound1301 = icmp ult ptr %i.lj, %scevgep295
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %found.conflict299, %found.conflict302
  br i1 %conflict.rdx303, label %.lr.ph155.preheader466, label %vector.ph306

vector.ph306:                                     ; preds = %vector.memcheck294
  %i.lp = load double, ptr %2, align 8, !tbaa !66, !alias.scope !427
  %broadcast.splatinsert312 = insertelement <2 x double> poison, double %i.lp, i64 0
  %broadcast.splat313 = shufflevector <2 x double> %broadcast.splatinsert312, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph306
  %index309 = phi i64 [ 0, %vector.ph306 ], [ %index.next314, %vector.body308 ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %index309 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load310 = load <2 x double>, ptr %i.lq, align 8, !tbaa !66, !alias.scope !430
  %wide.load311 = load <2 x double>, ptr %i.lr, align 8, !tbaa !66, !alias.scope !430
  %i.ls = fmul <2 x double> %broadcast.splat313, %wide.load310
  %i.lt = fmul <2 x double> %broadcast.splat313, %wide.load311
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %index309 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store <2 x double> %i.ls, ptr %i.lu, align 8, !tbaa !66, !alias.scope !432, !noalias !434
  store <2 x double> %i.lt, ptr %i.lv, align 8, !tbaa !66, !alias.scope !432, !noalias !434
  %index.next314 = add nuw i64 %index309, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next314, %n.vec307
  br i1 %i.lw, label %middle.block315, label %vector.body308, !llvm.loop !435

middle.block315:                                  ; preds = %vector.body308
  br i1 %cmp.n316, label %.preheader150, label %.lr.ph155.preheader466

.lr.ph155.preheader466:                           ; preds = %vector.memcheck294, %.lr.ph155.preheader, %middle.block315
  %.3135153.ph = phi i64 [ 0, %vector.memcheck294 ], [ 0, %.lr.ph155.preheader ], [ %n.vec307, %middle.block315 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph155.prol.loopexit, label %.lr.ph155.prol

.lr.ph155.prol:                                   ; preds = %.lr.ph155.preheader466, %.lr.ph155.prol
  %.3135153.prol = phi i64 [ %i.mc, %.lr.ph155.prol ], [ %.3135153.ph, %.lr.ph155.preheader466 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph155.prol ], [ 0, %.lr.ph155.preheader466 ]
  %i.lx = load double, ptr %2, align 8, !tbaa !66
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.3135153.prol
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !66
  %i.ma = fmul double %i.lx, %i.lz
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.3135153.prol
  store double %i.ma, ptr %i.mb, align 8, !tbaa !66
  %i.mc = add nuw nsw i64 %.3135153.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph155.prol.loopexit, label %.lr.ph155.prol, !llvm.loop !436

.lr.ph155.prol.loopexit:                          ; preds = %.lr.ph155.prol, %.lr.ph155.preheader466
  %.3135153.unr = phi i64 [ %.3135153.ph, %.lr.ph155.preheader466 ], [ %i.mc, %.lr.ph155.prol ]
  %i.md = sub nsw i64 %.3135153.ph, %i.gc
  %i.me = icmp ugt i64 %i.md, -4
  br i1 %i.me, label %.preheader150, label %.lr.ph155

.preheader150:                                    ; preds = %.lr.ph155.prol.loopexit, %.lr.ph155, %middle.block315
  br i1 %brmerge198, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader150
  %scevgep = getelementptr i8, ptr %i.lo, i64 %i.gf ; 2 uses
  %bound0 = icmp ult ptr %i.lo, %scevgep274
  %bound1 = icmp ult ptr %scevgep273, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph158

.lr.ph155:                                        ; preds = %.lr.ph155.prol.loopexit, %.lr.ph155
  %.3135153 = phi i64 [ %i.nc, %.lr.ph155 ], [ %.3135153.unr, %.lr.ph155.prol.loopexit ] ; 6 uses
  %i.mf = load double, ptr %2, align 8, !tbaa !66
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.3135153
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !66
  %i.mi = fmul double %i.mf, %i.mh
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.3135153
  store double %i.mi, ptr %i.mj, align 8, !tbaa !66
  %i.mk = add nuw nsw i64 %.3135153, 1            ; 2 uses
  %i.ml = load double, ptr %2, align 8, !tbaa !66
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.mk
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !66
  %i.mo = fmul double %i.ml, %i.mn
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.mk
  store double %i.mo, ptr %i.mp, align 8, !tbaa !66
  %i.mq = add nuw nsw i64 %.3135153, 2            ; 2 uses
  %i.mr = load double, ptr %2, align 8, !tbaa !66
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.mq
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !66
  %i.mu = fmul double %i.mr, %i.mt
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.mq
  store double %i.mu, ptr %i.mv, align 8, !tbaa !66
  %i.mw = add nuw nsw i64 %.3135153, 3            ; 2 uses
  %i.mx = load double, ptr %2, align 8, !tbaa !66
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.mw
  %i.mz = load double, ptr %i.my, align 8, !tbaa !66
  %i.na = fmul double %i.mx, %i.mz
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.mw
  store double %i.na, ptr %i.nb, align 8, !tbaa !66
  %i.nc = add nuw nsw i64 %.3135153, 4            ; 2 uses
  %exitcond206.not.3 = icmp eq i64 %i.nc, %i.gc
  br i1 %exitcond206.not.3, label %.preheader150, label %.lr.ph155, !llvm.loop !437

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %._crit_edge159
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %._crit_edge159 ], [ 1, %.lr.ph158.preheader ] ; 3 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv208
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !338
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv213
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !169
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !57
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !63 ; 6 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv208 ; 4 uses
  br i1 %min.iters.check280, label %scalar.ph279.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph158
  %scevgep275 = getelementptr i8, ptr %i.nj, i64 %i.gf
  %bound0276 = icmp ult ptr %i.lo, %scevgep275
  %bound1277 = icmp ult ptr %i.nj, %scevgep
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx = or i1 %found.conflict, %found.conflict278
  br i1 %conflict.rdx, label %scalar.ph279.preheader, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !66, !alias.scope !438
  %broadcast.splatinsert288 = insertelement <2 x double> poison, double %i.nl, i64 0
  %broadcast.splat289 = shufflevector <2 x double> %broadcast.splatinsert288, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next290, %vector.body283 ] ; 3 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %index284 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %wide.load = load <2 x double>, ptr %i.nm, align 8, !tbaa !66, !alias.scope !441
  %wide.load285 = load <2 x double>, ptr %i.nn, align 8, !tbaa !66, !alias.scope !441
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %index284 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16 ; 2 uses
  %wide.load286 = load <2 x double>, ptr %i.no, align 8, !tbaa !66, !alias.scope !443, !noalias !445
  %wide.load287 = load <2 x double>, ptr %i.np, align 8, !tbaa !66, !alias.scope !443, !noalias !445
  %i.nq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat289, <2 x double> %wide.load, <2 x double> %wide.load286)
  %i.nr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat289, <2 x double> %wide.load285, <2 x double> %wide.load287)
  store <2 x double> %i.nq, ptr %i.no, align 8, !tbaa !66, !alias.scope !443, !noalias !445
  store <2 x double> %i.nr, ptr %i.np, align 8, !tbaa !66, !alias.scope !443, !noalias !445
  %index.next290 = add nuw i64 %index284, 4       ; 2 uses
  %i.ns = icmp eq i64 %index.next290, %n.vec282
  br i1 %i.ns, label %middle.block291, label %vector.body283, !llvm.loop !446

middle.block291:                                  ; preds = %vector.body283
  br i1 %cmp.n292, label %._crit_edge159, label %scalar.ph279.preheader

scalar.ph279.preheader:                           ; preds = %vector.memcheck, %.lr.ph158, %middle.block291
  %.4156.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph158 ], [ %n.vec282, %middle.block291 ] ; 5 uses
  %.neg = or disjoint i64 %.4156.ph, 1
  br i1 %lcmp.mod469.not, label %scalar.ph279.prol.loopexit, label %scalar.ph279.prol

scalar.ph279.prol:                                ; preds = %scalar.ph279.preheader
  %i.nt = load double, ptr %i.nk, align 8, !tbaa !66
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %.4156.ph
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !66
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.4156.ph ; 2 uses
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !66
  %i.ny = tail call double @llvm.fmuladd.f64(double %i.nt, double %i.nv, double %i.nx)
  store double %i.ny, ptr %i.nw, align 8, !tbaa !66
  %i.nz = or disjoint i64 %.4156.ph, 1
  br label %scalar.ph279.prol.loopexit

scalar.ph279.prol.loopexit:                       ; preds = %scalar.ph279.prol, %scalar.ph279.preheader
  %.4156.unr = phi i64 [ %.4156.ph, %scalar.ph279.preheader ], [ %i.nz, %scalar.ph279.prol ]
  %i.oa = icmp eq i64 %i.gc, %.neg
  br i1 %i.oa, label %._crit_edge159, label %scalar.ph279

scalar.ph279:                                     ; preds = %scalar.ph279.prol.loopexit, %scalar.ph279
  %.4156 = phi i64 [ %i.oo, %scalar.ph279 ], [ %.4156.unr, %scalar.ph279.prol.loopexit ] ; 4 uses
  %i.ob = load double, ptr %i.nk, align 8, !tbaa !66
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %.4156
  %i.od = load double, ptr %i.oc, align 8, !tbaa !66
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.4156 ; 2 uses
  %i.of = load double, ptr %i.oe, align 8, !tbaa !66
  %i.og = tail call double @llvm.fmuladd.f64(double %i.ob, double %i.od, double %i.of)
  store double %i.og, ptr %i.oe, align 8, !tbaa !66
  %i.oh = add nuw nsw i64 %.4156, 1               ; 2 uses
  %i.oi = load double, ptr %i.nk, align 8, !tbaa !66
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.oh
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !66
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.oh ; 2 uses
  %i.om = load double, ptr %i.ol, align 8, !tbaa !66
  %i.on = tail call double @llvm.fmuladd.f64(double %i.oi, double %i.ok, double %i.om)
  store double %i.on, ptr %i.ol, align 8, !tbaa !66
  %i.oo = add nuw nsw i64 %.4156, 2               ; 2 uses
  %exitcond207.not.1 = icmp eq i64 %i.oo, %i.gc
  br i1 %exitcond207.not.1, label %._crit_edge159, label %scalar.ph279, !llvm.loop !447

._crit_edge159:                                   ; preds = %scalar.ph279.prol.loopexit, %scalar.ph279, %middle.block291
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count211
  br i1 %exitcond212.not, label %.critedge, label %.lr.ph158

.critedge:                                        ; preds = %._crit_edge159, %bb.r, %.preheader150
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count216
  br i1 %exitcond217.not, label %N_VScale_Serial.exit, label %bb.r

N_VScale_Serial.exit:                             ; preds = %.critedge, %._crit_edge174.split, %._crit_edge184, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i, %.lr.ph.i30.i.prol.loopexit, %.lr.ph.i30.i, %.lr.ph.i.i, %middle.block405, %middle.block421, %middle.block437, %middle.block451, %.lr.ph186, %.critedge.preheader, %.preheader148.a, %.preheader, %bb.i, %bb.h, %bb.f, %bb.d, %bb.n, %._crit_edge, %._crit_edge191, %bb.j
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VEnableFusedOps_Serial(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @N_VLinearCombination_Serial, ptr %i.c, align 8, !tbaa !448
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @N_VScaleAddMulti_Serial, ptr %i.d, align 8, !tbaa !449
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr @N_VDotProdMulti_Serial, ptr %i.e, align 8, !tbaa !450
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store ptr @N_VLinearSumVectorArray_Serial, ptr %i.f, align 8, !tbaa !451
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store ptr @N_VScaleVectorArray_Serial, ptr %i.g, align 8, !tbaa !452
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr @N_VConstVectorArray_Serial, ptr %i.h, align 8, !tbaa !453
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store ptr @N_VWrmsNormVectorArray_Serial, ptr %i.i, align 8, !tbaa !454
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store ptr @N_VWrmsNormMaskVectorArray_Serial, ptr %i.j, align 8, !tbaa !455
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store ptr @N_VScaleAddMultiVectorArray_Serial, ptr %i.k, align 8, !tbaa !456
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  store ptr @N_VLinearCombinationVectorArray_Serial, ptr %i.l, align 8, !tbaa !457
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store ptr @N_VDotProdMulti_Serial, ptr %i.m, align 8, !tbaa !51
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store ptr null, ptr %i.n, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VEnableLinearCombination_Serial(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr null, ptr @N_VLinearCombination_Serial
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store ptr %i.a, ptr %i.d, align 8, !tbaa !448
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VEnableScaleAddMulti_Serial(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr null, ptr @N_VScaleAddMulti_Serial
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store ptr %i.a, ptr %i.d, align 8, !tbaa !449
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VEnableDotProdMulti_Serial(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr null, ptr @N_VDotProdMulti_Serial ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr %i.a, ptr %i.d, align 8, !tbaa !450
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.a, ptr %i.e, align 8, !tbaa !51
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VEnableLinearSumVectorArray_Serial(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr null, ptr @N_VLinearSumVectorArray_Serial
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store ptr %i.a, ptr %i.d, align 8, !tbaa !451
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VEnableScaleVectorArray_Serial(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr null, ptr @N_VScaleVectorArray_Serial
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store ptr %i.a, ptr %i.d, align 8, !tbaa !452
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VEnableConstVectorArray_Serial(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr null, ptr @N_VConstVectorArray_Serial
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store ptr %i.a, ptr %i.d, align 8, !tbaa !453
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VEnableWrmsNormVectorArray_Serial(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr null, ptr @N_VWrmsNormVectorArray_Serial
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  store ptr %i.a, ptr %i.d, align 8, !tbaa !454
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VEnableWrmsNormMaskVectorArray_Serial(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr null, ptr @N_VWrmsNormMaskVectorArray_Serial
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  store ptr %i.a, ptr %i.d, align 8, !tbaa !455
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VEnableScaleAddMultiVectorArray_Serial(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr null, ptr @N_VScaleAddMultiVectorArray_Serial
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store ptr %i.a, ptr %i.d, align 8, !tbaa !456
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VEnableLinearCombinationVectorArray_Serial(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr null, ptr @N_VLinearCombinationVectorArray_Serial
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  store ptr %i.a, ptr %i.d, align 8, !tbaa !457
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
