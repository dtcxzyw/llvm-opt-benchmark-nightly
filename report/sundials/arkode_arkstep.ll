Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_arkstep?download=true
inline.NumInlined: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@arkStep_ComputeSolutions_MassFixed:bb.a
  %i.ka = fmul double %i.ju, %i.jz
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv185.ph
  store double %i.ka, ptr %i.kb, align 8, !tbaa !58
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv185.ph
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !97
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv185.ph
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !97
  %indvars.iv.next186.prol = or disjoint i64 %indvars.iv185.ph, 1
  br label %.lr.ph136.split.split.us.prol.loopexit

.lr.ph136.split.split.us.prol.loopexit:           ; preds = %.lr.ph136.split.split.us.prol, %.lr.ph136.split.split.us.preheader528
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %.lr.ph136.split.split.us.preheader528 ], [ %indvars.iv.next186.prol, %.lr.ph136.split.split.us.prol ]
  %i.kf = add nsw i64 %wide.trip.count190, -1
  %i.kg = icmp eq i64 %indvars.iv185.ph, %i.kf
  br i1 %i.kg, label %._crit_edge137, label %.lr.ph136.split.split.us

.lr.ph136.split.split.us:                         ; preds = %.lr.ph136.split.split.us.prol.loopexit, %.lr.ph136.split.split.us
  %indvars.iv185 = phi i64 [ %indvars.iv.next186.1, %.lr.ph136.split.split.us ], [ %indvars.iv185.unr, %.lr.ph136.split.split.us.prol.loopexit ] ; 7 uses
  %i.kh = load double, ptr %i.gn, align 8, !tbaa !100
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv185
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !58
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv185
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !58
  %i.km = fsub double %i.kj, %i.kl
  %i.kn = fmul double %i.kh, %i.km
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv185
  store double %i.kn, ptr %i.ko, align 8, !tbaa !58
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv185
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !97
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv185
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !97
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 5 uses
  %i.ks = load double, ptr %i.gn, align 8, !tbaa !100
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next186
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !58
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next186
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !58
  %i.kx = fsub double %i.ku, %i.kw
  %i.ky = fmul double %i.ks, %i.kx
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next186
  store double %i.ky, ptr %i.kz, align 8, !tbaa !58
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv.next186
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !97
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next186
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !97
  %indvars.iv.next186.1 = add nuw nsw i64 %indvars.iv185, 2 ; 2 uses
  %exitcond191.not.1 = icmp eq i64 %indvars.iv.next186.1, %wide.trip.count190
  br i1 %exitcond191.not.1, label %._crit_edge137, label %.lr.ph136.split.split.us, !llvm.loop !369

.lr.ph136.split.split:                            ; preds = %.lr.ph136.split
  %i.ld = load ptr, ptr %i.gp, align 8, !tbaa !63 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !133 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !132 ; 4 uses
  %i.li = load ptr, ptr %i.gq, align 8, !tbaa !96 ; 4 uses
  %wide.trip.count183 = zext nneg i32 %i.gk to i64 ; 5 uses
  %min.iters.check376 = icmp ult i32 %i.gk, 14
  br i1 %min.iters.check376, label %scalar.ph375.preheader, label %vector.memcheck377

vector.memcheck377:                               ; preds = %.lr.ph136.split.split
  %i.lj = shl nuw nsw i64 %wide.trip.count183, 4  ; 2 uses
  %i.lk = getelementptr i8, ptr %i.i, i64 %i.lj   ; 5 uses
  %i.ll = getelementptr i8, ptr %0, i64 744
  %i.lm = shl nuw nsw i64 %wide.trip.count183, 3  ; 6 uses
  %i.ln = getelementptr i8, ptr %i.ja, i64 %i.lm
  %i.lo = getelementptr i8, ptr %i.jc, i64 %i.lm
  %i.lp = getelementptr i8, ptr %i.lf, i64 %i.lm
  %i.lq = getelementptr i8, ptr %i.lh, i64 %i.lm
  %i.lr = getelementptr i8, ptr %i.k, i64 %i.lj   ; 2 uses
  %i.ls = getelementptr i8, ptr %i.jd, i64 %i.lm
  %i.lt = getelementptr i8, ptr %i.li, i64 %i.lm
  %bound0378 = icmp ult ptr %i.i, %i.ll
  %bound1379 = icmp ult ptr %i.gn, %i.lk
  %found.conflict380 = and i1 %bound0378, %bound1379
  %bound0381 = icmp ult ptr %i.i, %i.ln
  %bound1382 = icmp ult ptr %i.ja, %i.lk
  %found.conflict383 = and i1 %bound0381, %bound1382
  %conflict.rdx384 = or i1 %found.conflict380, %found.conflict383
  %bound0385 = icmp ult ptr %i.i, %i.lo
  %bound1386 = icmp ult ptr %i.jc, %i.lk
  %found.conflict387 = and i1 %bound0385, %bound1386
  %conflict.rdx388 = or i1 %conflict.rdx384, %found.conflict387
  %bound0389 = icmp ult ptr %i.i, %i.lp
  %bound1390 = icmp ult ptr %i.lf, %i.lk
  %found.conflict391 = and i1 %bound0389, %bound1390
  %conflict.rdx392 = or i1 %conflict.rdx388, %found.conflict391
  %bound0393 = icmp ult ptr %i.i, %i.lq
  %bound1394 = icmp ult ptr %i.lh, %i.lk
  %found.conflict395 = and i1 %bound0393, %bound1394
  %conflict.rdx396 = or i1 %conflict.rdx392, %found.conflict395
  %bound0397 = icmp ult ptr %i.k, %i.ls
  %bound1398 = icmp ult ptr %i.jd, %i.lr
  %found.conflict399 = and i1 %bound0397, %bound1398
  %conflict.rdx400 = or i1 %conflict.rdx396, %found.conflict399
  %bound0401 = icmp ult ptr %i.k, %i.lt
  %bound1402 = icmp ult ptr %i.li, %i.lr
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %conflict.rdx400, %found.conflict403
  br i1 %conflict.rdx404, label %scalar.ph375.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %vector.memcheck377
  %n.vec406 = and i64 %wide.trip.count183, 2147483646 ; 4 uses
  %i.lu = shl nuw nsw i64 %n.vec406, 1            ; 2 uses
  %i.lv = load double, ptr %i.gn, align 8, !tbaa !100, !alias.scope !417
  %broadcast.splatinsert411 = insertelement <2 x double> poison, double %i.lv, i64 0
  %broadcast.splat412 = shufflevector <2 x double> %broadcast.splatinsert411, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next419, %vector.body407 ] ; 8 uses
  %i.lw = shl nuw i64 %index408, 1                ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %index408
  %wide.load409 = load <2 x double>, ptr %i.lx, align 8, !tbaa !58, !alias.scope !418
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %index408
  %wide.load410 = load <2 x double>, ptr %i.ly, align 8, !tbaa !58, !alias.scope !419
  %i.lz = fsub <2 x double> %wide.load409, %wide.load410
  %i.ma = fmul <2 x double> %broadcast.splat412, %i.lz
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.lw
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %index408
  %wide.load413 = load <2 x ptr>, ptr %i.mc, align 8, !tbaa !97, !alias.scope !420
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.lw
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %index408
  %wide.load414 = load <2 x double>, ptr %i.me, align 8, !tbaa !58, !alias.scope !421
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %index408
  %wide.load415 = load <2 x double>, ptr %i.mf, align 8, !tbaa !58, !alias.scope !422
  %i.mg = fsub <2 x double> %wide.load414, %wide.load415
  %i.mh = fmul <2 x double> %broadcast.splat412, %i.mg
  %interleaved.vec416 = shufflevector <2 x double> %i.ma, <2 x double> %i.mh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec416, ptr %i.mb, align 8, !tbaa !58, !alias.scope !423, !noalias !424
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %index408
  %wide.load417 = load <2 x ptr>, ptr %i.mi, align 8, !tbaa !97, !alias.scope !425
  %interleaved.vec418 = shufflevector <2 x ptr> %wide.load413, <2 x ptr> %wide.load417, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x ptr> %interleaved.vec418, ptr %i.md, align 8, !tbaa !97, !alias.scope !426, !noalias !427
  %index.next419 = add nuw i64 %index408, 2       ; 2 uses
  %i.mj = icmp eq i64 %index.next419, %n.vec406
  br i1 %i.mj, label %middle.block420, label %vector.body407, !llvm.loop !380

middle.block420:                                  ; preds = %vector.body407
  %cmp.n421 = icmp eq i64 %n.vec406, %wide.trip.count183
  br i1 %cmp.n421, label %._crit_edge137.loopexit148, label %scalar.ph375.preheader

scalar.ph375.preheader:                           ; preds = %vector.memcheck377, %.lr.ph136.split.split, %middle.block420
  %indvars.iv178.ph = phi i64 [ 0, %vector.memcheck377 ], [ 0, %.lr.ph136.split.split ], [ %n.vec406, %middle.block420 ]
  %indvars.iv176.ph = phi i64 [ 0, %vector.memcheck377 ], [ 0, %.lr.ph136.split.split ], [ %i.lu, %middle.block420 ]
  br label %scalar.ph375

scalar.ph375:                                     ; preds = %scalar.ph375.preheader, %scalar.ph375
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %scalar.ph375 ], [ %indvars.iv178.ph, %scalar.ph375.preheader ] ; 7 uses
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %scalar.ph375 ], [ %indvars.iv176.ph, %scalar.ph375.preheader ] ; 4 uses
  %i.mk = load double, ptr %i.gn, align 8, !tbaa !100
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv178
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !58
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv178
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !58
  %i.mp = fsub double %i.mm, %i.mo
  %i.mq = fmul double %i.mk, %i.mp
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv176
  store double %i.mq, ptr %i.mr, align 8, !tbaa !58
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv178
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !97
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv176
  store ptr %i.mt, ptr %i.mu, align 8, !tbaa !97
  %i.mv = or disjoint i64 %indvars.iv176, 1       ; 2 uses
  %i.mw = load double, ptr %i.gn, align 8, !tbaa !100
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv178
  %i.my = load double, ptr %i.mx, align 8, !tbaa !58
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv178
  %i.na = load double, ptr %i.mz, align 8, !tbaa !58
  %i.nb = fsub double %i.my, %i.na
  %i.nc = fmul double %i.mw, %i.nb
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.mv
  store double %i.nc, ptr %i.nd, align 8, !tbaa !58
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv178
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !97
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.mv
  store ptr %i.nf, ptr %i.ng, align 8, !tbaa !97
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count183
  br i1 %exitcond184.not, label %._crit_edge137.loopexit148, label %scalar.ph375, !llvm.loop !381

._crit_edge137.loopexit148:                       ; preds = %scalar.ph375, %middle.block420
  %indvars.iv.next177.lcssa = phi i64 [ %i.lu, %middle.block420 ], [ %indvars.iv.next177, %scalar.ph375 ]
  %i.nh = trunc nuw i64 %indvars.iv.next177.lcssa to i32
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %.lr.ph136.split.split.us.prol.loopexit, %.lr.ph136.split.split.us, %scalar.ph497.prol.loopexit, %scalar.ph497, %middle.block473, %middle.block525, %.lr.ph136.split.us, %._crit_edge137.loopexit148, %.preheader
  %.3.lcssa = phi i32 [ 0, %.preheader ], [ %i.nh, %._crit_edge137.loopexit148 ], [ %i.gk, %middle.block525 ], [ 0, %.lr.ph136.split.us ], [ %i.gk, %middle.block473 ], [ %i.gk, %scalar.ph497.prol.loopexit ], [ %i.gk, %scalar.ph497 ], [ %i.gk, %.lr.ph136.split.split.us ], [ %i.gk, %.lr.ph136.split.split.us.prol.loopexit ]
  %i.ni = tail call i32 @N_VLinearCombination(i32 noundef %.3.lcssa, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.g) #13
  %.not120 = icmp eq i32 %i.ni, 0
  br i1 %.not120, label %bb.l, label %bb.o

bb.l:                                             ; preds = %._crit_edge137
  %i.nj = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !54
  %i.nl = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !99
  %i.nn = tail call i32 %i.nk(ptr noundef nonnull %0, ptr noundef %i.g, double noundef %i.nm) #13
  %i.no = icmp slt i32 %i.nn, 0
  br i1 %i.no, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double 2.000000e+00, ptr %1, align 8, !tbaa !58
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call double @N_VWrmsNorm(ptr noundef %i.g, ptr noundef %3) #13
  store double %4, ptr %1, align 8, !tbaa !58
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %._crit_edge137, %bb.j, %._crit_edge, %bb.m, %bb.h, %bb.b
  %.0107 = phi i32 [ -21, %bb.b ], [ -28, %._crit_edge137 ], [ -37, %bb.j ], [ 4, %bb.m ], [ -28, %._crit_edge ], [ 4, %bb.h ], [ 0, %bb.n ], [ 0, %bb.k ]
  ret i32 %.0107
}

; Function Attrs: nounwind uwtable
define range(i32 -37, 1) i32 @arkStep_ComputeSolutions(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 40 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3240, ptr noundef nonnull @__func__.arkStep_ComputeSolutions, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 440 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81   ; 7 uses
  store double 0.000000e+00, ptr %1, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.thread255, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = tail call i32 @ARKodeButcherTable_IsStifflyAccurate(ptr noundef %i.o) #13
  %.not142.not = icmp eq i32 %i.p, 0              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !36
  %.not143 = icmp eq i32 %i.r, 0
  br i1 %.not143, label %bb.f, label %bb.e

.thread255:                                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !36
  %.not143257 = icmp eq i32 %i.t, 0
  br i1 %.not143257, label %.thread260, label %bb.e

bb.e:                                             ; preds = %.thread255, %bb.d
  %i.u = phi ptr [ %i.s, %.thread255 ], [ %i.q, %bb.d ] ; 2 uses
  %.0259 = phi i1 [ false, %.thread255 ], [ %.not142.not, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.x = tail call i32 @ARKodeButcherTable_IsStifflyAccurate(ptr noundef %i.w) #13
  %.not144 = icmp eq i32 %i.x, 0
  %or.cond = select i1 %.not144, i1 true, i1 %.0259
  br i1 %or.cond, label %.thread, label %.thread260

bb.f:                                             ; preds = %bb.d
  br i1 %.not142.not, label %.thread, label %.thread260

.thread:                                          ; preds = %bb.e, %bb.f
  %i.y = phi ptr [ %i.u, %bb.e ], [ %i.q, %bb.f ] ; 3 uses
  store double 1.000000e+00, ptr %i.i, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !114
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !97
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !74 ; 5 uses
  %i.ad = icmp sgt i32 %i.ac, 0                   ; 3 uses
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.ae = load i32, ptr %i.l, align 4, !tbaa !73
  %.not153 = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !36
  %.not154 = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %wide.trip.count = zext nneg i32 %i.ac to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %.0200207 = phi i32 [ 1, %.lr.ph ], [ %.2202, %bb.k ] ; 3 uses
  br i1 %.not153, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load double, ptr %i.af, align 8, !tbaa !100
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !133
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !58
  %i.ar = fmul double %i.al, %i.aq
  %i.as = sext i32 %.0200207 to i64               ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.as
  store double %i.ar, ptr %i.at, align 8, !tbaa !58
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !101
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !97
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.as
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !97
  %i.ay = add nsw i32 %.0200207, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1201 = phi i32 [ %.0200207, %bb.g ], [ %i.ay, %bb.h ] ; 3 uses
  br i1 %.not154, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load double, ptr %i.af, align 8, !tbaa !100
  %i.ba = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !133
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load double, ptr %i.bd, align 8, !tbaa !58
  %i.bf = fmul double %i.az, %i.be
  %i.bg = sext i32 %.1201 to i64                  ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bg
  store double %i.bf, ptr %i.bh, align 8, !tbaa !58
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !96
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !97
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bg
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !97
  %i.bm = add nsw i32 %.1201, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.2202 = phi i32 [ %.1201, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.k, %.thread
  %.0200.lcssa = phi i32 [ 1, %.thread ], [ %.2202, %bb.k ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !103
  %.not146 = icmp eq i32 %i.bo, 0
  br i1 %.not146, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !104
  %.not147 = icmp eq i32 %i.bq, 0
  br i1 %.not147, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.pn.in.v = phi i64 [ 120, %bb.l ], [ 112, %._crit_edge ]
  %.pn.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pn.in.v
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !139 ; 2 uses
  %.0131.in = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %.0131 = load ptr, ptr %.0131.in, align 8, !tbaa !133 ; 7 uses
  %.0133.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.0133 = load ptr, ptr %.0133.in, align 8, !tbaa !119 ; 7 uses
  br i1 %i.ad, label %.lr.ph212, label %.._crit_edge213_crit_edge

.._crit_edge213_crit_edge:                        ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83
  %.phi.trans.insert241 = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.pre242 = load ptr, ptr %.phi.trans.insert241, align 8, !tbaa !84
  br label %._crit_edge213

.lr.ph212:                                        ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83 ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !84 ; 12 uses
  %wide.trip.count229 = zext nneg i32 %i.ac to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ac, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph212
  %i.bx = shl nuw nsw i64 %wide.trip.count229, 3  ; 4 uses
  %i.by = getelementptr i8, ptr %i.bu, i64 %i.bx  ; 4 uses
  %i.bz = getelementptr i8, ptr %i.bw, i64 %i.bx  ; 4 uses
  %i.ca = getelementptr i8, ptr %0, i64 928       ; 2 uses
  %i.cb = getelementptr i8, ptr %.0133, i64 %i.bx ; 2 uses
  %i.cc = getelementptr i8, ptr %.0131, i64 %i.bx ; 2 uses
  %bound0 = icmp ult ptr %i.bu, %i.bz
  %bound1 = icmp ult ptr %i.bw, %i.by
  %found.conflict = and i1 %bound0, %bound1
  %bound0289 = icmp ult ptr %i.bu, %i.ca
  %bound1290 = icmp ult ptr %i.bs, %i.by
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx = or i1 %found.conflict, %found.conflict291
  %bound0292 = icmp ult ptr %i.bu, %i.cb
  %bound1293 = icmp ult ptr %.0133, %i.by
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx, %found.conflict294
  %bound0296 = icmp ult ptr %i.bu, %i.cc
  %bound1297 = icmp ult ptr %.0131, %i.by
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  %bound0300 = icmp ult ptr %i.bw, %i.ca
end_hunk_0
