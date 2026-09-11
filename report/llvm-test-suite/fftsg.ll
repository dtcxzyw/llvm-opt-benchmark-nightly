Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/fftsg?download=true
inline.NumInlined: 74
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dfct:bb.a
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next283
  store double %i.lv, ptr %gep, align 8, !tbaa !14
  %indvars.iv.next283.1 = add nsw i64 %indvars.iv.next283, %i.lg ; 4 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv284 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 2 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !14
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 24 ; 2 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !14
  %i.mb = fsub double %i.ly, %i.ma
  %i.mc = sub nsw i64 %indvars.iv.next283.1, %i.lc
  %i.md = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mc
  store double %i.mb, ptr %i.md, align 8, !tbaa !14
  %i.me = load double, ptr %i.lx, align 8, !tbaa !14
  %i.mf = load double, ptr %i.lz, align 8, !tbaa !14
  %i.mg = fadd double %i.me, %i.mf
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next283.1
  store double %i.mg, ptr %gep.1, align 8, !tbaa !14
  %indvars.iv.next285.1 = add nuw nsw i64 %indvars.iv284, 4 ; 2 uses
  %niter432.next.1 = add nuw i64 %niter432, 2     ; 2 uses
  %niter432.ncmp.1.not = icmp eq i64 %niter432.next.1, %unroll_iter431
  br i1 %niter432.ncmp.1.not, label %._crit_edge268.loopexit.unr-lcssa, label %bb.n, !llvm.loop !37

._crit_edge268.loopexit.unr-lcssa:                ; preds = %bb.n
  %i.mh = and i64 %i.li, 2
  %lcmp.mod429.not.not = icmp eq i64 %i.mh, 0
  br i1 %lcmp.mod429.not.not, label %.epil.preheader, label %._crit_edge268

.epil.preheader:                                  ; preds = %._crit_edge268.loopexit.unr-lcssa, %.lr.ph267
  %indvars.iv284.epil.init = phi i64 [ 2, %.lr.ph267 ], [ %indvars.iv.next285.1, %._crit_edge268.loopexit.unr-lcssa ]
  %indvars.iv282.epil.init = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next283.1, %._crit_edge268.loopexit.unr-lcssa ]
  %lcmp.mod430 = trunc i64 %i.lk to i1
  tail call void @llvm.assume(i1 %lcmp.mod430)
  %indvars.iv.next283.epil = add nsw i64 %indvars.iv282.epil.init, %i.lg ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv284.epil.init ; 3 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !14
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !14
  %i.mm = fsub double %i.mj, %i.ml
  %i.mn = sub nsw i64 %indvars.iv.next283.epil, %i.lc
  %i.mo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mn
  store double %i.mm, ptr %i.mo, align 8, !tbaa !14
  %i.mp = load double, ptr %i.mi, align 8, !tbaa !14
  %i.mq = load double, ptr %i.mk, align 8, !tbaa !14
  %i.mr = fadd double %i.mp, %i.mq
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next283.epil
  store double %i.mr, ptr %gep.epil, align 8, !tbaa !14
  br label %._crit_edge268

._crit_edge268:                                   ; preds = %.epil.preheader, %._crit_edge268.loopexit.unr-lcssa, %rftfsub.exit260
  %i.ms = shl i32 %.0226273, 1                    ; 2 uses
  %.not277 = icmp eq i32 %i.hy, 0
  br i1 %.not277, label %._crit_edge272, label %.lr.ph271.preheader

.lr.ph271.preheader:                              ; preds = %._crit_edge268
  %i.mt = zext nneg i32 %.0225274 to i64          ; 8 uses
  %invariant.gep306 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mt ; 6 uses
  %invariant.gep308 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mt ; 4 uses
  %min.iters.check410 = icmp samesign ult i64 %.pre-phi297302, 10
  br i1 %min.iters.check410, label %.lr.ph271.preheader425, label %vector.memcheck379

vector.memcheck379:                               ; preds = %.lr.ph271.preheader
  %i.mu = shl nuw nsw i64 %.pre-phi297302, 3      ; 4 uses
  %scevgep380 = getelementptr i8, ptr %2, i64 %i.mu ; 3 uses
  %i.mv = shl nuw nsw i64 %i.mt, 3                ; 3 uses
  %i.mw = sub nsw i64 %i.mv, %i.mu
  %scevgep382 = getelementptr i8, ptr %scevgep381, i64 %i.mw ; 3 uses
  %scevgep384 = getelementptr i8, ptr %scevgep383, i64 %i.mv ; 3 uses
  %i.mx = shl nuw nsw i64 %i.mt, 4                ; 2 uses
  %i.my = sub nsw i64 %i.mx, %i.mu
  %scevgep386 = getelementptr i8, ptr %scevgep385, i64 %i.my ; 2 uses
  %scevgep388 = getelementptr i8, ptr %scevgep387, i64 %i.mx ; 2 uses
  %i.mz = getelementptr i8, ptr %2, i64 %i.mu
  %scevgep389 = getelementptr i8, ptr %i.mz, i64 %i.mv ; 2 uses
  %bound0390 = icmp ult ptr %2, %scevgep384
  %bound1391 = icmp ult ptr %scevgep382, %scevgep380
  %found.conflict392 = and i1 %bound0390, %bound1391
  %bound0393 = icmp ult ptr %2, %scevgep388
  %bound1394 = icmp ult ptr %scevgep386, %scevgep380
  %found.conflict395 = and i1 %bound0393, %bound1394
  %conflict.rdx396 = or i1 %found.conflict392, %found.conflict395
  %bound0397 = icmp ult ptr %2, %scevgep389
  %bound1398 = icmp ult ptr %invariant.gep306, %scevgep380
  %found.conflict399 = and i1 %bound0397, %bound1398
  %conflict.rdx400 = or i1 %conflict.rdx396, %found.conflict399
  %bound0401 = icmp ult ptr %scevgep382, %scevgep388
  %bound1402 = icmp ult ptr %scevgep386, %scevgep384
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %conflict.rdx400, %found.conflict403
  %bound0405 = icmp ult ptr %scevgep382, %scevgep389
  %bound1406 = icmp ult ptr %invariant.gep306, %scevgep384
  %found.conflict407 = and i1 %bound0405, %bound1406
  %conflict.rdx408 = or i1 %conflict.rdx404, %found.conflict407
  br i1 %conflict.rdx408, label %.lr.ph271.preheader425, label %vector.ph411

vector.ph411:                                     ; preds = %vector.memcheck379
  %n.vec412 = and i64 %.pre-phi297302, 2147483646 ; 3 uses
  br label %vector.body413

vector.body413:                                   ; preds = %vector.body413, %vector.ph411
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next421, %vector.body413 ] ; 4 uses
  %i.na = sub nuw nsw i64 %i.mt, %index414        ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep306, i64 %i.na
  %i.nc = getelementptr inbounds i8, ptr %i.nb, i64 -8 ; 2 uses
  %wide.load415 = load <2 x double>, ptr %i.nc, align 8, !tbaa !14, !alias.scope !56
  %reverse416 = shufflevector <2 x double> %wide.load415, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308, i64 %index414
  %wide.load417 = load <2 x double>, ptr %i.nd, align 8, !tbaa !14, !alias.scope !57 ; 2 uses
  %i.ne = fsub <2 x double> %reverse416, %wide.load417
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index414
  store <2 x double> %i.ne, ptr %i.nf, align 8, !tbaa !14, !alias.scope !58, !noalias !59
  %wide.load418 = load <2 x double>, ptr %i.nc, align 8, !tbaa !14, !alias.scope !56
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.na
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 -8
  %i.ni = shufflevector <2 x double> %wide.load417, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse420 = fadd <2 x double> %i.ni, %wide.load418
  store <2 x double> %reverse420, ptr %i.nh, align 8, !tbaa !14, !alias.scope !60, !noalias !61
  %index.next421 = add nuw i64 %index414, 2       ; 2 uses
  %i.nj = icmp eq i64 %index.next421, %n.vec412
  br i1 %i.nj, label %middle.block422, label %vector.body413, !llvm.loop !43

middle.block422:                                  ; preds = %vector.body413
  %cmp.n423 = icmp eq i64 %.pre-phi297302, %n.vec412
  br i1 %cmp.n423, label %._crit_edge272, label %.lr.ph271.preheader425

.lr.ph271.preheader425:                           ; preds = %vector.memcheck379, %.lr.ph271.preheader, %middle.block422
  %indvars.iv289.ph = phi i64 [ 0, %vector.memcheck379 ], [ 0, %.lr.ph271.preheader ], [ %n.vec412, %middle.block422 ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv289.ph, 1
  %xtraiter433 = and i64 %.pre-phi297302, 1
  %lcmp.mod434.not = icmp eq i64 %xtraiter433, 0
  br i1 %lcmp.mod434.not, label %.lr.ph271.prol.loopexit, label %.lr.ph271.prol

.lr.ph271.prol:                                   ; preds = %.lr.ph271.preheader425
  %i.nk = sub nuw nsw i64 %i.mt, %indvars.iv289.ph ; 2 uses
  %gep307.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep306, i64 %i.nk ; 2 uses
  %i.nl = load double, ptr %gep307.prol, align 8, !tbaa !14
  %gep309.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308, i64 %indvars.iv289.ph
  %i.nm = load double, ptr %gep309.prol, align 8, !tbaa !14 ; 2 uses
  %i.nn = fsub double %i.nl, %i.nm
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv289.ph
  store double %i.nn, ptr %i.no, align 8, !tbaa !14
  %i.np = load double, ptr %gep307.prol, align 8, !tbaa !14
  %i.nq = fadd double %i.nm, %i.np
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nk
  store double %i.nq, ptr %i.nr, align 8, !tbaa !14
  %indvars.iv.next290.prol = or disjoint i64 %indvars.iv289.ph, 1
  br label %.lr.ph271.prol.loopexit

.lr.ph271.prol.loopexit:                          ; preds = %.lr.ph271.prol, %.lr.ph271.preheader425
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %.lr.ph271.preheader425 ], [ %indvars.iv.next290.prol, %.lr.ph271.prol ]
  %i.ns = icmp eq i64 %.pre-phi297302, %.neg
  br i1 %i.ns, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.prol.loopexit, %.lr.ph271
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.1, %.lr.ph271 ], [ %indvars.iv289.unr, %.lr.ph271.prol.loopexit ] ; 5 uses
  %i.nt = sub nuw nsw i64 %i.mt, %indvars.iv289   ; 2 uses
  %gep307 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep306, i64 %i.nt ; 2 uses
  %i.nu = load double, ptr %gep307, align 8, !tbaa !14
  %gep309 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308, i64 %indvars.iv289
  %i.nv = load double, ptr %gep309, align 8, !tbaa !14 ; 2 uses
  %i.nw = fsub double %i.nu, %i.nv
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv289
  store double %i.nw, ptr %i.nx, align 8, !tbaa !14
  %i.ny = load double, ptr %gep307, align 8, !tbaa !14
  %i.nz = fadd double %i.nv, %i.ny
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nt
  store double %i.nz, ptr %i.oa, align 8, !tbaa !14
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 3 uses
  %i.ob = sub nuw nsw i64 %i.mt, %indvars.iv.next290 ; 2 uses
  %gep307.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep306, i64 %i.ob ; 2 uses
  %i.oc = load double, ptr %gep307.1, align 8, !tbaa !14
  %gep309.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308, i64 %indvars.iv.next290
  %i.od = load double, ptr %gep309.1, align 8, !tbaa !14 ; 2 uses
  %i.oe = fsub double %i.oc, %i.od
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next290
  store double %i.oe, ptr %i.of, align 8, !tbaa !14
  %i.og = load double, ptr %gep307.1, align 8, !tbaa !14
  %i.oh = fadd double %i.od, %i.og
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ob
  store double %i.oh, ptr %i.oi, align 8, !tbaa !14
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2 ; 2 uses
  %exitcond293.not.1 = icmp eq i64 %indvars.iv.next290.1, %.pre-phi297302
  br i1 %exitcond293.not.1, label %._crit_edge272, label %.lr.ph271, !llvm.loop !44

._crit_edge272:                                   ; preds = %.lr.ph271.prol.loopexit, %.lr.ph271, %middle.block422, %._crit_edge268
  %i.oj = add nuw nsw i32 %i.hy, %.0225274
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ok
  %i.om = load double, ptr %i.ol, align 8, !tbaa !14
  store double %i.om, ptr %i.ks, align 8, !tbaa !14
  br i1 %i.hz, label %bb.j, label %._crit_edge276.loopexit, !llvm.loop !45

._crit_edge276.loopexit:                          ; preds = %._crit_edge272
  %i.on = sext i32 %i.ms to i64
  br label %._crit_edge276

._crit_edge276:                                   ; preds = %._crit_edge276.loopexit, %.preheader
  %.0226.lcssa = phi i64 [ 2, %.preheader ], [ %i.on, %._crit_edge276.loopexit ]
  %i.oo = load double, ptr %2, align 8, !tbaa !14
  %i.op = getelementptr inbounds [8 x i8], ptr %1, i64 %.0226.lcssa
  store double %i.oo, ptr %i.op, align 8, !tbaa !14
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.or = load double, ptr %i.oq, align 8, !tbaa !14
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ot = load double, ptr %i.os, align 8, !tbaa !14
  %i.ou = fsub double %i.or, %i.ot
  store double %i.ou, ptr %i.bh, align 8, !tbaa !14
  %5 = load <2 x double>, ptr %i.os, align 8, !tbaa !14
  %6 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %5)
  br label %bb.p

bb.o:                                             ; preds = %makect.exit
  %i.ov = load double, ptr %1, align 8, !tbaa !14
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.ov, ptr %i.ow, align 8, !tbaa !14
  %i.ox = load double, ptr %2, align 8, !tbaa !14
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.ox, ptr %i.oy, align 8, !tbaa !14
  %i.oz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge276
  %storemerge = phi double [ %i.pa, %bb.o ], [ %6, %._crit_edge276 ]
  store double %storemerge, ptr %1, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @dfst(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !12     ; 2 uses
  %i.b = shl i32 %i.a, 3
  %i.c = icmp sgt i32 %0, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i32 %0, 3                           ; 2 uses
  tail call void @makewt(i32 noundef %i.d, ptr noundef nonnull %3, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0198 = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12   ; 2 uses
  %i.g = shl i32 %i.f, 1
  %i.h = icmp sgt i32 %0, %i.g
  br i1 %i.h, label %bb.d, label %makect.exit

bb.d:                                             ; preds = %bb.c
  %i.i = ashr i32 %0, 1                           ; 9 uses
  %i.j = sext i32 %.0198 to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %4, i64 %i.j ; 8 uses
  store i32 %i.i, ptr %i.e, align 4, !tbaa !12
  %i.l = icmp sgt i32 %i.i, 1
  br i1 %i.l, label %bb.e, label %makect.exit

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i32 %i.i, 1                         ; 3 uses
  %i.n = uitofp nneg i32 %i.m to double           ; 2 uses
  %i.o = fdiv double f0x3FE921FB54442D18, %i.n    ; 4 uses
  %i.p = fmul double %i.o, %i.n
  %i.q = tail call double @cos(double noundef %i.p) #9, !tbaa !12 ; 2 uses
  store double %i.q, ptr %i.k, align 8, !tbaa !14
  %i.r = fmul double %i.q, 5.000000e-01
  %i.s = zext nneg i32 %i.m to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.s
  store double %i.r, ptr %i.t, align 8, !tbaa !14
  %i.u = icmp samesign ugt i32 %i.i, 3
  br i1 %i.u, label %.lr.ph.preheader.i, label %makect.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.v = zext nneg i32 %i.i to i64                ; 3 uses
  %i.w = add nsw i64 %i.s, -1                     ; 3 uses
  %xtraiter = and i64 %i.w, 1
  %i.x = icmp eq i32 %i.m, 2
  br i1 %i.x, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.w, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.y = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = fmul double %i.o, %i.z                  ; 2 uses
  %i.ab = tail call double @cos(double noundef %i.aa) #9, !tbaa !12
  %i.ac = fmul double %i.ab, 5.000000e-01
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  store double %i.ac, ptr %i.ad, align 8, !tbaa !14
  %i.ae = tail call double @sin(double noundef %i.aa) #9, !tbaa !12
  %i.af = fmul double %i.ae, 5.000000e-01
  %i.ag = sub nuw nsw i64 %i.v, %indvars.iv.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ag
  store double %i.af, ptr %i.ah, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.aj = uitofp nneg i32 %i.ai to double
  %i.ak = fmul double %i.o, %i.aj                 ; 2 uses
  %i.al = tail call double @cos(double noundef %i.ak) #9, !tbaa !12
  %i.am = fmul double %i.al, 5.000000e-01
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i
  store double %i.am, ptr %i.an, align 8, !tbaa !14
  %i.ao = tail call double @sin(double noundef %i.ak) #9, !tbaa !12
  %i.ap = fmul double %i.ao, 5.000000e-01
  %i.aq = sub nuw nsw i64 %i.v, %indvars.iv.next.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.aq
  store double %i.ap, ptr %i.ar, align 8, !tbaa !14
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %makect.exit.thread.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

makect.exit:                                      ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ %i.i, %bb.d ]
  %i.as = icmp sgt i32 %0, 2
  br i1 %i.as, label %makect.exit.thread, label %bb.n

makect.exit.thread.loopexit.unr-lcssa:            ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %makect.exit.thread, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %makect.exit.thread.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %makect.exit.thread.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod414 = trunc i64 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod414)
  %i.at = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.au = uitofp nneg i32 %i.at to double
  %i.av = fmul double %i.o, %i.au                 ; 2 uses
  %i.aw = tail call double @cos(double noundef %i.av) #9, !tbaa !12
  %i.ax = fmul double %i.aw, 5.000000e-01
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.epil.init
  store double %i.ax, ptr %i.ay, align 8, !tbaa !14
  %i.az = tail call double @sin(double noundef %i.av) #9, !tbaa !12
  %i.ba = fmul double %i.az, 5.000000e-01
  %i.bb = sub nuw nsw i64 %i.v, %indvars.iv.i.epil.init
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bb
  store double %i.ba, ptr %i.bc, align 8, !tbaa !14
  br label %makect.exit.thread

makect.exit.thread:                               ; preds = %.lr.ph.i.epil.preheader, %makect.exit.thread.loopexit.unr-lcssa, %bb.e, %makect.exit
  %.0236 = phi i32 [ %.0, %makect.exit ], [ %i.i, %bb.e ], [ %i.i, %makect.exit.thread.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.i.epil.preheader ] ; 7 uses
  %i.bd = lshr i32 %0, 1                          ; 5 uses
  %i.be = lshr i32 %0, 2                          ; 5 uses
  %i.bf = icmp samesign ugt i32 %0, 7             ; 3 uses
  br i1 %i.bf, label %.lr.ph.preheader, label %makect.exit.thread.._crit_edge_crit_edge

makect.exit.thread.._crit_edge_crit_edge:         ; preds = %makect.exit.thread
  %.pre268 = zext nneg i32 %i.be to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %makect.exit.thread
  %i.bg = zext nneg i32 %i.bd to i64              ; 3 uses
  %i.bh = zext nneg i32 %0 to i64                 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.be to i64   ; 5 uses
  %i.bi = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %min.iters.check = icmp ult i64 %i.bi, 26
  br i1 %min.iters.check, label %.lr.ph.preheader413, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %1, i64 8      ; 5 uses
  %i.bj = shl nuw nsw i64 %wide.trip.count, 3     ; 5 uses
  %scevgep294 = getelementptr i8, ptr %1, i64 %i.bj ; 5 uses
  %i.bk = shl nuw nsw i64 %i.bg, 3                ; 5 uses
  %i.bl = add nuw nsw i64 %i.bk, 8
  %i.bm = sub nsw i64 %i.bl, %i.bj                ; 2 uses
  %scevgep295 = getelementptr i8, ptr %1, i64 %i.bm ; 5 uses
  %scevgep296 = getelementptr i8, ptr %1, i64 %i.bk ; 5 uses
  %scevgep297 = getelementptr i8, ptr %2, i64 8   ; 5 uses
  %scevgep298 = getelementptr i8, ptr %2, i64 %i.bj ; 5 uses
  %scevgep299 = getelementptr i8, ptr %2, i64 %i.bm ; 5 uses
  %scevgep300 = getelementptr i8, ptr %2, i64 %i.bk ; 5 uses
  %i.bn = shl nuw nsw i64 %i.bh, 3                ; 3 uses
  %i.bo = add nuw nsw i64 %i.bn, 8                ; 2 uses
  %i.bp = sub nsw i64 %i.bo, %i.bj
  %scevgep301 = getelementptr i8, ptr %1, i64 %i.bp ; 4 uses
  %scevgep302 = getelementptr i8, ptr %1, i64 %i.bn ; 4 uses
  %i.bq = sub nsw i64 %i.bo, %i.bk
  %scevgep303 = getelementptr i8, ptr %1, i64 %i.bq ; 4 uses
  %i.br = add nuw nsw i64 %i.bj, %i.bn
  %i.bs = sub nsw i64 %i.br, %i.bk
  %scevgep304 = getelementptr i8, ptr %1, i64 %i.bs ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep296
  %bound1 = icmp ult ptr %scevgep295, %scevgep294
  %found.conflict = and i1 %bound0, %bound1
  %bound0305 = icmp ult ptr %scevgep, %scevgep298
  %bound1306 = icmp ult ptr %scevgep297, %scevgep294
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx = or i1 %found.conflict, %found.conflict307
  %bound0308 = icmp ult ptr %scevgep, %scevgep300
  %bound1309 = icmp ult ptr %scevgep299, %scevgep294
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx, %found.conflict310
  %bound0312 = icmp ult ptr %scevgep, %scevgep302
  %bound1313 = icmp ult ptr %scevgep301, %scevgep294
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx311, %found.conflict314
  %bound0316 = icmp ult ptr %scevgep, %scevgep304
  %bound1317 = icmp ult ptr %scevgep303, %scevgep294
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx319 = or i1 %conflict.rdx315, %found.conflict318
  %bound0320 = icmp ult ptr %scevgep295, %scevgep298
  %bound1321 = icmp ult ptr %scevgep297, %scevgep296
  %found.conflict322 = and i1 %bound0320, %bound1321
  %conflict.rdx323 = or i1 %conflict.rdx319, %found.conflict322
  %bound0324 = icmp ult ptr %scevgep295, %scevgep300
  %bound1325 = icmp ult ptr %scevgep299, %scevgep296
  %found.conflict326 = and i1 %bound0324, %bound1325
  %conflict.rdx327 = or i1 %conflict.rdx323, %found.conflict326
  %bound0328 = icmp ult ptr %scevgep295, %scevgep302
  %bound1329 = icmp ult ptr %scevgep301, %scevgep296
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx331 = or i1 %conflict.rdx327, %found.conflict330
  %bound0332 = icmp ult ptr %scevgep295, %scevgep304
  %bound1333 = icmp ult ptr %scevgep303, %scevgep296
  %found.conflict334 = and i1 %bound0332, %bound1333
  %conflict.rdx335 = or i1 %conflict.rdx331, %found.conflict334
  %bound0336 = icmp ult ptr %scevgep297, %scevgep300
  %bound1337 = icmp ult ptr %scevgep299, %scevgep298
  %found.conflict338 = and i1 %bound0336, %bound1337
  %conflict.rdx339 = or i1 %conflict.rdx335, %found.conflict338
  %bound0340 = icmp ult ptr %scevgep297, %scevgep302
end_hunk_0
begin_hunk_1_@cftf162:bb.a
  %i.hm = fsub <2 x double> %i.hj, %i.hl          ; 2 uses
  %i.hn = fadd <2 x double> %i.hj, %i.hl          ; 2 uses
  %i.ho = shufflevector <2 x double> %i.hm, <2 x double> %i.hn, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ho, ptr %i.y, align 8, !tbaa !14
  %i.hp = shufflevector <2 x double> %i.hn, <2 x double> %i.hm, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hp, ptr %i.ae, align 8, !tbaa !14
  %i.hq = shufflevector <2 x double> %i.fw, <2 x double> %i.fv, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.hr = fadd <2 x double> %i.ge, %i.gh          ; 4 uses
  %i.hs = fadd <2 x double> %i.gp, %i.gs
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.hu = fsub <2 x double> %i.ha, %i.hd
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.hw = fsub <2 x double> %i.hq, %i.ht
  %i.hx = fadd <2 x double> %i.hq, %i.ht
  %i.hy = shufflevector <2 x double> %i.hw, <2 x double> %i.hx, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hz = fadd <2 x double> %i.hr, %i.hv
  %i.ia = fsub <2 x double> %i.hr, %i.hv
  %i.ib = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ic = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.id = fsub <2 x double> %i.ib, %i.ic
  %i.ie = fadd <2 x double> %i.ib, %i.ic
  %i.if = shufflevector <2 x double> %i.id, <2 x double> %i.ie, <2 x i32> <i32 0, i32 3>
  %i.ig = fmul <2 x double> %i.ba, %i.if          ; 2 uses
  %i.ih = fadd <2 x double> %i.hy, %i.ig
  store <2 x double> %i.ih, ptr %i.r, align 8, !tbaa !14
  %i.ii = fsub <2 x double> %i.hy, %i.ig
  store <2 x double> %i.ii, ptr %i.w, align 8, !tbaa !14
  %foldExtExtBinop438 = fadd <2 x double> %i.hq, %i.ht
  %i.ij = extractelement <2 x double> %foldExtExtBinop438, i64 0 ; 2 uses
  %foldExtExtBinop440 = fsub <2 x double> %i.hq, %i.ht
  %i.ik = extractelement <2 x double> %foldExtExtBinop440, i64 1 ; 2 uses
  %foldExtExtBinop442 = fsub <2 x double> %i.hr, %i.hv
  %i.il = extractelement <2 x double> %foldExtExtBinop442, i64 0 ; 2 uses
  %foldExtExtBinop444 = fadd <2 x double> %i.hr, %i.hv
  %i.im = extractelement <2 x double> %foldExtExtBinop444, i64 1 ; 2 uses
  %i.in = fsub double %i.il, %i.im
  %i.io = fmul double %i.b, %i.in                 ; 2 uses
  %i.ip = fadd double %i.il, %i.im
  %i.iq = fmul double %i.b, %i.ip                 ; 2 uses
  %i.ir = fsub double %i.ij, %i.iq
  store double %i.ir, ptr %i.ac, align 8, !tbaa !14
  %i.is = fadd double %i.ik, %i.io
  store double %i.is, ptr %i.aa, align 8, !tbaa !14
  %i.it = fadd double %i.ij, %i.iq
  store double %i.it, ptr %i.ai, align 8, !tbaa !14
  %i.iu = fsub double %i.ik, %i.io
  store double %i.iu, ptr %i.ag, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf082(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !14 ; 5 uses
  %i.t = load <2 x double>, ptr %0, align 8, !tbaa !14
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.v = load <2 x double>, ptr %i.f, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.u, %i.v
  %i.w = extractelement <2 x double> %foldExtExtBinop, i64 1 ; 2 uses
  %i.x = fadd <2 x double> %i.u, %i.v             ; 3 uses
  %foldExtExtBinop160 = fsub <2 x double> %i.u, %i.v
  %i.y = extractelement <2 x double> %foldExtExtBinop160, i64 0 ; 2 uses
  %i.z = load <2 x double>, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.aa = load <2 x double>, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ac = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ad = fadd <2 x double> %i.ac, %i.aa          ; 3 uses
  %i.ae = fsub <2 x double> %i.z, %i.ab           ; 3 uses
  %foldExtExtBinop162 = fsub <2 x double> %i.ae, %i.ad
  %i.af = extractelement <2 x double> %foldExtExtBinop162, i64 0
  %i.ag = fmul double %i.b, %i.af                 ; 2 uses
  %foldExtExtBinop164 = fsub <2 x double> %i.ad, %i.ae
  %i.ah = extractelement <2 x double> %foldExtExtBinop164, i64 1
  %i.ai = fmul double %i.b, %i.ah                 ; 2 uses
  %i.aj = fadd <2 x double> %i.ae, %i.ad
  %i.ak = insertelement <2 x double> poison, double %i.b, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %i.al, %i.aj          ; 3 uses
  %i.an = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ao = load <2 x double>, ptr %i.k, align 8, !tbaa !14 ; 2 uses
  %i.ap = load double, ptr %i.m, align 8, !tbaa !14
  %i.aq = load <2 x double>, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %i.ar = load double, ptr %i.l, align 8, !tbaa !14
  %i.as = load <2 x double>, ptr %i.o, align 8, !tbaa !14 ; 2 uses
  %i.at = load double, ptr %i.q, align 8, !tbaa !14
  %i.au = load <2 x double>, ptr %i.r, align 8, !tbaa !14 ; 2 uses
  %i.av = load double, ptr %i.p, align 8, !tbaa !14
  %i.aw = shufflevector <2 x double> %i.ao, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  %i.ax = shufflevector <2 x double> %i.aq, <2 x double> %i.au, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ay = fsub <2 x double> %i.aw, %i.ax          ; 3 uses
  %i.az = shufflevector <2 x double> %i.ao, <2 x double> %i.as, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ba = shufflevector <2 x double> %i.aq, <2 x double> %i.au, <2 x i32> <i32 1, i32 3>
  %i.bb = fadd <2 x double> %i.az, %i.ba          ; 3 uses
  %i.bc = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.at, i64 1
  %i.be = fadd <2 x double> %i.bd, %i.ax          ; 3 uses
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.bg = fneg <2 x double> %i.bf
  %i.bh = fmul <2 x double> %i.an, %i.bg
  %i.bi = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.av, i64 1
  %i.bk = fsub <2 x double> %i.az, %i.bj          ; 3 uses
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.bl, <2 x double> %i.bh) ; 3 uses
  %i.bn = fmul <2 x double> %i.an, %i.bk
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.be, <2 x double> %i.bn) ; 2 uses
  %i.bp = shufflevector <2 x double> %i.be, <2 x double> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.bq = fneg <2 x double> %i.bp
  %i.br = fmul <2 x double> %i.s, %i.bq
  %i.bs = shufflevector <2 x double> %i.bk, <2 x double> %i.bb, <2 x i32> <i32 1, i32 3>
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.bs, <2 x double> %i.br) ; 3 uses
  %i.bu = fmul <2 x double> %i.s, %i.bb
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.ay, <2 x double> %i.bu) ; 2 uses
  %i.bw = fadd double %i.w, %i.ag                 ; 2 uses
  %foldExtExtBinop166 = fadd <2 x double> %i.x, %i.am
  %i.bx = extractelement <2 x double> %foldExtExtBinop166, i64 0 ; 2 uses
  %foldExtExtBinop168 = fadd <2 x double> %i.bm, %i.bt
  %i.by = extractelement <2 x double> %foldExtExtBinop168, i64 0 ; 2 uses
  %i.bz = extractelement <2 x double> %i.bo, i64 0 ; 2 uses
  %i.ca = extractelement <2 x double> %i.bo, i64 1 ; 2 uses
  %i.cb = fadd double %i.bz, %i.ca                ; 2 uses
  %i.cc = fadd double %i.bw, %i.by
  store double %i.cc, ptr %0, align 8, !tbaa !14
  %i.cd = fadd double %i.bx, %i.cb
  store double %i.cd, ptr %i.e, align 8, !tbaa !14
  %i.ce = fsub double %i.bw, %i.by
  store double %i.ce, ptr %i.k, align 8, !tbaa !14
  %i.cf = fsub double %i.bx, %i.cb
  store double %i.cf, ptr %i.m, align 8, !tbaa !14
  %i.cg = fsub double %i.w, %i.ag                 ; 2 uses
  %i.ch = fsub double %i.bz, %i.ca                ; 2 uses
  %i.ci = fsub double %i.cg, %i.ch
  store double %i.ci, ptr %i.g, align 8, !tbaa !14
  %i.cj = fsub <2 x double> %i.x, %i.am           ; 4 uses
  %i.ck = fsub <2 x double> %i.bm, %i.bt          ; 4 uses
  %foldExtExtBinop170 = fadd <2 x double> %i.cj, %i.ck
  %i.cl = extractelement <2 x double> %foldExtExtBinop170, i64 0
  store double %i.cl, ptr %i.i, align 8, !tbaa !14
  %i.cm = fadd double %i.cg, %i.ch
  store double %i.cm, ptr %i.o, align 8, !tbaa !14
  %i.cn = fadd double %i.y, %i.ai                 ; 2 uses
  %i.co = extractelement <2 x double> %i.bv, i64 0 ; 2 uses
  %i.cp = extractelement <2 x double> %i.bv, i64 1 ; 2 uses
  %i.cq = fsub double %i.co, %i.cp                ; 2 uses
  %i.cr = fsub <2 x double> %i.cj, %i.ck
  %i.cs = fadd <2 x double> %i.cj, %i.ck
  %i.ct = shufflevector <2 x double> %i.cr, <2 x double> %i.cs, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ct, ptr %i.q, align 8, !tbaa !14
  %i.cu = fadd double %i.cn, %i.cq
  store double %i.cu, ptr %i.d, align 8, !tbaa !14
  %i.cv = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cw = insertelement <2 x double> %i.cv, double %i.cn, i64 1
  %i.cx = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cy = insertelement <2 x double> %i.cx, double %i.cq, i64 1
  %i.cz = fsub <2 x double> %i.cw, %i.cy
  store <2 x double> %i.cz, ptr %i.n, align 8, !tbaa !14
  %foldExtExtBinop172 = fadd <2 x double> %i.x, %i.am
  %i.da = extractelement <2 x double> %foldExtExtBinop172, i64 1 ; 2 uses
  %i.db = fsub double %i.y, %i.ai                 ; 2 uses
  %foldExtExtBinop174 = fadd <2 x double> %i.bm, %i.bt
  %i.dc = extractelement <2 x double> %foldExtExtBinop174, i64 1 ; 2 uses
  %i.dd = fadd double %i.co, %i.cp                ; 2 uses
  %i.de = fsub double %i.da, %i.dd
  store double %i.de, ptr %i.j, align 8, !tbaa !14
  %i.df = fadd double %i.db, %i.dc
  store double %i.df, ptr %i.h, align 8, !tbaa !14
  %i.dg = fadd double %i.da, %i.dd
  store double %i.dg, ptr %i.r, align 8, !tbaa !14
  %i.dh = fsub double %i.db, %i.dc
  store double %i.dh, ptr %i.p, align 8, !tbaa !14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #7

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = distinct !{!3, !15}
!4 = distinct !{!4, !15}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"double", !10, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15, !16, !17}
!23 = distinct !{!23, !15, !17, !16}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15, !16, !17}
!26 = distinct !{!26, !15, !17, !16}
!27 = distinct !{!27, !"LVerDomain"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
!31 = distinct !{!31, !27}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27}
!34 = distinct !{!34, !15, !16, !17}
!35 = distinct !{!35, !15, !16}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !15, !16, !17}
!44 = distinct !{!44, !15, !16}
!45 = distinct !{!45, !15}
!46 = !{!28}
!47 = !{!33, !32, !31, !30, !29}
!48 = !{!30}
!49 = !{!33}
!50 = !{!32, !31, !30, !29}
!51 = !{!29}
!52 = !{!32}
!53 = !{!31, !30, !29}
!54 = !{!31}
!55 = !{!30, !29}
!56 = !{!39}
!57 = !{!40}
!58 = !{!41}
!59 = !{!42, !39, !40}
!60 = !{!42}
!61 = !{!39, !40}
!62 = distinct !{!62, !"LVerDomain"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !62}
!66 = distinct !{!66, !62}
!67 = distinct !{!67, !62}
!68 = distinct !{!68, !62}
!69 = distinct !{!69, !15, !16, !17}
!70 = distinct !{!70, !15, !16}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !"LVerDomain"}
!74 = distinct !{!74, !73}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !73}
!77 = distinct !{!77, !73}
!78 = distinct !{!78, !15, !16, !17}
!79 = distinct !{!79, !15, !16}
!80 = distinct !{!80, !15}
!81 = !{!63}
!82 = !{!68, !67, !66, !65, !64}
!83 = !{!65}
!84 = !{!68}
!85 = !{!67, !66, !65, !64}
!86 = !{!64}
!87 = !{!67}
!88 = !{!66, !65, !64}
!89 = !{!66}
!90 = !{!65, !64}
!91 = !{!74}
!92 = !{!75}
!93 = !{!76}
!94 = !{!77, !74, !75}
!95 = !{!77}
!96 = !{!74, !75}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15}
!100 = distinct !{!100, !15}
!101 = distinct !{!101, !15}
!102 = distinct !{!102, !15}
!103 = distinct !{!103, !15, !16, !17}
!104 = distinct !{!104, !15, !17, !16}
!105 = distinct !{!105, !15}
!106 = distinct !{!106, !15}
!107 = distinct !{!107, !15}
!108 = distinct !{!108, !15}
!109 = distinct !{!109, !15}
!110 = distinct !{!110, !15}
!111 = distinct !{!111, !15, !16, !17}
!112 = distinct !{!112, !15, !17, !16}
!113 = distinct !{!113, !15}
!114 = distinct !{!114, !15}
!115 = distinct !{!115, !15}
!116 = distinct !{!116, !15}
!117 = distinct !{!117, !15}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !15}
!120 = distinct !{!120, !15}
!121 = distinct !{!121, !15}
!122 = distinct !{!122, !15}
!123 = distinct !{!123, !15}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !15}
!126 = distinct !{!126, !15}
end_hunk_1
