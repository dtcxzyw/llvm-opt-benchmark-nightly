inline.NumInlined: 27
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 82
begin_hunk_0_@N_VLinearCombinationVectorArray_Serial:bb.a
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
  br i1 %i.ge, label %.lr.ph164, label %N_VScale_Serial.exit

.lr.ph164:                                        ; preds = %.critedge.preheader
  %i.gf = icmp sgt i64 %i.gc, 0
  %i.gg = icmp slt i32 %1, 2
  %5 = icmp eq i64 %i.gc, 0
  %wide.trip.count216 = zext nneg i32 %0 to i64
  %brmerge198 = select i1 %i.gg, i1 true, i1 %5
  %wide.trip.count211 = zext i32 %1 to i64        ; 2 uses
  %i.gh = shl i64 %i.gc, 3                        ; 4 uses
  %scevgep273 = getelementptr i8, ptr %2, i64 8   ; 2 uses
  %i.gi = shl nuw nsw i64 %wide.trip.count211, 3
  %scevgep274 = getelementptr i8, ptr %2, i64 %i.gi
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
  %i.gj = load double, ptr %2, align 8, !tbaa !66
  %i.gk = fcmp oeq double %i.gj, 1.000000e+00
  %i.gl = icmp sgt i32 %0, 0                      ; 2 uses
  br i1 %i.gk, label %.preheader, label %.preheader148

.preheader148:                                    ; preds = %bb.p
  br i1 %i.gl, label %.lr.ph176, label %N_VScale_Serial.exit

.lr.ph176:                                        ; preds = %.preheader148
  %i.gm = icmp sgt i64 %i.gc, 0
  %i.gn = icmp slt i32 %1, 2
  %6 = icmp eq i64 %i.gc, 0
  %wide.trip.count228 = zext nneg i32 %0 to i64
  %brmerge195 = select i1 %i.gn, i1 true, i1 %6
  %wide.trip.count223 = zext i32 %1 to i64        ; 2 uses
  %i.go = shl i64 %i.gc, 3                        ; 3 uses
  %scevgep320 = getelementptr i8, ptr %2, i64 8   ; 2 uses
  %i.gp = shl nuw nsw i64 %wide.trip.count223, 3
  %scevgep321 = getelementptr i8, ptr %2, i64 %i.gp
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
  br i1 %i.gl, label %.lr.ph186, label %N_VScale_Serial.exit

.lr.ph186:                                        ; preds = %.preheader
  %i.gq = icmp slt i32 %1, 2
  %i.gr = icmp slt i64 %i.gc, 1
  %brmerge = select i1 %i.gq, i1 true, i1 %i.gr
  br i1 %brmerge, label %N_VScale_Serial.exit, label %.lr.ph183.preheader

.lr.ph183.preheader:                              ; preds = %.lr.ph186
  %wide.trip.count239 = zext nneg i32 %0 to i64
  %wide.trip.count234 = zext nneg i32 %1 to i64   ; 2 uses
  %i.gs = shl i64 %i.gc, 3                        ; 2 uses
  %scevgep367 = getelementptr i8, ptr %2, i64 8
  %i.gt = shl nuw nsw i64 %wide.trip.count234, 3
  %scevgep368 = getelementptr i8, ptr %2, i64 %i.gt
  %min.iters.check378 = icmp ult i64 %i.gc, 4
  %n.vec380 = and i64 %i.gc, 9223372036854775804  ; 3 uses
  %cmp.n391 = icmp eq i64 %i.gc, %n.vec380
  %xtraiter477 = and i64 %i.gc, 1
  %lcmp.mod478.not = icmp eq i64 %xtraiter477, 0
  br label %.lr.ph183

.lr.ph183:                                        ; preds = %.lr.ph183.preheader, %._crit_edge184
  %indvars.iv236 = phi i64 [ 0, %.lr.ph183.preheader ], [ %indvars.iv.next237, %._crit_edge184 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv236
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !169
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !57
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !63 ; 7 uses
  %scevgep366 = getelementptr i8, ptr %i.gy, i64 %i.gs ; 2 uses
  %bound0370 = icmp ult ptr %i.gy, %scevgep368
  %bound1371 = icmp ult ptr %scevgep367, %scevgep366
  %found.conflict372 = and i1 %bound0370, %bound1371
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph183, %._crit_edge180
  %indvars.iv231 = phi i64 [ 1, %.lr.ph183 ], [ %indvars.iv.next232, %._crit_edge180 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv231
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !338
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv236
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !169
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !57
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !63 ; 6 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv231 ; 4 uses
  br i1 %min.iters.check378, label %scalar.ph377.preheader, label %vector.memcheck365

vector.memcheck365:                               ; preds = %.lr.ph179
  %scevgep369 = getelementptr i8, ptr %i.hf, i64 %i.gs
  %bound0373 = icmp ult ptr %i.gy, %scevgep369
  %bound1374 = icmp ult ptr %i.hf, %scevgep366
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx376 = or i1 %found.conflict372, %found.conflict375
  br i1 %conflict.rdx376, label %scalar.ph377.preheader, label %vector.ph379

vector.ph379:                                     ; preds = %vector.memcheck365
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !66, !alias.scope !399
  %broadcast.splatinsert387 = insertelement <2 x double> poison, double %i.hh, i64 0
  %broadcast.splat388 = shufflevector <2 x double> %broadcast.splatinsert387, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body381

vector.body381:                                   ; preds = %vector.body381, %vector.ph379
  %index382 = phi i64 [ 0, %vector.ph379 ], [ %index.next389, %vector.body381 ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %index382 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %wide.load383 = load <2 x double>, ptr %i.hi, align 8, !tbaa !66, !alias.scope !402
  %wide.load384 = load <2 x double>, ptr %i.hj, align 8, !tbaa !66, !alias.scope !402
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %index382 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %wide.load385 = load <2 x double>, ptr %i.hk, align 8, !tbaa !66, !alias.scope !404, !noalias !406
  %wide.load386 = load <2 x double>, ptr %i.hl, align 8, !tbaa !66, !alias.scope !404, !noalias !406
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat388, <2 x double> %wide.load383, <2 x double> %wide.load385)
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat388, <2 x double> %wide.load384, <2 x double> %wide.load386)
  store <2 x double> %i.hm, ptr %i.hk, align 8, !tbaa !66, !alias.scope !404, !noalias !406
  store <2 x double> %i.hn, ptr %i.hl, align 8, !tbaa !66, !alias.scope !404, !noalias !406
  %index.next389 = add nuw i64 %index382, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next389, %n.vec380
  br i1 %i.ho, label %middle.block390, label %vector.body381, !llvm.loop !407

middle.block390:                                  ; preds = %vector.body381
  br i1 %cmp.n391, label %._crit_edge180, label %scalar.ph377.preheader

scalar.ph377.preheader:                           ; preds = %vector.memcheck365, %.lr.ph179, %middle.block390
  %.0132177.ph = phi i64 [ 0, %vector.memcheck365 ], [ 0, %.lr.ph179 ], [ %n.vec380, %middle.block390 ] ; 5 uses
  %.neg493 = or disjoint i64 %.0132177.ph, 1
  br i1 %lcmp.mod478.not, label %scalar.ph377.prol.loopexit, label %scalar.ph377.prol

scalar.ph377.prol:                                ; preds = %scalar.ph377.preheader
  %i.hp = load double, ptr %i.hg, align 8, !tbaa !66
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %.0132177.ph
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !66
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.0132177.ph ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !66
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.hr, double %i.ht)
  store double %i.hu, ptr %i.hs, align 8, !tbaa !66
  %i.hv = or disjoint i64 %.0132177.ph, 1
  br label %scalar.ph377.prol.loopexit

scalar.ph377.prol.loopexit:                       ; preds = %scalar.ph377.prol, %scalar.ph377.preheader
  %.0132177.unr = phi i64 [ %.0132177.ph, %scalar.ph377.preheader ], [ %i.hv, %scalar.ph377.prol ]
  %i.hw = icmp eq i64 %i.gc, %.neg493
  br i1 %i.hw, label %._crit_edge180, label %scalar.ph377

scalar.ph377:                                     ; preds = %scalar.ph377.prol.loopexit, %scalar.ph377
  %.0132177 = phi i64 [ %i.ik, %scalar.ph377 ], [ %.0132177.unr, %scalar.ph377.prol.loopexit ] ; 4 uses
  %i.hx = load double, ptr %i.hg, align 8, !tbaa !66
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %.0132177
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !66
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.0132177 ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !66
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.hz, double %i.ib)
  store double %i.ic, ptr %i.ia, align 8, !tbaa !66
  %i.id = add nuw nsw i64 %.0132177, 1            ; 2 uses
  %i.ie = load double, ptr %i.hg, align 8, !tbaa !66
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.id
  %i.ig = load double, ptr %i.if, align 8, !tbaa !66
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.id ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !66
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.ig, double %i.ii)
  store double %i.ij, ptr %i.ih, align 8, !tbaa !66
  %i.ik = add nuw nsw i64 %.0132177, 2            ; 2 uses
  %exitcond230.not.1 = icmp eq i64 %i.ik, %i.gc
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
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv225
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !169
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !57
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !63 ; 15 uses
  br i1 %i.gm, label %.lr.ph167.preheader, label %._crit_edge174.split

.lr.ph167.preheader:                              ; preds = %bb.q
  br i1 %min.iters.check352, label %.lr.ph167.preheader464, label %vector.memcheck346

vector.memcheck346:                               ; preds = %.lr.ph167.preheader
  %scevgep347 = getelementptr i8, ptr %i.ip, i64 %i.go
  %bound0348 = icmp ult ptr %i.ip, %scevgep320
  %bound1349 = icmp ult ptr %2, %scevgep347
  %found.conflict350 = and i1 %bound0348, %bound1349
  br i1 %found.conflict350, label %.lr.ph167.preheader464, label %vector.ph353

vector.ph353:                                     ; preds = %vector.memcheck346
  %i.iq = load double, ptr %2, align 8, !tbaa !66, !alias.scope !409
  %broadcast.splatinsert359 = insertelement <2 x double> poison, double %i.iq, i64 0
  %broadcast.splat360 = shufflevector <2 x double> %broadcast.splatinsert359, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph353
  %index356 = phi i64 [ 0, %vector.ph353 ], [ %index.next361, %vector.body355 ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %index356 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 2 uses
  %wide.load357 = load <2 x double>, ptr %i.ir, align 8, !tbaa !66, !alias.scope !412, !noalias !409
  %wide.load358 = load <2 x double>, ptr %i.is, align 8, !tbaa !66, !alias.scope !412, !noalias !409
  %i.it = fmul <2 x double> %broadcast.splat360, %wide.load357
  %i.iu = fmul <2 x double> %broadcast.splat360, %wide.load358
  store <2 x double> %i.it, ptr %i.ir, align 8, !tbaa !66, !alias.scope !412, !noalias !409
  store <2 x double> %i.iu, ptr %i.is, align 8, !tbaa !66, !alias.scope !412, !noalias !409
  %index.next361 = add nuw i64 %index356, 4       ; 2 uses
  %i.iv = icmp eq i64 %index.next361, %n.vec354
  br i1 %i.iv, label %middle.block362, label %vector.body355, !llvm.loop !414

middle.block362:                                  ; preds = %vector.body355
  br i1 %cmp.n363, label %.preheader147, label %.lr.ph167.preheader464

.lr.ph167.preheader464:                           ; preds = %vector.memcheck346, %.lr.ph167.preheader, %middle.block362
  %.1133165.ph = phi i64 [ 0, %vector.memcheck346 ], [ 0, %.lr.ph167.preheader ], [ %n.vec354, %middle.block362 ] ; 3 uses
  br i1 %lcmp.mod472.not, label %.lr.ph167.prol.loopexit, label %.lr.ph167.prol

end_hunk_0
